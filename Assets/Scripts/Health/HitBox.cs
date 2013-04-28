using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public enum BoxAllegiance { Team1, Team2 };

//[RequireComponent(typeof(Collider))]
[RequireComponent(typeof(BoxCollider))]
public class HitBox : MonoBehaviour
{
    //~Origin Data
    public BoxAllegiance Allegiance;
    public HitBoxFamily Family;
    public int HitBoxID;
    public string HitBoxName;
    //~Combat Value
    public int Damage;
    public StampDictionary stampRecord = new StampDictionary();
}

[System.Serializable]
public class HitBoxFamily
{
    public int CreatorID;
    public int FamilyID;
    public string FamilyName;
    public StampDictionary stampRecord = new StampDictionary();

    public HitBoxFamily(int creatorID, int famID, string name)
    {
        CreatorID = creatorID;
        FamilyID = famID;
        FamilyName = name;
    }
}

public class StampDictionary
{
    private Dictionary<int, List<HeartBoxStamp>> _stampDict = new Dictionary<int, List<HeartBoxStamp>>();

    public void Imprint(HeartBoxStamp stamp)
    {
        //~If the HeartBox has an entry, add the stamp to the list
        if (_stampDict.ContainsKey(stamp.HeartBoxID))
            _stampDict[stamp.HeartBoxID].Add(stamp);
        else //~create entry, then try Imprint() again
        {
            _stampDict.Add(stamp.HeartBoxID, new List<HeartBoxStamp>());
            Imprint(stamp);
        }
    }
    public HeartBoxStamp GetLatestHeartBoxStamp(int heartBoxInstanceID)
    {
        List<HeartBoxStamp> heartBoxStampList;
        if (_stampDict.TryGetValue(heartBoxInstanceID, out heartBoxStampList))
            return heartBoxStampList[heartBoxStampList.Count - 1];
        else
            return null;
    }


    //~Read-only access wrapper methods
    public bool ContainsKey(int heartboxInstanceID)
    {
        return _stampDict.ContainsKey(heartboxInstanceID);
    }

}