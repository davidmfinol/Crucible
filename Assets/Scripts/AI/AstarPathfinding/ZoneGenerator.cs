using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Pathfinding;
using Pathfinding.Serialization.JsonFx;

/// <summary>
///  Creates a custom A* graph to be used to traverse through zones in the game
/// </summary>
[JsonOptIn]
public class ZoneGraph : NavGraph, ISerializableGraph// TODO:, IUpdatableGraph
{
    public override Node[] CreateNodes(int number)
    {
        ZoneNode[] tmp = new ZoneNode[number];
        for (int i = 0; i < number; i++)
        {
            tmp[i] = new ZoneNode();
            tmp[i].penalty = initialPenalty;
        }
        nodes = tmp;
        return tmp as Node[];
    }

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

    // Map of all the waypoints (as nodes on the node graph) to their respective zones (areas indicated by Bounds)
    Dictionary<Bounds, HashSet<ZoneNode>> ZonesWithWaypoints;

    // Map of all the transition waypoints (as nodes on the node graph) to their respective transition zones (areas indicated by Bounds)
    Dictionary<Bounds, HashSet<ZoneNode>> TransitionZonesWithWaypoints;
	
	/// <summary>
    /// Scans the scene and creates the zone graph to be used by A* for pathfinding
	/// </summary>
    public override void Scan()
    {
        GenerateNodes();
        ConnectNodes();
    }

    /// <summary>
    /// Finds all the waypoints in the scenes and creates nodes on the node graph for them
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
            // Get the way point and its bounds
            Vector3 waypoint = waypointGO.transform.position;
            Bounds waypointBounds = new Bounds(waypoint, Vector3.zero);
            if (waypointGO.collider != null)
                waypointBounds = waypointGO.collider.bounds;

            // If the waypoint is on the ground, use the points above it
            if ((CollisionMask.value & 1 << waypointGO.layer) != 0)
            {
                HashSet<Vector3> waypointsAbove = getWaypointsAbove(waypointBounds);
                foreach (Vector3 aboveWaypoint in waypointsAbove)
                    ZoneWaypoints.Add(aboveWaypoint, waypointGO);
            }
            else // else, just subdivide it and use those points 
            {
                HashSet<Vector3> subdividedWaypoints = subdivideWaypoint(waypointBounds);
                foreach (Vector3 subWaypoint in subdividedWaypoints)
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
            HashSet<Vector3> subdividedWaypoints = subdivideWaypoint(transitionZoneBounds);
            foreach (Vector3 subWaypoint in subdividedWaypoints)
                TransitionWaypoints.Add(subWaypoint, transitionZoneGO);
            /*
            // Should ledges get additional waypoints above them?
            Ledge ledge = transitionZoneGO.GetComponent<Ledge>();
            if(ledge != null)
            {
                Debug.Log("Adding Waypoint above for: " + transitionZoneGO);
                HashSet<Vector3> waypointsAbove = getWaypointsAbove(transitionZoneBounds);
                foreach (Vector3 aboveWaypoint in waypointsAbove)
                    ZoneWaypoints.Add(aboveWaypoint, transitionZoneGO);
            }
             * */
        }

        // Set up the ZonesToWaypoint mapping
        ZonesWithWaypoints = new Dictionary<Bounds, HashSet<ZoneNode>>();
        foreach (GameObject zoneGO in zoneGOs)
            ZonesWithWaypoints.Add(zoneGO.collider.bounds, new HashSet<ZoneNode>());

        // Create and set up the nodes based off the organized waypoints
        nodes = CreateNodes(ZoneWaypoints.Count + TransitionWaypoints.Count);
        int nodeNum = 0;
        foreach (KeyValuePair<Vector3, GameObject> waypointKV in ZoneWaypoints)
        {
			Vector3 waypoint = new Vector3(waypointKV.Key.x, waypointKV.Key.y, waypointKV.Value.transform.position.z);
            nodes[nodeNum].position = (Int3)waypoint;
            ((ZoneNode)nodes[nodeNum]).GO = waypointKV.Value;
            ((ZoneNode)nodes[nodeNum]).isTransition = false;
            ((ZoneNode)nodes[nodeNum]).isGround = (CollisionMask.value & 1 << waypointKV.Value.layer) != 0;
            nodeNum++;
        }
        foreach (KeyValuePair<Vector3, GameObject> waypointKV in TransitionWaypoints)
        {
			Vector3 waypoint = new Vector3(waypointKV.Key.x, waypointKV.Key.y, waypointKV.Value.transform.position.z);
            nodes[nodeNum].position = (Int3)waypoint;
            nodes[nodeNum].walkable = !Physics.CheckSphere(waypoint, 0.01f, CollisionMask.value);
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
            		node.walkable = !Physics.CheckSphere(nodePos, 0.01f, CollisionMask.value);
                    ZonesWithWaypoints[zoneBounds].Add(node);
				}
			}
            foreach (Bounds transitionZoneBounds in TransitionZonesWithWaypoints.Keys)
                if (transitionZoneBounds.Contains((Vector3)node.position))
                    TransitionZonesWithWaypoints[transitionZoneBounds].Add(node);
        }
    }
	
	/// <summary>
    /// Takes the bounds of a waypoint and subdivides it into a set of waypoints
	/// </summary>
	/// <param name="waypointBounds"></param>
	/// <returns></returns>
    public HashSet<Vector3> subdivideWaypoint(Bounds waypointBounds)
	{
        HashSet<Vector3> subdividedWaypoints = new HashSet<Vector3>();
        subdividedWaypoints.Add(waypointBounds.center);
        if (waypointBounds.size == Vector3.zero)
            return subdividedWaypoints;

		float z = waypointBounds.center.z;
        float left = waypointBounds.center.x - waypointBounds.extents.x;
        float right = waypointBounds.center.x + waypointBounds.extents.x;
        float top = waypointBounds.center.y + waypointBounds.extents.y;
        float bottom = waypointBounds.center.y - waypointBounds.extents.y;

        for (float x = left; x <= right; x += WaypointSubdivisionSize)
        {
            for (float y = top; y >= bottom; y -= WaypointSubdivisionSize)
                subdividedWaypoints.Add(new Vector3(x, y, z));
            subdividedWaypoints.Add(new Vector3(x, bottom, z));
        }
        for (float y = top; y >= bottom; y -= WaypointSubdivisionSize)
        	subdividedWaypoints.Add(new Vector3(right, y, z));
        subdividedWaypoints.Add(new Vector3(right, bottom, z));
		
		return subdividedWaypoints;
	}
	
	/// <summary>
    /// Takes the bounds of a waypoint and returns points directly above it
	/// </summary>
	/// <param name="waypointBounds"></param>
	/// <returns></returns>
	public HashSet<Vector3> getWaypointsAbove(Bounds waypointBounds)
	{
        HashSet<Vector3> aboveWaypoints = new HashSet<Vector3>();

        float z = waypointBounds.center.z;
        float left = waypointBounds.center.x - waypointBounds.extents.x;
        float right = waypointBounds.center.x + waypointBounds.extents.x;
        float top = waypointBounds.center.y + waypointBounds.extents.y;
		
		for(float x = left; x <= right; x += WaypointSubdivisionSize)
			aboveWaypoints.Add(new Vector3(x, top + 1, z));
        aboveWaypoints.Add(new Vector3(right, top + 1, z));
		
		return aboveWaypoints;
	}

    /// <summary>
    /// Connects all the nodes in the graph
    /// </summary>
    public void ConnectNodes()
    {
        // To avoid too many allocations, these lists are reused for each node
        List<Node> connections = new List<Node>(3);
        List<int> costs = new List<int>(3);

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
                            costs.Add(Mathf.RoundToInt(dist * Int3.FloatPrecision));
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
                        costs.Add(Mathf.RoundToInt(dist * Int3.FloatPrecision));
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

                connections = node.connections != null ? new List<Node>(node.connections) : new List<Node>(3);
                costs = node.connectionCosts != null ? new List<int>(node.connectionCosts) : new List<int>(3);

                foreach (ZoneNode other in zoneWaypointsPair.Value)
                {
                    if (node == other) continue;

                    float dist = 0;
                    if (IsValidConnection(node, other, out dist))
                    {
                        connections.Add(other);
                        costs.Add(Mathf.RoundToInt(dist * Int3.FloatPrecision));
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
                            costs.Add(Mathf.RoundToInt(dist * Int3.FloatPrecision));
                        }
                    }
                }

                node.connections = connections.ToArray();
                node.connectionCosts = costs.ToArray();
            }
        }
    }
	
	/// <summary>
    /// Checks if going from Node A to Node B is a valid movement for a character
	/// </summary>
	/// <param name="A"></param>
	/// <param name="B"></param>
	/// <param name="dist"></param>
	/// <returns></returns>
    public bool IsValidConnection(ZoneNode A, ZoneNode B, out float dist)
    {
        dist = 0;

        if (!A.walkable || !B.walkable)
            return false;
		
        // account for jump distances
		if(!EnemySettings.CanJump((Vector3)A.position, (Vector3)B.position) )
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

    public override NNInfo GetNearest(Vector3 position, NNConstraint constraint, Node hint)
    {
        ZoneNode a = new ZoneNode();
        a.position = (Int3)position;
        a.walkable = true;
        a.GO = null;
        Node nearestNode = a;
        float minDist = float.MaxValue / 1100;
        foreach (KeyValuePair<Bounds, HashSet<ZoneNode>> zoneWithWaypoints in ZonesWithWaypoints)
        {
            if(!zoneWithWaypoints.Key.Contains(position))
                continue;

            HashSet<ZoneNode>.Enumerator nodesInZone = zoneWithWaypoints.Value.GetEnumerator();
            while (nodesInZone.MoveNext())
            {
                float dist = float.MaxValue / 1100;
				
				bool isValid = IsValidConnection(a, (ZoneNode)nodesInZone.Current, out dist);
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
		
		if (!drawNodes)
			return;
		
		if (nodes == null)
			Scan ();
		
		if (nodes == null)
			return;
		
		
		for (int i=0;i<nodes.Length;i++) {
			
			ZoneNode node = (ZoneNode)nodes[i];
			if (node.connections != null) {
				
				for (int q=0;q<node.connections.Length;q++) {
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

    // Deprecated Serialization
    public void SerializeNodes(Node[] nodes, AstarSerializer serializer){}
    public void DeSerializeNodes(Node[] nodes, AstarSerializer serializer){}
    public void SerializeSettings(AstarSerializer serializer)
    {
        serializer.AddValue("WaypointTag", WaypointTag);
        serializer.AddValue("ZonesTag", ZonesTag);
        serializer.AddValue("TransitionZonesTag", TransitionZonesTag);
        serializer.AddValue("CollisionMask", CollisionMask.value);
        serializer.AddValue("WaypointSubdivisionSize", WaypointSubdivisionSize);
    }
    public void DeSerializeSettings(AstarSerializer serializer)
    {
        WaypointTag = (string)serializer.GetValue("WaypointTag", typeof(string));
        ZonesTag = (string)serializer.GetValue("ZonesTag", typeof(string));
        TransitionZonesTag = (string)serializer.GetValue("TransitionZonesTag", typeof(string));
        CollisionMask.value = (int)serializer.GetValue("CollisionMask", typeof(int));
        WaypointSubdivisionSize = (float)serializer.GetValue("WaypointSubdivisionSize", typeof(float));
    }
}
