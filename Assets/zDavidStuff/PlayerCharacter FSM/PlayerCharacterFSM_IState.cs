
/*
public abstract class PlayerCharacterFSM_IState : CharacterFiniteStateMachineState
{
    sealed public override Enum Update()
    {
		
		// FIXME: There should be a better way to do this.
        Weapon weapon = FSM.Weapon.GetComponent<Weapon>();
        if (WeaponPrimaryDown && weapon is Mine)
            weapon.ActivateAttack(0);
        if (SecondaryWeaponDown && weapon is Mine)
            weapon.ActivateAttack(1);
    }
    protected bool IsPlayerInputZero(float input)
    {
        return Mathf.Abs(input) < 0.1f;
    }
    public bool ShouldTransitionZ_Down
    {
        get { return DownHold && FSM.CanTransitionZ && FSM.ZLevel != FSM.Z_Down; }
    }
    public bool ShouldTransitionZ_Up
    {
        get { return UpHold && FSM.CanTransitionZ && FSM.ZLevel != FSM.Z_Up; }
    }
    
}

*/