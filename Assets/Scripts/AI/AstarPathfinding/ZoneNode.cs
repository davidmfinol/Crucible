using UnityEngine;
using Pathfinding;

/// <summary>
/// A node on the ZoneGraph
/// </summary>
public class ZoneNode : PointNode
{
	// We tag connections between nodes (in addition to costs) to allow different units to make different transitions
    public uint[] connectionTags;

	// We keep track of the GameObject that created this waypoint (may not be strictly necessary, but is perphaps useful)
    public GameObject GO;

	// TODO: CAN WE USE THE BUILT-IN ASTAR TAG SYSTEM FOR THIS?
    public bool isGround;
    public bool isLeftLedge;
    public bool isRightLedge;
	public bool isClimbable;
    public bool isWall;

    public ZoneNode (AstarPath astar) : base (astar) { }
}