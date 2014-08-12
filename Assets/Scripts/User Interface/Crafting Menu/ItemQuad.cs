using UnityEngine;
using System.Collections;

[AddComponentMenu("User Interface/Item Quad")]
public class ItemQuad : MonoBehaviour
{
    // reference the inventory item the quad is for.
    public InventoryItem invItem;
    private bool _isDraggedCopy;
    
    public GameObject CreateDraggableCopy()
    {
        GameObject quadCopy = (GameObject)Instantiate(gameObject);
        quadCopy.renderer.material.color = new Color(quadCopy.renderer.material.color.r,
                                                     quadCopy.renderer.material.color.g,
                                                     quadCopy.renderer.material.color.b,
                                                     1.0f);

        ItemQuad itemQuad = quadCopy.GetComponent<ItemQuad>();
        itemQuad.invItem = invItem;
        itemQuad.IsDraggedCopy = true;

        Vector3 newScale = new Vector3(transform.parent.localScale.x, transform.parent.localScale.y, transform.parent.localScale.z);

        // TODO: make not arbitrary scale-down.
        newScale /= 4.0f;

        itemQuad.transform.localScale = newScale;
        return quadCopy;

    }

    public bool IsDraggedCopy {
        get { return _isDraggedCopy; }
        set { _isDraggedCopy = value; }

    }
}
