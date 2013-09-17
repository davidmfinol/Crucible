using UnityEngine;
using System.Collections;
/// <summary>
/// Player character defines the motion for the character that the player controls.
/// </summary>
[RequireComponent(typeof(PlayerCharacterInput))]
[AddComponentMenu("Character/Player Character")]
public class PlayerCharacter : CharacterAnimator
{
	

    // Helper Method to find a bone attached to the player
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
}
