using UnityEngine;
using System;
using System.Collections;

public class Zombie_Noticing : CharacterStateMachineState
{
    public Zombie_Noticing (ZombieStateMachine controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation["Attacking"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("Attacking");
        Direction = LevelAttributes.Instance.Player.transform.position.x > Controller.transform.position.x ? Vector3.right : Vector3.left;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Attacking;

        // Do movement
        float targetSpeed = 5;
        float accelerationSmoothing = 3.0f * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (!Controller.animation.IsPlaying("Attacking"))
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }
}