using UnityEngine;
using System.Collections;
using Pathfinding;

public class ZombieBrain
{
    //The point to move to
    public Vector3 targetPosition;

    private ZombieFSM _zombieController;
    private float _horizontal = 0;
    private float _vertical = 0;
    private bool _attack = false;
    private bool _jump = false;

    public ZombieBrain(ZombieFSM zombie)
    {
        _zombieController = zombie;
    }

    //TODO
    public void Update()
    {

    }

    public float Horizontal
    {
        get { return _horizontal; }
    }
    public float Vertical
    {
        get { return _vertical; }
    }
    public bool Attack
    {
        get { return _attack; }
    }
    public bool Jump
    {
        get { return _jump; }
    }
}
