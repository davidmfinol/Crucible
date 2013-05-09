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
        if (other.gameObject.layer == 9 || other.gameObject.layer == 8)
        {
            //Debug.Log("I've been hit");
            HitBox script = other.GetComponent<HitBox>();
            if (script != null && script.enabled)
                Interpret(script);
        }
    }
    protected override void Interpret(HitBox hitbox)
    {
        if (isValidHitbox(hitbox))
        {
            //Debug.Log("I've been hit");
            hitbox.stampRecord.Imprint(createHeartBoxStamp());
            hitbox.Family.stampRecord.Imprint(createHeartBoxStamp());

            HitPoints -= hitbox.Damage;
            ZombieStateMachine zombie = transform.parent.GetComponent<ZombieStateMachine>();
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
