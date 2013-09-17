using UnityEngine;
using System.Collections;

/// <summary>
/// Character input stores the input for a character.
/// By default, this returns no input; this class should be extended with overrides for the input properties.
/// Used by CharacterAnimator.cs
/// </summary>
[AddComponentMenu("Character/Empty Input")]
public class CharacterInput : MonoBehaviour
{
	public virtual float VerticalInput
	{
		get { return 0; }
	}
	public virtual float HorizontalInput
	{
		get { return 0; } 
	}
	public virtual bool Jump
	{
		get { return false; }
	}
	public virtual bool Attack1
	{
		get { return false; }
	}
	public virtual bool Attack2
	{
		get { return false; } 
	}
	public bool Up
	{
		get { return VerticalInput > 0.1; }
	}
	public bool Down
	{
		get { return VerticalInput < -0.1; }
	}
	public bool Left
	{
		get { return HorizontalInput < -0.1; }
	}
	public bool Right
	{
		get { return HorizontalInput > 0.1; }
	}
}
