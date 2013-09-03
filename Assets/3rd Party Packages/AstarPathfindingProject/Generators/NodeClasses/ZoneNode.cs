using UnityEngine;
using Pathfinding;

/// <summary>
/// A node on the ZoneGraph
/// </summary>
public class ZoneNode : Node
{
    public GameObject GO;
	public bool isTransition;
	public bool isGround;
}