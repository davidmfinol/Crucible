using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Pathfinding;
using Pathfinding.Serialization.JsonFx;

/// <summary>
///  Creates a custom A* to be used to traverse through zones in the game
/// </summary>
[JsonOptIn]
public class ZoneGraph : NavGraph
{
    [JsonMember]
    // Game Objects tagged with this tag will be considered nodes on the ZoneGraph
    public string SearchTag = "Waypoint";

    [JsonMember]
    // Game Objects on this layer will be considered objects we can't pass through
    public LayerMask CollisionMask = 12;

    public override void Scan()
    {
        GameObject[] gos = GameObject.FindGameObjectsWithTag(SearchTag);

        if (gos == null)
        {
            CreateNodes(0);
            return;
        }

        // TODO: may want to split up the larger transition points into equal sized nodes

        //Create and set up the found nodes
        nodes = CreateNodes(gos.Length);
        for (int i = 0; i < gos.Length; i++)
        {
            nodes[i].position = (Int3)gos[i].transform.position;
            nodes[i].walkable = gos[i].GetComponent<TransitionZone>() != null;
        }

        //To avoid too many allocations, these lists are reused for each node
        List<Node> connections = new List<Node>(3);
        List<int> costs = new List<int>(3);

        //Loop through all nodes and add connections to other nodes
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
        }
    }

    /** Returns if the connection between \a a and \a b is valid.
     * Checks for obstructions using raycasts (if enabled) and checks for height differences.\n
     * As a bonus, it outputs the distance between the nodes too if the connection is valid */
    public bool IsValidConnection(Node a, Node b, out float dist)
    {
        dist = 0;

        if ((a.position.z != b.position.z) && !(a.walkable || b.walkable))
            return false;

        Vector3 dir = (Vector3)(a.position - b.position);
        dist = dir.magnitude;

        Ray ray = new Ray((Vector3)a.position, (Vector3)(b.position - a.position));
        Ray invertRay = new Ray((Vector3)b.position, (Vector3)(a.position - b.position));

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
        serializer.AddValue("SearchTag", SearchTag);
        serializer.AddValue("CollisionMask", CollisionMask.value);
    }

    public void DeSerializeSettings(AstarSerializer serializer)
    {
        SearchTag = (string)serializer.GetValue("searchTag", typeof(string));
        CollisionMask.value = (int)serializer.GetValue("mask", typeof(int));
    }
}