/** Author: Thomas Cardwell
 *  Description: Camera Script to make a more cinematic trailer (or if you want 
 *  			 your character to be able to go anywhere with the camera).
 *  Year: 2013
 */
using UnityEngine;
using System.Collections;

public class CameraScript : MonoBehaviour 
{
	private Camera[] cameras;
	private int currentCamIndex;
	private Camera camCurrent;
	private float threshold = 0.6f;
	public float sensitivity = 3f;
	public float rotationSensitivity = 5f;
	private float speed = 1;
	private float horiz, vert;
	// Use this for initialization
	void Start () 
	{
		cameras = Camera.allCameras;
		currentCamIndex = 0;
		camCurrent = Camera.current;
	}
	
	void SelectCamera (int index) 
	{
		if(cameras != null)
		{
    		for (int i =0;i<cameras.Length; i++) 
			{
    			// Activate the selected camera
        		if (i == index && cameras[i] != null)
				{
       	    	 	cameras[i].enabled = true;
    			}
				// Deactivate all other cameras
				else if (cameras[i] != null)
				{
        			cameras[i].enabled = false;
    			}
			}
 		
		}
	}
	// Update is called once per frame
	void Update () 
	{
		camCurrent = Camera.current;
		
		if(Input.GetAxis("Right Trigger") != 0 && currentCamIndex != 1)
		{
			speed = Input.GetAxis("Right Trigger")*2 + 1;
		}
		if(Input.GetKeyDown(KeyCode.Alpha0)||(Input.GetKeyDown(KeyCode.Joystick1Button0)))
		{
			if((currentCamIndex + 1) >= cameras.Length)
				currentCamIndex = 0;
			else
				currentCamIndex++;
		}
		
		SelectCamera(currentCamIndex);
		
		// For Position movement with the left stick
		if((Input.GetAxis("Horizontal") != 0 || Input.GetAxis("Vertical") != 0) && camCurrent != null && currentCamIndex != 0)
		{
			Vector3 nextPos = new Vector3(sensitivity*speed*0.01f*Input.GetAxis("Horizontal"),sensitivity*speed*0.01f*Input.GetAxis("Vertical"),0f);
			camCurrent.transform.Translate(nextPos);
		}
		
		// For Rotation movement with the right stick
		if((Input.GetAxis("Right Stick H") != 0 || Input.GetAxis("Right Stick V") != 0) && camCurrent != null && currentCamIndex != 0)
		{
			if(Mathf.Abs(Input.GetAxis("Right Stick H")) < threshold)
				horiz = 0.0f;
			else horiz = Input.GetAxis("Right Stick H");
			
			if(Mathf.Abs(Input.GetAxis("Right Stick V")) < threshold)
				vert = 0.0f;
			else vert = Input.GetAxis("Right Stick V");
			
			Vector3 nextRot = new Vector3(rotationSensitivity*0.06f*horiz,rotationSensitivity*0.045f*vert,0f);
			camCurrent.transform.Rotate(nextRot);
		}
		
	}
}
