using UnityEngine;
using Pathfinding;

/// <summary>
/// A node on the ZoneGraph
/// </summary>
public class ZoneNode : PointNode
{
	// We tag connections between nodes (in addition to costs) to allow different units to make different transitions
    public uint[] connectionTags; //TODO

	// We keep track of the GameObject that created this waypoint (may not be strictly necessary, but is perphaps useful)
    public GameObject GO;

	// Since the tag system is being applied to the connections, we store information about the node here
    public bool isGround;
    public bool isLeftLedge;
    public bool isRightLedge;
	public bool isClimbable;
    public bool isWall;

    public ZoneNode (AstarPath astar) : base (astar) { }
}