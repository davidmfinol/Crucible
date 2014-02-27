using UnityEngine;
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
	public Transform UIPrefab;
	
    // Each scene should correspond to a level, and each level should have exactly one GameLevel
    private static GameLevel _currentLevel;
	
	// There should always be access to the player
	private static Transform _player;
	
    // Global Managers
    private static UIManager _ui;
	private static AIManager _aiManager;
	private static AudioManager _audioManager;
	private static SubtitlesManager _subtitlesManager;
	
	
    // Set up level, player/camera, and find the Global Managers
    void Start()
    {
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
			_player = (Transform)Instantiate(PlayerPrefab, _currentLevel.StartPoint.position, Quaternion.identity);

		PlayerCharacterArsenal arsenal = Player.GetComponent<PlayerCharacterArsenal>();
		if(arsenal != null)
		{
			arsenal.SpawnPoint = _currentLevel.StartPoint;
			arsenal.Weapon = arsenal.PipePrefab;
		}

		SpawnPlayer ();
	}
	public static void SpawnPlayer() // TODO: Optimize this method? lots of getcomponents
	{
		// Move the player to the correct spot
		PlayerCharacterArsenal arsenal = Player.GetComponent<PlayerCharacterArsenal>();
		if(arsenal != null)
			Player.transform.position = arsenal.SpawnPoint.transform.position;

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
        if(_ui != null) //TODO: BETTER TRANSFER
            return;

        Transform ui = (Transform)Instantiate(UIPrefab, UIPrefab.transform.position, UIPrefab.transform.rotation);
        _ui = ui.GetComponent<UIManager>();
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
    /// Gets or sets the User Interface.
    /// </summary>
    /// <value>
    /// The User Interface.
    /// </value>
    public static UIManager UI
    {
        get { return _ui; }
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

	/// <summary>
	/// Gets the subtitles.
	/// </summary>
	/// <value>The subtitles.</value>
	public static SubtitlesManager Subtitles
	{
		get { return _subtitlesManager; }
	}
	
}
