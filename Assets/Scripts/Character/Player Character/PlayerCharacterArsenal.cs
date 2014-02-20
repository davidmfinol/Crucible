using UnityEngine;
using System.Collections;

/// <summary>
/// Player character arsenal contains information about the spawn point and weapons.
/// </summary>
[AddComponentMenu("Character/Player Character/Player Character Arsenal")]
public class PlayerCharacterArsenal : MonoBehaviour
{
    // Keep track of the last checkpoint here
	public Transform SpawnPoint;

    // Player's Weapon Arsenal!
	public Transform PipePrefab;
	public Transform MinePrefab;
	public Transform GravityGunPrefab;

	// Noise player makes when running
	public Transform FootStepNoise;
    
    // We keep track of which weapon is currently equipped here
    private Transform _currentWeapon;
	
	
	public Transform Weapon
	{
		get { return _currentWeapon; }
		set
		{
			if(_currentWeapon != null)
				Destroy(_currentWeapon.gameObject);
	        Transform rightHand = CharacterSettings.SearchHierarchyForBone(transform, "hand_R");
			Transform weapon = (Transform)Instantiate(value, rightHand.position, transform.rotation);
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

	public bool WeaponCanStealthKill() {
		Weapon weaponScript = _currentWeapon.GetComponent<Weapon>();

		return( weaponScript.CanStealthKill() );

	}
	
}
