using UnityEngine;
using System.Collections;

public class ShadowZoom: MonoBehaviour {
	
	public float ZoomDistance;
	public float TimeUntilZoom;

	private float _timeIn = 0.0f;
	private bool _isZoomed = false;

	void OnTriggerEnter(Collider other) {
		if (other.CompareTag ("Player")) {
			_timeIn = 0.0f;
			_isZoomed = false;
				
		}
	
	}
	
	void OnTriggerStay(Collider other) {
		if (other.CompareTag ("Player") && !_isZoomed) {
			_timeIn += Time.deltaTime;

			if(_timeIn >= TimeUntilZoom) {
				_isZoomed = true;

				CameraScrolling cameraScript = Camera.main.GetComponent<CameraScrolling>();
				cameraScript.Distance += ZoomDistance;

			}

		}

	}

	
	void OnTriggerExit(Collider other) {
		if (_isZoomed) {
			CameraScrolling cameraScript = Camera.main.GetComponent<CameraScrolling>();
			cameraScript.Distance -= ZoomDistance;


		}

	}
	
}
