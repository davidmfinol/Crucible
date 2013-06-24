using UnityEngine;
using System;
using System.Collections;

public class Zombie_Running : ZombieFSM_IState
{
    public Zombie_Running(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation.CrossFade("Run");
        Controller.ZombieAudioSource.PlayRunning();
        Direction = LevelAttributes.Instance.Player.transform.position.x > Controller.transform.position.x ? Vector3.right : Vector3.left;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Running;

        // Determine movement
        float targetSpeed = ((ZombieFSM)Controller).MaxHorizontalSpeed;
        float accelerationSmoothing = ((ZombieFSM)Controller).HorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (((ZombieFSM)Controller).PlayerIsInRange())
            nextState = ZombieStates.Zombie_Noticing;
        else if (Duration > 5)
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }
}
