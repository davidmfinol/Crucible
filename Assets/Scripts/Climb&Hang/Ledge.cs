using UnityEngine;
using System.Collections;

// This script must be attached to a ledge that a character can climb up
public class Ledge : HangableObject 
{
    public override bool IsHorizontal()
    {
        return false;
    }
    public override bool IsVertical()
    {
        return true;
    }
}
