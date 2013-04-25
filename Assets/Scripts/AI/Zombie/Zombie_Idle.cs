using UnityEngine;
using System;
using System.Collections;

public class Zombie_Idle : CharacterStateMachineState
{
    public Zombie_Idle(ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("Walk2");
        VerticalSpeed = GroundVerticalSpeed;
        Direction = new Vector3(1, 0, 0);
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Idle;

        float targetSpeed = 10;
        float accelerationSmoothing = 0.5f * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);

        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (Duration > 5)
            nextState = ZombieStates.Zombie_Moving;

        return nextState;
    }

}