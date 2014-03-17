using UnityEngine;
using Pathfinding;

/// <summary>
/// A node on the ZoneGraph
/// </summary>
public class ZoneNode : PointNode
{
    public uint[] connectionTags; //TODO

    public GameObject GO;

    // TODO: SEE IF WE CAN REPLACE THESE WITH THE BUILT-IN TAG SYSTEM?
    public bool isGround;
    public bool isLeftLedge;
    public bool isRightLedge;
    public bool isWall;

    public ZoneNode (AstarPath astar) : base (astar) { }
}