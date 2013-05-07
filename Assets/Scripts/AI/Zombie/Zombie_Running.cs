using UnityEngine;
using System;
using System.Collections;

public class Zombie_Running : CharacterStateMachineState
{
    public Zombie_Running(ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("Run");
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Running;

        // Determine movement
        float targetSpeed = 10;
        float accelerationSmoothing = 3.0f * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (Duration > 1)
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }
    
}
