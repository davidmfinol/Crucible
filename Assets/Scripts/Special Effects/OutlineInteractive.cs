using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Outline Interactive works with the OUTLINED/INTERACTIVE shader to pull off 2 special effects:
/// 1) Make an object's outline fade in and out based off its distance to the player.
/// 2) Make an object display an echolocation effect for overlapping NPC Hearing Radiuses.
/// </summary>
[AddComponentMenu("Special Effects/Outline Interactive")]
public class OutlineInteractive : MonoBehaviour
{
    // The total number of echospheres that can be drawn on this material
    public int SphereCount = 3;
    
    // Echo sphere Properties
    public float SphereMaxRadius = 20.0f;       //Final size of the echo sphere.
    public float FadeDelay = 0.0f;          //Time to delay before triggering fade.
    public float FadeRate = 1.0f;           //Speed of the fade away
    public float EchoSpeed = 10.0f;          //Speed of the sphere growth.

    // The spheres we are tracking
    private List<EchoSphere> _spheres;
    private int _currentSphere;

    void Start()
    {
        _spheres = new List<EchoSphere>();

        for (int i = 0; i < SphereCount; i++) {
            EchoSphere es = new EchoSphere {
                EchoMaterial = GetComponent<Renderer>().material,
                EchoColor = Color.white, 
                SphereMaxRadius = SphereMaxRadius,
                FadeDelay = FadeDelay,
                FadeRate = FadeRate,
                EchoSpeed = EchoSpeed,
                SphereIndex = i
            };
            Spheres.Add(es);
        }

        _currentSphere = 0;

    }

    void Update()
    {
        // The outline shader expects the _PlayerPos.w to indicate whether or not the object should be able to light up
        Vector4 playerPos = GameManager.Player.transform.position;
        playerPos.w = 1;
        GetComponent<Renderer>().material.SetVector("_PlayerPos", playerPos);

        // Update the echolocation effects that may be happening on this object
        foreach (EchoSphere echo in Spheres) {
            echo.Update();
        }
        
    }

    public List<EchoSphere> Spheres {
        get { return _spheres; } 
    }

    public int CurrentSphere {
        get { return _currentSphere; }
        set { _currentSphere = value; }
    }
    
}
