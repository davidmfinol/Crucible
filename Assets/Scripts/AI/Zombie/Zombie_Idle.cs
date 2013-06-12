using UnityEngine;
using System;
using System.Collections;

public class Zombie_Idle : CharacterStateMachineState
{
    public Zombie_Idle(ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("Idle");
        Controller.animation.Stop();
        Direction = LevelAttributes.Instance.Player.transform.position.x > Controller.transform.position.x ? Vector3.right : Vector3.left;
        HorizontalSpeed = 0;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Idle;

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
        if (LevelAttributes.Instance.Player != null)
            return Mathf.Abs(Controller.transform.position.x - LevelAttributes.Instance.Player.transform.position.x) < 10;
        return false;
    }

}