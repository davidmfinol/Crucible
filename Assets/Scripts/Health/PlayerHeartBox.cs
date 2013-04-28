using UnityEngine;
using System.Collections;

public class PlayerHeartBox : HeartBox
{
    public int MaxHitPoints = 1000;
    [SerializeField]
    int HitPoints;
    [SerializeField]
    float timeSinceHit;
    public float RegenCoolDown = 3.0f;
    [SerializeField]
    bool RegenRoutine;
    [SerializeField]
    float regenSpeed;
    
    protected override void Start()
    {
        HitPoints = MaxHitPoints;
        turnOffRegen();
    }
    void Update()
    {
        //Collider[] c = Physics.OverlapSphere(transform.position, 1.0f);
        RaycastHit[] hits = Physics.SphereCastAll(
            new Vector3(0,-0.016f,0),
            0.02f,
            Vector3.up,
            0.032f,
            LayerMaskBuilder.LayerMaskFromAllowed(9)
            );
        int length = hits.Length;
        Collider[] c = new Collider[length];
        for(int x = 0; x<length; ++x)
        {
            c[x] = hits[x].collider;
        }
        if (c != null)
        {
            foreach (Collider col in c)
            {
                HitBox script = col.GetComponent<HitBox>();
                if (script != null)
                    Interpret(script);
            }
        }
        timeSinceHit += Time.deltaTime;
        if (RegenRoutine)
        {
            HitPoints = Mathf.CeilToInt(Mathf.Lerp((float)HitPoints, (float)MaxHitPoints, Time.deltaTime*regenSpeed));
            HitPoints = Mathf.Clamp(HitPoints, 0, MaxHitPoints);

            //~ Stop routine because health has replenished
            if (HitPoints == MaxHitPoints)
                turnOffRegen();
        }
        else if ((timeSinceHit > RegenCoolDown) && (HitPoints != MaxHitPoints))
        {
            RegenRoutine = true;
        }
    }
    void OnTriggerEnter(Collider other)
    {
        //Debug.Log("I've been hit");
        //HitBox script = other.GetComponent<HitBox>();
        //if (script != null)
        //    Interpret(script);
    }
    void OnGUI()
    {

        GUI.Box(new Rect(10, 10,
            Mathf.CeilToInt(Mathf.Lerp(1, Screen.width/5, ((float)HitPoints)/((float)MaxHitPoints))),
            20), " ");
    }
    void turnOffRegen()
    {
        RegenRoutine = false;
    }
    protected override void Interpret(HitBox hitbox)
    {
        if (isValidHitbox(hitbox))
        {
            //Debug.Log("I've been hit");
            hitbox.stampRecord.Imprint(createHeartBoxStamp());
            hitbox.Family.stampRecord.Imprint(createHeartBoxStamp());

            turnOffRegen();
            HitPoints -= hitbox.Damage;
            timeSinceHit = 0;
        }
    }
    bool isValidHitbox(HitBox hitbox)
    {
        //If it is a friendly hitbox, or family seen before, return false
        return !((hitbox.Allegiance == this.Allegiance) || hitbox.Family.stampRecord.ContainsKey(heartBoxID));
    }
}
