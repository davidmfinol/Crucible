using UnityEngine;
using System.Collections;

public class CountQuad : MonoBehaviour {
	public int Count;

};

public static class CountQuadFactory {
	public static Texture2D GetTextureForCount(int count) {
		string textureName = "";

		if (count == 1)
			textureName = "Count1";
		else if(count == 2)
			textureName = "Count2";
		else if(count == 3)
			textureName = "Count3";

		else if(count == 4)
			textureName = "Count4";

		else if(count == 5)
			textureName = "Count5";
		else
			Debug.Log ("Failed to find count texture for count " + count);

		return Resources.Load<Texture2D> (textureName);

	}

};