// Check Y before refactoring

using UnityEngine;
using System.Collections;

public class WeaponsGui : MonoBehaviour {
	
	public int AnimationSteps = 14; // Needs to be even number	
	
	int CenterSlot = 1;
	public bool Animating = false;
	public bool LeftSelect = false;
	public bool RightSelect = false;

	int CurrentAnimationStep;
	
	GameObject Slot1; // = GameObject.Find("GuiSlot1");
	GameObject Slot2; // = GameObject.Find("GuiSlot2");
	GameObject Slot3; // = GameObject.Find("GuiSlot3");
	
	ArrayList Slots;
	
	float moveToSlot1X;
//	float moveToSlot1Z;	
	float moveToSlot1Y;
	float moveToSlot2X;
	float moveToSlot2Z;	
	float moveToSlot2Y;
	float moveToSlot3X;
	float moveToSlot3Z;	
	float moveToSlot3Y;
	
	float rotToSlot1Y;
	float rotToSlot2Y;
	float rotToSlot3Y;
	
	private PlayerCharacterSettings _player;
    Transform whip;
	Transform mine;
	Transform bone;	
	
	
	// Use this for initialization
	void Start () {
		
		Slot1 = this.transform.FindChild("GuiSlot1").gameObject;
		Slot2 = this.transform.FindChild("GuiSlot2").gameObject;
		Slot3 = this.transform.FindChild("GuiSlot3").gameObject;
		
		//Slot1 = GameObject.Find("GuiSlot1");
		//Slot2 = GameObject.Find("GuiSlot2");
		//Slot3 = GameObject.Find("GuiSlot3");	
		
		Slots = new ArrayList(){Slot1, Slot2, Slot3};
		
		moveToSlot3X = Mathf.Abs((Slot2.transform.position.x - Slot3.transform.position.x) / AnimationSteps);
		moveToSlot3Y = Mathf.Abs((Slot2.transform.position.y - Slot3.transform.position.y) / AnimationSteps);
		moveToSlot3Z = Mathf.Abs((Slot2.transform.position.z - Slot3.transform.position.z) / AnimationSteps);
		rotToSlot3Y = Mathf.Abs((Slot2.transform.eulerAngles.y - Slot3.transform.eulerAngles.y) / AnimationSteps);
		
		moveToSlot2X = Mathf.Abs((Slot1.transform.position.x - Slot2.transform.position.x) / AnimationSteps);
		moveToSlot2Y = Mathf.Abs((Slot1.transform.position.y - Slot2.transform.position.y) / AnimationSteps);
		moveToSlot2Z = Mathf.Abs((Slot1.transform.position.z - Slot2.transform.position.z) / AnimationSteps);
		rotToSlot2Y = Mathf.Abs((360 - (Slot1.transform.eulerAngles.y - Slot2.transform.eulerAngles.y)) / AnimationSteps);
		
		moveToSlot1X = Mathf.Abs((Slot3.transform.position.x - Slot1.transform.position.x) / AnimationSteps);
		moveToSlot1Y = Mathf.Abs((Slot3.transform.position.y - Slot1.transform.position.y) / AnimationSteps);
		//moveToSlot1Z = Mathf.Abs((Slot3.transform.position.z - Slot1.transform.position.z) / AnimationSteps);
		rotToSlot1Y = Mathf.Abs((Slot3.transform.eulerAngles.y - Slot1.transform.eulerAngles.y) / AnimationSteps);
		
		//Vector3 Slot3Pos = new Vector3(Slot3.transform.position());
		
		CurrentAnimationStep = AnimationSteps;
		
		_player = GameManager.Player.GetComponent<PlayerCharacterSettings>();
		
	}
	
	// Update is called once per frame
	void Update () {
		//print ("rot amount: " + Mathf.Abs((Slot2.transform.rotation.y - Slot3.transform.rotation.y)));
		KeyboardControl();

	}
	
	void FixedUpdate (){
		AnimateGui();
	}
	
	void KeyboardControl(){
		
		if(!Animating){
			// Select Left Slot
			if(Input.GetKeyDown(KeyCode.Q)){
				Animating = true;
				LeftSelect = true;
				
			}
			// Select Right Slot
			else if(Input.GetKeyDown(KeyCode.E)){
				Animating = true;
				RightSelect = true;
				/*
				Destroy(playerController.Weapon.gameObject);

				mine = (Transform)Instantiate(playerController.Mine, bone.position, Quaternion.identity);
				mine.parent = bone;				
				playerController.Weapon = mine;				
				*/
				
			}
		}		
	}
	
	void WeaponSelect(){
				//Destroy(playerController.Weapon.gameObject);
				
				if(CenterSlot == 2){
					_player.Weapon = _player.GravityGunPrefab;
				}
				else if(CenterSlot == 1){
					_player.Weapon = _player.PipePrefab;				
				}
					
				else if(CenterSlot == 0){
					_player.Weapon =  _player.MinePrefab;					
				}			
	}
				
	void AnimateGui(){
		
		if(Animating){
			if(LeftSelect){
				
				//Vector3 moveCenterRight = new Vector3(0.008f, 0, 0.0012f);
				Vector3 moveCenterRight = new Vector3(moveToSlot3X, moveToSlot3Y, moveToSlot3Z);
				Vector3 rotateCenterRight = new Vector3(0, rotToSlot3Y, 0);	
				((GameObject)Slots[CenterSlot]).transform.Rotate(rotateCenterRight, Space.World);
				((GameObject)Slots[CenterSlot]).transform.Translate(moveCenterRight, Space.World);
				
				// Vector3 moveLeftCenter = new Vector3(0.008f, 0, -0.0012f);
				// Vector3 rotateLeftCenter = new Vector3(0, 0.9f, 0);
				Vector3 moveLeftCenter = new Vector3(moveToSlot2X, moveToSlot2Y, -1 * moveToSlot2Z);
				Vector3 rotateLeftCenter = new Vector3(0, rotToSlot2Y, 0);
				((GameObject)Slots[EndGuiArrayChecker(CenterSlot, -1)]).transform.Rotate(rotateLeftCenter, Space.World);
				((GameObject)Slots[EndGuiArrayChecker(CenterSlot, -1)]).transform.Translate(moveLeftCenter, Space.World);
				
				/*
				Vector3 moveRightHalfLeft = new Vector3(-0.016f, 0, 0.02f);
				Vector3 rotateRightHalfLeft = new Vector3(0, -1.7f, 0);
				
				Vector3 moveRightFullLeft = new Vector3(-0.016f, 0, -0.02f);
				Vector3 rotateRightFullLeft = new Vector3(0, -1.7f, 0);*/
				
				Vector3 moveRightHalfLeft = new Vector3(-1 * moveToSlot1X, moveToSlot1Y, 0.03f);
				Vector3 rotateRightHalfLeft = new Vector3(0, rotToSlot1Y, 0);	
				Vector3 moveRightFullLeft = new Vector3(-1 * moveToSlot1X, moveToSlot1Y, -1 * 0.03f);
				Vector3 rotateRightFullLeft = new Vector3(0, rotToSlot1Y, 0);
				
				if(CurrentAnimationStep > AnimationSteps / 2){
					((GameObject)Slots[EndGuiArrayChecker(CenterSlot, 1)]).transform.Rotate(rotateRightHalfLeft, Space.World);
					((GameObject)Slots[EndGuiArrayChecker(CenterSlot, 1)]).transform.Translate(moveRightHalfLeft, Space.World);
				}
				else{
					((GameObject)Slots[EndGuiArrayChecker(CenterSlot, 1)]).transform.Rotate(rotateRightFullLeft, Space.World);
					((GameObject)Slots[EndGuiArrayChecker(CenterSlot, 1)]).transform.Translate(moveRightFullLeft, Space.World);
					
				}
				
			}
			if(RightSelect){
				// copy?
				Vector3 moveCenterLeft = new Vector3(moveToSlot2X, moveToSlot2Y, -1 * moveToSlot2Z);
				Vector3 rotateCenterLeft = new Vector3(0, rotToSlot2Y, 0);	
				((GameObject)Slots[CenterSlot]).transform.Rotate(-1 * rotateCenterLeft, Space.World);
				((GameObject)Slots[CenterSlot]).transform.Translate(-1 * moveCenterLeft, Space.World);	
				
				//copy? * -1
				Vector3 moveRightCenter = new Vector3(-1 * moveToSlot3X, moveToSlot3Y, -1 * moveToSlot3Z);
				Vector3 rotateRightCenter = new Vector3(0, -1 * rotToSlot3Y, 0);
				((GameObject)Slots[EndGuiArrayChecker(CenterSlot, + 1)]).transform.Rotate(rotateRightCenter, Space.World);
				((GameObject)Slots[EndGuiArrayChecker(CenterSlot, + 1)]).transform.Translate(moveRightCenter, Space.World);
				
				Vector3 moveLeftHalfRight = new Vector3(moveToSlot1X, moveToSlot1Y, 0.03f);
				Vector3 rotateLeftHalfRight = new Vector3(0, -1 * rotToSlot1Y, 0);	
				Vector3 moveLeftFullRight = new Vector3(moveToSlot1X, moveToSlot1Y, -1 * 0.03f);
				Vector3 rotateLeftFullRight = new Vector3(0, -1 * rotToSlot1Y, 0);
				
				if(CurrentAnimationStep > AnimationSteps / 2){
					((GameObject)Slots[EndGuiArrayChecker(CenterSlot, -1)]).transform.Rotate(rotateLeftHalfRight, Space.World);
					((GameObject)Slots[EndGuiArrayChecker(CenterSlot, -1)]).transform.Translate(moveLeftHalfRight, Space.World);
				}
				else{
					((GameObject)Slots[EndGuiArrayChecker(CenterSlot, -1)]).transform.Rotate(rotateLeftFullRight, Space.World);
					((GameObject)Slots[EndGuiArrayChecker(CenterSlot, -1)]).transform.Translate(moveLeftFullRight, Space.World);
				}
			}			
			
			CurrentAnimationStep--;
			if(CurrentAnimationStep <= 0){
				CurrentAnimationStep = AnimationSteps;
				Animating = false;		
				if(LeftSelect){
					LeftSelect = false;
					CenterSlot--;
					if(CenterSlot < 0){
						CenterSlot = 2;
						
						Animating = true;
						LeftSelect = true;
						
					}
					else{
						WeaponSelect();	
					}
				}
				else if(RightSelect){
					RightSelect = false;
					CenterSlot++;
					if(CenterSlot > 2){
						CenterSlot = 0;
					}
					if(CenterSlot == 2){
						Animating = true;
						RightSelect = true;
					}
					else{
						WeaponSelect();	
					}
				}
				
				//WeaponSelect();
			}			
	
		}
					
	}
	
	int EndGuiArrayChecker(int curSelect, int posNeg){
		int maxSlot = 2;
		int minSlot = 0;
		
		curSelect += posNeg;
		if(curSelect > maxSlot)
			curSelect = minSlot;
		if(curSelect < minSlot)
			curSelect = maxSlot;
		/*
		if(posNeg > 0){
			curSelect++;
			if(curSelect > maxSlot)
				curSelect = minSlot;
		}
		else if(posNeg < 0){
			curSelect--;
			if(curSelect < minSlot)
				curSelect = maxSlot;
		}
		*/
		return curSelect;
	}
}
