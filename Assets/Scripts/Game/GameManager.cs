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
    // HACK: WE'RE TRYING TO AVOID AN ERROR WITH MECANIM
    public Transform PlayerCharacterPrefab;
    // HACK: WE'RE TRYING TO AVOID AN ERROR WITH MECANIM
    public Transform PlayerCharacterPrefab2;

    // The UIManager is rather complicated, so we're going to load it as a prefab instead of creating at runtime
    public Transform UIPrefab;
    
    // Keep track of the current game manager instance
    private static GameManager _instance;

    // Camera is also important
    private CameraScrolling _mainCamera;
    
    // Global Managers
    private static LevelManager _currentLevel;
    private static AIManager _aiManager;
    private static InventoryManager _inventory;
    private static UIManager _uiManager;
    private static AudioManager _audioManager;
    private static SubtitlesManager _subtitlesManager;
    
    // There should always be access to the player
    private static CharacterAnimator _player;

    // We keep track of where we save the game here
    private static string _gameSaveStatePath;
    private static string _levelSaveStatePrefix;

    // We also keep track of the save data here
    private static GameSaveState _saveData;
    
    // The GameManager keeps track of the last checkpoint, so that the player can go back there after death
    private static Transform _lastCheckPoint;

    // is a cutscene currently playing?  turn it on/off appropriately.
    private static bool _isPlayingCutscene;


    // Set up level, player/camera, and find the Global Managers
    void Start ()
    {
        if (_instance != null)
            Destroy (_instance.gameObject);

        _instance = this;
        _mainCamera = GetComponentInChildren<CameraScrolling> ();

        _gameSaveStatePath = Path.Combine (Application.persistentDataPath, "game_progress.xml");
        _levelSaveStatePrefix = Path.Combine (Application.persistentDataPath, "level_");

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
        if (GameManager._currentLevel != null)
            Destroy (GameManager._currentLevel.gameObject);

        // And then find or create a new level
        GameObject levelManager = GameObject.FindGameObjectWithTag ("Level Manager");
        if (levelManager != null)
            GameManager._currentLevel = levelManager.GetComponent<LevelManager> ();
        else
            GameManager._currentLevel = new GameObject ("_Level Manager").AddComponent<LevelManager> ();

    }
    
    private void SetupAI ()
    {
        // Destroy the previous AI
        if (GameManager._aiManager != null)
            Destroy (GameManager._aiManager.gameObject);
        GameManager._aiManager = GetComponentInChildren<AIManager> ();

        // And then find or create a new AI Manager
        GameObject aiManager = GameObject.FindGameObjectWithTag ("AI Manager");
        if (aiManager != null)
            GameManager._aiManager = aiManager.GetComponent<AIManager> ();
        else
            GameManager._aiManager = new GameObject ("_Enemies").AddComponent<AIManager> ();

    }
    
    private void SetupInventory ()
    {
        if (_inventory != null) // We don't need to recreate the inventory from scene to scene
            return;
        
        GameObject invObj = new GameObject ("_Inventory");
        DontDestroyOnLoad (invObj);
        _inventory = invObj.AddComponent<InventoryManager> ();

    }
    
    private void SetupUI ()
    {
        if (_uiManager != null) // We don't need to recreate the UI from scene to scene
            return;

        Transform ui = (Transform)Instantiate (UIPrefab, UIPrefab.transform.position, UIPrefab.transform.rotation);
        DontDestroyOnLoad (ui.gameObject);
        _uiManager = ui.GetComponent<UIManager> ();

    }
    
    private void SetupAudio ()
    {
        // We need to keep one instance of the audio manager
        if (GameManager._audioManager != null)
            Destroy (GameManager._audioManager.gameObject);
        GameManager._audioManager = GetComponentInChildren<AudioManager> ();

    }
    
    private void SetupSubtitles ()
    {
        // We need to keep one instance of the audio manager
        if (GameManager._subtitlesManager != null)
            Destroy (GameManager._subtitlesManager.gameObject);
        GameManager._subtitlesManager = GetComponentInChildren<SubtitlesManager> ();

    }
    
    private void SetupPlayer ()
    {
        // We don't need to recreate the Player from scene to scene
        if (_player == null) {
            GameObject player = (GameObject)Instantiate (Resources.Load ("Prefabs/Characters/PlayerCharacter"), _currentLevel.OffscreenPosition, Quaternion.identity);
            DontDestroyOnLoad(player);
            _player = player.GetComponent<CharacterAnimator> ();
            _player.gameObject.AddComponent<AudioListener>();
            _player.IgnoreMovement = true;
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
        _player.IgnoreMovement = false;

        // Reset it's health to max
        HeartBox heart = Player.GetComponentInChildren<HeartBox> ();
        if (heart != null)
            heart.HitPoints = heart.MaxHitPoints;
        
        // Update the animation system if necessary
        Animator animator = Player.GetComponent<Animator> ();
        if (animator != null && Player.IsDead)
            animator.SetBool (MecanimHashes.Respawn, true);

        // Make sure the camera is looking at the player
        MainCamera.Target = Player.transform;

        // TODO: MAKE THESE OBJECTIVES BE HANDLED IN ONE CENTRALIZED LOCATION/METHOD
        // *** load checkpoints he hasn't reached ***
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
        _instance.LoadGameStateHelper ();

    }

    private void LoadGameStateHelper ()
    {
        // Clear out player inventory
        Inventory.Weapons.Clear ();
        Inventory.Items.Clear ();
        GameManager.UI.RefreshWeaponWheel ();

        // Get the saved data
        _saveData = GameSaveState.Load (GameSaveStatePath);

        // Do nothing if we failed to load a game save
        if (_saveData == null) {
            LastCheckPoint = _currentLevel.DefaultStartPoint;
            _saveData = new GameSaveState ();
            Checkpoint lastCheckpoint = LastCheckPoint.GetComponent<Checkpoint> ();
            if(lastCheckpoint != null)
                _saveData.Checkpoint = lastCheckpoint.Location;
            return;
        }

        // Reload the player's weapons
        foreach (WeaponSaveState weaponSave in _saveData.PlayerState.WeaponsHeld) {
            string weaponName = "Prefabs/Weapons/InHand/" + weaponSave.WeaponType.ToString().Substring(7);
            GameObject createdWeapon = (GameObject)Instantiate (Resources.Load (weaponName), _currentLevel.OffscreenPosition, Quaternion.identity);
            if(createdWeapon == null) {
                Debug.Log("Failed to load weapon: " + weaponName);
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

    }

    public static void LoadLevelState ()
    {
        _instance.LoadLevelStateHelper (Application.loadedLevelName);

    }

    private void LoadLevelStateHelper (string levelName)
    {
        // Get the saved data
        string path = LevelSaveStatePrefix + levelName + ".xml";
        LevelSaveState levelSave = LevelSaveState.Load (path);

        // Do nothing if we couldn't load any data
        if (levelSave == null)
            return;

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
                itemName = "Prefabs/Weapons/OnField/" + itemState.WeaponType.ToString().Substring(7);
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

    }

    public static void SaveGameState (Checkpoint.CheckpointLocation location)
    {
        if (_saveData == null)
            _saveData = new GameSaveState ();

        _saveData.LevelName = Application.loadedLevelName;
        _saveData.Checkpoint = location;
        _saveData.PlayerState = Inventory.SaveState ();
        _saveData.Save (GameSaveStatePath);

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
        get { return _currentLevel; }
    }

    public static AIManager AI {
        get { return _aiManager; }
    }

    public static InventoryManager Inventory {
        get { return _inventory; }
    }

    public static UIManager UI {
        get { return _uiManager; }
    }

    public static AudioManager Audio {
        get { return _audioManager; }
    }

    public static SubtitlesManager Subtitles {
        get { return _subtitlesManager; }
    }

    public static bool AllManagersReady {
        get {
            return (_currentLevel != null && _currentLevel.Ready) && (_aiManager != null && _aiManager.Ready) && 
                (_inventory != null && _inventory.Ready) && (_uiManager != null && _uiManager.Ready) && 
                (_audioManager != null && _audioManager.Ready) && (_subtitlesManager != null && _subtitlesManager.Ready);
        }
    }

    public static CharacterAnimator Player {
        get { return _player; }
        set { _player = value; }
    }

    public static string GameSaveStatePath {
        get { return _gameSaveStatePath; }
    }

    public static string LevelSaveStatePrefix {
        get { return _levelSaveStatePrefix; } 
    }

    public static GameSaveState SaveData {
        get {
            if (_saveData == null)
                _saveData = new GameSaveState ();

            return _saveData; 
        }
    }

    public static Transform LastCheckPoint {
        get { return _lastCheckPoint; }
        set { _lastCheckPoint = value; }
    }

    public static bool IsPlayingCutscene {
        get { return _isPlayingCutscene; }
        set {
            _isPlayingCutscene = value;

            if (_isPlayingCutscene) {
                GameManager.UI.CraftingMenu.Close ();
                UI.DisableInput ();
            }
            else
                UI.EnableInput();

            GameManager.UI.CraftingMenu.ShowWeaponWheel(!_isPlayingCutscene);
        }
    }

}
