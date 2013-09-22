using UnityEngine;
using System;
using System.Collections;

/*
/// <summary>
/// ZombieFSM_IState defines the input for the Zombie FSM.
/// These inputs are defined as the output of the Zombie FSM's Brain.
/// </summary>
public abstract class ZombieFSM_IState : CharacterFiniteStateMachineState
{
    public ZombieFSM_IState(ZombieFSM controller) : base(controller) { }

    public sealed override Enum Update()
    {
        FSM.Brain.Update();
        return base.Update();
    }

    protected new ZombieFSM FSM
    {
        get { return (ZombieFSM) base.FSM; }
        set { base.FSM = value; }
    }

    protected bool Left
    {
        get { return FSM.Brain != null && FSM.Brain.Horizontal < 0; }
    }
    protected bool Right
    {
        get { return FSM.Brain != null && FSM.Brain.Horizontal > 0; }
    }
    protected bool Up
    {
        get { return FSM.Brain != null && FSM.Brain.Vertical > 0; }
    }
    protected bool Down
    {
        get { return FSM.Brain != null && FSM.Brain.Vertical < 0; }
    }
    protected bool Attack
    {
        get { return FSM.Brain != null && FSM.Brain.Attack; }
    }
    protected bool Jump
    {
        get { return FSM.Brain != null && FSM.Brain.Jump; }
    }
}*/