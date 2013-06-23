using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

public abstract class ZombieFSM_IState : CharacterFiniteStateMachineState
{
    public ZombieFSM_IState(ZombieFSM controller) : base(controller) { }

    protected new ZombieFSM Controller
    {
        get { return (ZombieFSM)base.Controller; }
        set { base.Controller = value; }
    }
}