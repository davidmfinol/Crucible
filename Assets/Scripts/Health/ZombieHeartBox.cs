using UnityEngine;
using System.Collections;

public class ZombieHeartBox : HeartBox
{
    public float TimeSinceHit;
    protected override void Start()
    {
        HitPoints = MaxHitPoints;
    }

    void OnTriggerStay(Collider other)
    {
        Debug.LogWarning("I've been hit 1, " + gameObject.GetInstanceID());
        HitBox script = other.GetComponent<HitBox>();
		Debug.LogWarning("Script Disabled: " + (script != null && script.enabled));
        if (script != null && script.enabled)
            Interpret(script);
    }
    protected override void Interpret(HitBox hitbox)
    {
		Debug.LogWarning("isvalidhitbox? " + isValidHitbox(hitbox));
        if (isValidHitbox(hitbox))
        {
            Debug.LogWarning("I'm Taking Damage, " + gameObject.GetInstanceID());
            hitbox.stampRecord.Imprint(createHeartBoxStamp());
            hitbox.Family.stampRecord.Imprint(createHeartBoxStamp());

            HitPoints -= hitbox.Damage;
            ZombieFSM zombie = transform.parent.GetComponent<ZombieFSM>();
            zombie.SetState(ZombieStates.Zombie_TakingDamage);
            TimeSinceHit = 0;
        }
    }
	void Update()
	{
		TimeSinceHit+= Time.deltaTime;
	}
	
    bool isValidHitbox(HitBox hitbox)
    {
        if (TimeSinceHit < 1.0f){
			Debug.LogWarning("Time Since Hit < 1 CHECK");
            return false;
		}
		Debug.LogWarning("hitbox Allegiance: " + (hitbox.Allegiance == this.Allegiance));
		Debug.LogWarning("hitbox Family: " + hitbox.Family.stampRecord.ContainsKey(heartBoxID));
        return !((hitbox.Allegiance == this.Allegiance) || hitbox.Family.stampRecord.ContainsKey(heartBoxID));
    }
}
