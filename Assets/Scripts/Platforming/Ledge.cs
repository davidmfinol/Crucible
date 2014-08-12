using UnityEngine;
using System.Collections;

/// <summary>
/// Ledge defines a ledge that a character can climb up.
/// </summary>
[AddComponentMenu("Platforming/Ledge")]
public class Ledge : HangableObject 
{
	public bool Left = true;
	public bool Obstacle = false;   // Something on-ground we hop over
}
