using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;

/// <summary>
/// Game manager is a global class in charge of keeping track of all global components.
/// The global components include Level, AI, UI, Audio, and Subtitles.
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
	
	// Global Managers
	private static GameLevel _currentLevel; //TODO: RENAME TO LEVELMANAGER
	private static AIManager _aiManager;
    private static UIManager _uiManager;
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
		if(_instance != null)
			Destroy(_instance.gameObject);

		_instance = this;
		_gameSaveStatePath = Path.Combine(Application.persistentDataPath, "game_progress.xml");
		_levelSaveStatePrefix = Path.Combine(Application.persistentDataPath, "level_");

		SetupLevel();

		SetupAI();

		SetupUI();

		SetupAudio();
		
		SetupSubtitles();
		
		SetupCamera();
        
        SetupPlayer();

    }
	
	private void SetupLevel()
	{
		if(GameManager._currentLevel != null)
			Destroy(GameManager._currentLevel.gameObject);
		GameManager._currentLevel = GetComponent<GameLevel>();

    }
    
    private void SetupAI()
    {
        if(GameManager._aiManager != null)
            Destroy(GameManager._aiManager.gameObject);
        GameManager._aiManager = GetComponentInChildren<AIManager>();
    }
    
    private void SetupUI()
    {
        if(_uiManager != null) // We don't need to recreate the UI from scene to scene
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
	
	private void SetupCamera()
	{
		if(Camera.main == null) //TODO: WE DON'T NEED TO DESTROY THE CAMERA BETWEEN SCENES
			Instantiate(CameraPrefab, CameraPrefab.transform.position, CameraPrefab.transform.rotation);
		
		// set far clip plane properly to minimize any popping issues
		if( RenderSettings.fogMode == FogMode.Linear ) {
			Camera.main.farClipPlane = RenderSettings.fogEndDistance;
		} else if( RenderSettings.fogMode == FogMode.Exponential ) {
			Camera.main.farClipPlane = Mathf.Log( 1f / 0.0019f ) / RenderSettings.fogDensity;
		} else if( RenderSettings.fogMode == FogMode.ExponentialSquared ) {
			Camera.main.farClipPlane = Mathf.Sqrt( Mathf.Log( 1f / 0.0019f ) ) / RenderSettings.fogDensity;
		}
	}
    
    private void SetupPlayer()
    {
		// We don't need to recreate the Player from scene to scene
        if(_player == null)
        {
            Transform player = (Transform)Instantiate(PlayerPrefab, _currentLevel.OffscreenPosition, Quaternion.identity);
            _player = player.GetComponent<CharacterAnimator>();
            _player.gameObject.AddComponent<AudioListener>();
			_player.IgnoreMovement = true;
        }
        
		// Must delay player spawn to make sure all components are ready
		StartCoroutine ("DelayedSpawnPlayer");
    }

	public IEnumerator DelayedSpawnPlayer()
	{
		while (!AllManagersReady)
			yield return null;

		SpawnPlayer ();
		StopCoroutine ("DelayedSpawnPlayer");
	}

    public static void SpawnPlayer()
	{
		// Load from the last save files
		_instance.LoadGameStateHelper ();
		_instance.LoadLevelStateHelper (Application.loadedLevelName);

        // Move the player to the correct spot
        PlayerCharacterInventory inventory = Player.GetComponent<PlayerCharacterInventory>();
        if (inventory != null)
        {
            Debug.Log ("Moving player to proper spawn spot " + inventory.SpawnPoint.transform.position);
            Player.transform.position = inventory.SpawnPoint.transform.position;
        }

		// Enable it
		_player.IgnoreMovement = false;

        // Reset it's health to max
        HeartBox heart = Player.GetComponentInChildren<HeartBox> ();
        if(heart != null)
            heart.HitPoints = heart.MaxHitPoints;
        
        // Update the animation system if necessary
        Animator animator = Player.GetComponent<Animator> ();
        if(animator != null)
			animator.SetBool ("Respawn", true);

		// Make sure the camera is looking at the player
		CameraScrolling cameraScript = Camera.main.GetComponent<CameraScrolling>();
		if (cameraScript != null && Player != null)
			cameraScript.Target = Player.transform;
		else
			Debug.LogWarning("Failed to point camera at player!");
	}

	public static void DeleteSaves()
	{
		string[] files = Directory.GetFiles (Application.persistentDataPath);
		foreach( string filePath in files)
			File.Delete(filePath);
	}
	
	public static void LoadGameState()
    {
		_instance.LoadGameStateHelper ();
	}
	private void LoadGameStateHelper()
	{
		// restore player inventory
		PlayerCharacterInventory inventory = GameManager.Player.GetComponent<PlayerCharacterInventory> ();
	
		if (inventory != null) {
			inventory.Weapons.Clear ();
			inventory.Items.Clear ();
			GameManager.UI.UpdateWeaponImage();
		}


		// Get the saved data
		GameSaveState gameSave = GameSaveState.Load(GameSaveStatePath);
		if(gameSave == null)
        {
            Debug.LogWarning("No game save data!");
			inventory.SpawnPoint = _currentLevel.StartPoint;
            return;

		}

		// TODO: MAKE THIS MORE GENERIC
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

		// reload player inventory
		foreach(InventoryItem invItem in gameSave.PlayerState.ItemsHeld)
			inventory.AddItem( InventoryItemFactory.CreateFromType(invItem.Type, invItem.Quantity) );


		// Move player to his last checkpoint.
		GameObject[] spawnPoints = GameObject.FindGameObjectsWithTag ("Respawn");

		bool checkpointFound = false;
		foreach (GameObject obj in spawnPoints)
		{
			Checkpoint checkpoint = obj.GetComponent<Checkpoint>();
			if(checkpoint != null && checkpoint.Location == gameSave.Checkpoint)
			{
				GameManager.Player.transform.position = checkpoint.transform.position;
				inventory.SpawnPoint = checkpoint.transform;
				checkpointFound = true;
				break;
			}
		}
		if(!checkpointFound)
		{
			Debug.LogWarning("Saved checkpoint not found!");
			inventory.SpawnPoint = _currentLevel.StartPoint;
		}

		GameManager.UI.UpdateWeaponImage ();
		while (GameManager.UI.CurrentWeapon != gameSave.PlayerState.CurrentWeapon)
			GameManager.UI.CycleToNextWeapon ();

		// TODO: THIS CURRENTLY DOESN'T WORK BECAUSE LOAD GAME IS CALLED WHEN YOU START UP A SCENE, AND YOU THEN MOVE TO THE PREVIOUS SCENE
		// ONE SOLUTION IS TO SAVE THE SCENE BEFORE THEN, BUT THAT WOULD REQUIRE KEEPING TRACK OF THE CHECKPOINT
	//	if (gameSave.LevelName != Application.loadedLevelName)
	//		Application.LoadLevel(gameSave.LevelName);
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

		// TODO: MAKE THIS MORE GENERIC

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

			} else if(itemState.ItemType == Item.ItemType.Item_ComputerParts) {
				newItem = (GameObject) Instantiate ( Resources.Load ("ComputerParts"), itemState.Position, itemState.Rotation);
				newItem.GetComponent<Item>().Quantity = itemState.Quantity;

			} else if(itemState.ItemType == Item.ItemType.Item_Engine) {
				newItem = (GameObject) Instantiate ( Resources.Load ("Engine"), itemState.Position, itemState.Rotation);
				newItem.GetComponent<Item>().Quantity = itemState.Quantity;

			} else if(itemState.ItemType == Item.ItemType.Item_Propellant) {
				newItem = (GameObject) Instantiate ( Resources.Load ("Propellant"), itemState.Position, itemState.Rotation);
				newItem.GetComponent<Item>().Quantity = itemState.Quantity;

			}

		}

	}

	public static void SaveGameState(Checkpoint.CheckpointLocation location)
	{
		GameSaveState gameSave = new GameSaveState ();
		gameSave.LevelName = Application.loadedLevelName;
		gameSave.Checkpoint = location;
		gameSave.PlayerState = GameManager.Player.GetComponent<PlayerCharacterInventory> ().SaveState ();
        gameSave.Save(GameSaveStatePath);
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


	public static GameManager Instance
	{
		get { return _instance; }
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
	public static AIManager AI
	{
		get { return _aiManager; }
	}
    public static UIManager UI
    {
        get { return _uiManager; }
    }
	public static AudioManager Audio
	{
		get { return _audioManager; }
	}
	public static SubtitlesManager Subtitles
	{
		get { return _subtitlesManager; }
	}
	public bool AllManagersReady
	{
		get
		{
			PlayerCharacterInventory inventory = _player.GetComponent<PlayerCharacterInventory>();
			return (_currentLevel != null && _currentLevel.Ready) && (inventory == null || inventory.Ready) && 
				(_aiManager != null &&_aiManager.Ready) && (_uiManager != null &&_uiManager.Ready) && 
				(_audioManager != null &&_audioManager.Ready) && (_subtitlesManager != null && _subtitlesManager.Ready);
		}
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
