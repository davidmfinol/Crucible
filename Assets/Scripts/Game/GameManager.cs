using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;

/// <summary>
/// Game manager is a global class in charge of keeping track of all global components.
/// The global components include Level, AI, Inventory, UI, Audio, and Subtitles.
/// Every scene in the game NEEDS to have an instance of the game manager.
/// </summary>
[AddComponentMenu("Game/Game Manager")]
public class GameManager : MonoBehaviour
{
    // The UIManager is rather complicated, so we're going to load it as a prefab instead of creating at runtime
    public Transform UIPrefab;
    
    // Keep track of the current game manager instance
    private static GameManager _instance;

    // Camera is also important
    private CameraScrolling _mainCamera;
    
    // Global Managers
    private LevelManager _currentLevel;
    private AIManager _aiManager;
    private InventoryManager _inventory;
    private UIManager _uiManager;
    private AudioManager _audioManager;
    private SubtitlesManager _subtitlesManager;
    
    // There should always be access to the player and its shader
    private CharacterAnimator _player;
    private NewmanShader _playerShader;

    // We keep track of where we save the game here
    private string _gameSaveStatePath;
    private string _levelSaveStatePrefix;

    // We also keep track of the save data here
    private GameSaveState _saveData;
    
    // The GameManager keeps track of the last checkpoint, so that the player can go back there after death
    private Transform _lastCheckPoint;

    // is a cutscene currently playing?  turn it on/off appropriately.
    private bool _isPlayingCutscene;


    // Set up level, player/camera, and find the Global Managers
    void Start ()
    {
        if (_instance != null)
            Destroy (_instance.gameObject);

        _instance = this;
        _mainCamera = GetComponentInChildren<CameraScrolling> ();

        _gameSaveStatePath = Path.Combine (Application.persistentDataPath, "game_progress.xml");
        _levelSaveStatePrefix = Path.Combine (Application.persistentDataPath, "level_");
#if UNITY_WEBPLAYER && !UNITY_EDITOR
        _gameSaveStatePath = Path.Combine (Application.dataPath, "game_progress.xml");
        _levelSaveStatePrefix = Path.Combine (Application.dataPath, "level_");
#endif

        SetupLevel ();

        SetupAI ();

        SetupInventory ();

        SetupUI ();

        SetupAudio ();
        
        SetupSubtitles ();
        
        SetupPlayer ();

    }
    
    private void SetupLevel ()
    {
        // Destroy the previous level
        if (GameManager.Level != null)
			Destroy (GameManager.Level.gameObject);

        // And then find or create a new level
        GameObject levelManager = GameObject.FindGameObjectWithTag ("Level Manager");
        if (levelManager != null)
			GameManager._instance._currentLevel = levelManager.GetComponent<LevelManager> ();
        else
			GameManager._instance._currentLevel = new GameObject ("_Level Manager").AddComponent<LevelManager> ();

    }
    
    private void SetupAI ()
    {
        // Destroy the previous AI
        if (GameManager.AI != null)
            Destroy (GameManager.AI.gameObject);

        // And then find or create a new AI Manager
        GameObject aiManager = GameObject.FindGameObjectWithTag ("AI Manager");
        if (aiManager != null)
            GameManager._instance._aiManager = aiManager.GetComponent<AIManager> ();
        else
            GameManager._instance._aiManager = new GameObject ("_Enemies").AddComponent<AIManager> ();

    }
    
    private void SetupInventory ()
    {
        if (_inventory != null) // We don't need to recreate the inventory from scene to scene
            return;
        
        GameObject invObj = new GameObject ("_Inventory");
        // TODO: DontDestroyOnLoad (invObj);
        _inventory = invObj.AddComponent<InventoryManager> ();

    }
    
    private void SetupUI ()
    {
        if (_uiManager != null) // We don't need to recreate the UI from scene to scene
            return;

        Transform ui = (Transform)Instantiate (UIPrefab, UIPrefab.transform.position, UIPrefab.transform.rotation);
		// TODO: DontDestroyOnLoad (ui.gameObject);
        _uiManager = ui.GetComponent<UIManager> ();

    }
    
    private void SetupAudio ()
    {
        // We need to keep one instance of the audio manager
        if (GameManager.Audio != null)
            Destroy (GameManager.Audio.gameObject);
        GameManager._instance._audioManager = GetComponentInChildren<AudioManager> ();

    }
    
    private void SetupSubtitles ()
    {
        // We need to keep one instance of the audio manager
        if (GameManager.Subtitles != null)
			Destroy (GameManager.Subtitles.gameObject);
        GameManager._instance._subtitlesManager = GetComponentInChildren<SubtitlesManager> ();

    }
    
    private void SetupPlayer ()
    {
        // We don't need to recreate the Player from scene to scene
        if (_player == null) {
            GameObject player = (GameObject)Instantiate (Resources.Load ("Prefabs/Characters/Newman"), _currentLevel.OffscreenPosition, Quaternion.identity);
			// TODO: DontDestroyOnLoad(player);
            _player = player.GetComponent<CharacterAnimator> ();
            _player.gameObject.AddComponent<AudioListener>();
            _player.IgnoreMovement = true;
            _playerShader = player.GetComponent<NewmanShader>();
        }
        
        // Must delay player spawn to make sure all components are ready
        StartCoroutine (DelayedSpawnPlayer ());

    }

    public IEnumerator DelayedSpawnPlayer ()
    {
        while (!AllManagersReady)
            yield return null;

        SpawnPlayer ();

    }

    public static void SpawnPlayer ()
    {
		// Load from the last save files
        LoadGameState ();
		LoadLevelState ();

        // Move the player to the correct spot
		Player.transform.position = LastCheckPoint.position;

        // Allow the player to start moving
		Player.IgnoreMovement = false;

        // Reset it's health to max
        HeartBox heart = Player.GetComponentInChildren<HeartBox> ();
        if (heart != null)
			heart.HitPoints = heart.MaxHitPoints;
        
        // Turn off ragdoll if coming back to life
        if(Player.IsDead && Player.Settings.RootRigidBody.collider.enabled)
            Player.UndoRagdoll();

        // Make sure the camera is looking at the player
		MainCamera.Target = Player.transform;

        // TODO: MAKE THESE OBJECTIVES BE HANDLED IN ONE CENTRALIZED LOCATION/METHOD
        // *** load checkpoints he hasn't reached ***
		/*
        if (Application.loadedLevelName == "OCourse") {
            GameManager.UI.Objectives.AddObjective (GameObject.Find ("Checkpoint1")); //FIXME: EXTREMELY SLOW
            GameManager.UI.Objectives.AddObjective (GameObject.Find ("Checkpoint2"));
            GameManager.UI.Objectives.AddObjective (GameObject.Find ("Checkpoint3"));
            
        } else if (Application.loadedLevelName == "Sewer") {
            if (!_saveData.HasShownWallJump)
				GameManager.UI.Objectives.AddObjective (GameObject.Find ("TutorialTrigger1"));//FIXME: EXTREMELY SLOW


        } else if (Application.loadedLevelName == "Commercial Zone") {
			GameManager.UI.Objectives.AddObjective (GameObject.Find ("GunParts"));//FIXME: EXTREMELY SLOW
            GameManager.UI.Objectives.AddObjective (GameObject.Find ("Isolator"));
            GameManager.UI.Objectives.AddObjective (GameObject.Find ("HiggsDrive"));

		}
		*/

        // Enable the input
		GameManager.UI.EnableInput ();

    }

    public static void DeleteSaves ()
    {
        string[] files = Directory.GetFiles (Application.persistentDataPath);
        foreach (string filePath in files)
            File.Delete (filePath);

    }
    
    public static void LoadGameState ()
    {
		_instance.StartCoroutine (_instance.LoadGameStateHelper ());

    }

    private IEnumerator LoadGameStateHelper ()
	{
		// Set our first checkpoint to the default start point
		if (_saveData == null)
			LastCheckPoint = _currentLevel.DefaultStartPoint;

        // Clear out player inventory
        Inventory.Weapons.Clear ();
        Inventory.Items.Clear ();
        GameManager.UI.RefreshWeaponWheel ();

		// Get the saved data
#if UNITY_WEBPLAYER && !UNITY_EDITOR
		// TODO: FIX THIS
        WWW saveData = null;
		try { 
			saveData = new WWW (GameSaveStatePath);
			while (!saveData.isDone && saveData.error == null)
				yield return null;
			if (saveData.error != null)
				_saveData = GameSaveState.LoadFromText (saveData.text); 
		}
		finally {}
#else
        _saveData = GameSaveState.Load (GameSaveStatePath);
#endif

        // Do nothing if we failed to load a game save
        if (_saveData == null) {
            _saveData = new GameSaveState ();
            Checkpoint lastCheckpoint = LastCheckPoint.GetComponent<Checkpoint> ();
            if(lastCheckpoint != null)
                _saveData.Checkpoint = lastCheckpoint.Location;
			yield break;
        }

        // Reload the player's weapons
        foreach (WeaponSaveState weaponSave in _saveData.PlayerState.WeaponsHeld) {
            string weaponName = "Prefabs/Items/Weapons/InHand/" + weaponSave.WeaponType.ToString().Substring(7);
            GameObject createdWeapon = (GameObject)Instantiate (Resources.Load (weaponName), _currentLevel.OffscreenPosition, Quaternion.identity);
            if(createdWeapon == null) {
                Debug.LogWarning("Failed to load weapon: " + weaponName);
                continue;
            }
            Weapon newWeapon = createdWeapon.GetComponent<Weapon> ();
            newWeapon.Quantity = weaponSave.Quantity;
            Inventory.Weapons.Add (newWeapon);
        }

        // Reload the player's items
        foreach (InventoryItem invItem in _saveData.PlayerState.ItemsHeld)
            Inventory.AddItem (InventoryItemFactory.CreateFromType (invItem.Type, invItem.Quantity));

        // Move player to his last checkpoint.
        bool checkpointFound = false;
        GameObject[] spawnPoints = GameObject.FindGameObjectsWithTag ("Respawn");
        foreach (GameObject obj in spawnPoints) {
            Checkpoint checkpoint = obj.GetComponent<Checkpoint> ();
            if (checkpoint != null && checkpoint.Location == _saveData.Checkpoint) {
                GameManager.Player.transform.position = checkpoint.transform.position;
                LastCheckPoint = checkpoint.transform;
                checkpointFound = true;
                break;
            }
        }
        if (!checkpointFound) {
            //Debug.LogWarning("Saved checkpoint not found!");
            LastCheckPoint = _currentLevel.DefaultStartPoint;
        }

        // Display the correct weapon
        for (int i = 0; i < Inventory.Items.Count; i++) {
            if(GameManager.UI.CurrentWeapon == _saveData.PlayerState.CurrentWeapon)
                break;
            GameManager.UI.CycleToNextWeapon ();
        }
        GameManager.UI.RefreshWeaponWheel ();

        // TODO: THIS CURRENTLY DOESN'T WORK BECAUSE LOAD GAME IS CALLED WHEN YOU START UP A SCENE, AND YOU THEN MOVE TO THE PREVIOUS SCENE
        // ONE SOLUTION IS TO SAVE THE SCENE BEFORE THEN, BUT THAT WOULD REQUIRE KEEPING TRACK OF THE CHECKPOINT
        //  if (gameSave.LevelName != Application.loadedLevelName)
		//      Application.LoadLevel(gameSave.LevelName);
		
		yield return null;

    }

    public static void LoadLevelState ()
    {
		_instance.StartCoroutine (_instance.LoadLevelStateHelper (Application.loadedLevelName));

    }

    private IEnumerator LoadLevelStateHelper (string levelName)
    {
        // Get the saved data
        string path = LevelSaveStatePrefix + levelName + ".xml";
		LevelSaveState levelSave = null;
#if UNITY_WEBPLAYER && !UNITY_EDITOR
		WWW saveData = null;
		try { 
			saveData = new WWW (path);
			while (!saveData.isDone && saveData.error == null)
				yield return null;
			if (saveData.error != null)
				levelSave = LevelSaveState.LoadFromText (saveData.text);
		}
		finally {}
#else
		levelSave = LevelSaveState.Load (path);
#endif

        // Do nothing if we couldn't load any data
        if (levelSave == null)
			yield break;

		// Restore all the enemies in the level
		GameManager.AI.ResetEnemies ();
        foreach (EnemySaveState enemyState in levelSave.EnemyStates) {
            string enemyName = enemyState.Type.ToString().Substring(6);
            GameObject newEnemy = (GameObject)Instantiate (Resources.Load ("Prefabs/Characters/"+enemyName), enemyState.Position, enemyState.Rotation);
            if(newEnemy == null) {
                Debug.LogWarning("Failed to load enemy: " + enemyName);
                continue;
            }
            newEnemy.transform.parent = GameManager.AI.transform;
            newEnemy.GetComponent<CharacterAnimator> ().Direction = enemyState.Direction;  
            newEnemy.GetComponentInChildren<EnemyHeartBox> ().HitPoints = enemyState.Health;
        }

        // Restore all the items in the scene
        GameManager.Level.ResetItems ();
        foreach (ItemSaveState itemState in levelSave.ItemStates) {
            string itemName = "Prefabs/Items/" + itemState.ItemType.ToString().Substring(5);
            if (itemState.ItemType == Item.ItemType.Item__Weapon)
                itemName = "Prefabs/Items/Weapons/OnField/" + itemState.WeaponType.ToString().Substring(7);
            GameObject createdItem = (GameObject)Instantiate (Resources.Load (itemName), itemState.Position, itemState.Rotation);
            if(createdItem == null) {
                Debug.LogWarning("Failed to load item: " + itemName);
                continue;
            }
            createdItem.transform.parent = GameManager.Level.ItemContainer;
            Item newItem = createdItem.GetComponent<Item> ();
            newItem.Quantity = itemState.Quantity;
            newItem.WasPlaced = itemState.WasPlaced;
        }

		yield return null;

    }

    public static void SaveGameState (Checkpoint.CheckpointLocation location)
    {
		if (_instance._saveData == null)
            _instance._saveData = new GameSaveState ();

		_instance._saveData.LevelName = Application.loadedLevelName;
		_instance._saveData.Checkpoint = location;
		_instance._saveData.PlayerState = Inventory.SaveState ();
		_instance._saveData.Save (GameSaveStatePath);

    }
    
    public static void SaveLevelState (string levelName)
    {
        string path = LevelSaveStatePrefix + levelName + ".xml";
        LevelSaveState level = new LevelSaveState ();

        List<EnemySaveState> enemySaves = new List<EnemySaveState> ();
        foreach (EnemyAI enemyAI in GameManager.AI.Enemies)
            enemySaves.Add (enemyAI.SaveState ());
        level.EnemyStates = enemySaves.ToArray ();
        
        List<ItemSaveState> itemSaves = new List<ItemSaveState> ();
            foreach (Item item in GameManager.Level.Items)
                itemSaves.Add (item.SaveState ());
        level.ItemStates = itemSaves.ToArray ();

        level.Save (path);

    }

    public static CameraScrolling MainCamera {
        get { return _instance._mainCamera; }
    }

    public static LevelManager Level {
        get { return _instance._currentLevel; }
    }

    public static AIManager AI {
		get { return _instance._aiManager; }
    }

    public static InventoryManager Inventory {
		get { return _instance._inventory; }
    }

    public static UIManager UI {
		get { return _instance._uiManager; }
    }

    public static AudioManager Audio {
		get { return _instance._audioManager; }
    }

    public static SubtitlesManager Subtitles {
		get { return _instance._subtitlesManager; }
    }

    public static bool AllManagersReady {
        get {
			return (GameManager.Level != null && GameManager.Level.Ready) && (GameManager.AI != null && GameManager.AI.Ready) && 
				(GameManager.Inventory != null && GameManager.Inventory.Ready) && (GameManager.UI != null && GameManager.UI.Ready) && 
                (Audio != null && Audio.Ready) && (Subtitles != null && Subtitles.Ready);
        }
    }

    public static CharacterAnimator Player {
        get { return _instance._player; }
		set { _instance._player = value; }
    }
    
    public static CharacterAnimator PlayerShader {
        get { return _instance._playerShader; }
        set { _instance._playerShader = value; }
    }

    public static string GameSaveStatePath {
		get { return _instance._gameSaveStatePath; }
    }

    public static string LevelSaveStatePrefix {
		get { return _instance._levelSaveStatePrefix; } 
    }

    public static GameSaveState SaveData {
        get {
			if (_instance._saveData == null)
				_instance._saveData = new GameSaveState ();

			return _instance._saveData; 
        }
    }

    public static Transform LastCheckPoint {
		get { return _instance._lastCheckPoint; }
		set { _instance._lastCheckPoint = value; }
    }

    public static bool IsPlayingCutscene {
		get { return _instance._isPlayingCutscene; }
        set {
			_instance._isPlayingCutscene = value;

			if (_instance._isPlayingCutscene) {
                GameManager.UI.CraftingMenu.Close ();
                UI.DisableInput ();
            }
            else
                UI.EnableInput();

			GameManager.UI.CraftingMenu.ShowWeaponWheel(!_instance._isPlayingCutscene);
        }
    }

}
