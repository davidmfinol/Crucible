using UnityEngine;
using System.Collections;

/// <summary>
/// Zombie heart box keeps track of the zombie's health and indicates where it can be hit.
/// </summary>
[AddComponentMenu("Health/Zombie Heart Box")]
public class ZombieHeartBox : HeartBox
{
    public float TimeSinceHit;
    protected override void Start()
    {
        HitPoints = MaxHitPoints;
    }

    void OnTriggerStay(Collider other)
    {
        HitBox script = other.GetComponent<HitBox>();
        if (script != null && script.enabled)
            Interpret(script);
    }
    protected override void Interpret(HitBox hitbox)
    {
        if (isValidHitbox(hitbox))
        {
            hitbox.stampRecord.Imprint(createHeartBoxStamp());
            hitbox.Family.stampRecord.Imprint(createHeartBoxStamp());
			Debug.Log("We took a hit");
            HitPoints -= hitbox.Damage;
			transform.parent.GetComponent<Animator>().SetBool("TakeHit", true); //FIXME: THIS IS SLOW
            TimeSinceHit = 0;
        }
    }
	void Update()
	{
		TimeSinceHit+= Time.deltaTime;
	}
	
    bool isValidHitbox(HitBox hitbox)
    {
        if (TimeSinceHit < 1.0f)
            return false;
        return !((hitbox.Allegiance == this.Allegiance) /*|| hitbox.Family.stampRecord.ContainsKey(heartBoxID)*/); //TODO: PUT THIS BACK IN ONCE HITBOXES ARE DYNAMICALLY GENERATED
    }
}
