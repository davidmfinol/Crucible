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
    public int SphereCount = 3;
    public int CurrentSphere = 0;
    
    // Echo sphere Properties
    public float SphereMaxRadius = 20.0f;       //Final size of the echo sphere.
    public float FadeDelay = 0.0f;          //Time to delay before triggering fade.
    public float FadeRate = 1.0f;           //Speed of the fade away
    public float EchoSpeed = 9.0f;          //Speed of the sphere growth.
    
    private List<EchoSphere> Spheres = new List<EchoSphere>();

    void Start()
    {
        for(int i = 0; i < SphereCount; i++) {
            EchoSphere es = new EchoSphere {
                EchoMaterial = renderer.material,
                SphereMaxRadius = SphereMaxRadius,
                FadeDelay = FadeDelay,
                FadeRate = FadeRate,
                EchoSpeed = EchoSpeed,
                SphereIndex = i
            };
            Spheres.Add(es);
        }

    }

	void Update()
	{
		// The outline shader expects the _PlayerPos.w to indicate whether or not the object should be able to light up
		Vector4 playerPos = GameManager.Player.transform.position;
		playerPos.w =  1;
		renderer.material.SetVector ("_PlayerPos", playerPos);

        // Update the echolocation effects that may be happening on this object
        foreach (EchoSphere echo in Spheres)
            echo.Update();

        // TODO:
        if (Input.GetButtonDown("Attack")){
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;
            if (Physics.Raycast(ray,out hit, 10000)) {
                Spheres[CurrentSphere].TriggerPulse();
                Spheres[CurrentSphere].Position = hit.point;
                
                CurrentSphere += 1;
                if(CurrentSphere >= Spheres.Count)CurrentSphere = 0;
            }
        }
        
    }
    
}
