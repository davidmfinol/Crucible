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
        Debug.LogWarning("I've been hit 1");
        HitBox script = other.GetComponent<HitBox>();
        if (script != null && script.enabled)
            Interpret(script);
    }
    protected override void Interpret(HitBox hitbox)
    {
        if (isValidHitbox(hitbox))
        {
            Debug.LogWarning("I've been hit 2");
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
        if (TimeSinceHit < 1.0f)
            return false;
        return !((hitbox.Allegiance == this.Allegiance) || hitbox.Family.stampRecord.ContainsKey(heartBoxID));
    }
}
