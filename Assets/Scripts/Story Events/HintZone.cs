using UnityEngine;
using System.Collections;

public class HintZone : MonoBehaviour {
	public enum HintType {
		Top = 0,
		SewerDoor = 1,
        Jump = 2,
        WallJump = 3,
        Sneak = 4,
        Footsteps = 5,
        Pipe = 6,
        TraversePipe = 7,
        CameraHint = 8,
        HideIn = 9,
        HideOut = 10,
        SparkPlug = 11

	};

	public HintType Type;
	public Texture2D HintGraphic;
	public float TimeUntilHint;
	public float HintDuration;

	private float _timeInZone;
	
	// Update is called once per frame
	void OnTriggerStay (Collider other) {
		if(!other.gameObject.CompareTag("Player"))
			return;

		// *** IMPLEMENT: put in a check for each hint type. ***
		if (  ( (Type == HintZone.HintType.Top) && GameManager.SaveData.HasSeenTopHint) ||
			( (Type == HintZone.HintType.SewerDoor) && GameManager.SaveData.HasSeenDoorHint) ||
            ( (Type == HintZone.HintType.Jump) && GameManager.SaveData.HasSeenJumpHint) ||
            ( (Type == HintZone.HintType.WallJump) && GameManager.SaveData.HasSeenWallJumpHint) ||
            ( (Type == HintZone.HintType.Sneak) && GameManager.SaveData.HasSeenSneakHint) ||
            ( (Type == HintZone.HintType.Footsteps) && GameManager.SaveData.HasSeenFootstepsHint) ||
            ( (Type == HintZone.HintType.Pipe) && GameManager.SaveData.HasSeenPipeHint) ||
            ( (Type == HintZone.HintType.TraversePipe) && GameManager.SaveData.HasSeenTraversePipeHint) ||
            ( (Type == HintZone.HintType.CameraHint) && GameManager.SaveData.HasSeenCameraHint) ||
            ( (Type == HintZone.HintType.HideIn) && GameManager.SaveData.HasSeenHideInHint) ||
            ( (Type == HintZone.HintType.HideOut) && GameManager.SaveData.HasSeenHideOutHint) ||
            ( (Type == HintZone.HintType.SparkPlug) && GameManager.SaveData.HasSeenSparkPlugHint))
			return;

		_timeInZone += Time.deltaTime;

		if(_timeInZone >= TimeUntilHint) {
			GameManager.UI.ShowHint(HintGraphic, HintDuration);

			// *** IMPLEMENT: save proper game data based on each hint type. ***
			if(Type == HintType.Top)
				GameManager.SaveData.HasSeenTopHint = true;
			else if(Type == HintType.SewerDoor)
				GameManager.SaveData.HasSeenDoorHint = true;
            else if(Type == HintType.Jump)
                GameManager.SaveData.HasSeenJumpHint = true;
            else if(Type == HintType.WallJump)
                GameManager.SaveData.HasSeenWallJumpHint = true;
            else if(Type == HintType.Sneak)
                GameManager.SaveData.HasSeenSneakHint = true;
            else if(Type == HintType.Footsteps)
                GameManager.SaveData.HasSeenFootstepsHint = true;
            else if(Type == HintType.Pipe)
                GameManager.SaveData.HasSeenPipeHint = true;
            else if(Type == HintType.TraversePipe)
                GameManager.SaveData.HasSeenTraversePipeHint = true;
            else if(Type == HintType.CameraHint)
                GameManager.SaveData.HasSeenCameraHint = true;
            else if(Type == HintType.HideIn)
                GameManager.SaveData.HasSeenHideInHint = true;
            else if(Type == HintType.HideOut)
                GameManager.SaveData.HasSeenHideOutHint = true;
            else if(Type == HintType.SparkPlug)
                GameManager.SaveData.HasSeenSparkPlugHint = true;

		}

	}

}
