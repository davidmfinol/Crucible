using UnityEngine;
using System.Collections;

[AddComponentMenu("User Interface/Item Quad")]
public class ItemQuad : MonoBehaviour
{
    // reference the inventory item the quad is for.
    public InventoryItem invItem;
    private bool _isDraggedCopy;
    
    public GameObject CreateDraggableCopy ()
    {
        GameObject quadCopy = (GameObject)Instantiate (gameObject);
        quadCopy.renderer.material.color = new Color (quadCopy.renderer.material.color.r,
                                                     quadCopy.renderer.material.color.g,
                                                     quadCopy.renderer.material.color.b,
                                                     1.0f);

        ItemQuad itemQuad = quadCopy.GetComponent<ItemQuad> ();
        itemQuad.invItem = invItem;
        itemQuad.IsDraggedCopy = true;
        return quadCopy;

    }

    public bool IsDraggedCopy {
        get { return _isDraggedCopy; }
        set { _isDraggedCopy = value; }

    }
}
