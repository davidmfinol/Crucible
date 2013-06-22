public enum PlayerCharacterStates
{
    // Ground Basic
    PlayerCharacter_Idle,
    PlayerCharacter_Stepping,
    PlayerCharacter_Running,
    PlayerCharacter_Skidding,
    PlayerCharacter_Turning,
    PlayerCharacter_StepCancelling,

    // Air Basic
    PlayerCharacter_Landing,
    PlayerCharacter_Jumping,
    PlayerCharacter_Falling,
    //PlayerCharacter_DoubleJumping,
    //PlayerCharacter_WallGrabbing,
    //PlayerCharacter_WallKicking,

    // Climbing and Hanging
    PlayerCharacter_Hanging,
    PlayerCharacter_ClimbingLedge,
    PlayerCharacter_ClimbingLadder,
    PlayerCharacter_ClimbingPipe,

    // Combat
    PlayerCharacter_AttackCombo1,
    PlayerCharacter_AttackCombo2,
    PlayerCharacter_AttackCombo3,
    PlayerCharacter_AttackHold,

    PlayerCharacter_TransitioningZ,
};
