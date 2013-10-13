using UnityEngine;
using System.Collections;

/// <summary>
/// Player character settings contains, in addition to the normal platforming settings, information about the spawn point and weapons.
/// </summary>
[AddComponentMenu("Character/Player Character/Player Character Settings")]
public class PlayerCharacterSettings : CharacterSettings
{
	public Transform SpawnPoint;

    // Player's Weapon Arsenal!
	public Transform PipePrefab;
    public Transform WhipPrefab;
	public Transform MinePrefab;
    private Transform _currentWeapon;
	
	public Transform Weapon
	{
		get { return _currentWeapon; }
		set
		{
			if(_currentWeapon != null)
				Destroy(_currentWeapon.gameObject);
	        Transform rightHand = SearchHierarchyForBone(transform, "hand_R");
			Transform weapon = (Transform)Instantiate(value, rightHand.position, Quaternion.identity);
	        weapon.parent = rightHand;
            Weapon weaponScript = weapon.GetComponent<Weapon>();
            if(weaponScript != null)
            {
    	        weapon.Rotate(weaponScript.Rotation);
    	        weapon.Translate(weaponScript.Translation);
            }
			_currentWeapon = weapon;
		}
	}
}
