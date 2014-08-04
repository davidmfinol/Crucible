using UnityEngine;
using System.Collections;

/// <summary>
/// Hide zone indicates a location where the player can go back in the z-axis and be hidden from enemy view.
/// Note that the actual mechanics of moving back in Z are tied to the TransitionZone and Zone child objects.
/// This class is purely responsible for controlling the visual indicators.
/// </summary>
[RequireComponent(typeof(Collider))]
[AddComponentMenu("Platforming/HideZone")]
public class HideZone : MonoBehaviour
{
    public AlphaPulse Arrow;
    public Fader CircleIndicator;
    public float ArrowRotationSpeed = 10;
    private Quaternion _upArrowRotation;
    private Quaternion _downArrowRotation;


    void Start ()
    {
        _upArrowRotation = Arrow.transform.rotation;
        Arrow.transform.Rotate(0, 0, 180);
        _downArrowRotation = Arrow.transform.rotation;
        Arrow.transform.rotation = _upArrowRotation;

    }

    void Update()
    {
        if (GameManager.AI.EnemiesChasing > 0 || Arrow.On) 
            CircleIndicator.FadeOut(CircleIndicator.FadeOutSeconds, false);
        else if (!Arrow.On)
            CircleIndicator.FadeIn (CircleIndicator.FadeInSeconds, false);

    }

    void OnTriggerEnter (Collider other)
    {
        if (!other.CompareTag("Player")) 
            return;
        
        Arrow.On = GameManager.Player.CanTransitionZ;

    }

    void OnTriggerStay (Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        
        Arrow.On = GameManager.Player.CanTransitionZ;
        Arrow.transform.rotation = Quaternion.Lerp (Arrow.transform.rotation, GameManage.PlayerShader.InShadow ? _downArrowRotation : _upArrowRotation, Time.deltaTime * ArrowRotationSpeed);

    }

    void OnTriggerExit (Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        
        Arrow.On = false;

    }

}
