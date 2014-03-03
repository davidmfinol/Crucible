using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;

/// <summary>
/// Game manager is a global class in charge of keeping track of all global components.
/// The global components include Level, Player, AI, and Audio
/// </summary>
[RequireComponent(typeof(GameLevel))]
[AddComponentMenu("Game/Game Manager")]
public class GameManager : MonoBehaviour
{
    // The GameManager is in charge of creating the player, his camera, and setting up the UI
    public Transform PlayerPrefab;
	public Camera CameraPrefab;
	public Transform UIPrefab;
	
    // Each scene should correspond to a level, and each level should have exactly one GameLevel
    private static GameLevel _currentLevel;
	
	// There should always be access to the player
	private static PlayerCharacterAnimator _player;
	
    // Global Managers
    private static UIManager _uiManager;
	private static AIManager _aiManager;
	private static AudioManager _audioManager;
	private static SubtitlesManager _subtitlesManager;

    // We keep track of where we save the game here
	private static string _gameSaveStatePath;
    private static string _levelSaveStatePrefix;
	

    // Set up level, player/camera, and find the Global Managers
    void Start()
    {
		_gameSaveStatePath = Path.Combine(Application.persistentDataPath, "game_progress.xml");

		_levelSaveStatePrefix = Path.Combine(Application.persistentDataPath, "level_");

		SetupLevel();
		
		SetupPlayer();
		
		SetupCamera();
		
		SetupUI();
		
		SetupAI();
		
		SetupAudio();
		
		SetupSubtitles();
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
        {
            Transform player = (Transform)Instantiate(PlayerPrefab, _currentLevel.StartPoint.position, Quaternion.identity);
            _player = player.GetComponent<PlayerCharacterAnimator>();
        }

		PlayerCharacterInventory inventory = Player.GetComponent<PlayerCharacterInventory>();
		if(inventory != null)
			inventory.SpawnPoint = _currentLevel.StartPoint;
		else
			Debug.LogWarning("Err: player misssing inventory");

		SpawnPlayer ();
	}
	public static void SpawnPlayer()
	{
		// Move the player to the correct spot
		PlayerCharacterInventory inventory = Player.GetComponent<PlayerCharacterInventory>();
		if(inventory != null)
			Player.transform.position = inventory.SpawnPoint.transform.position;

		// Reset it's health to max
		HeartBox heart = Player.GetComponentInChildren<HeartBox> ();
		if(heart != null)
			heart.HitPoints = heart.MaxHitPoints;

		// And update the animation system if necessary
		Animator animator = Player.GetComponent<Animator> ();
		if(animator != null)
			animator.SetBool ("Respawn", true);
	}
	
	private void SetupCamera()
	{
		if(Camera.main == null)
			Instantiate(CameraPrefab, CameraPrefab.transform.position, CameraPrefab.transform.rotation);
		
        CameraScrolling cameraScript = Camera.main.GetComponent<CameraScrolling>();
        if (cameraScript != null && Player != null)
            cameraScript.Target = Player.transform;


		// set far clip plane properly to minimize any popping issues
		if( RenderSettings.fogMode == FogMode.Linear ) {
			Camera.main.farClipPlane = RenderSettings.fogEndDistance;
		} else if( RenderSettings.fogMode == FogMode.Exponential ) {
			Camera.main.farClipPlane = Mathf.Log( 1f / 0.0019f ) / RenderSettings.fogDensity;
		} else if( RenderSettings.fogMode == FogMode.ExponentialSquared ) {
			Camera.main.farClipPlane = Mathf.Sqrt( Mathf.Log( 1f / 0.0019f ) ) / RenderSettings.fogDensity;
		}

    }
    
    private void SetupUI()
    {
        if(_uiManager != null) //TODO: BETTER TRANSFER
            return;

        Transform ui = (Transform)Instantiate(UIPrefab, UIPrefab.transform.position, UIPrefab.transform.rotation);
        _uiManager = ui.GetComponent<UIManager>();
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
	
	private void SetupSubtitles()
	{
		// We need to keep one instance of the audio manager
		if(GameManager._subtitlesManager != null)
			Destroy(GameManager._subtitlesManager.gameObject); // TODO: TRANSFER SUBTITLES MANAGER BETTER
		GameManager._subtitlesManager = GetComponentInChildren<SubtitlesManager>();
	}
	
	public static void LoadGameState()
	{
        // Get the saved data
        GameSaveState gameSave = GameSaveState.Load(GameSaveStatePath);
        if(gameSave == null)
        {
            Debug.LogWarning("No game save data!");
            return;
        }

        // Use the save data to set up the game
        Application.LoadLevel(gameSave.LevelName);
        LoadLevelState(gameSave.LevelName);
        // TODO
	}
	
	public static void LoadLevelState(string levelName)
	{
        // Get the saved data
        string path = LevelSaveStatePrefix + levelName + ".xml";
        LevelSaveState levelSave = LevelSaveState.Load(path);
        if(levelSave == null)
        {
            Debug.LogWarning("No level save data!");
            return;
        }

        // Use the save data to set up the level
        // TODO
	}
	
	public static void SaveGameState(Checkpoint.CheckpointLocation loc)
	{
		GameSaveState g = new GameSaveState ();
		g.LevelName = Application.loadedLevelName;
		g.Checkpoint = loc;
		g.PlayerState = GameManager.Player.GetComponent<PlayerCharacterInventory> ().SaveState ();
        g.Save(GameSaveStatePath);
	}
	
	public static void SaveLevelState(string levelName)
	{
		string path = LevelSaveStatePrefix + levelName + ".xml";

		LevelSaveState level = new LevelSaveState ();
        List<EnemySaveState> enemySaves = new List<EnemySaveState>();
		foreach (EnemyAI enemyAI in GameManager.AI.Enemies)
            enemySaves.Add ( enemyAI.SaveState() );
        level.enemyStates = enemySaves.ToArray();

        level.Save(path);
	}
	

    public static GameLevel Level
    {
        get { return _currentLevel; }
    }
    public static PlayerCharacterAnimator Player
	{
		get { return _player; }
		set { _player = value; }
    }
    public static UIManager UI
    {
        get { return _uiManager; }
    }
	public static AIManager AI
	{
		get { return _aiManager; }
	}
	public static AudioManager Audio
	{
		get { return _audioManager; }
	}
	public static SubtitlesManager Subtitles
	{
		get { return _subtitlesManager; }
	}

	public static string GameSaveStatePath
	{
		get { return _gameSaveStatePath; }
	}
	public static string LevelSaveStatePrefix
	{
		get { return _levelSaveStatePrefix; } 
	}
}
