using UnityEngine;
using System.Collections;

public class ZombieHeartBox : HeartBox
{
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
        }
    }
    bool isValidHitbox(HitBox hitbox)
    {
        //~ If it is a friendly hitbox, or family seen before, return false
        //~ TODO: If stamp is x seconds old, return true
        HeartBoxStamp stamp = hitbox.Family.stampRecord.GetLatestHeartBoxStamp(heartBoxID);
        //if (stamp != null) Debug.Log(stamp.TimeStamped);
        if ((stamp != null) && ((Time.time - stamp.TimeStamped) > 1.0f))
            return true;
        return !((hitbox.Allegiance == this.Allegiance) || hitbox.Family.stampRecord.ContainsKey(heartBoxID));
    }
}
