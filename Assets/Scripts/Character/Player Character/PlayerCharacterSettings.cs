using UnityEngine;
using System.Collections;

[AddComponentMenu("Character/Player Character/Player Character Settings")]
public class PlayerCharacterSettings : CharacterSettings
{
	public Transform SpawnPoint;

    // Player's Weapon Arsenal!
    public Transform WhipPrefab;
	public Transform MinePrefab;
    private Transform _currentWeapon;
	
    // Helper Method to find a bone attached to the player (to attach it's weapon)
    public static Transform SearchHierarchyForBone(Transform current, string name)
    {
        // check if the current bone is the bone we're looking for, if so return it
        if (current.name == name)
            return current;

        // search through child bones for the bone we're looking for
        for (int i = 0; i < current.GetChildCount(); ++i)
        {
            // the recursive step; repeat the search one step deeper in the hierarchy
            Transform found = SearchHierarchyForBone(current.GetChild(i), name);

            // a transform was returned by the search above that is not null,
            // it must be the bone we're looking for
            if (found != null)
                return found;
        }

        // bone with name was not found
        return null;
    }
	
	public Transform Weapon
	{
		get { return _currentWeapon; }
		set
		{
			if(_currentWeapon)
				Destroy(_currentWeapon.gameObject);
	        Transform rightHand = SearchHierarchyForBone(transform, "hand_R");
			Transform weapon = (Transform)Instantiate(value, rightHand.position, Quaternion.identity);
	        weapon.parent = rightHand;
	        weapon.Rotate(new Vector3(90, 0, 90));
	        weapon.Translate(new Vector3(0.2f, 0.1f, 0.1f));
			_currentWeapon = weapon;
		}
	}
}
