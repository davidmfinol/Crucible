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
    public LayerMask CollisionMask = 12;

    [JsonMember]
    // How far above another node a node can be (because the character can't jump any higher)
    public float MaxJump = 3;
	
    [JsonMember]
	// Waypoints with bounds will be subdivided into more points that are this distance away from each other for fidelity of traversal
	public float WaypointSubdivisionSize = 2;
	
    // Map of all the waypoints (as nodes on the node graph) to their respective zones (areas indicated by Bounds)
	Dictionary<Bounds, HashSet<Node> > ZonesWithWaypoints;
	
    // Map of the waypoints that are in transitionzones
	Dictionary<Bounds, HashSet<Node> > TransitionZonesWithWaypoints;
	
	// Scans the scene and creates the zone graph to be used by A* for pathfinding
    public override void Scan()
    {
        GameObject[] waypointGOs = GameObject.FindGameObjectsWithTag(WaypointTag);
        GameObject[] zoneGOs = GameObject.FindGameObjectsWithTag(ZonesTag);
        GameObject[] transitionZoneGOs = GameObject.FindGameObjectsWithTag(TransitionZonesTag);
		
        if (zoneGOs == null || waypointGOs == null)
        {
			Debug.LogWarning("Zones or waypoints not found. Zone graph not generated.");
            CreateNodes(0);
            return;
        }
		
		// Get all the waypoints as Vector3 points
		HashSet<Vector3> validWaypoints = new HashSet<Vector3>();
		foreach(GameObject waypointGO in waypointGOs)
		{
			// Get the way point, subdivide it, and use the resulting waypoints
			Vector3 waypoint = waypointGO.transform.position;
			Bounds waypointBounds = new Bounds(waypoint, Vector3.zero);
			if(waypointGO.collider != null)
				waypointBounds = waypointGO.collider.bounds;
			List<Vector3> subdividedWaypoints = subdivideWaypoint(waypointBounds);
			foreach(Vector3 subWaypoint in subdividedWaypoints)
				validWaypoints.Add(subWaypoint);
			
			// Ledges get additional waypoints above them
			Ledge ledge = waypointGO.GetComponent<Ledge>();
			if(ledge != null)
			{
				List<Vector3> waypointsAbove = getWaypointsAbove(waypointBounds);
				foreach(Vector3 aboveWaypoint in waypointsAbove)
					validWaypoints.Add(aboveWaypoint);
			}
			// Pipes, ladders, and regular hangables don't need any special waypoints?
		}
		
		// Create waypoints from transition zones
		TransitionZonesWithWaypoints = new Dictionary<Bounds, HashSet<Node> >();
		foreach(GameObject transtionZoneGO in transitionZoneGOs)
		{
			Bounds transitionZoneBounds = transtionZoneGO.collider.bounds;
			TransitionZonesWithWaypoints.Add(transitionZoneBounds, new HashSet<Node>());
			List<Vector3> subdividedWaypoints = subdivideWaypoint(transitionZoneBounds);
			foreach(Vector3 subWaypoint in subdividedWaypoints)
				validWaypoints.Add(subWaypoint);
		}
		
		// Set up the ZonesToWaypoint mapping
		ZonesWithWaypoints = new Dictionary<Bounds, HashSet<Node> >();
		foreach(GameObject zoneGO in zoneGOs)
			ZonesWithWaypoints.Add(zoneGO.collider.bounds, new HashSet<Node>());
		
		// Create and set up the nodes based off the organized waypoints
		nodes = CreateNodes(validWaypoints.Count);
		int nodeNum = 0;
        foreach (Vector3 waypoint in validWaypoints)
        {
            nodes[nodeNum].position = (Int3)waypoint;
            nodes[nodeNum].walkable = Physics.CheckSphere(waypoint, 0.1f, CollisionMask.value);
			nodeNum++;
        }
		
		// Organize all the waypoints into their respective zones
		foreach(Node node in nodes)
		{
			foreach(Bounds zoneBounds in ZonesWithWaypoints.Keys)
				if(zoneBounds.Contains((Vector3)node.position))
					ZonesWithWaypoints[zoneBounds].Add(node);
			foreach(Bounds transitionZoneBounds in TransitionZonesWithWaypoints.Keys)
				if(transitionZoneBounds.Contains((Vector3)node.position))
					TransitionZonesWithWaypoints[transitionZoneBounds].Add(node);
		}
		
        // To avoid too many allocations, these lists are reused for each node
        List<Node> connections = new List<Node>(3);
        List<int> costs = new List<int>(3);
		
		// Create a graph for each zone
		foreach(KeyValuePair<Bounds, HashSet<Node> > zonewaypointspair in ZonesWithWaypoints)
		{
			HashSet<Node> waypointNodes = zonewaypointspair.Value;
	        foreach(Node node in waypointNodes)
	        {
	            connections.Clear();
	            costs.Clear();
				
	        	foreach(Node other in waypointNodes)
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
		
		// Then stitch the zone graphs together using the transitionzones
		foreach(KeyValuePair<Bounds, HashSet<Node> > zonewaypointspair in TransitionZonesWithWaypoints)
		{
			HashSet<Node> waypointNodes = zonewaypointspair.Value;
	        foreach(Node node in waypointNodes)
	        {
	            connections.Clear();
	            costs.Clear();
				
	        	foreach(Node other in waypointNodes)
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
    }
	
	// Takes the bounds of a waypoint and subdivides it into a set of waypoints
	public List<Vector3> subdivideWaypoint(Bounds waypointBounds)
	{
		List<Vector3> subdividedWaypoints = new List<Vector3>();
		subdividedWaypoints.Add(waypointBounds.center);
		if(waypointBounds.size == Vector3.zero)
			return subdividedWaypoints;
		
		float z = waypointBounds.center.z;
		float left = waypointBounds.min.x;
		float right = waypointBounds.max.x;
		float top = waypointBounds.min.y;
		float bottom = waypointBounds.max.y;
		
		for(float x = left; x <= right; x += WaypointSubdivisionSize)
			for(float y = top; y >= bottom; y -= WaypointSubdivisionSize)
				subdividedWaypoints.Add(new Vector3(x, y, z));
		return subdividedWaypoints;
	}
	
	// Takes the bounds of a waypoint and returns points directly above it
	public List<Vector3> getWaypointsAbove(Bounds waypointBounds)
	{
		List<Vector3> aboveWaypoints = new List<Vector3>();
		
		float z = waypointBounds.center.z;
		float left = waypointBounds.min.x;
		float right = waypointBounds.max.x;
		float top = waypointBounds.min.y;
		
		for(float x = left; x <= right; x += WaypointSubdivisionSize)
			aboveWaypoints.Add(new Vector3(x, top + WaypointSubdivisionSize, z));
		return aboveWaypoints;
	}
	
	// Checks if going from Node A to Node B is a valid movement for a character
    public bool IsValidConnection(Node A, Node B, out float dist)
    {
        dist = 0;

        if (!A.walkable || !B.walkable)
            return false;
		
		if(B.position.y - A.position.y > MaxJump)
			return false;

        Vector3 dir = (Vector3)(A.position - B.position);
        dist = dir.magnitude;

        Ray ray = new Ray((Vector3)A.position, (Vector3)(B.position - A.position));
        Ray invertRay = new Ray((Vector3)B.position, (Vector3)(A.position - B.position));

        return (!Physics.Raycast(ray, dist, CollisionMask) && !Physics.Raycast(invertRay, dist, CollisionMask));
    }



    public void SerializeNodes(Node[] nodes, AstarSerializer serializer)
    {
        //NavMeshGraph.SerializeMeshNodes (this as INavmesh, nodes, serializer);
    }

    public void DeSerializeNodes(Node[] nodes, AstarSerializer serializer)
    {
        //NavMeshGraph.DeSerializeMeshNodes (this as INavmesh, nodes, serializer);
    }

    public void SerializeSettings(AstarSerializer serializer)
    {
        serializer.AddValue("ZonesTag", ZonesTag);
        serializer.AddValue("WaypointTag", WaypointTag);
        serializer.AddValue("CollisionMask", CollisionMask.value);
        serializer.AddValue("MaxJump", MaxJump);
        serializer.AddValue("WaypointSubdivisionSize", WaypointSubdivisionSize);
    }

    public void DeSerializeSettings(AstarSerializer serializer)
    {
        ZonesTag = (string)serializer.GetValue("ZonesTag", typeof(string));
        WaypointTag = (string)serializer.GetValue("WaypointTag", typeof(string));
        CollisionMask.value = (int)serializer.GetValue("CollisionMask", typeof(int));
        MaxJump = (float)serializer.GetValue("MaxJump", typeof(float));
        WaypointSubdivisionSize = (float)serializer.GetValue("WaypointSubdivisionSize", typeof(float));
    }
}