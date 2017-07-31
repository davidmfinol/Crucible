using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine.SceneManagement;

/// <summary>
/// Game manager is a static class in charge of keeping strack of all global components.
/// The global components include the Main Camera, Audio, Subtitles, Level, AI, Object Pool, Inventory, UI, Player, and SaveData.
/// Every scene in the game NEEDS to have an instance of the game manager, though that should be all it takes besides running the "CreateGameObjectsFromMeshes" editor menu script.
/// </summary>
[AddComponentMenu("Game/Game Manager")]
public class GameManager : MonoBehaviour
{
    // Keep track of the current game manager instance
    private static GameManager _instance;

    // The main camera that follows the player
    private static CameraScrollingMain _mainCamera;
    
    // Global Managers
    private static AudioManager _audioManager;
    private static SubtitlesManager _subtitlesManager;
    private static LevelManager _currentLevel;
    private static AIManager _aiManager;
    private static ObjectPoolManager _objectPool;
    private static InventoryManager _inventory;
    private static UIManager _uiManager;

    // There should always be access to the player and its shader
    private static CharacterAnimator _player;
    private static NewmanShader _playerShader;

    // We keep track of the save data here
    private static string _gameSaveStatePath;
    private static string _levelSaveStatePrefix;
    private static GameSaveState _saveData;
    
    // The GameManager keeps track of the last checkpoint, so that the player can go back there after death
    private static Transform _lastCheckPoint;

    // Is a cutscene currently playing? Turn it on/off appropriately.
    private static bool _isPlayingCutscene;

    // Set up the game on Start(); this should happen before all other Start()s
    void Start()
    {
        // We need to keep one instance of our Game Manager
        if (_instance != null) {
            Destroy(_instance.gameObject);
        } else {
            _gameSaveStatePath = Path.Combine(Application.persistentDataPath, "game_progress.xml");
            _levelSaveStatePrefix = Path.Combine(Application.persistentDataPath, "level_");

        }
        _instance = this;
        _mainCamera = GetComponentInChildren<CameraScrollingMain>();
        _audioManager = GetComponentInChildren<AudioManager>();
        _subtitlesManager = GetComponentInChildren<SubtitlesManager>();

        SetupLevel();
        
        SetupAI();

        SetupObjectPool();
        
        SetupInventory();

        SetupUI();
        
        SetupPlayer();

    }

    private void SetupLevel()
    {
        // Destroy the previous level
        if (GameManager.Level != null) {
            Destroy(GameManager.Level.gameObject);
        }

        // And then find or create a new level
        GameObject levelManager = GameObject.FindGameObjectWithTag("Level Manager");
        if (levelManager != null) {
            GameManager._currentLevel = levelManager.GetComponent<LevelManager>();
        } else {
            GameManager._currentLevel = new GameObject("_Level Manager").AddComponent<LevelManager>();
        } // NOTE: NO POOL; JUST 1

    }

    private void SetupAI()
    {
        // Destroy the previous AI
        if (GameManager.AI != null) {
            Destroy(GameManager.AI.gameObject);
        }

        // And then find or create a new AI
        GameObject aiManager = GameObject.FindGameObjectWithTag("AI Manager");
        if (aiManager != null) {
            GameManager._aiManager = aiManager.GetComponent<AIManager>();
        } else {
            GameManager._aiManager = new GameObject("_AI").AddComponent<AIManager>();
        } // NOTE: NO POOL; JUST 1

    }

    private void SetupObjectPool()
    {
        // Destroy the previous Object Pool
        if (_objectPool != null) {
            Destroy(_objectPool.gameObject);
        }

        // Create the Object Pool
        GameObject pool = new GameObject("_Object Pool"); // NOTE: NO POOL; THIS IS THE POOL
        _objectPool = pool.AddComponent<ObjectPoolManager>();
    }

    private void SetupInventory()
    {
        // Destroy the previous Inventory
        if (_inventory != null) {
            Destroy(_inventory.gameObject);
        }
        
        // Create the inventory
        GameObject invObj = new GameObject("_Inventory"); // NOTE: NO POOL; JUST 1
        _inventory = invObj.AddComponent<InventoryManager>();
        
    }

    private void SetupUI()
    {
        // Destroy the previous UI
        if (_uiManager != null) {
            Destroy(_uiManager.gameObject);
        }

        // Create the UI
        GameObject ui = (GameObject)Instantiate(Resources.Load("Prefabs/User Interface/_UI")); // NOTE: NO POOL; JUST 1
        _uiManager = ui.GetComponent<UIManager>();

    }

    private void SetupPlayer()
    {
        // Destroy the previous player
        if (_player != null) {
            Destroy(_player.gameObject);
        }

        // Create the player
        GameObject player = (GameObject)Instantiate(Resources.Load("Prefabs/Characters/Newman"), _currentLevel.OffscreenPosition, Quaternion.identity); // NOTE: NO POOL; JUST 1
        _player = player.GetComponent<CharacterAnimator>();
        _player.gameObject.AddComponent<AudioListener>();
        _player.IgnoreMovement = true;
        _playerShader = player.GetComponent<NewmanShader>();
        
        // Must delay player spawn to make sure all components are ready
        StartCoroutine(DelayedSpawnPlayer());

    }

    public IEnumerator DelayedSpawnPlayer()
    {
        while (!AllManagersReady) {
            yield return null;
        }

        SpawnPlayer();

    }

    public static void SpawnPlayer()
    {
        // Load from the last save files
        LoadGameState();
        LoadLevelState();

        // Move the player to the correct spot
        Player.transform.position = LastCheckPoint.position;

        // Allow the player to start moving
        Player.IgnoreMovement = false;
        Player.Direction = Vector3.right;
        Player.HorizontalSpeed = 0;
        Player.VerticalSpeed = 0;

        // Reset it's health to max
        HeartBox heart = Player.GetComponentInChildren<HeartBox>();
        if (heart != null) {
            heart.HitPoints = heart.MaxHitPoints;
        }
        
        // Turn off ragdoll if coming back to life
        if (Player.IsDead && Player.Settings.RootRigidBody.GetComponent<Collider>().enabled) {
            Player.UndoRagdoll();
        }

        // Make sure the camera is looking at the player
        MainCamera.Target = Player.transform;

        // Enable the input
        UI.EnableInput();

    }

    public static void DeleteSaves()
    {
        string[] files = Directory.GetFiles(Application.persistentDataPath);
        foreach (string filePath in files) {
            File.Delete(filePath);
        }

    }

    public static void LoadGameState()
    {
        _instance.StartCoroutine(_instance.LoadGameStateHelper());

    }

    private IEnumerator LoadGameStateHelper()
    {
        // Set our first checkpoint to the default start point
        if (_saveData == null) {
            LastCheckPoint = _currentLevel.DefaultStartpoint;
        }

        // Clear out player inventory
        Inventory.Clear();

        // Get the saved data
        _saveData = GameSaveState.Load(GameSaveStatePath);

        // Do nothing if we failed to load a game save
        if (_saveData == null) {
            _saveData = new GameSaveState();
            Checkpoint lastCheckpoint = LastCheckPoint.GetComponent<Checkpoint>();
            if (lastCheckpoint != null) {
                _saveData.Checkpoint = lastCheckpoint.Location;
            }
            yield break;
        }
        
        // Load up the correct level
        if (!string.IsNullOrEmpty(SaveData.LevelName) && !SaveData.LevelName.Equals(SceneManager.GetActiveScene().name)) {
            Instantiate(Resources.Load("Prefabs/User Interface/Loading Screen")); // NOTE: WE DON'T USE THE OBJECT POOL, SINCE WE ONLY NEED THE 1
            SceneManager.LoadScene(SaveData.LevelName);
        }
        
        // Move player to his last checkpoint.
        bool checkpointFound = false;
        GameObject[] spawnPoints = GameObject.FindGameObjectsWithTag("Respawn");
        foreach (GameObject obj in spawnPoints) {
            Checkpoint checkpoint = obj.GetComponent<Checkpoint>();
            if (checkpoint != null && checkpoint.Location == _saveData.Checkpoint) {
                Player.transform.position = checkpoint.transform.position;
                LastCheckPoint = checkpoint.transform;
                checkpointFound = true;
                break;
            }
        }
        if (!checkpointFound) {
            Debug.LogWarning("Saved checkpoint not found!");
            LastCheckPoint = _currentLevel.DefaultStartpoint;
        }
        
        // Reload the player's items
        foreach (InventoryItem invItem in _saveData.InventoryState.ItemsHeld) {
            Inventory.AddItem(InventoryItemFactory.CreateFromType(invItem.Type, invItem.Quantity));
        }

        // Reload the player's weapons
        foreach (WeaponSaveState weaponSave in _saveData.InventoryState.WeaponsHeld) {
            string weaponName = "Prefabs/Items/Weapons/InHand/" + weaponSave.WeaponType.ToString().Substring(7);
            // NOTE: WE MAY WANT TO POOL HERE, BUT I DON'T THINK IT HAPPENS ENOUGH TO BE WORTH IT/NOT SURE IT MAKES SENSE
            GameObject createdWeapon = (GameObject)Instantiate(Resources.Load(weaponName), _currentLevel.OffscreenPosition, Quaternion.identity);
            if (createdWeapon == null) {
                Debug.LogWarning("Failed to load weapon: " + weaponName);
                continue;
            }
            Weapon newWeapon = createdWeapon.GetComponent<Weapon>();
            newWeapon.Quantity = weaponSave.Quantity;
            Inventory.Weapons.Add(newWeapon);
        }

        // Display the correct weapon
        for (int i = 0; i < Inventory.Items.Count; i++) {
            if (UI.CurrentWeapon == _saveData.InventoryState.CurrentWeapon) {
                break;
            }
            UI.CycleToNextWeapon();
        }
        UI.RefreshWeaponWheel();
        
        yield return null;

    }

    public static void LoadLevelState()
    {
        _instance.StartCoroutine(_instance.LoadLevelStateHelper(SceneManager.GetActiveScene().name));

    }

    private IEnumerator LoadLevelStateHelper(string levelName)
    {
        // Get the saved data
        string path = LevelSaveStatePrefix + levelName + ".xml";
        LevelSaveState levelSave = null;
        levelSave = LevelSaveState.Load(path);

        // Do nothing if we couldn't load any data
        if (levelSave == null) {
            yield break;
        }

        // Restore all the enemies in the level
        AI.ResetEnemies();
        foreach (EnemySaveState enemyState in levelSave.EnemyStates) {
            string enemyName = enemyState.Type.ToString().Substring(6);
            // NOTE: WE MAY WANT TO POOL HERE, BUT I DON'T THINK IT HAPPENS ENOUGH TO BE WORTH IT/NOT SURE IT MAKES SENSE
            GameObject newEnemy = (GameObject)Instantiate(Resources.Load("Prefabs/Characters/" + enemyName), enemyState.Position, enemyState.Rotation);
            if (newEnemy == null) {
                Debug.LogWarning("Failed to load enemy: " + enemyName);
                continue;
            }
            newEnemy.transform.parent = AI.transform;
            newEnemy.GetComponent<CharacterAnimator>().Direction = enemyState.Direction;  
            newEnemy.GetComponentInChildren<EnemyHeartBox>().HitPoints = enemyState.Health;
        }

        // Restore all the items in the scene
        Level.ResetItems();
        foreach (ItemSaveState itemState in levelSave.ItemStates) {
            string itemName = "Prefabs/Items/" + itemState.ItemType.ToString().Substring(5);
            if (itemState.ItemType == Item.ItemType.Item__Weapon) {
                itemName = "Prefabs/Items/Weapons/OnField/" + itemState.WeaponType.ToString().Substring(7);
            }
            // NOTE: WE MAY WANT TO POOL HERE, BUT I DON'T THINK IT HAPPENS ENOUGH TO BE WORTH IT/NOT SURE IT MAKES SENSE
            GameObject createdItem = (GameObject)Instantiate(Resources.Load(itemName), itemState.Position, itemState.Rotation);
            if (createdItem == null) {
                Debug.LogWarning("Failed to load item: " + itemName);
                continue;
            }
            createdItem.transform.parent = Level.ItemPickups;
            Item newItem = createdItem.GetComponent<Item>();
            newItem.Quantity = itemState.Quantity;
        }

        yield return null;

    }

    public static void SaveGameState(string levelName, Checkpoint.CheckpointLocation checkpoint)
    {
        SaveData.LevelName = levelName;
        SaveData.Checkpoint = checkpoint;
        SaveData.InventoryState = Inventory.SaveState();
        SaveData.Save(GameSaveStatePath);

    }

    public static void SaveLevelState(string levelName)
    {
        string path = LevelSaveStatePrefix + levelName + ".xml";
        LevelSaveState level = new LevelSaveState();

        List<EnemySaveState> enemySaves = new List<EnemySaveState>();
        foreach (EnemyAI enemyAI in AI.Enemies) {
            enemySaves.Add(enemyAI.SaveState());
        }
        level.EnemyStates = enemySaves.ToArray();
        
        List<ItemSaveState> itemSaves = new List<ItemSaveState>();
        foreach (Item item in Level.Items) {
            itemSaves.Add(item.SaveState());
        }
        level.ItemStates = itemSaves.ToArray();

        level.Save(path);

    }

    public static CameraScrollingMain MainCamera {
        get { return _mainCamera; }
    }

    public static AudioManager Audio {
        get { return _audioManager; }
    }

    public static SubtitlesManager Subtitles {
        get { return _subtitlesManager; }
    }

    public static LevelManager Level {
        get { return _currentLevel; }
    }

    public static AIManager AI {
        get { return _aiManager; }
    }

    public static ObjectPoolManager ObjectPool {
        get { return _objectPool; }
    }

    public static InventoryManager Inventory {
        get { return _inventory; }
    }

    public static UIManager UI {
        get { return _uiManager; }
    }

    public static bool AllManagersReady {
        get {
            return (Audio != null && Audio.Ready) && (Subtitles != null && Subtitles.Ready) &&
            (Level != null && Level.Ready) && (AI != null && AI.Ready) && (ObjectPool != null && ObjectPool.Ready) &&
            (Inventory != null && Inventory.Ready) && (UI != null && UI.Ready);
        }
    }

    public static CharacterAnimator Player {
        get { return _player; }
    }

    public static NewmanShader PlayerShader {
        get { return _playerShader; }
        set { _playerShader = value; }
    }

    public static string GameSaveStatePath {
        get { return _gameSaveStatePath; }
    }

    public static string LevelSaveStatePrefix {
        get { return _levelSaveStatePrefix; }
    }

    public static GameSaveState SaveData {
        get {
            if (_saveData == null) {
                _saveData = new GameSaveState();
            }

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
                UI.CraftingMenu.Close();
                UI.DisableInput();
            } else {
                UI.EnableInput();
            }

            UI.CraftingMenu.ShowWeaponWheel(!_isPlayingCutscene);
        }
    }

}
