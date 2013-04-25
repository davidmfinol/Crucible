using UnityEngine;
using System;
using System.Collections;

public class Zombie_Moving : CharacterStateMachineState
{
    public Zombie_Moving(ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("Run");
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Moving;

        if (((int)Duration) % 5 == 0)
        {
            HorizontalSpeed = -HorizontalSpeed;
            Direction = new Vector3(-Direction.x, 0, 0);
        }

        float targetSpeed = 10;
        float accelerationSmoothing = 0.5f * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);

        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;

        return nextState;
    }
    
}
