using UnityEngine;
using System.Collections;

/// <summary>
/// Game time is a completely static class used to represent the in-game clock.
/// If working with time-based game logic, this class should be used instead of Time.
/// </summary>
public class GameTime
{
    public static bool Paused = false;

	// TODO: UPDATE ALL REFERENCES OF TIME.DELTATIME TO GAMETIME.DELTATIME
	
    public static float DeltaTime
    {
        get { return Paused ? 0 : Time.deltaTime; }
    }
}
