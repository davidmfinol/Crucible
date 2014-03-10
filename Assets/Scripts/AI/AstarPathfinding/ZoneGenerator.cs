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
            /*
            // Should ledges get additional waypoints above them?
            Ledge ledge = transitionZoneGO.GetComponent<Ledge>();
            if(ledge != null)
            {
                Debug.Log("Adding Waypoint above for: " + transitionZoneGO);
                HashSet<Vector3> waypointsAbove = getWaypointsAbove(transitionZoneBounds);
                foreach (Vector3 aboveWaypoint in waypointsAbove)
                 if(!ZoneWaypoints.ContainsKey(aboveWaypoint))
                    ZoneWaypoints.Add(aboveWaypoint, transitionZoneGO);
            }
             * */
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
            nodes[nodeNum].Walkable = !Physics.CheckSphere(waypoint, 0.0001f, CollisionMask.value);
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
            		node.Walkable = !Physics.CheckSphere(nodePos, 0.0001f, CollisionMask.value);
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
        // Get the way point and its bounds
        Vector3 waypoint = waypointGO.transform.position;
        Bounds waypointBounds = new Bounds(waypoint, Vector3.zero);
        if (waypointGO.collider != null)
            waypointBounds = waypointGO.collider.bounds;

        HashSet<Vector3> aboveWaypoints = new HashSet<Vector3>();

        float z = waypointBounds.center.z;
        float left = waypointBounds.center.x - waypointBounds.extents.x;
        float right = waypointBounds.center.x + waypointBounds.extents.x;
        float top = waypointBounds.center.y + waypointBounds.extents.y;

        Vector3 rotationPoint = waypointBounds.center;
        Vector3 rotationAngle = RotatePointAroundPivot(waypointGO.transform.localRotation.eulerAngles, waypointGO.transform.parent.position, waypointGO.transform.parent.rotation.eulerAngles);
		
		for(float x = left; x < right; x += WaypointSubdivisionSize)
        {
            Vector3 abovePoint = new Vector3(x, top + waypointGO.transform.lossyScale.y, z);
            Vector3 rotatedPoint = RotatePointAroundPivot(abovePoint, rotationPoint, rotationAngle);
            aboveWaypoints.Add(rotatedPoint);
        }
        aboveWaypoints.Add(RotatePointAroundPivot(new Vector3(right, top + waypointGO.transform.lossyScale.y, z), rotationPoint, rotationAngle));
		
		return aboveWaypoints;
    }

    /// <summary>
    /// Rotates the point around pivot.
    /// </summary>
    /// <returns>The point around pivot.</returns>
    /// <param name="point">Point.</param>
    /// <param name="pivot">Pivot.</param>
    /// <param name="angles">Angles.</param>
    public Vector3 RotatePointAroundPivot(Vector3 point, Vector3 pivot, Vector3 angles)
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

        if (!A.Walkable || !B.Walkable)
            return false;
		
        // account for jump distances
		if(!EnemyAISettings.CanJump((Vector3)A.position, (Vector3)B.position) )
			return false;

        Vector3 dir = (Vector3)(A.position - B.position);
        dist = dir.magnitude;
        
        Ray ray = new Ray((Vector3)A.position, (Vector3)(B.position - A.position));
        Ray invertRay = new Ray((Vector3)B.position, (Vector3)(A.position - B.position));
        
        bool obstructedByGround = Physics.Raycast(ray, dist, CollisionMask) || Physics.Raycast(invertRay, dist, CollisionMask);
        bool pathExists = false;
        if (A.GO != null && B.GO != null)
        {
            RaycastHit[] hits = Physics.RaycastAll(ray, dist);
            foreach (RaycastHit hit in hits)
                pathExists = hit.collider.CompareTag(WaypointTag) && hit.collider.gameObject != A.GO && hit.collider.gameObject != B.GO;
        }

        return !obstructedByGround && !pathExists;
    }

    /// <summary>
    /// Checks if there is a ground object between two points.
    /// </summary>
    /// <returns><c>true</c>, if by ground was obstructeded, <c>false</c> otherwise.</returns>
    /// <param name="posA">Position a.</param>
    /// <param name="posB">Position b.</param>
    public bool ObstructedByGround(Vector3 posA, Vector3 posB, out float dist)
    {
        Vector3 dir = (posA - posB);
        dist = dir.magnitude;
        
        Ray ray = new Ray(posA, (posB - posA));
        Ray invertRay = new Ray(posB, posA - posB);
        
        return Physics.Raycast(ray, dist, CollisionMask) || Physics.Raycast(invertRay, dist, CollisionMask);
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
                bool canJump = EnemyAISettings.CanJump(position, endPos);
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
