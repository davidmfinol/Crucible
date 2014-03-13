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
    private EnemyAISettings _olympusAISettings;

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
        _olympusAISettings = OlympusPrefab.GetComponent<EnemyAISettings>();

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
            Vector3 rotatedPoint = RotatePointAroundPivot(abovePoint, rotationPoint, rotationAngle);
            aboveWaypoints.Add(rotatedPoint + boxOffset);
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
		
        // Then check that the character is capable of jumping from the first node to the second
		if(!CanJump((Vector3)A.position, (Vector3)B.position) )
			return false;

        // Then do a basic check to see if there's any ground objects in the way
        Vector3 dir = (Vector3)(B.position - A.position);
        dist = dir.magnitude;
        
        Ray ray = new Ray((Vector3)A.position, (Vector3)(B.position - A.position));
        Ray invertRay = new Ray((Vector3)B.position, (Vector3)(A.position - B.position));
        
        bool obstructedByGround = Physics.Raycast(ray, dist, CollisionMask) || Physics.Raycast(invertRay, dist, CollisionMask);
        if(obstructedByGround)
            return false;

        // Then do a more rigorous check to see if the character's charactercontroller will fit between the two points
      //  if(Mathf.Abs( ((Vector3)A.position).y - ((Vector3)B.position).y ) < _olympusAnimator.Height
      //     || Mathf.Abs( ((Vector3)A.position).x - ((Vector3)B.position).x ) < _olympusAISettings.StopRange)
     //   {
            Vector3 footPos = ((Vector3)A.position);
            Vector3 headPos = footPos + Vector3.up * _olympusAnimator.Height + Vector3.down;
            if(Physics.CapsuleCast(footPos, headPos, _olympusAnimator.Radius, dir, dist, CollisionMask))
                return false;
     //   }

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
    /// <returns><c>true</c>, if by ground was obstructeded, <c>false</c> otherwise.</returns>
    /// <param name="posA">Position a.</param>
    /// <param name="posB">Position b.</param>
    public bool ObstructedByGround(Vector3 posA, Vector3 posB, out float dist)
    {
        Vector3 dir = (posB - posA);
        dist = dir.magnitude;
        
        Ray ray = new Ray(posA, (posB - posA));
        Ray invertRay = new Ray(posB, posA - posB);
        
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
    public bool CanFall(Vector3 a, Vector3 b)
    {
        float xDist = Mathf.Abs(b.x - a.x);
        float yDist = b.y - a.y;
        float t = xDist / _olympusSettings.MaxHorizontalSpeed;
        float yMax = (-_olympusSettings.Gravity * t * t) / 2.0f;
        return yDist < yMax;
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
        ZoneNode nearestNode = null;
        float minDist = float.MaxValue / 1100;

        foreach (KeyValuePair<Bounds, HashSet<ZoneNode> > zoneWithWaypoints in ZonesWithWaypoints)
        {
            if(!zoneWithWaypoints.Key.Contains(position))
                continue;

            HashSet<ZoneNode>.Enumerator nodesInZone = zoneWithWaypoints.Value.GetEnumerator();
            while (nodesInZone.MoveNext())
            {
                float dist = float.MaxValue / 1100;

                Vector3 endPos = (Vector3) ((ZoneNode)nodesInZone.Current).position;
                bool canJump = CanJump(position, endPos);
                bool obstructedByGround = ObstructedByGround(position, endPos, out dist);
				bool isValid = canJump && !obstructedByGround;

				float zPenalty = 1000 * Mathf.Max(Mathf.Abs(position.z - nodesInZone.Current.position.z), 1);
				dist*= zPenalty;
                if (isValid && dist < minDist)
                {
                    minDist = dist;
                    nearestNode = nodesInZone.Current;
                }
            }
        }
        return new NNInfo(nearestNode);
    }
	
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
