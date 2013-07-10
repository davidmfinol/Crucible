
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Pathfinding;
using Pathfinding.Serialization.JsonFx;

/// <summary>
///  Creates a custom A* graph to be used to traverse through zones in the game
/// </summary>
[JsonOptIn]
public class ZoneGraph : NavGraph, ISerializableGraph
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
    public float MaxJump = 4;
	
    [JsonMember]
	// Waypoints with bounds will be subdivided into more points that are this distance away from each other for fidelity of traversal
	public float WaypointSubdivisionSize = 5;
	
    // Map of all the waypoints (as nodes on the node graph) to their respective zones (areas indicated by Bounds)
	Dictionary<Bounds, List<Node> > ZonesWithWaypoints;
	
	// Scans the scene and creates the zone graph to be used by A* for pathfinding
    public override void Scan()
    {/*
        GameObject[] waypointGOs = GameObject.FindGameObjectsWithTag(WaypointTag);
        GameObject[] zoneGOs = GameObject.FindGameObjectsWithTag(ZonesTag);
        GameObject[] transitionZoneGOs = GameObject.FindGameObjectsWithTag(TransitionZonesTag);
		
        if (zones == null || waypoints == null)
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
				validwaypoints.Add(subWaypoint);
			
			// Ledges get additional waypoints above them
			Ledge ledge = waypointGO.GetComponent<Ledge>();
			if(ledge != null)
			{
				Debug.Log("coming soon");// TODO: create points above
				// Pipes, ladders, and regular hangables don't need any special waypoints?
			}
		}
		
		// Set up the ZonesToWaypoint mapping
		ZonesWithWaypoints = new Dictionary<Bounds, HashSet<Vector3> >();
		foreach(GameObject zoneGO in zoneGOs)
			ZonesWithWaypoints.Add(zoneGO.collider.bounds, new HashSet<Vector3>());
		
		// Remove waypoints that are in the ground
		foreach(Vector3 waypoint in validWaypoints)
		{
			if(Physics.CheckSphere(waypoint, 0.1, CollisionMask))
			{
				validWaypoints.Remove(waypoint);
				continue;
			}
			
			
		}
		
		// Create and set up the nodes based off the organized waypoints
		nodes = CreateNodes(validWaypoints.Count);
        for (int i = 0; i < gos.Length; i++)
        {
            nodes[i].position = (Int3)gos[i].transform.position;
            nodes[i].walkable = true;
        }
		
		// Organize all the waypoints into their respective zones
		// Create a graph for each zone
		
		// Then stitch the zone graphs together using the transitionzones
		foreach(GameObject transtionZone in transitionZoneGOs)
		{
			
		}
		
		// create waypoints for transition zones


        // To avoid too many allocations, these lists are reused for each node
        List<Node> connections = new List<Node>(3);
        List<int> costs = new List<int>(3);

        // Loop through all nodes and add connections to other nodes
        for (int i = 0; i < nodes.Length; i++)
        {
            connections.Clear();
            costs.Clear();

            Node node = nodes[i];
			
            for (int j = 0; j < nodes.Length; j++)
            {
                if (i == j) continue;

                Node other = nodes[j];

                float dist = 0;
                if (IsValidConnection(node, other, out dist))
                {
                    connections.Add(other);
                    costs.Add(Mathf.RoundToInt(dist * Int3.FloatPrecision));
                }
            }

            node.connections = connections.ToArray();
            node.connectionCosts = costs.ToArray();
        }*/
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
	
	// Checks if going from Node A to Node B is a valid movement for a character
    public bool IsValidConnection(Node A, Node B, out float dist)
    {
        dist = 0;

        if ((A.position.z != B.position.z) && !(A.walkable || B.walkable))
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
    }

    public void DeSerializeSettings(AstarSerializer serializer)
    {
        ZonesTag = (string)serializer.GetValue("ZonesTag", typeof(string));
        WaypointTag = (string)serializer.GetValue("WaypointTag", typeof(string));
        CollisionMask.value = (int)serializer.GetValue("CollisionMask", typeof(int));
    }
}
