﻿using UnityEngine;
using System.Collections;

public class CountQuad : MonoBehaviour
{
    public int Count;

};

public static class CountQuadFactory
{
    public static Texture2D GetTextureForCount (int count)
    {
        string textureName = "";

        if (count == 0)
            textureName = "Item Icons/Count0";
        else if (count == 1)
            textureName = "Item Icons/Count1";
        else if (count == 2)
            textureName = "Item Icons/Count2";
        else if (count == 3)
            textureName = "Item Icons/Count3";
        else if (count == 4)
            textureName = "Item Icons/Count4";
        else if (count == 5)
            textureName = "Item Icons/Count5";
        else
            Debug.Log ("Failed to find count texture for count " + count);

        return Resources.Load<Texture2D> (textureName);

    }

};