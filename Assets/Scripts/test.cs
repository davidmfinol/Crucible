using UnityEngine;
using System.Collections;

public class test : MonoBehaviour
{
    float startTime;
    bool hasDone;
    // Use this for initialization
    void Start()
    {

        //hitbox1.transform.Translate(2, 2, 2);
    }

    // Update is called once per frame
    void Update()
    {
        if (((Time.time - startTime) > 2.0f) && !hasDone)
        {
            hasDone = true;
            HitBoxFamily fam = new HitBoxFamily(GetInstanceID(), 2, "asdf");

            GameObject hitbox1 = new GameObject("h1");
            hitbox1.AddComponent<HitBox>();
            HitBox h1BoxScript = hitbox1.GetComponent<HitBox>();
            h1BoxScript.Allegiance = BoxAllegiance.Team2;
            h1BoxScript.Family = fam;
            h1BoxScript.HitBoxID = 1;
            h1BoxScript.HitBoxName = "center";
            h1BoxScript.Damage = 500;
            hitbox1.layer = 9;

            GameObject hitbox2 = new GameObject("h2");
            hitbox2.AddComponent<HitBox>();
            HitBox h2BoxScript = hitbox2.GetComponent<HitBox>();
            h2BoxScript.Allegiance = BoxAllegiance.Team2;
            h2BoxScript.Family = fam;
            h2BoxScript.HitBoxID = 2;
            h2BoxScript.HitBoxName = "center";
            h2BoxScript.Damage = 500;
            hitbox2.layer = 9;

           
        }

    }
}
