using UnityEngine;
using System.Collections;

public class ZombieBrain
{
    private ZombieFSM _zombieController;
    private float _horizontal = 0;
    private float _vertical = 0;
    private bool _attack = false;

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
}
