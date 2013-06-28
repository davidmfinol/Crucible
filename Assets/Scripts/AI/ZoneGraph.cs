using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Pathfinding;

/// <summary>
///  Creates a custom A* to be used to traverse through zones in the game
/// </summary>
public class ZoneGraph : NavGraph
{

    public override void Scan()
    {
        GameObject[] gos = GameObject.FindGameObjectsWithTag("Waypoint");

        if (gos == null)
        {
            CreateNodes(0);
            return;
        }

        //Create and set up the found nodes
        nodes = CreateNodes(gos.Length);
        for (int i = 0; i < gos.Length; i++)
        {
            nodes[i].position = (Int3)gos[i].transform.position;
            nodes[i].walkable = true;


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
        /*

        if (!a.walkable || !b.walkable) return false;

        Vector3 dir = (Vector3)(a.position - b.position);

        if (
            (!Mathf.Approximately(limits.x, 0) && Mathf.Abs(dir.x) > limits.x) ||
            (!Mathf.Approximately(limits.y, 0) && Mathf.Abs(dir.y) > limits.y) ||
            (!Mathf.Approximately(limits.z, 0) && Mathf.Abs(dir.z) > limits.z))
        {
            return false;
        }

        dist = dir.magnitude;
        if (maxDistance == 0 || dist < maxDistance)
        {

            if (raycast)
            {

                Ray ray = new Ray((Vector3)a.position, (Vector3)(b.position - a.position));
                Ray invertRay = new Ray((Vector3)b.position, (Vector3)(a.position - b.position));

                if (thickRaycast)
                {
                    if (!Physics.SphereCast(ray, thickRaycastRadius, dist, mask) && !Physics.SphereCast(invertRay, thickRaycastRadius, dist, mask))
                    {
                        return true;
                    }
                }
                else
                {
                    if (!Physics.Raycast(ray, dist, mask) && !Physics.Raycast(invertRay, dist, mask))
                    {
                        return true;
                    }
                }
            }
            else
            {
                return true;
            }
        }
         * */
        return false;
    }

}