using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

public abstract class ZombieFSM_IState : CharacterFiniteStateMachineState
{
    public ZombieFSM_IState(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        if (Controller.AwareOfPlayer && !Controller.PlayerIsInRange())
            Controller.AwareOfPlayer = false;
    }

    protected new ZombieFSM Controller
    {
        get { return (ZombieFSM) base.Controller; }
        set { base.Controller = value; }
    }

    protected bool Left
    {
        get { return Controller.Brain.Horizontal < 0; }
    }
    protected bool Right
    {
        get { return Controller.Brain.Horizontal > 0; }
    }
    protected bool Up
    {
        get { return Controller.Brain.Vertical > 0 ; }
    }
    protected bool Down
    {
        get { return Controller.Brain.Vertical < 0; }
    }
    protected bool Attack
    {
        get { return Controller.Brain.Attack; }
    }
}