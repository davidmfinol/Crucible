using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Color pulse can be attached to an object to give it a pulsing effect by changing it's materials rgb values.
/// </summary>
[AddComponentMenu("Special Effects/Color Pulse")]
public class ColorPulse : MonoBehaviour
{
	// thresholds
	public Color MinColor;
	public Color MaxColor;

	public float Speed = 2.0f;
	
	// find a list of materials to change.
	private List<Material> _changeableMaterials;
	private bool _on;
	// -1 as it fades down, 1 as it fades up
	private int _dir;
	// track the alpha
	private const float _closeEnough = 0.001f;
	private Color _currColor;

	public void Start ()
	{
		_changeableMaterials = FindChangeableMaterials ();
		
		_dir = 1;

		// assume min & max use the same alpha
		_currColor = MinColor;
		
	}
	
	public void Update ()
	{
		
		// When on, pulse
		if (_on) {
			if (_dir == 1) {
				if(Vector4.Distance(_currColor, MaxColor) <= _closeEnough) {
					_dir = -1;

				} else {
					_currColor.r = Mathf.Lerp(_currColor.r, MaxColor.r, Speed * Time.deltaTime);
					_currColor.g = Mathf.Lerp(_currColor.g, MaxColor.g, Speed * Time.deltaTime);
					_currColor.b = Mathf.Lerp(_currColor.b, MaxColor.b, Speed * Time.deltaTime);

				}

			} else if (_dir == -1) {
				if( Vector4.Distance(_currColor, MinColor) <= _closeEnough) {
					_dir = 1;

				} else {
					_currColor.r = Mathf.Lerp(_currColor.r, MinColor.r, Speed * Time.deltaTime);
					_currColor.g = Mathf.Lerp(_currColor.g, MinColor.g, Speed * Time.deltaTime);
					_currColor.b = Mathf.Lerp(_currColor.b, MinColor.b, Speed * Time.deltaTime);

				}

			}

		} else {
			_currColor.r = Mathf.Lerp(_currColor.r, MinColor.r, Speed * Time.deltaTime);
			_currColor.g = Mathf.Lerp(_currColor.g, MinColor.g, Speed * Time.deltaTime);
			_currColor.b = Mathf.Lerp(_currColor.b, MinColor.b, Speed * Time.deltaTime);

		}

		ApplyColor ();

	}
		
	public void ApplyColor ()
	{
		foreach (Material m in _changeableMaterials) {
			m.color = _currColor;
			
		}
		
	}
	
	public List<Material> FindChangeableMaterials ()
	{
		List<Material> changeableMaterials = new List<Material> ();
		foreach (MeshRenderer render in GetComponentsInChildren<MeshRenderer>())
			if (render.gameObject.CompareTag ("Changeable Material"))
				changeableMaterials.Add (render.material);
		return changeableMaterials;
		
	}
	
	public bool On {
		get { return _on; }
		set { _on = value; }
		
	}
	
}
