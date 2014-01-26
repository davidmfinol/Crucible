﻿using UnityEngine;
using System.Collections;

[AddComponentMenu("Debug/Sound Debugger")]
public class SoundDebugger : MonoBehaviour
{
	public Transform SoundPrefab;

	void Update()
	{
		if (Input.GetKeyDown (KeyCode.J))
			Instantiate (SoundPrefab, GameManager.Player.transform.position, Quaternion.identity);
	}
}
