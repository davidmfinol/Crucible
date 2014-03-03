using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Xml;
using System.Xml.Serialization;
using System.IO;

public class Checkpoint : MonoBehaviour
{
	public enum CheckpointLocation
	{
		Checkpoint_UpperOCourse,
		Checkpoint_LowerOCourse,
		Checkpoint_UpperArea

	};
	
	public CheckpointLocation loc;
	public string caption;
	public Color col;

	const string checkpointFile = "checkpoint.txt";

	void OnTriggerEnter (Collider other)
	{
		Debug.Log ("Player Entered " + caption);

		GameManager.SaveLevelState(Application.loadedLevelName);
		GameManager.SaveGameState (loc);

	}

}