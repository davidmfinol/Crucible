using UnityEngine;
using System.Collections;

/// <summary>
/// HoloShield used to block off an enemy.
/// </summary>
[AddComponentMenu("Items/Weaponry/Holo Shield")]
public class HoloShield : Weapon
{
	
	private static Texture2D _texture;
	
	public override WeaponType Type {
		get { return WeaponType.Weapon_HoloShield; }
	}
	
	public override string Title {
		get { return "Holo Shield"; }
	}
	
	public override string Description {
		get { return "An energy barrier that defends against robots."; }
	}
	
	public override Texture2D Texture {
		get { 
			if (_texture == null)
				_texture = Resources.Load <Texture2D> ("Textures/User Interface/Item Icons/VisualizerIcon");
			return _texture;
		}
	}
	
}
