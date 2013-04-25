using UnityEngine;
using System;
using System.Collections;

public enum ZombieStates : int
{
    Zombie_Idle,
    Zombie_Moving,
    Zombie_Falling
};

public class ZombieStateMachine : CharacterStateMachineBase
{

    public override Type GetStateEnumType()
    {
        return typeof(ZombieStates);
    }

    public override Enum GetDefaultState()
    {
        return ZombieStates.Zombie_Idle;
    }

}
