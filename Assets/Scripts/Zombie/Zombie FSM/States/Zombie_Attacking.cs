using UnityEngine;
using System;
using System.Collections;

public class Zombie_Attacking : ZombieFSM_IState
{
    Transform _bone_L;
    Transform _bone_R;

    public Zombie_Attacking(ZombieFSM controller) : base(controller) { }

    public override void StartState()
    {
        base.StartState();
        Controller.animation["Attacking"].wrapMode = WrapMode.Once;
        Controller.animation.CrossFade("Attacking");
        Controller.ZombieAudioSource.PlayAttack();
        // Direction does not change while attacking
        VerticalSpeed = GroundVerticalSpeed;

        // We need to load the bone the first time
        if(_bone_L == null)
            _bone_L = CharacterFiniteStateMachineBase.SearchHierarchyForBone(Controller.transform, "forearm_L");
        if (_bone_R == null)
            _bone_R = CharacterFiniteStateMachineBase.SearchHierarchyForBone(Controller.transform, "forearm_R");

        // Set up hitboxed only while attacking
        _bone_L.GetComponent<Collider>().enabled = true;
        _bone_L.GetComponent<HitBox>().enabled = true;
        _bone_R.GetComponent<Collider>().enabled = true;
        _bone_R.GetComponent<HitBox>().enabled = true;
    }

    protected override Enum OnUpdate()
    {
        ZombieStates nextState = ZombieStates.Zombie_Attacking;

        // Do movement
        float targetSpeed = ((ZombieFSM)Controller).MaxHorizontalSpeed/2;
        if (Controller.animation["Attacking"].time > 0.2 && Controller.animation["Attacking"].time < 0.7)
            targetSpeed = ((ZombieFSM)Controller).MaxHorizontalSpeed;
        float accelerationSmoothing = ((ZombieFSM)Controller).HorizontalAcceleration * Time.deltaTime;
        HorizontalSpeed = Mathf.Lerp(HorizontalSpeed, targetSpeed, accelerationSmoothing);

        // Determine next state
        if (!IsGrounded)
            nextState = ZombieStates.Zombie_Falling;
        else if (!Controller.animation.IsPlaying("Attacking"))
        {
            if (Attack)
                nextState = ZombieStates.Zombie_Attacking;
            else if (Left || Right)
                nextState = ZombieStates.Zombie_Running;
            else
                nextState = ZombieStates.Zombie_Idle;
        }

        return nextState;
    }

    public override void ExitState()
    {
        // Disable hitboxed while not attacking
        _bone_L.GetComponent<Collider>().enabled = false;
        _bone_L.GetComponent<HitBox>().enabled = false;
        _bone_R.GetComponent<Collider>().enabled = false;
        _bone_R.GetComponent<HitBox>().enabled = false;
    }
}