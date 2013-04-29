using UnityEngine;
using System.Collections;


public abstract class HeartBox : MonoBehaviour {

    public BoxAllegiance Allegiance;
    [SerializeField]
    protected int heartBoxID;

    protected HeartBox() { heartBoxID = GetInstanceID(); }
    
    public int MaxHitPoints = 1000;
    public int HitPoints;

    protected abstract void Start();
    protected abstract void Interpret(HitBox hitbox);

    protected HeartBoxStamp createHeartBoxStamp()
    {
        return new HeartBoxStamp(heartBoxID);
    }
}

/*
 Hitbox Blacklisting: Stamp System
 * <summary>
 * Have the heartbox "stamp" hitboxes. 
 * The "stamp" should imprint data, on the hitbox, that will allow the heartbox to better regulate hitbox interpretation.
 * This is useful for implementing every kind of combo, including rules and limitations.
 * 
 * 
 * <example>
 * EX: poison fog is covered in a single massive hitbox.
 * When a heartbox collides with it, the heartbox will stamp it with a time and heartbox's ID.
 * Next frame, when the heartbox collides with hitbox, it will check the stamp to see if it has been 5s since last imprinting.
 * If it has been 5s, then the heartbox will place a new stamp and compute damage.
 * If it has not been 5s, then the heartbox will not do anything (no damage recieved).
 * </example>
 * 
 * The reason I want to use this stamping system is so that the record of the hitbox lives and dies with the hitbox.
 * If the heartbox managed its own blacklist of hitboxes (tracked with unique IDs), it would be alot of extra work.
 * </summary>
 
 */

public class HeartBoxStamp
{
    private int _heartBoxInstanceID;
    public int HeartBoxID
    {
        get { return _heartBoxInstanceID; }
    }

    private float _timeCreated;
    public float TimeStamped
    {
        get { return _timeCreated; }
    }

    public HeartBoxStamp(int heartBoxID)
    {
        _heartBoxInstanceID = heartBoxID;
        _timeCreated = Time.time;
    }
}