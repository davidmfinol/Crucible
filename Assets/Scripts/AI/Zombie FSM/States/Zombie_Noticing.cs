using UnityEngine;
using System;
using System.Collections;

public class Zombie_Noticing : CharacterFiniteStateMachineState
{
    public Zombie_Noticing (ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation["Default Take"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("Default Take");
        Direction = LevelAttributes.Instance.Player.transform.position.x > Controller.transform.position.x ? Vector3.right : Vector3.left;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Attacking;

        // Do movemement
        float targetSpeed = 0;
        float accelerationSmoothing = ((ZombieFSM)Controller).HorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (!Controller.animation.IsPlaying("Default Take"))
            nextState = ZombieStates.Zombie_Attacking;

        return nextState;
    }
}