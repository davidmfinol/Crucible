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

	// Enemy prefabs used for level loading.
	public Transform OlympusPrefab;
	public Transform BabybotPrefab;

	// Keep track of the current game manager instance
	private static GameManager _instance;

    // Each scene should correspond to a level, and each level should have exactly one GameLevel
    private static GameLevel _currentLevel;
	
    // Global Managers
    private static UIManager _uiManager;
	private static AIManager _aiManager;
	private static AudioManager _audioManager;
    private static SubtitlesManager _subtitlesManager;
    
    // There should always be access to the player
    private static CharacterAnimator _player;

    // We keep track of where we save the game here
	private static string _gameSaveStatePath;
    private static string _levelSaveStatePrefix;

    // Set up level, player/camera, and find the Global Managers
    void Start()
    {
		_instance = this;
		_gameSaveStatePath = Path.Combine(Application.persistentDataPath, "game_progress.xml");
		_levelSaveStatePrefix = Path.Combine(Application.persistentDataPath, "level_");

		Debug.Log (Application.persistentDataPath);

		SetupLevel();

		SetupAI();

		SetupUI();

		SetupAudio();
		
        SetupSubtitles();
        
        SetupPlayer();
        
        SetupCamera();

    }
	
	private void SetupLevel()
	{
		string lastLevelName = "";

		// We need to keep only one GameLevel instance
		if(GameManager._currentLevel != null)
        {
			lastLevelName = GameManager._currentLevel.name;
			Destroy(GameManager._currentLevel.gameObject);
		}
		GameManager._currentLevel = GetComponent<GameLevel>();

    }
    
    private void SetupAI()
    {
        // We need to keep one instance of the ai manager
        if(GameManager._aiManager != null)
            Destroy(GameManager._aiManager.gameObject); // TODO: TRANSFER AI MANAGER BETTER
        GameManager._aiManager = GetComponentInChildren<AIManager>();
    }
    
    private void SetupUI()
    {
        if(_uiManager != null) //TODO: BETTER TRANSFER
            return;

        Transform ui = (Transform)Instantiate(UIPrefab, UIPrefab.transform.position, UIPrefab.transform.rotation);
        _uiManager = ui.GetComponent<UIManager>();
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
    
    private void SetupPlayer()
    {
        if(_player == null)
        {
            Transform player = (Transform)Instantiate(PlayerPrefab, _currentLevel.OffscreenPosition, Quaternion.identity);
            _player = player.GetComponent<CharacterAnimator>();
            _player.gameObject.AddComponent<AudioListener>();
        }
        
		// must delay Player spawn so that right hand can cache, etc.
		StartCoroutine ("DelayedSpawnPlayer");

    }

	public IEnumerator DelayedSpawnPlayer() {
		// TODO: ensure enough time for consistent spawning without crash.
		yield return new WaitForSeconds (1.0f);
		SpawnPlayer ();

	}

    public static void SpawnPlayer()
    {
        Debug.Log ("Loading game state.");
        _instance.LoadGameStateHelper ();
        Debug.Log ("Loading level state");
        _instance.LoadLevelStateHelper (Application.loadedLevelName);

        // Move the player to the correct spot
        PlayerCharacterInventory inventory = Player.GetComponent<PlayerCharacterInventory>();
        if (inventory != null)
        {
            Debug.Log ("Moving player to proper spawn spot " + inventory.SpawnPoint.transform.position);
            Player.transform.position = inventory.SpawnPoint.transform.position;
        }

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
        else
            Debug.LogWarning("Failed to point camera at player!");
        
        
        // set far clip plane properly to minimize any popping issues
        if( RenderSettings.fogMode == FogMode.Linear ) {
            Camera.main.farClipPlane = RenderSettings.fogEndDistance;
        } else if( RenderSettings.fogMode == FogMode.Exponential ) {
            Camera.main.farClipPlane = Mathf.Log( 1f / 0.0019f ) / RenderSettings.fogDensity;
        } else if( RenderSettings.fogMode == FogMode.ExponentialSquared ) {
            Camera.main.farClipPlane = Mathf.Sqrt( Mathf.Log( 1f / 0.0019f ) ) / RenderSettings.fogDensity;
        }
        
    }

	public static void DeleteSaves() {
		string[] files = Directory.GetFiles (Application.persistentDataPath);

		foreach( string filePath in files) {
			File.Delete(filePath);

		}

	}


	public static void LoadGameState()
    {
		_instance.LoadGameStateHelper ();
	}
	private void LoadGameStateHelper()
	{
		// restore player inventory
		PlayerCharacterInventory inventory = GameManager.Player.GetComponent<PlayerCharacterInventory> ();
	
		// Get the saved data
        GameSaveState gameSave = GameSaveState.Load(GameSaveStatePath);
        if(gameSave == null)
        {
		
            Debug.LogWarning("No game save data!");
			inventory.SpawnPoint = _currentLevel.StartPoint;
            return;

        }

		foreach(WeaponType weaponType in gameSave.PlayerState.WeaponsHeld) {
			GameObject newWeapon;

			if(weaponType == WeaponType.Weapon_Pipe) {
				newWeapon = (GameObject) Instantiate ( Resources.Load ("InHand/Pipe Weapon"), _currentLevel.OffscreenPosition, Quaternion.identity);
				inventory.Weapons.Add (newWeapon.GetComponent<Weapon>() );

			} else if(weaponType == WeaponType.Weapon_GravityGun) {
				newWeapon = (GameObject) Instantiate ( Resources.Load ("InHand/GravityGun"), _currentLevel.OffscreenPosition, Quaternion.identity);
				inventory.Weapons.Add (newWeapon.GetComponent<Weapon>() );
				
			} else if(weaponType == WeaponType.Weapon_MINE) {
				newWeapon = (GameObject) Instantiate ( Resources.Load ("InHand/Mine"), _currentLevel.OffscreenPosition, Quaternion.identity);
				inventory.Weapons.Add (newWeapon.GetComponent<Weapon>() );
				
			} 

		}

		// move player to his last checkpoint.
		GameObject[] spawnPoints = GameObject.FindGameObjectsWithTag ("Respawn");

		foreach (GameObject obj in spawnPoints) {
			Checkpoint c = obj.GetComponent<Checkpoint>();
			if(c != null && c.loc == gameSave.Checkpoint) {
				GameManager.Player.transform.position = c.transform.position;
				inventory.SpawnPoint = c.transform;
				break;
			}

		}

		// load the current weapon
		// (prevent case of only one weapon)
		GameManager.UI.CycleToNextWeapon ();
		GameManager.UI.CycleToPreviousWeapon ();

		while (GameManager.UI.CurrentWeapon != gameSave.PlayerState.CurrentWeapon)
			GameManager.UI.CycleToNextWeapon ();

		// TODO: maybe prevent double-loading once level re-loads.
		if (gameSave.LevelName != Application.loadedLevelName) {
			Application.LoadLevel(gameSave.LevelName);

		}
		    
	}


	private void LoadLevelStateHelper(string levelName)
	{
        // Get the saved data
        string path = LevelSaveStatePrefix + levelName + ".xml";
        LevelSaveState levelSave = LevelSaveState.Load(path);

		if(levelSave == null)
        {
            Debug.LogWarning("No level save data!");
            return;
        }

		Debug.Log ("Removed all dynamic objects.");
		GameManager.Level.RemoveDynamicObjects();

        // Restore all the enemies in the level
		GameManager.AI.Reset ();
		foreach (EnemySaveState enemyState in levelSave.EnemyStates)
		{
			Transform newEnemy;
			EnemyHeartBox h;

			// instantiate proper enemy
			switch(enemyState.Type)
			{
				case EnemyType.Enemy_Olympus:
				{
					Debug.Log ("Loaded Olympus");
					newEnemy = (Transform) Instantiate(OlympusPrefab, enemyState.Position, Quaternion.identity);
					OlympusAnimator oanim = newEnemy.gameObject.GetComponent<OlympusAnimator>();
					oanim.Direction = enemyState.Direction;	
					h = newEnemy.gameObject.GetComponentInChildren<EnemyHeartBox>();
					h.HitPoints = enemyState.Health;
					break;
				}

				case EnemyType.Enemy_BabyBot:
				{
					Debug.Log ("Loaded Babybot");
					newEnemy = (Transform) Instantiate(BabybotPrefab, enemyState.Position, Quaternion.identity);
					BabyBotAnimator bbanim = newEnemy.gameObject.GetComponent<BabyBotAnimator>();
					bbanim.Direction = enemyState.Direction;	
					h = newEnemy.gameObject.GetComponentInChildren<EnemyHeartBox>();
					h.HitPoints = enemyState.Health;
					break;

				}
				default:
				{
					Debug.LogWarning ("Invalid enemy type in LoadLevelState()");
					break;
				}
			}
		}

		foreach (ItemSaveState itemState in levelSave.ItemStates)
		{
			GameObject newItem;

			if(itemState.WeaponType == WeaponType.Weapon_Pipe) {
				newItem = (GameObject) Instantiate ( Resources.Load ("OnField/PipeWeapon"), itemState.Position, itemState.Rotation);
				newItem.GetComponent<Item>().Quantity = itemState.Quantity;
	
			} else if(itemState.WeaponType == WeaponType.Weapon_GravityGun) {
				newItem = (GameObject) Instantiate ( Resources.Load ("OnField/GravityGun"), itemState.Position, itemState.Rotation);
				newItem.GetComponent<Item>().Quantity = itemState.Quantity;
				
			} else if(itemState.WeaponType == WeaponType.Weapon_MINE) {
				newItem = (GameObject) Instantiate ( Resources.Load ("OnField/M.I.N.E."), itemState.Position, itemState.Rotation);
				newItem.GetComponent<Item>().Quantity = itemState.Quantity;

			}

		}

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
        level.EnemyStates = enemySaves.ToArray();

        List<ItemSaveState> itemSaves = new List<ItemSaveState>();
        foreach(GameObject item in GameObject.FindGameObjectsWithTag("Pickup"))
            itemSaves.Add(item.GetComponent<Item>().SaveState());
        level.ItemStates = itemSaves.ToArray();

        level.Save(path);
	}
	

    public static GameLevel Level
    {
        get { return _currentLevel; }
    }
    public static CharacterAnimator Player
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
