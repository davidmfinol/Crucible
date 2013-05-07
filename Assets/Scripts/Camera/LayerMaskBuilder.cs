/*
 * Copyright (c) 2013 Akilram Krishnan

 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR
 * A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
 * CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

/* Version 1.0*/


using UnityEngine;

/// <summary>
/// A referenceable LayerMask that is also useful for building and modifying LayerMask values.
/// </summary>
[System.Serializable]
public class LayerMaskBuilder
{
    public LayerMask layerMask;

    /// <summary>
    /// Default value of layerMask is 0.
    /// </summary>
    public LayerMaskBuilder() { }
    /// <summary>
    /// Copies mask into a new LayerMaskBuilder.
    /// </summary>
    /// <param name="mask">The LayerMask to be copied.</param>
    public LayerMaskBuilder(LayerMask mask)
    {
        layerMask = mask;
    }
    /// <summary>
    /// Creates a LayerMask based on either a whitelist or blacklist.
    /// </summary>
    /// <param name="allow">If true, all LayerNumbers are allowed.</param>
    /// <param name="layerNumbers">Array of numbers of layers. The value -1 represents all layers.
    /// These numbers refer to the number found in TagManager,
    /// and does not refer to the LayerMask value.</param>
    public LayerMaskBuilder(bool allow, params int[] layerNumbers)
    {
        layerMask = allow ? LayerMaskBuilder.LayerMaskFromAllowed(layerNumbers) : LayerMaskBuilder.LayerMaskFromIgnored(layerNumbers);
    }
    /// <summary>
    /// Creates a LayerMask based on either a whitelist or blacklist.
    /// </summary>
    /// <param name="allow">If true, all LayerNumbers are allowed.</param>
    /// <param name="layerNames">Names of layers.</param>
    public LayerMaskBuilder(bool allow, params string[] layerNames) :
        this(allow, NamesToLayers(layerNames)) { }

    /// <summary>
    /// Sets the layer of layerNumber to be allowed on a LayerMask.
    /// </summary>
    /// <param name="layerNumber">The number of the layer to be allowed. The value -1 represents all layers.
    /// This refers to the number found in TagManager,
    /// and does not refer to the LayerMask value.</param>
    /// <param name="mask">The LayerMask to be modified.</param>
    public static void AllowLayerOn(int layerNumber, ref LayerMask mask)
    {
        if (layerNumber == -1) { mask = -1; return; }
        if (layerNumber >= 0 && layerNumber <= 31)
            mask = (mask | (1 << layerNumber));
    }
    /// <summary>
    /// Sets the layer of layerNumber to be allowed on a LayerMask.
    /// </summary>
    /// <param name="layerNumber">The number of the layer to be ignored. The value -1 represents all layers.
    /// This refers to the number found in TagManager,
    /// and does not refer to the LayerMask value.</param>
    /// <param name="mask">The LayerMask to be modified.</param>
    public static void IgnoreLayerOn(int layerNumber, ref LayerMask mask)
    {
        if (layerNumber == -1) { mask = 0; return; }
        if (layerNumber >= 0 && layerNumber <= 31)
            mask = (mask ^ (1 << layerNumber));
    }

    /// <summary>
    /// Converts an array of layer names to an array of layer numbers.
    /// </summary>
    /// <param name="layerNames">Array of names of layers.</param>
    /// <returns>Array of numbers of layers.
    /// These numbers refer to the number found in TagManager,
    /// and does not refer to the LayerMask value.</return>
    public static int[] NamesToLayers(string[] layerNames)
    {
        int length = layerNames.Length;
        int[] layerNumbers = new int[length];
        for (int x = 0; x < length; ++x)
            layerNumbers[x] = LayerMask.NameToLayer(layerNames[x]);
        return layerNumbers;
    }
    /// <summary>
    /// Converts an array of layer numbers to an array of layer names.
    /// </summary>
    /// <param name="layerNumbers">Array of numbers of layers. The value -1 represents all layers.
    /// These numbers refer to the number found in TagManager,
    /// and does not refer to the LayerMask value.</param>
    /// <returns>Array of Names of layers.</returns>
    public static string[] LayersToNames(int[] layerNumbers)
    {
        int length = layerNumbers.Length;
        string[] layerNames = new string[length];
        for (int x = 0; x < length; ++x)
            layerNames[x] = LayerMask.LayerToName(layerNumbers[x]);
        return layerNames;
    }

    /// <summary>
    /// Sets the layers of an array of Layer numbers to be allowed on this LayerMaskBuilder's LayerMask.
    /// </summary>
    /// <param name="layerNumbers">Array of numbers of layers. The value -1 represents all layers.
    /// These numbers refer to the number found in TagManager,
    /// and does not refer to the LayerMask value.</param>
    public void Allow(params int[] layerNumbers)
    {
        foreach (int layerNumber in layerNumbers)
        {
            if (layerNumber == -1) { layerMask = -1; return; }
            if (layerNumber >= 0 && layerNumber <= 31)
                layerMask = (layerMask | (1 << layerNumber));
        }
    }
    /// <summary>
    /// Sets the layers of an array of Layer numbers to be allowed on this LayerMaskBuilder's LayerMask.
    /// </summary>
    /// <param name="layerNames">Array of names of layers.</param>
    public void Allow(params string[] layerNames)
    {
        Allow(NamesToLayers(layerNames));
    }

    /// <summary>
    /// Sets the layers of an array of Layer numbers to be ignored on this LayerMaskBuilder's LayerMask.
    /// </summary>
    /// <param name="layerNumbers">Array of numbers of layers. The value -1 represents all layers.
    /// These numbers refer to the number found in TagManager,
    /// and does not refer to the LayerMask value.</param>
    public void Ignore(params int[] layerNumbers)
    {
        foreach (int layerNumber in layerNumbers)
        {
            if (layerNumber == -1) { layerMask = 0; return; }
            if (layerNumber >= 0 && layerNumber <= 31)
                layerMask = (layerMask ^ (1 << layerNumber));
        }
    }
    /// <summary>
    /// Sets the layers of an array of Layer numbers to be ignored on this LayerMaskBuilder's LayerMask.
    /// </summary>
    /// <param name="layerNames">Array of names of layers.</param>
    public void Ignore(params string[] layerNames)
    {
        Ignore(NamesToLayers(layerNames));
    }

    /// <summary>
    /// Sets a LayerMask to allow the same layers as another LayerMask.
    /// </summary>
    /// <param name="maskA">The LayerMask to be modified.</param>
    /// <param name="maskB">The LayerMask that to be copied from.</param>
    public static void AllowSameLayersAs(ref LayerMask maskA, LayerMask maskB)
    {
        maskA = maskA | maskB;
    }
    /// <summary>
    /// Sets this LayerMaskBuilder's LayerMask to allow the same layers as another LayerMask.
    /// </summary>
    /// <param name="mask">The LayerMask that to be copied from.</param>
    public void AllowSameLayersAs(LayerMask mask)
    {
        this.layerMask = this.layerMask | mask;
    }

    /// <summary>
    /// Sets a LayerMask to allow the same layers as another LayerMask.
    /// </summary>
    /// <param name="maskA">The LayerMask to be modified.</param>
    /// <param name="maskB">The LayerMask that to be copied from.</param>
    public static void IgnoreSameLayersAs(ref LayerMask maskA, LayerMask maskB)
    {
        maskA = maskA & maskB;
    }
    /// <summary>
    /// Sets this LayerMaskBuilder's LayerMask to allow the same layers as another LayerMask.
    /// </summary>
    /// <param name="mask">The LayerMask that to be copied from.</param>
    public void IgnoreSameLayerAs(LayerMask mask)
    {
        this.layerMask = this.layerMask & mask;
    }

    /// <summary>
    /// Create a LayerMask that allows only the layers represented by an array of layer numbers.
    /// </summary>
    /// <param name="layerNumbers">Array of numbers of layers. The value -1 represents all layers.
    /// These numbers refer to the number found in TagManager,
    /// and does not refer to the LayerMask value.</param>
    public static LayerMask LayerMaskFromAllowed(params int[] layerNumbers)
    {
        LayerMask layerMask = 0;
        foreach (int layerNumber in layerNumbers)
        {
            if (layerNumber == -1) { layerMask = -1; return layerMask; }
            if (layerNumber >= 0 && layerNumber <= 31)
                layerMask = (layerMask | (1 << layerNumber));
        }
        return layerMask;
    }
    /// <summary>
    /// Create a LayerMask that allows only the layers represented by an array of layer names.
    /// </summary>
    /// <param name="layerNames">Array of names of layers.</param>
    public static LayerMask LayerMaskFromAllowed(params string[] layerNames)
    {
        return LayerMaskFromAllowed(NamesToLayers(layerNames));
    }
    /// <summary>
    /// Create a LayerMask that ignores only the layers represented by an array of layer numbers.
    /// </summary>
    /// <param name="layerNumbers">Array of numbers of layers. The value -1 represents all layers.
    /// These numbers refer to the number found in TagManager,
    /// and does not refer to the LayerMask value.</param>
    public static LayerMask LayerMaskFromIgnored(params int[] layerNumbers)
    {
        LayerMask layerMask = -1;
        foreach (int layerNumber in layerNumbers)
        {
            if (layerNumber == -1) { layerMask = 0; return layerMask; }
            if (layerNumber >= 0 && layerNumber <= 31)
                layerMask = (layerMask ^ (1 << layerNumber));
        }
        return layerMask;
    }
    /// <summary>
    /// Create a LayerMask that ignores only the layers represented by an array of layer names.
    /// </summary>
    /// <param name="layerNames">Array of names of layers.</param>
    public static LayerMask LayerMaskFromIgnored(params string[] layerNames)
    {
        return LayerMaskFromIgnored(NamesToLayers(layerNames));
    }

    /// <summary>
    /// Converts the LayerMask to a binary number formatted as a string.
    /// </summary>
    /// <returns></returns>
    public string BinaryFormat()
    {
        return System.Convert.ToString(layerMask.value, 2);
    }
    /// <summary>
    /// Converts this LayerMaskBuilder's LayerMask to a binary number formatted as a string.
    /// </summary>
    /// <returns></returns>
    public static string BinaryFormat(LayerMask mask)
    {
        return System.Convert.ToString(mask.value, 2);
    }

    public static implicit operator LayerMask(LayerMaskBuilder maskBuilder)
    {
        return maskBuilder.layerMask;
    }
}