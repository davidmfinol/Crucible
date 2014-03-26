using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[AddComponentMenu("User Interface/Objective Tracker")]
public class ObjectiveTracker : MonoBehaviour {
	public List<GameObject> Objectives;

	// Update is called once per frame
	public void AddObjective(GameObject obj) {
		Objectives.Add (obj);

	}

	public void RemoveObjective (GameObject obj) {
		Objectives.Remove (obj);

	}

	public void RemoveCloseTo(Vector3 pos) {
		// remove any objective we are close to.
		for(int i= Objectives.Count - 1; i >= 0; i--) {
			if(Objectives[i] != null) {
				float dist = Vector3.Distance(pos, Objectives[i].transform.position);

				if(dist <= 3.0f) {
					Objectives.RemoveAt(i);

				}

			}

		}

	}
	
	public bool GetNearest(out Vector3 vNearestRet) {
		Vector3 vPlayerPos = GameManager.Player.gameObject.transform.position;

		bool bFoundAny = false;
		Vector3 vNearest = new Vector3(0.0f, 0.0f, 0.0f);

		foreach( GameObject obj in Objectives) {
			if(obj != null) {
				if(!bFoundAny) {
					bFoundAny = true;
					vNearest = obj.transform.position;

				} else {
					// found a closer one? use it.
					if( Vector3.Distance(vPlayerPos, obj.transform.position) < 
					    Vector3.Distance(vPlayerPos, vNearest)) {
						vNearest = obj.transform.position;

					}

				}

			}

		}

		if(bFoundAny) {
			vNearestRet = vNearest;
			return true;

		} else {
			vNearestRet = new Vector3(0.0f, 0.0f, 0.0f);
			return false;

		}

	}

}
