using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

public abstract class ZombieFSM_IState : CharacterFiniteStateMachineState
{
    public ZombieFSM_IState(ZombieFSM controller) : base(controller) { }
}