using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[AddComponentMenu("Character/Non-Player Character/Camera/Camera Animator")]
public class CameraAnimator : CharacterAnimator {

	public static readonly int ScanState = Animator.StringToHash ("Base Layer.Scan");

	public Vector3 Facing;       // vector around which we rotate.

	public float MinAngle;     // -90 to 0
	public float MaxAngle;     // 0 to 90
	public float ScanSpeed;    // how fast to scan
	public float PauseTime;    // seconds to pause between scans

	public float _currAngle;
	public int _currDir;
	private float _pausedTime;

	protected override void OnStart() {
		_currAngle = 0.0f;
		_currDir = 1;
		Direction = Facing;

	}
	
	protected override void CreateStateMachine ()
	{
		StateMachine [ScanState] = Scan;
	}

	protected void Scan(float elapsedTime) {
		// scan
		_currAngle += _currDir * ScanSpeed * elapsedTime;

	}

	public override EnemySaveState.EnemyType EnemyType {
		get { return EnemySaveState.EnemyType.Enemy_CameraSpotter; }
		
	}

}