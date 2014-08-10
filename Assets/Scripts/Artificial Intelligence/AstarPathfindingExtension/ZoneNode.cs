using UnityEngine;
using Pathfinding;

/// <summary>
/// A node on the ZoneGraph.
/// </summary>
public class ZoneNode : PointNode
{
    // We need to keep track of the GameObject that created this waypoint
    public GameObject GO;

    public ZoneNode (AstarPath astar) : base (astar)
    {
    }

}