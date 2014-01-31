using UnityEngine;
using System.Collections;

/// <summary>
/// Enemy heart box keeps track of the Enemy's health and indicates where it can be hit.
/// </summary>
[AddComponentMenu("Health/Enemy Heart Box")]
public class EnemyHeartBox : HeartBox
{
    public float TimeSinceHit;
	public bool CanStealthDie = true;

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
			if(hitbox.Stealth && CanStealthDie && transform.parent.GetComponent<EnemyInput>().Awareness == EnemyInput.AwarenessType.Unaware)//FIXME: THIS IS SLOW
				HitPoints = 0;
			else
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
