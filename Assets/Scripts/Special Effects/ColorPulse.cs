using UnityEngine;
using System.Collections;
using System.Collections.Generic;

// TODO: FIND OUT WHAT USES THIS AND MENTION IT IN THE SUMMARY; IF NOTHING USES THIS, DELETE IT

/// <summary>
/// Color pulse can be attached to an object to give it a pulsing effect by changing it's materials rgb values.
/// NOTE: MUST HAVE CHANGEABLE MATERIALS TAGGED ON THE OBJECT.
/// </summary>
[AddComponentMenu("Special Effects/Color Pulse")]
public class ColorPulse : MonoBehaviour
{
	public Color MinColor;
	public Color MaxColor;
    public float LerpSpeed = 2.0f;
    private bool _on;
    private List<Material> _changeableMaterials;
    private Color _currColor;
    private const float _closeEnough = 0.001f;
    private int _dir; // -1 as it pulses down, 1 as it pulses up

	public void Start ()
	{
		_changeableMaterials = FindChangeableMaterials ();
		
		_dir = 1;

		// Assume min & max use the same alpha
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
					_currColor.r = Mathf.Lerp(_currColor.r, MaxColor.r, LerpSpeed * Time.deltaTime);
					_currColor.g = Mathf.Lerp(_currColor.g, MaxColor.g, LerpSpeed * Time.deltaTime);
					_currColor.b = Mathf.Lerp(_currColor.b, MaxColor.b, LerpSpeed * Time.deltaTime);

				}

			} else if (_dir == -1) {
				if( Vector4.Distance(_currColor, MinColor) <= _closeEnough) {
					_dir = 1;

				} else {
					_currColor.r = Mathf.Lerp(_currColor.r, MinColor.r, LerpSpeed * Time.deltaTime);
					_currColor.g = Mathf.Lerp(_currColor.g, MinColor.g, LerpSpeed * Time.deltaTime);
					_currColor.b = Mathf.Lerp(_currColor.b, MinColor.b, LerpSpeed * Time.deltaTime);

				}

			}

		} else {
			_currColor.r = Mathf.Lerp(_currColor.r, MinColor.r, LerpSpeed * Time.deltaTime);
			_currColor.g = Mathf.Lerp(_currColor.g, MinColor.g, LerpSpeed * Time.deltaTime);
			_currColor.b = Mathf.Lerp(_currColor.b, MinColor.b, LerpSpeed * Time.deltaTime);

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
