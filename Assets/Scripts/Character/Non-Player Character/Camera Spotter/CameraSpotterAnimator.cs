using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Camera animator defines the in-game camara spotter enemy-type.
/// All it does is have a view-cone which alerts others to the player's presence.
/// </summary>
[AddComponentMenu("Character/Non-Player Character/Camera Spotter/Camera Spotter Animator")]
public class CameraSpotterAnimator : CharacterAnimator
{
    public enum CameraState
    {
        ToMax = 1,
        ToMin = 2,
        Paused = 3,
        Tracking = 4   // tracking player

    }
    ;

    // Mecanim State Hashes
    public static readonly int ScanState = Animator.StringToHash ("Base Layer.Scan");

    // Scan settings
    public float MinAngle;
    public float MaxAngle;
    public float Speed;
    public float PauseTime;
    private CameraState _lastState;
    private CameraState _state;
    private float _currAngle;
    private float _timeInState;

    // find view cone so we can calculate a direction vector along it for LOS
    private Transform _pivot;
    private EnemyAI _ai;

    // Camera sounds
    private CameraSpotterAudioPlayer _sound;
    
    protected override void OnStart ()
    {
        _pivot = CharacterSettings.SearchHierarchyForBone (transform, "CameraPivot");
        _ai = GetComponent<EnemyAI> ();

        _lastState = CameraState.Paused;
        _state = CameraState.ToMax;
        _currAngle = 0.0f;
        _timeInState = 0.0f;

        _sound = GetComponentInChildren<CameraSpotterAudioPlayer>();

    }
    
    protected override void CreateStateMachine ()
    {
        StateMachine [ScanState] = Scan;

    }
    
    protected void Scan (float elapsedTime)
    {
        // seeing player overwrites any existing state and goes into
        // tracking
        if (_ai.IsSeeingPlayer && (_state != CameraState.Tracking)) {
            _lastState = _state;
            _state = CameraState.Tracking;
            _timeInState = 0.0f;
        
        }


        // *** perform action based on state ***
        if (_state == CameraState.ToMax) {
            _timeInState += Time.deltaTime;
            _currAngle += Speed * Time.deltaTime;

            UpdateDirection (_currAngle);

            // pause when reach max angle
            if (_currAngle >= MaxAngle) {
                _currAngle = MaxAngle;
                _lastState = _state;
                _state = CameraState.Paused;
                _timeInState = 0.0f;
                _sound.Play(_sound.Rotating, 0.5f);

            }

        } else if (_state == CameraState.ToMin) {
            _timeInState += Time.deltaTime;
            _currAngle -= Speed * Time.deltaTime;

            UpdateDirection (_currAngle);
            
            if (_currAngle <= MinAngle) {
                _currAngle = MinAngle;
                _lastState = _state;
                _state = CameraState.Paused;
                _timeInState = 0.0f;
                _sound.Play(_sound.Rotating, 0.5f);
                
            }

        } else if (_state == CameraState.Paused) {
            _timeInState += Time.deltaTime;

            // resume scanning
            if (_timeInState >= PauseTime) {
                if (_lastState == CameraState.ToMax)
                    _state = CameraState.ToMin;
                else if (_lastState == CameraState.ToMin)
                    _state = CameraState.ToMax;
                else if (_lastState == CameraState.Paused)
                    _state = CameraState.ToMax;

                _lastState = CameraState.Paused;
                _timeInState = 0.0f;
                _sound.Play(_sound.Moving, 0.5f);

            }

            // if tracking, follow the player
        } else if (_state == CameraState.Tracking) {
            if (_ai.IsSeeingPlayer) {
                // make the camera face the player
                Vector3 dirToPlayer = GameManager.Player.transform.position - transform.position;
                dirToPlayer.Normalize ();

                float angleToPlayer = Vector3.Angle (Vector3.down, dirToPlayer);

                // TODO: fix this to work for arbitary cameras.
                // if player on the left, the angle to him is negative
                if (GameManager.Player.transform.position.x < transform.position.x)
                    angleToPlayer = -angleToPlayer;

                // constrain.
                if (angleToPlayer >= MinAngle && angleToPlayer <= MaxAngle) {

                    // Sound based off how it's following
                    bool isStayingStill = Mathf.Abs(_currAngle - angleToPlayer) < 0.5f;
                    if(isStayingStill && !_sound.IsPlaying(_sound.Still) ) {
                        _sound.Stop();
                        _sound.PlayLoop(_sound.Still, 0.5f);
                    }
                    else if (!isStayingStill && !_sound.IsPlaying(_sound.Moving) ) {
                        _sound.Stop();
                        _sound.PlayLoop(_sound.Moving, 0.5f);
                    }

                    _currAngle = angleToPlayer;
                    UpdateDirection (angleToPlayer);

                }

                // stop tracking - return to last state
            } else {
                _state = _lastState;
                _sound.Stop();

            }

        }

    }

    public void UpdateDirection (float angle)
    {
        // rotate.
        Direction = Vector3.RotateTowards (Vector3.down, Vector3.right, angle * Mathf.PI / 180.0f, 0.0f);

        // adjust geometry to match.
        _pivot.rotation = Quaternion.Euler (new Vector3 (angle, 270.0f, 0.0f));

    }
    
    public override void OnDeath()
    {
        Destroy(gameObject);
        
    }

    public override EnemySaveState.EnemyType EnemyType {
        get { return EnemySaveState.EnemyType.Enemy_CameraSpotter; }
        
    }

}