using UnityEngine;
using System.Collections;

public class PlayerHeartBox : HeartBox
{
    public float TimeSinceHit;
    public float RegenCoolDown = 3.0f;
    [SerializeField]
    bool RegenRoutine;
    [SerializeField]
    float regenSpeed;
	
	Rect box = new Rect(10, 10, 100, 20);
	
	private Texture2D background;
	private Texture2D foreground;
    
    protected override void Start()
    {
        HitPoints = MaxHitPoints;
        turnOffRegen();
		
		background = new Texture2D(1, 1, TextureFormat.RGB24, false);
		foreground = new Texture2D(1, 1, TextureFormat.RGB24, false);
		
		background.SetPixel(0, 0, Color.red);
		foreground.SetPixel(0, 0, Color.green);
		
		background.Apply();
		foreground.Apply();
    }
    void Update()
    {
        //Collider[] c = Physics.OverlapSphere(transform.position, 1.0f);
        //RaycastHit[] hits = Physics.SphereCastAll(
        //    new Vector3(0,-0.016f,0),
        //    0.02f,
        //    Vector3.up,
        //    0.032f,
        //    LayerMaskBuilder.LayerMaskFromAllowed(9)
        //    );
        //int length = hits.Length;
        //Collider[] c = new Collider[length];
        //for(int x = 0; x<length; ++x)
        //{
        //    c[x] = hits[x].collider;
        //}
        //if (c != null)
        //{
        //    foreach (Collider col in c)
        //    {
        //        HitBox script = col.GetComponent<HitBox>();
        //        if (script != null)
        //            Interpret(script);
        //    }
        //}
        TimeSinceHit += Time.deltaTime;
        if (RegenRoutine)
        {
            HitPoints = Mathf.CeilToInt(Mathf.Lerp((float)HitPoints, (float)MaxHitPoints, Time.deltaTime*regenSpeed));
            HitPoints = Mathf.Clamp(HitPoints, 0, MaxHitPoints);

            //~ Stop routine because health has replenished
            if (HitPoints == MaxHitPoints)
                turnOffRegen();
        }
        else if ((TimeSinceHit > RegenCoolDown) && (HitPoints != MaxHitPoints))
        {
            RegenRoutine = true;
        }
    }
    void OnTriggerStay(Collider other)
    {
        HitBox script = other.GetComponent<HitBox>();
        if (script != null && script.enabled)
            Interpret(script);
    }
    void OnGUI()
    {
		GUI.BeginGroup(box);
		{
			GUI.DrawTexture(new Rect(0, 0, box.width, box.height), background, ScaleMode.StretchToFill);
			GUI.DrawTexture(new Rect(0, 0, box.width*HitPoints/MaxHitPoints, box.height), foreground, ScaleMode.StretchToFill);
		}
		GUI.EndGroup();
    }
    void turnOffRegen()
    {
        RegenRoutine = false;
    }
    protected override void Interpret(HitBox hitbox)
    {
        if (isValidHitbox(hitbox))
        {
            hitbox.stampRecord.Imprint(createHeartBoxStamp());
            hitbox.Family.stampRecord.Imprint(createHeartBoxStamp());

            turnOffRegen();
            HitPoints -= hitbox.Damage;
            TimeSinceHit = 0;
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
