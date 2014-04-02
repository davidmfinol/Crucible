using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MapQuad : MonoBehaviour
{
    public GameObject MapPointPrefab;
    public float ScaleUp;

    public void UpdateMapPoint (GameObject o, string objectName)
    {
        Vector3 mapPoint = WorldToMapPoint (o.transform.position);

        for (int i=0; i < transform.childCount; i++) {
            if (transform.GetChild (i).name.Equals (objectName)) {
                // found it, so update
                transform.GetChild (i).position = mapPoint;
                
            }
            
        }

    }

    public Vector3 WorldToMapPoint (Vector3 worldPos)
    {
        // "shrink" the game world by some factor.
        Vector2 mapPoint = new Vector2 (worldPos.x, worldPos.y); //- GameManager.Level.Boundaries.center;
        mapPoint.x /= GameManager.Level.Boundaries.width;
        mapPoint.y /= GameManager.Level.Boundaries.height;
        
        mapPoint.x -= 0.5f;
        mapPoint.y -= 0.5f;
        
        mapPoint.x *= (GameManager.UI.UICamera.orthographicSize * GameManager.UI.UICamera.aspect * 16.0f / 9.5f);
        mapPoint.y *= (GameManager.UI.UICamera.orthographicSize * 16.0f / 9.5f);

        return mapPoint;
    }

	public void AddMapPoint (GameObject o, string objectName, string textureName, float scale = 2.0f)
    {
        Vector3 mapPoint = WorldToMapPoint (o.transform.position);

        // make a quad with the proper texture.
        GameObject newPoint = (GameObject)Instantiate (MapPointPrefab, new Vector3 (mapPoint.x, mapPoint.y, -3.0f), Quaternion.identity);
        newPoint.name = objectName;
        newPoint.renderer.material.mainTexture = Resources.Load<Texture2D> (textureName);
		newPoint.transform.localScale = new Vector3 (scale, scale, scale);

        AlphaPulse ap = newPoint.AddComponent<AlphaPulse> ();
		ap.MinAlpha = 0.3f;
		ap.MaxAlpha = 1.0f;
		ap.Period = 1.5f;
		ap.On = true;

		newPoint.transform.parent = transform;

    }

    public void RemoveMapPoint (string objectName)
    {
        for (int i=0; i < transform.childCount; i++) {
            if (transform.GetChild (i).name.Equals (objectName)) {
                Destroy (transform.GetChild (i).gameObject);
                
            }
            
        }

    }

	public void Clear ()
	{
		for (int i=transform.childCount - 1; i >= 0; i--)
			Destroy (transform.GetChild (i).gameObject);
				
	}

	public void Reload() {
		Clear ();

		// add player to map
		AddMapPoint (GameManager.Player.gameObject, "Player", "Maps/PlayerBlip", 4.0f);
		
		GameObject objs = GameObject.Find ("Items");
		
		for (int i=0; i< objs.transform.childCount; i++) {
			Transform obj = objs.transform.GetChild (i);
			
			if(obj.gameObject.name.Contains("GunParts"))
				AddMapPoint (obj.gameObject, obj.transform.position.x.ToString (), "Item Icons/GunPartsIcon");
			else if(obj.gameObject.name.Contains("HiggsDrive"))
				AddMapPoint (obj.gameObject, obj.transform.position.x.ToString (), "Item Icons/HiggsDriveIcon");
			else if(obj.gameObject.name.Contains("Isolator"))
				AddMapPoint (obj.gameObject, obj.transform.position.x.ToString (), "Item Icons/IsolatorIcon");
			else
				AddMapPoint (obj.gameObject, obj.transform.position.x.ToString (), "Maps/ItemBlip");
		}
		
	}

}
