﻿using UnityEngine;
using System.Collections;

/// <summary>
/// Game manager is a global class in charge of keeping track of all global components.
/// The global components include Level, Player, AI, and Audio
/// </summary>
[RequireComponent(typeof(GameLevel))]
[AddComponentMenu("Game/Game Manager")]
public class GameManager : MonoBehaviour
{
    // The GameManager is in charge of creating the player and his camera
    public Transform PlayerPrefab;
	public Camera CameraPrefab;
	
    // Each scene should correspond to a level, and each level should have exactly one GameLevel
    private static GameLevel _currentLevel;
	
	// There should always be access to the player
	private static Transform _player;
	
	// Global Managers
	private static AIManager _aiManager;
	private static AudioManager _audioManager;
	
	
    // Set up level, player/camera, and find the Global Managers
    void Start()
    {
		SetupLevel();
		
		SetupPlayer();
		
		SetupCamera();
		
		SetupAI();
		
		SetupAudio();
    }
	
	private void SetupLevel()
	{
		// We need to keep only one GameLevel instance
		if(GameManager._currentLevel != null)
			Destroy(GameManager._currentLevel.gameObject);
		GameManager._currentLevel = GetComponent<GameLevel>();
	}
	
	private void SetupPlayer()
	{
		if(_player == null)
        	_player = (Transform)Instantiate(PlayerPrefab, _currentLevel.StartPoint.position, Quaternion.identity);
		
        PlayerCharacterSettings playerSettings = _player.GetComponent<PlayerCharacterSettings>();
		playerSettings.Weapon = playerSettings.GravityGunPrefab;
        playerSettings.SpawnPoint = _currentLevel.StartPoint;
	}
	
	private void SetupCamera()
	{
		if(Camera.main == null)
			Instantiate(CameraPrefab, CameraPrefab.transform.position, CameraPrefab.transform.rotation);
		
        CameraScrolling cameraScript = Camera.main.GetComponent<CameraScrolling>();
        if (cameraScript != null && Player != null)
            cameraScript.Target = Player.transform;
	}
	
	private void SetupAI()
	{
		// We need to keep one instance of the ai manager
		if(GameManager._aiManager != null)
			Destroy(GameManager._aiManager.gameObject); // TODO: TRANSFER AI MANAGER BETTER
		GameManager._aiManager = GetComponentInChildren<AIManager>();
	}
	
	private void SetupAudio()
	{
		// We need to keep one instance of the audio manager
		if(GameManager._audioManager != null)
			Destroy(GameManager._audioManager.gameObject); // TODO: TRANSFER AUDIO MANAGER BETTER
		GameManager._audioManager = GetComponentInChildren<AudioManager>();
	}
	
	
	/// <summary>
	/// Gets the current GameLevel.
	/// </summary>
	/// <value>
	/// The current GameLevel.
	/// </value>
    public static GameLevel Level
    {
        get { return _currentLevel; }
    }
	
	/// <summary>
	/// Gets or sets the player.
	/// </summary>
	/// <value>
	/// The player.
	/// </value>
	public static Transform Player
	{
		get { return _player; }
		set { _player = value; }
	}
	
	/// <summary>
	/// Gets the AI Manager.
	/// </summary>
	/// <value>
	/// The AI Manager.
	/// </value>
	public static AIManager AI
	{
		get { return _aiManager; }
	}
	
	/// <summary>
	/// Gets the Audio Manager.
	/// </summary>
	/// <value>
	/// The Audio Manager.
	/// </value>
	public static AudioManager Audio
	{
		get { return _audioManager; }
	}
}