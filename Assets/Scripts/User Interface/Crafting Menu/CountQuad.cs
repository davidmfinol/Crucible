using UnityEngine;
using System.Collections;

public class CountQuad : MonoBehaviour
{
    public int Count;

};

public static class CountQuadFactory
{

    // TODO: MAKE THIS FAR MORE EFFICIENT BY CACHING
    public static Texture2D GetTextureForCount (int count)
    {
        if (0 > count || count > 5) {
            Debug.LogWarning ("Count value out of range: " + count);
            return null;
        }

        string textureName = "Textures/User Interface/Crafting Menu/Count" + string.Format("{0,1:D}", count);
        Texture2D tex = Resources.Load<Texture2D> (textureName);
        if(tex == null)
            Debug.LogWarning ("Failed to load texture at: " + textureName);

        return tex;

    }

};