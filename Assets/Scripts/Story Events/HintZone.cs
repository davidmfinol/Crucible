using UnityEngine;
using System.Collections;

public class HintZone : MonoBehaviour {
	public enum HintType {
		SewerDoor = 1,
        Jump = 2,
        WallJump = 3

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
		if ( ( (Type == HintZone.HintType.SewerDoor) && GameManager.SaveData.HasSeenDoorHint) ||
            ( (Type == HintZone.HintType.Jump) && GameManager.SaveData.HasSeenJumpHint) ||
            ( (Type == HintZone.HintType.WallJump) && GameManager.SaveData.HasSeenWallJumpHint))
			return;

		_timeInZone += Time.deltaTime;

		if(_timeInZone >= TimeUntilHint) {
			GameManager.UI.ShowHint(HintGraphic, HintDuration);

			// *** IMPLEMENT: save proper game data based on each hint type. ***
			if(Type == HintType.SewerDoor)
				GameManager.SaveData.HasSeenDoorHint = true;
            else if(Type == HintType.Jump)
                GameManager.SaveData.HasSeenJumpHint = true;
            else if(Type == HintType.WallJump)
                GameManager.SaveData.HasSeenWallJumpHint = true;

		}

	}

}
