using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[AddComponentMenu("Character/Non-Player Character/Camera/Camera Animator")]
public class CameraAnimator : CharacterAnimator {
	
	protected override void CreateStateMachine ()
	{
				
	}

	public override EnemySaveState.EnemyType EnemyType {
		get { return EnemySaveState.EnemyType.Enemy_CameraSpotter; }
		
	}

}