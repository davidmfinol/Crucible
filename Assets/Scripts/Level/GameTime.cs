using UnityEngine;
using System.Collections;

public class GameTime
{
    public static bool Paused = false;

    public static float DeltaTime
    {
        get { return Paused ? 0 : Time.deltaTime; }
    }
}
