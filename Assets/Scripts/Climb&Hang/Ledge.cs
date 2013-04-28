using UnityEngine;
using System.Collections;

// This script must be attached to a ledge that a character can climb up
public class Ledge : HangableObject 
{
    public override bool IsSingleZone()
    {
        return false;
    }
    public override bool IsMultiZone()
    {
        return true;
    }
}
