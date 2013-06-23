using UnityEngine;
using System.Collections;

public class ZombieBrain
{
    private ZombieFSM _zombieController;

    public ZombieBrain(ZombieFSM zombie)
    {
        _zombieController = zombie;
    }

    //TODO

    public float Horizontal
    {
        get { return 0; }
    }
    public float Vertical
    {
        get { return 0; }
    }
    public bool Attack
    {
        get { return true; }
    }
}
