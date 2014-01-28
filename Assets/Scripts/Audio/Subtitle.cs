using UnityEngine;
using System.Collections;

/// <summary>
/// Subtitle is container for the text that should appear for a subtitle, 
/// and how much time that text should stay displayed for.
/// </summary>
[System.Serializable]
public struct Subtitle
{
	public string Text;
	public float DisplayTime;
}
