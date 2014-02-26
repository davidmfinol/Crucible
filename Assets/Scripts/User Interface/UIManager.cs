using UnityEngine;
using System.Collections;

public class UIManager : MonoBehaviour
{
	public Transform ChaseVignette;
	public Transform WeaponsGUI;

	private Transform _vignetteInstance;
	private float _vignetteAlpha;
	private int _vignetteAlphaDir;


	void Start()
	{
		_vignetteInstance = (Transform)Instantiate (ChaseVignette, ChaseVignette.position, ChaseVignette.rotation);
		_vignetteAlpha = 0.0f;
	}

	void Update()
	{
		if ( (GameManager.AI.EnemiesChasing > 0) )
		{
			if(_vignetteAlpha >= 0.9f)
				_vignetteAlphaDir = -1;
			else if(_vignetteAlpha <= 0.3) 
				_vignetteAlphaDir = 1;
			
			if(_vignetteAlphaDir == 1)
				_vignetteAlpha = Mathf.Lerp (_vignetteAlpha, 1.0f, Time.deltaTime * 2.0f);
			else if(_vignetteAlphaDir == -1)
				_vignetteAlpha = Mathf.Lerp (_vignetteAlpha, 0.2f, Time.deltaTime * 2.0f);
		} 
		else
		{
			_vignetteAlpha = Mathf.Lerp (_vignetteAlpha, 0, Time.deltaTime * 4.0f);
			
		}
		
		_vignetteInstance.renderer.material.color = new Vector4 (_vignetteInstance.renderer.material.color.r, 
		                                                         _vignetteInstance.renderer.material.color.g, 
		                                                         _vignetteInstance.renderer.material.color.b,
		                                                         _vignetteAlpha);
	}
}
