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
        Direction = LevelAttributes.Instance.Player.transform.position.x > Controller.transform.position.x ? Vector3.right : Vector3.left;
        VerticalSpeed = GroundVerticalSpeed;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Running;

        // Determine movement
        float targetSpeed = ((ZombieStateMachine)Controller).MaxHorizontalSpeed;
        float accelerationSmoothing = 3.0f * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (PlayerIsInRange())
            nextState = ZombieStates.Zombie_Attacking;
        else if (Duration > 5)
            nextState = ZombieStates.Zombie_Idle;

        return nextState;
    }

    private bool PlayerIsInRange()
    {
        if (LevelAttributes.Instance.Player != null)
            return Mathf.Abs(Controller.transform.position.x - LevelAttributes.Instance.Player.transform.position.x) < 10;
        return false;
    }
    
}
