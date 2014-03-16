using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Pathfinding;
using Pathfinding.Serialization.JsonFx;

/// <summary>
///  Creates a custom A* graph to be used to traverse through zones in the game
/// </summary>
[JsonOptIn]
public class ZoneGraph : NavGraph // TODO: IUpdatableGraph
{

    [JsonMember]
    // Game Objects tagged with this tag will be considered nodes on the ZoneGraph
    public string WaypointTag = "Waypoint";

    [JsonMember]
    // Game Objects tagged with this tag will be considered areas on the ZoneGraph
	// These game objects must contain colliders with bounds indicating the area of the zone
    public string ZonesTag = "Zone";

    [JsonMember]
    // Game Objects tagged with this tag will be considered transition areas on the ZoneGraph
	// These game objects must contain colliders with bounds indicating the area of the transition zone
    public string TransitionZonesTag = "TransitionZone";

    [JsonMember]
    // Game Objects on this layer will be considered objects we can't pass through
    public LayerMask CollisionMask = 1 << 12;

    [JsonMember]
    // Waypoints with bounds will be subdivided into more points that are this distance away from each other for fidelity of traversal
    public float WaypointSubdivisionSize = 7;

    // We need to know the character animator settings of the enemies to determine the graph
    private CharacterAnimator _olympusAnimator; 
    private CharacterSettings _olympusSettings;

    // All the ZoneNodes in the ZoneGraph
    public ZoneNode[] nodes;

    // The number of ZoneNodes in the ZoneGraph
    public int nodeCount;

    // Map of all the waypoints (as nodes on the node graph) to their respective zones (areas indicated by Bounds)
    private Dictionary<Bounds, HashSet<ZoneNode>> ZonesWithWaypoints;

    // Map of all the transition waypoints (as nodes on the node graph) to their respective transition zones (areas indicated by Bounds)
    private Dictionary<Bounds, HashSet<ZoneNode>> TransitionZonesWithWaypoints;
    
    public override void CreateNodes(int number)
    {
        ZoneNode[] tmp = new ZoneNode[number];
        for (int i = 0; i < number; i++)
            tmp[i] = new ZoneNode(AstarPath.active);
        nodes = tmp;
        nodeCount = number;
    }

    public override void GetNodes (GraphNodeDelegateCancelable del)
    {
        if (nodes == null) return;
        for (int i=0;i<nodeCount && del (nodes[i]);i++) {}
    }
	
	/// <summary>
    /// Scans the scene and creates the zone graph to be used by A* for pathfinding.
	/// </summary>
    public override void ScanInternal(OnScanStatus statusCallback)
    {
        // First, get the components we need
        GameObject OlympusPrefab = (GameObject) Resources.Load("Olympus");
        _olympusAnimator = OlympusPrefab.GetComponent<CharacterAnimator>();
        _olympusSettings = OlympusPrefab.GetComponent<CharacterSettings>();

        // Then, create the nodes and connect them
        GenerateNodes();
        ConnectNodes();
    }

    /// <summary>
    /// Finds all the waypoints in the scenes and creates nodes on the node graph for them.
    /// </summary>
    public void GenerateNodes()
    {
        // Find all the relevant game objects in the scene
        GameObject[] waypointGOs = GameObject.FindGameObjectsWithTag(WaypointTag);
        GameObject[] zoneGOs = GameObject.FindGameObjectsWithTag(ZonesTag);
        GameObject[] transitionZoneGOs = GameObject.FindGameObjectsWithTag(TransitionZonesTag);

        // Gotta have something to work with
        if (zoneGOs == null || waypointGOs == null)
        {
            Debug.LogWarning("Zones or waypoints not found. Zone graph not generated.");
            CreateNodes(0);
            return;
        }

        // Get all the waypoints as Vector3 points
        Dictionary<Vector3, GameObject> ZoneWaypoints = new Dictionary<Vector3, GameObject>();
        foreach (GameObject waypointGO in waypointGOs)
        {
            // If the waypoint is on the ground, use the points above it
            if ((CollisionMask.value & 1 << waypointGO.layer) != 0)
            {
                HashSet<Vector3> waypointsAbove = getWaypointsAbove(waypointGO);
                foreach (Vector3 aboveWaypoint in waypointsAbove)
                    if(!ZoneWaypoints.ContainsKey(aboveWaypoint))
                      ZoneWaypoints.Add(aboveWaypoint, waypointGO);
            }
            else // else, just subdivide it and use those points 
            {
                HashSet<Vector3> subdividedWaypoints = subdivideWaypoint(waypointGO);
                foreach (Vector3 subWaypoint in subdividedWaypoints)
                    if(!ZoneWaypoints.ContainsKey(subWaypoint))
                       ZoneWaypoints.Add(subWaypoint, waypointGO);
            }
        }

        // Create waypoints from transition zones
        Dictionary<Vector3, GameObject> TransitionWaypoints = new Dictionary<Vector3, GameObject>();
        TransitionZonesWithWaypoints = new Dictionary<Bounds, HashSet<ZoneNode>>();
        foreach (GameObject transitionZoneGO in transitionZoneGOs)
        {
            Bounds transitionZoneBounds = transitionZoneGO.collider.bounds;
            TransitionZonesWithWaypoints.Add(transitionZoneBounds, new HashSet<ZoneNode>());
            HashSet<Vector3> subdividedWaypoints = subdivideWaypoint(transitionZoneGO);
            foreach (Vector3 subWaypoint in subdividedWaypoints)
                if(!TransitionWaypoints.ContainsKey(subWaypoint))
                   TransitionWaypoints.Add(subWaypoint, transitionZoneGO);
        }

        // Set up the ZonesToWaypoint mapping
        ZonesWithWaypoints = new Dictionary<Bounds, HashSet<ZoneNode>>();
        foreach (GameObject zoneGO in zoneGOs)
            if(!ZonesWithWaypoints.ContainsKey(zoneGO.collider.bounds))
                ZonesWithWaypoints.Add(zoneGO.collider.bounds, new HashSet<ZoneNode>());

        // Create and set up the nodes based off the organized waypoints
        CreateNodes(ZoneWaypoints.Count + TransitionWaypoints.Count);
        int nodeNum = 0;
        foreach (KeyValuePair<Vector3, GameObject> waypointKV in ZoneWaypoints)
        {
            ZoneNode node = (ZoneNode)nodes[nodeNum];
			Vector3 waypoint = new Vector3(waypointKV.Key.x, waypointKV.Key.y, waypointKV.Value.transform.position.z);
            node.position = (Int3)waypoint;
            node.GO = waypointKV.Value;
            node.isTransition = false;
            node.isGround = (CollisionMask.value & 1 << waypointKV.Value.layer) != 0;
            Collider goCollider = waypointKV.Value.collider;
            if(waypointKV.Value.name.ToLower().Contains("ledge") && goCollider != null)
            {
                Bounds goBounds = goCollider.bounds;
                if(waypoint.x == goBounds.min.x)
                    node.isLeftLedge = true;
                if(waypoint.x == goBounds.max.x)
                    node.isRightLedge = true;
            }
            nodeNum++;
        }
        foreach (KeyValuePair<Vector3, GameObject> waypointKV in TransitionWaypoints)
        {
			Vector3 waypoint = new Vector3(waypointKV.Key.x, waypointKV.Key.y, waypointKV.Value.transform.position.z);
            nodes[nodeNum].position = (Int3)waypoint;
            nodes[nodeNum].Walkable = !Physics.CheckSphere(waypoint, 0.0001f, CollisionMask.value) && CanFit(waypoint);
            ((ZoneNode)nodes[nodeNum]).GO = waypointKV.Value;
            ((ZoneNode)nodes[nodeNum]).isTransition = true;
            ((ZoneNode)nodes[nodeNum]).isGround = (CollisionMask.value & 1 << waypointKV.Value.layer) != 0;
            nodeNum++;
        }

        // Organize all the waypoints into their respective zones
        foreach (ZoneNode node in nodes)
        {
            foreach (Bounds zoneBounds in ZonesWithWaypoints.Keys)
			{
				Vector3 nodePos = (Vector3) node.position;
                if (zoneBounds.Contains(nodePos))
				{
					if(!node.isTransition)
						nodePos.z = zoneBounds.center.z;
					node.position = (Int3)nodePos;
                    node.Walkable = !Physics.CheckSphere(nodePos, 0.0001f, CollisionMask.value) && CanFit(nodePos);
                    ZonesWithWaypoints[zoneBounds].Add(node);
				}
			}
            foreach (Bounds transitionZoneBounds in TransitionZonesWithWaypoints.Keys)
                if (transitionZoneBounds.Contains((Vector3)node.position))
                    TransitionZonesWithWaypoints[transitionZoneBounds].Add(node);
        }
    }

    /// <summary>
    /// Subdivides the waypoint gameobject into a bunch smaller waypoints.
    /// </summary>
    /// <returns>A list of all the waypoints in that gameobject.</returns>
    /// <param name="waypointGO">Waypoint Gameobject to be subdivided.</param>
    public HashSet<Vector3> subdivideWaypoint(GameObject waypointGO)
    {
        // Get the way point and its bounds
        Vector3 waypoint = waypointGO.transform.position;
        Bounds waypointBounds = new Bounds(waypoint, Vector3.zero);
        if (waypointGO.collider != null)
            waypointBounds = waypointGO.collider.bounds;

        HashSet<Vector3> subdividedWaypoints = new HashSet<Vector3>();
        subdividedWaypoints.Add(waypointBounds.center);
        if (waypointBounds.size == Vector3.zero)
            return subdividedWaypoints;

		float z = waypointBounds.center.z;
        float left = waypointBounds.center.x - waypointBounds.extents.x;
        float right = waypointBounds.center.x + waypointBounds.extents.x;
        float top = waypointBounds.center.y + waypointBounds.extents.y;
        float bottom = waypointBounds.center.y - waypointBounds.extents.y;

        for (float x = left; x < right; x += WaypointSubdivisionSize)
        {
            for (float y = top; y > bottom; y -= WaypointSubdivisionSize)
                subdividedWaypoints.Add(RotatePointAroundPivot(new Vector3(x, y, z), waypoint, waypointGO.transform.rotation.eulerAngles));
            subdividedWaypoints.Add(RotatePointAroundPivot(new Vector3(x, bottom, z), waypoint, waypointGO.transform.rotation.eulerAngles));
        }
        for (float y = top; y > bottom; y -= WaypointSubdivisionSize)
            subdividedWaypoints.Add(RotatePointAroundPivot(new Vector3(right, y, z), waypoint, waypointGO.transform.rotation.eulerAngles));
        subdividedWaypoints.Add(RotatePointAroundPivot(new Vector3(right, bottom, z), waypoint, waypointGO.transform.rotation.eulerAngles));
		
		return subdividedWaypoints;
	}

    /// <summary>
    /// Gets the waypoints above the game object.
    /// </summary>
    /// <returns>The waypoints above the gameobject.</returns>
    /// <param name="waypointGO">The waypoint gameobject.</param>
    public HashSet<Vector3> getWaypointsAbove(GameObject waypointGO)
    {
        HashSet<Vector3> aboveWaypoints = new HashSet<Vector3>();

        // Deal with rotation
        Quaternion storedRotation = waypointGO.transform.localRotation;
        waypointGO.transform.localRotation = Quaternion.identity;

        // Get the way point and its bounds
        Vector3 waypoint = waypointGO.transform.position;
        Bounds waypointBounds = new Bounds(waypoint, Vector3.zero);
        if (waypointGO.collider != null)
            waypointBounds = waypointGO.collider.bounds;

        // We also find a Boxcollider if we can to subtract out it's world space
        BoxCollider waypointBox = waypointGO.GetComponent<BoxCollider>();
        Vector3 boxOffset = Vector3.zero;
        if(waypointBox != null && storedRotation != Quaternion.identity && !waypointGO.name.ToLower().Contains("diagonal"))
            boxOffset = waypointBox.center;

        // Find the extents of that bound
        float z = waypointBounds.center.z;
        float left = waypointBounds.center.x - waypointBounds.extents.x;
        float right = waypointBounds.center.x + waypointBounds.extents.x;
        float top = waypointBounds.center.y + waypointBounds.extents.y;

        // Helpers for rotation
        Vector3 rotationPoint = waypointBounds.center;
        Vector3 rotationAngle = Vector3.zero;
        if(waypointGO.transform.parent != null)
            rotationAngle = RotatePointAroundPivot(storedRotation.eulerAngles, waypointGO.transform.parent.position, waypointGO.transform.parent.rotation.eulerAngles);

        // Actually get the list of all the waypoints
		for(float x = left; x < right; x += WaypointSubdivisionSize)
        {
            Vector3 abovePoint = new Vector3(x, top + 1, z);
            abovePoint = RotatePointAroundPivot(abovePoint, rotationPoint, rotationAngle);
            aboveWaypoints.Add(abovePoint + boxOffset);
        }
        Vector3 topRight = new Vector3(right, top + 1, z);
        topRight = RotatePointAroundPivot(topRight, rotationPoint, rotationAngle);
        aboveWaypoints.Add(topRight + boxOffset);

        //Restore rotation
        waypointGO.transform.localRotation = storedRotation;
		
		return aboveWaypoints;
    }

    /// <summary>
    /// Rotates the point around pivot.
    /// </summary>
    /// <returns>The point around pivot.</returns>
    /// <param name="point">Point.</param>
    /// <param name="pivot">Pivot.</param>
    /// <param name="angles">Angles.</param>
    public static Vector3 RotatePointAroundPivot(Vector3 point, Vector3 pivot, Vector3 angles)
    {
        Vector3 dir = point - pivot; // get point direction relative to pivot
        dir = Quaternion.Euler(angles) * dir; // rotate it
        point = dir + pivot; // calculate rotated point
        return point; // return it
    }


    /// <summary>
    /// Connects all the nodes in the graph
    /// </summary>
    public void ConnectNodes()
    {
        // To avoid too many allocations, these lists are reused for each node
        List<ZoneNode> connections = new List<ZoneNode>(3);
        List<uint> costs = new List<uint>(3);

        // Get the transition zones ready
        foreach (KeyValuePair<Bounds, HashSet<ZoneNode>> transitionZoneWaypointsPair in TransitionZonesWithWaypoints)
        {
            foreach (ZoneNode node in transitionZoneWaypointsPair.Value)
            {
                connections.Clear();
                costs.Clear();

                foreach (KeyValuePair<Bounds, HashSet<ZoneNode>> zoneWaypointsPair in ZonesWithWaypoints)
                {
                    if (!zoneWaypointsPair.Key.Intersects(transitionZoneWaypointsPair.Key)) continue;

                    foreach (ZoneNode other in zoneWaypointsPair.Value)
                    {
                        if (!transitionZoneWaypointsPair.Key.Contains((Vector3)other.position)) continue;

                        float dist = 0;
                        if (IsValidConnection(node, other, out dist))
                        {
                            connections.Add(other);
                            costs.Add((uint)Mathf.RoundToInt(dist * Int3.FloatPrecision));
                        }
                    }
                }
                foreach (ZoneNode other in transitionZoneWaypointsPair.Value)
                {
                    if (node == other) continue;

                    float dist = 0;
                    if (IsValidConnection(node, other, out dist))
                    {
                        connections.Add(other);
                        costs.Add((uint)Mathf.RoundToInt(dist * Int3.FloatPrecision));
                    }
                }

                node.connections = connections.ToArray();
                node.connectionCosts = costs.ToArray();
            }
        }

        // Build the graph based for each zone, using the transitionZoneWaypoints to link them together
        foreach (KeyValuePair<Bounds, HashSet<ZoneNode>> zoneWaypointsPair in ZonesWithWaypoints)
        {
            foreach (ZoneNode node in zoneWaypointsPair.Value)
            {
                connections.Clear();
                costs.Clear();

                if(node.connections != null)
                {
                    connections = new List<ZoneNode>(node.connections.Length);
                    foreach(ZoneNode connectedNode in node.connections)
                        connections.Add(connectedNode);
                }
                else
                    connections = new List<ZoneNode>(3);


                if(node.connectionCosts != null)
                {
                    costs = new List<uint>(node.connectionCosts.Length);
                    foreach(uint val in node.connectionCosts)
                        costs.Add(val);
                }
                else
                    costs = new List<uint>(3);

                foreach (ZoneNode other in zoneWaypointsPair.Value)
                {
                    if (node == other) continue;

                    float dist = 0;
                    if (IsValidConnection(node, other, out dist))
                    {
                        connections.Add(other);
                        costs.Add((uint)Mathf.RoundToInt(dist * Int3.FloatPrecision));
                    }
                }
                foreach (KeyValuePair<Bounds, HashSet<ZoneNode>> transitionZoneWaypointsPair in TransitionZonesWithWaypoints)
                {
                    if (!zoneWaypointsPair.Key.Intersects(transitionZoneWaypointsPair.Key)) continue;

                    foreach (ZoneNode other in transitionZoneWaypointsPair.Value)
                    {
                        if (!zoneWaypointsPair.Key.Contains((Vector3)other.position)) continue;

                        float dist = 0;
                        if (IsValidConnection(node, other, out dist))
                        {
                            connections.Add(other);
                            costs.Add((uint)Mathf.RoundToInt(dist * Int3.FloatPrecision));
                        }
                    }
                }

                node.connections = connections.ToArray();
                node.connectionCosts = costs.ToArray();
            }
        }
    }
	
	/// <summary>
    /// Checks if going from Node A to Node B is a valid movement for a character.
	/// </summary>
	/// <param name="A">The first node.</param>
	/// <param name="B">The second node.</param>
	/// <param name="dist">The distance between the two nodes.</param>
	/// <returns>Whether or not the connection between the nodes is valid.</returns>
    public bool IsValidConnection(ZoneNode A, ZoneNode B, out float dist)
    {
        dist = 0;

        // First check that both nodes are walkable
        if (!A.Walkable || !B.Walkable)
            return false;

        // We'll be using these positions a lot, so cache them
        Vector3 posA = (Vector3)A.position;
        Vector3 posB = (Vector3)B.position;
		
        // Then check that the character is capable of jumping from the first node to the second
        if(!CanJump(posA, posB))
			return false;

        // Then do a basic check to see if there's any ground objects in the way
        Vector3 dir = posB - posA;
        dist = dir.magnitude;
        
        Ray ray = new Ray(posA, posB - posA);
        Ray invertRay = new Ray(posB, posA - posB);
        
        bool obstructedByGround = Physics.Raycast(ray, dist, CollisionMask) || Physics.Raycast(invertRay, dist, CollisionMask);
        if(obstructedByGround)
            return false;

        // If the waypoint are on two different platforms, make sure we are either capable of jumping over or falling over
        if(A.GO != B.GO && !CanFall(posA, posB) && !JumpClear(posA, posB))
            return false;

        // Finally, check to see if there already is a path
        if (A.GO != null && B.GO != null)
        {
            RaycastHit[] hits = Physics.RaycastAll(ray, dist);
            foreach (RaycastHit hit in hits)
            {
                // If there's already a path, return false
                if(hit.collider.CompareTag(WaypointTag) && hit.collider.gameObject != A.GO && hit.collider.gameObject != B.GO)
                    return false;
            }
        }

        // If we pass all the checks, return true
        return true;
    }

    /// <summary>
    /// Checks if there is a ground object between two points.
    /// </summary>
    /// <returns><c>true</c>, if by ground was obstructed, <c>false</c> otherwise.</returns>
    /// <param name="posA">Position a.</param>
    /// <param name="posB">Position b.</param>
    public bool ObstructedByGround(Vector3 posA, Vector3 posB, out float dist)
    {
        Vector3 dir = posB - posA;
        dist = dir.magnitude;
        
        Ray ray = new Ray(posA, dir.normalized);
        Ray invertRay = new Ray(posB, (posA - posB).normalized);
        
        return Physics.Raycast(ray, dist, CollisionMask) || Physics.Raycast(invertRay, dist, CollisionMask);
    }
    
    /// <summary>
    /// Returns whether an enemy can jump from one position to another
    /// </summary>
    /// <param name="a">the starting position of the enemy</param>
    /// <param name="b">the ending position the enemy is considering</param>
    /// <returns></returns>
    public bool CanJump(Vector3 a, Vector3 b)
    {
        float xDist = Mathf.Abs(b.x - a.x);
        float yDist = b.y - a.y;
        float yVel = Mathf.Sqrt(2.0f * (_olympusSettings.JumpHeight) * _olympusSettings.Gravity);
        float t = yVel / _olympusSettings.Gravity;
        float yMax = _olympusSettings.JumpHeight + _olympusAnimator.Height;
        if (xDist > _olympusSettings.MaxHorizontalSpeed * t)
        {
            t = xDist / _olympusSettings.MaxHorizontalSpeed;
            yMax = (yVel * t) + ((-_olympusSettings.Gravity * t * t) / 2.0f);
        }
        return yDist < yMax;
    }

    /// <summary>
    /// Returns whether the area between two points is clear of obstacles, so that the character may jump between those points.
    /// </summary>
    /// <returns>Whether the jump area is clear.</returns>
    /// <param name="start">The start point.</param>
    /// <param name="end">The end point.</param>
    public bool JumpClear(Vector3 start, Vector3 end)
    {
        bool jumpClear = true;

        // OLD: We used to use capsule cast for steep vertical areas
        //if(Mathf.Abs( start.x - end.x ) < _olympusAISettings.JumpStopRange)
        //    jumpClear = CapsuleCastTest(start, end);
        //else
        jumpClear = OverlapSphereTest(start, end);

        return jumpClear;
    }

    /// <summary>
    /// Does a capsule cast from start to end to determine if there is an obstacle in the way.
    /// </summary>
    /// <returns><c>true</c>, if the area is clear, <c>false</c> otherwise.</returns>
    /// <param name="start">The start point.</param>
    /// <param name="end">The end point.</param>
    public bool CapsuleCastTest(Vector3 start, Vector3 end)
    {
        Vector3 footPos = start;
        Vector3 headPos = footPos + Vector3.up * _olympusAnimator.Height + Vector3.down; // Subtract 1 because node is 1 above ground
        float halfHeight = _olympusAnimator.Height / 2.0f;

        Vector3 dir = (end + Vector3.up * halfHeight + Vector3.down) - (headPos + Vector3.down * halfHeight);
        float dist = dir.magnitude;
        dir = dir.normalized;

        return !Physics.CapsuleCast(footPos, headPos, _olympusAnimator.Radius, dir, dist, CollisionMask);
    }

    /// <summary>
    /// Tests a hemisphere area between the two specified points to determine if they are clear of obstacles.
    /// </summary>
    /// <returns><c>true</c>, if the area is clear, <c>false</c> otherwise.</returns>
    /// <param name="start">The start point.</param>
    /// <param name="end">The end point.</param>
    public bool OverlapSphereTest(Vector3 start, Vector3 end)
    {
        Vector3 midPoint = (start + end) / 2.0f;
        float radius = Vector3.Distance (start, midPoint);
        Collider[] colliders = Physics.OverlapSphere(midPoint, radius, CollisionMask);
        
        float slope = (end.y - start.y) / (end.x - start.x);
        float b = -1.0f * slope * start.x + start.y;
        
        foreach(Collider collider in colliders)
        {
            Vector3 closestPoint = collider.ClosestPointOnBounds(midPoint);
            float yAtX = slope * closestPoint.x + b;
            if(closestPoint.y > yAtX)
                return false;
        }
        
        return true;
    }

    /// <summary>
    /// Determines whether the enemy character can fall (without jumping) from point a to point b.
    /// </summary>
    /// <returns>Whether the fall is possible.</returns>
    /// <param name="a">The start point.</param>
    /// <param name="b">The end point.</param>
    public bool CanFall(Vector3 a, Vector3 b)
    {
        if(b.y > a.y)
            return false;

        float yDist = Mathf.Abs(b.y - a.y);
        float t = Mathf.Sqrt(2.0f * yDist / _olympusSettings.Gravity);
        float xDist = Mathf.Abs( b.x - a.x);
        return xDist < _olympusSettings.MaxHorizontalSpeed * t;
    }

    /// <summary>
    /// Determines whether an enemy character is small enough to walk at the specified point.
    /// </summary>
    /// <returns>Whether an enemy character is small enough to walk at the specified point.</returns>
    /// <param name="point">The point to examine.</param>
    public bool CanFit(Vector3 point)
    {
        float dist = 0;
        return !ObstructedByGround(point, point + Vector3.up * _olympusAnimator.Height + Vector3.down, out dist);
    }

    /// <summary>
    /// Gets the nearest node on this graph to specified position.
    /// </summary>
    /// <returns>The nearest node on this graph.</returns>
    /// <param name="position">The position examined.</param>
    /// <param name="constraint">Ignored.</param>
    /// <param name="hint">Ignored.</param>
    public override NNInfo GetNearest(Vector3 position, NNConstraint constraint, GraphNode hint)
    {
        // We assume that we are passed in the midpoint of the character, 
        // but we really want to look at the position a little above it's foot
        position = position + Vector3.down * (_olympusAnimator.Height / 2.0f) + Vector3.up;

        // We are going to look for the nearest node by constantly looking for smaller and smaller distances
        ZoneNode nearestNode = null;
        float nearestDist = float.MaxValue;

        // We can go through each of our zones and check to see if the nearest node could be in that zone
        foreach (KeyValuePair<Bounds, HashSet<ZoneNode> > zoneWithWaypoints in ZonesWithWaypoints)
        {
            if(!zoneWithWaypoints.Key.Contains(position))
                continue;

            // If we reach a zone that could contain the nearest node, look through all the nodes in that zone
            HashSet<ZoneNode>.Enumerator nodesInZone = zoneWithWaypoints.Value.GetEnumerator();
            while (nodesInZone.MoveNext())
            {
                ZoneNode currentNode = nodesInZone.Current;
                float nodeDist = float.MaxValue;
                Vector3 nodePos = (Vector3) currentNode.position;

                // Make sure there's no object in the way, and calculate the distance
                bool isValid = !ObstructedByGround(position, nodePos, out nodeDist);

                // If the distance is the smallest found so far, set it as the current nearest node
                if(isValid && nodeDist < nearestDist)
                {
                    nearestDist = nodeDist;
                    nearestNode = currentNode;
                }
            }
        }

        // Return an NNInfo for the Nearest Node that we found
        return nearestNode != null ? new NNInfo(nearestNode) : new NNInfo();
    }
	
    /// <summary>
    /// Used to draw the graph for debugging purposes.
    /// </summary>
	public override void OnDrawGizmos (bool drawNodes)
	{
		if(AstarPath.active.debugMode != GraphDebugMode.Areas && AstarPath.active.debugMode != GraphDebugMode.Connections)
		{
			base.OnDrawGizmos(drawNodes);
			return;
		}
		
        if (!drawNodes || nodes == null)
			return;
		
		for (int i=0;i<nodes.Length;i++)
		{
			ZoneNode node = (ZoneNode)nodes[i];
			if (node.connections != null)
			{
				for (int q=0;q<node.connections.Length;q++)
				{
					bool doublyLinked = node.connections[q].ContainsConnection(node);
					if(AstarPath.active.debugMode == GraphDebugMode.Areas || doublyLinked)
					{
						Gizmos.color = doublyLinked ? AstarColor.MeshColor : AstarColor.MeshEdgeColor;
						Gizmos.DrawLine ((Vector3)node.position,(Vector3)node.connections[q].position);
					}
				}
			}
			
		}
	}
}
