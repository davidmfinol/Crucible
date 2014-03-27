﻿using UnityEngine;
using System.Collections;

/// <summary>
/// Pickup animator makes all the items in the scene change colors over time.
/// </summary>
[AddComponentMenu("User Interface/Pickup Animator")]
public class PickupAnimator : MonoBehaviour
{
    public Material[] PickupMaterials;
    private static float _timeElapsed = 0;

    void Update ()
    {
        _timeElapsed = Time.timeSinceLevelLoad;
        _timeElapsed %= 2.0f;
        _timeElapsed /= 2.0f;
        _timeElapsed *= 2 * Mathf.PI;
    
        float alpha = Mathf.Cos (_timeElapsed);
        Color itemPickupColor = new Color (1.0f, 1.0f, 1.0f, alpha);
    
        foreach (Material mat in PickupMaterials) {
            mat.SetColor ("_OutlineColor", itemPickupColor);
            mat.SetFloat ("_Outline", 0.002f);

        }

    }

}
