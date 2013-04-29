using UnityEngine;
using System;
using System.Collections;

public class Zombie_Idle : CharacterStateMachineState
{
    private GameObject player = null; 
    public Zombie_Idle(ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("Idle");
        Direction = Vector3.right;
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Idle;

        Direction = -Direction;

        player = GameObject.FindGameObjectWithTag("Player");
        if (player != null)
        {
            if (player.transform.position.x > Controller.transform.position.x)
                Direction = Vector3.right;
            else
                Direction = Vector3.left;
        }

        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (PlayerIsInRange())
            nextState = ZombieStates.Zombie_Attacking;
        else
            nextState = ZombieStates.Zombie_Running;

        return nextState;
    }

    private bool PlayerIsInRange()
    {
        if (player != null)
            return Mathf.Abs(Controller.transform.position.x - player.transform.position.x) < 10;
        return false;
    }

}