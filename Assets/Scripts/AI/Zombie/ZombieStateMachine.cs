using UnityEngine;
using System;
using System.Collections;

public enum ZombieStates : int
{
    Zombie_Idle,
    Zombie_Running,
    Zombie_Falling,
    Zombie_Jumping,
    Zombie_Landing,
    Zombie_Climbing,
    Zombie_Attacking, 
    Zombie_TakingDamage
};

public class ZombieStateMachine : CharacterStateMachineBase
{
    // How high the zombie jumps
    public float JumpHeight = 4.0f;

    public override Type GetStateEnumType()
    {
        return typeof(ZombieStates);
    }

    public override Enum GetDefaultState()
    {
        return ZombieStates.Zombie_Idle;
    }

}
