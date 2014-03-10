﻿using UnityEngine;
using Pathfinding;

/// <summary>
/// A node on the ZoneGraph
/// </summary>
public class ZoneNode : PointNode
{
    public GameObject GO;

	public bool isTransition;
    public bool isGround;
    public bool isLeftLedge;
    public bool isRightLedge;

    public ZoneNode (AstarPath astar) : base (astar) { }
}