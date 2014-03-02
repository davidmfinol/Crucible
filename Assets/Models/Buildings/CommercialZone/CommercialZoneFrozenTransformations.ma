//Maya ASCII 2014 scene
//Name: CommercialZoneFrozenTransformations.ma
//Last modified: Sun, Mar 02, 2014 12:24:46 AM
//Codeset: UTF-8
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010035-864206";
fileInfo "osv" "Mac OS X 10.9.1";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".t" -type "double3" 45.672017606567458 91.093770715423219 -68.685935461605553 ;
	setAttr ".r" -type "double3" 174.00000000000841 85.200000000004337 180 ;
	setAttr ".rp" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" 9.4379551201635874e-16 -5.493717047730372e-17 -8.6165390945389328e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v";
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 46.085219198018144;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 86.276553573308149 -64.850748988891738 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" 176.23422719800612 52.06043161737184 -96.594546381374286 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0 -1.1102230246251563e-16 ;
	setAttr ".rpt" -type "double3" 2.2589794332341524e-16 9.512285815109368e-22 2.4287527243684052e-16 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 0.86602540378443893;
	setAttr ".ow" 5.5406629003860379;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -2.2204460492503131e-16 2 -1.9239070305551741e-16 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Ledge1";
	setAttr ".rp" -type "double3" 0 3.4886184521727461 3.7397000139949546 ;
	setAttr ".sp" -type "double3" 0 3.4886184521727461 3.7397000139949546 ;
createNode mesh -n "Ledge1Shape" -p "Ledge1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 4.033051 5.4827814 0.5 
		4.033051 5.4827814 -0.5 2.9441857 5.4827814 0.5 2.9441857 5.4827814 -0.5 2.9441857 
		1.9966187 0.5 2.9441857 1.9966187 -0.5 4.033051 1.9966187 0.5 4.033051 1.9966187;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge2";
	setAttr ".rp" -type "double3" 0 2.3888982681595894 21.785668791348961 ;
	setAttr ".sp" -type "double3" 0 2.3888982681595894 21.785668791348961 ;
createNode mesh -n "Ledge2Shape" -p "Ledge2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 1.0254159 34.598877 
		0.5 1.0254159 34.598877 -0.5 3.7523806 34.598877 0.5 3.7523806 34.598877 -0.5 3.7523806 
		8.9724588 0.5 3.7523806 8.9724588 -0.5 1.0254159 8.9724588 0.5 1.0254159 8.9724588;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "MeterMan3";
	setAttr ".rp" -type "double3" 0 2.3888982681595894 21.785668791348961 ;
	setAttr ".sp" -type "double3" 0 2.3888982681595894 21.785668791348961 ;
createNode mesh -n "MeterMan3Shape" -p "MeterMan3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 1.0254159 34.598877 
		0.5 1.0254159 34.598877 -0.5 3.7523806 34.598877 0.5 3.7523806 34.598877 -0.5 3.7523806 
		8.9724588 0.5 3.7523806 8.9724588 -0.5 1.0254159 8.9724588 0.5 1.0254159 8.9724588;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge4";
	setAttr ".rp" -type "double3" 0 9.7909314526443865 10.774840107544692 ;
	setAttr ".sp" -type "double3" 0 9.7909314526443865 10.774840107544692 ;
createNode mesh -n "Ledge4Shape" -p "Ledge4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 9.0111485 11.979563 
		0.5 9.0111485 11.979563 -0.5 10.570715 11.979563 0.5 10.570715 11.979563 -0.5 10.570715 
		9.570118 0.5 10.570715 9.570118 -0.5 9.0111485 9.570118 0.5 9.0111485 9.570118;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge5";
	setAttr ".rp" -type "double3" 0 9.7909314526443865 5.2053542001511488 ;
	setAttr ".sp" -type "double3" 0 9.7909314526443865 5.2053542001511488 ;
createNode mesh -n "Ledge5Shape" -p "Ledge5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 9.0111485 6.4100766 
		0.5 9.0111485 6.4100766 -0.5 10.570715 6.4100766 0.5 10.570715 6.4100766 -0.5 10.570715 
		4.0006318 0.5 10.570715 4.0006318 -0.5 9.0111485 4.0006318 0.5 9.0111485 4.0006318;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge6";
	setAttr ".rp" -type "double3" 0 9.7909314526443865 -0.14428357931896674 ;
	setAttr ".sp" -type "double3" 0 9.7909314526443865 -0.14428357931896674 ;
createNode mesh -n "Ledge6Shape" -p "Ledge6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 9.0111485 1.0604386 
		0.5 9.0111485 1.0604386 -0.5 10.570715 1.0604386 0.5 10.570715 1.0604386 -0.5 10.570715 
		-1.3490058 0.5 10.570715 -1.3490058 -0.5 9.0111485 -1.3490058 0.5 9.0111485 -1.3490058;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge7";
	setAttr ".rp" -type "double3" 0 9.6443660340287689 27.776428666956569 ;
	setAttr ".sp" -type "double3" 0 9.6443660340287689 27.776428666956569 ;
createNode mesh -n "Ledge7Shape" -p "Ledge7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 10.11056 35.497849 0.5 
		10.11056 35.497849 -0.5 9.1781712 35.497849 0.5 9.1781712 35.497849 -0.5 9.1781712 
		20.05501 0.5 9.1781712 20.05501 -0.5 10.11056 20.05501 0.5 10.11056 20.05501;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge8";
	setAttr ".rp" -type "double3" 0 12.107545345226502 15.285929735276024 ;
	setAttr ".sp" -type "double3" 0 12.107545345226502 15.285929735276024 ;
createNode mesh -n "Ledge8Shape" -p "Ledge8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 18.218367 15.319736 
		0.5 18.218367 15.319736 -0.5 16.218367 14.252124 0.5 16.218367 14.252124 -0.5 5.9967237 
		15.252124 0.5 5.9967237 15.252124 -0.5 7.9967237 16.319735 0.5 7.9967237 16.319735;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge9";
	setAttr ".rp" -type "double3" 0 12.107545345226502 19.771790158261162 ;
	setAttr ".sp" -type "double3" 0 12.107545345226502 19.771790158261162 ;
createNode mesh -n "Ledge9Shape" -p "Ledge9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 18.218367 19.805595 
		0.5 18.218367 19.805595 -0.5 16.218367 18.737984 0.5 16.218367 18.737984 -0.5 5.9967237 
		19.737984 0.5 5.9967237 19.737984 -0.5 7.9967237 20.805595 0.5 7.9967237 20.805595;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge10";
	setAttr ".rp" -type "double3" 0 14.471242246377733 20.677690231818147 ;
	setAttr ".sp" -type "double3" 0 14.471242246377733 20.677690231818147 ;
createNode mesh -n "Ledge10Shape" -p "Ledge10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 15.015675 22.420771 
		0.5 15.015675 22.420771 -0.5 13.926809 22.420771 0.5 13.926809 22.420771 -0.5 13.926809 
		20.339573 0.5 13.926809 20.339573 -0.5 15.015675 20.339573 0.5 15.015675 20.339573;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge11";
	setAttr ".rp" -type "double3" 0 14.471242246377733 12.970067278487557 ;
	setAttr ".sp" -type "double3" 0 14.471242246377733 12.970067278487557 ;
createNode mesh -n "Ledge11Shape" -p "Ledge11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 15.015675 14.713148 
		0.5 15.015675 14.713148 -0.5 13.926809 14.713148 0.5 13.926809 14.713148 -0.5 13.926809 
		12.63195 0.5 13.926809 12.63195 -0.5 15.015675 12.63195 0.5 15.015675 12.63195;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge12";
	setAttr ".rp" -type "double3" 0 26.455511325661341 5.0872358157337239 ;
	setAttr ".sp" -type "double3" 0 26.455511325661341 5.0872358157337239 ;
createNode mesh -n "Ledge12Shape" -p "Ledge12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 26.999945 6.0587468 
		0.5 26.999945 6.0587468 -0.5 25.911079 6.0587468 0.5 25.911079 6.0587468 -0.5 25.911079 
		5.0374122 0.5 25.911079 5.0374122 -0.5 26.999945 5.0374122 0.5 26.999945 5.0374122;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge13";
	setAttr ".rp" -type "double3" 0 26.416530028635915 10.466654805242722 ;
	setAttr ".sp" -type "double3" 0 26.416530028635915 10.466654805242722 ;
createNode mesh -n "Ledge13Shape" -p "Ledge13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 26.960962 11.438166 
		0.5 26.960962 11.438166 -0.5 25.872097 11.438166 0.5 25.872097 11.438166 -0.5 25.872097 
		10.416831 0.5 25.872097 10.416831 -0.5 26.960962 10.416831 0.5 26.960962 10.416831;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge14";
	setAttr ".rp" -type "double3" 0 26.455511325661337 0.17559239052985731 ;
	setAttr ".sp" -type "double3" 0 26.455511325661337 0.17559239052985731 ;
createNode mesh -n "Ledge14Shape" -p "Ledge14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 26.999945 1.1471037 
		0.5 26.999945 1.1471037 -0.5 25.911079 1.1471037 0.5 25.911079 1.1471037 -0.5 25.911079 
		0.12576896 0.5 25.911079 0.12576896 -0.5 26.999945 0.12576896 0.5 26.999945 0.12576896;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge15";
	setAttr ".rp" -type "double3" 0 22.290910339495177 2.7240795611688498 ;
	setAttr ".sp" -type "double3" 0 22.290910339495177 2.7240795611688498 ;
createNode mesh -n "Ledge15Shape" -p "Ledge15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 22.42577 14.46588 0.5 
		22.42577 14.46588 -0.5 22.15605 14.46588 0.5 22.15605 14.46588 -0.5 22.15605 -1.3500135 
		0.5 22.15605 -1.3500135 -0.5 22.42577 -1.3500135 0.5 22.42577 -1.3500135;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge16";
	setAttr ".rp" -type "double3" 0 15.298833108763343 -6.2657340212006556 ;
	setAttr ".sp" -type "double3" 0 15.298833108763343 -6.2657340212006556 ;
createNode mesh -n "Ledge16Shape" -p "Ledge16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 15.769667 -2.3697588 
		0.5 15.769667 -2.3697588 -0.5 14.827999 -2.3697588 0.5 14.827999 -2.3697588 -0.5 
		14.827999 -7.4082704 0.5 14.827999 -7.4082704 -0.5 15.769667 -7.4082704 0.5 15.769667 
		-7.4082704;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge17";
	setAttr ".rp" -type "double3" 0 18.088413819735809 17.499297245581698 ;
	setAttr ".sp" -type "double3" 0 18.088413819735809 17.499297245581698 ;
createNode mesh -n "Ledge17Shape" -p "Ledge17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 17.888971 18.627708 
		0.5 17.888971 18.627708 -0.5 18.287857 18.627708 0.5 18.287857 18.627708 -0.5 18.287857 
		16.370886 0.5 18.287857 16.370886 -0.5 17.888971 16.370886 0.5 17.888971 16.370886;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge18";
	setAttr ".rp" -type "double3" 0 23.123253257543357 23.570721273526097 ;
	setAttr ".sp" -type "double3" 0 23.123253257543357 23.570721273526097 ;
createNode mesh -n "Ledge18Shape" -p "Ledge18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 22.035479 26.629524 
		0.5 22.035479 26.629524 -0.5 24.211029 26.629524 0.5 24.211029 26.629524 -0.5 24.211029 
		20.511919 0.5 24.211029 20.511919 -0.5 22.035479 20.511919 0.5 22.035479 20.511919;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge19";
	setAttr ".rp" -type "double3" 0 23.123253257543357 32.724297496685786 ;
	setAttr ".sp" -type "double3" 0 23.123253257543357 32.724297496685786 ;
createNode mesh -n "Ledge19Shape" -p "Ledge19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 22.035479 35.7831 0.5 
		22.035479 35.7831 -0.5 24.211029 35.7831 0.5 24.211029 35.7831 -0.5 24.211029 29.665495 
		0.5 24.211029 29.665495 -0.5 22.035479 29.665495 0.5 22.035479 29.665495;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge20";
	setAttr ".rp" -type "double3" 0 30.518790881471375 15.753686617852145 ;
	setAttr ".sp" -type "double3" 0 30.518790881471375 15.753686617852145 ;
createNode mesh -n "Ledge20Shape" -p "Ledge20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 30.822866 31.010248 
		0.5 30.822866 31.010248 -0.5 30.214716 31.010248 0.5 30.214716 31.010248 -0.5 30.214716 
		0.49712509 0.5 30.214716 0.49712509 -0.5 30.822866 0.49712509 0.5 30.822866 0.49712509;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge21";
	setAttr ".rp" -type "double3" 0 44.964178814513318 14.790926865915289 ;
	setAttr ".sp" -type "double3" 0 44.964178814513318 14.790926865915289 ;
createNode mesh -n "Ledge21Shape" -p "Ledge21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 45.376511 15.88409 0.5 
		45.376511 15.88409 -0.5 44.551849 15.88409 0.5 44.551849 15.88409 -0.5 44.551849 
		13.697763 0.5 44.551849 13.697763 -0.5 45.376511 13.697763 0.5 45.376511 13.697763;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge22";
	setAttr ".rp" -type "double3" 0 44.964178814513318 21.736550790602575 ;
	setAttr ".sp" -type "double3" 0 44.964178814513318 21.736550790602575 ;
createNode mesh -n "Ledge22Shape" -p "Ledge22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 45.376511 22.829714 
		0.5 45.376511 22.829714 -0.5 44.551849 22.829714 0.5 44.551849 22.829714 -0.5 44.551849 
		20.643387 0.5 44.551849 20.643387 -0.5 45.376511 20.643387 0.5 45.376511 20.643387;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge23";
	setAttr ".rp" -type "double3" 0 44.964178814513318 8.9455998005844144 ;
	setAttr ".sp" -type "double3" 0 44.964178814513318 8.9455998005844144 ;
createNode mesh -n "Ledge23Shape" -p "Ledge23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 45.376511 10.038763 
		0.5 45.376511 10.038763 -0.5 44.551849 10.038763 0.5 44.551849 10.038763 -0.5 44.551849 
		7.8524361 0.5 44.551849 7.8524361 -0.5 45.376511 7.8524361 0.5 45.376511 7.8524361;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge25";
	setAttr ".rp" -type "double3" 0 47.441230413688963 -1.7287064880645202 ;
	setAttr ".sp" -type "double3" 0 47.441230413688963 -1.7287064880645202 ;
createNode mesh -n "Ledge25Shape" -p "Ledge25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 47.853561 -0.63554305 
		0.5 47.853561 -0.63554305 -0.5 47.0289 -0.63554305 0.5 47.0289 -0.63554305 -0.5 47.0289 
		-2.8218699 0.5 47.0289 -2.8218699 -0.5 47.853561 -2.8218699 0.5 47.853561 -2.8218699;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_H_1" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_e_1" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_r_1" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_e_2" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_L_1" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_i_1" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_e_3" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_s_1" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_N_1" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_a_1" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_t_1" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_e_4" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_D_1" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_a_2" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_w_1" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "Char_g_1" -p "Text_HerexLiesxNateDawg_1";
createNode transform -n "MeterMan28";
	setAttr ".rp" -type "double3" 0 33.634247103376829 29.53748737859819 ;
	setAttr ".sp" -type "double3" 0 33.634247103376829 29.53748737859819 ;
createNode mesh -n "MeterMan28Shape" -p "MeterMan28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.20031153 0.375 0.20031153 0.125 0.20031153
		 0.375 0.54968846 0.625 0.54968846 0.875 0.20031153 0.375 0.20031153 0.625 0.20031153
		 0.625 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.54968846 0.375 0.54968846;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.5 34.046577 30.385258 
		0.5 34.046577 30.385258 -0.5 27.04064 30.385258 0.5 27.04064 30.385258 -0.5 27.04064 
		28.376543 0.5 27.04064 28.376543 -0.5 34.046577 28.376543 0.5 34.046577 28.376543 
		0.5 28.433096 30.385258 -0.5 28.433096 30.385258 -0.5 28.433096 28.376543 0.5 28.433096 
		28.376543 0.5 28.433096 32.050667 -0.5 28.433096 32.050667 0.5 27.04064 32.050667 
		-0.5 27.04064 32.050667 -0.5 27.04064 26.711136 0.5 27.04064 26.711136 0.5 28.433096 
		26.711136 -0.5 28.433096 26.711136;
	setAttr -s 20 ".vt[0:19]"  -0.5 -1 0.50000048 0.5 -1 0.50000048 -0.5 15.9910965 0.50000048
		 0.5 15.9910965 0.50000048 -0.5 15.9910965 -0.18682241 0.5 15.9910965 -0.18682241
		 -0.5 -1 -0.18682241 0.5 -1 -0.18682241 0.5 12.61405182 0.50000048 -0.5 12.61405182 0.50000048
		 -0.5 12.61405182 -0.18682241 0.5 12.61405182 -0.18682241 0.5 12.61405182 1.069439411
		 -0.5 12.61405182 1.069439411 0.5 15.9910965 1.069439411 -0.5 15.9910965 1.069439411
		 -0.5 15.9910965 -0.75626087 0.5 15.9910965 -0.75626087 0.5 12.61405182 -0.75626087
		 -0.5 12.61405182 -0.75626087;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 10 1 5 11 1 6 0 0 7 1 0 8 3 1 9 2 1 8 9 0 10 6 0 9 10 1 11 7 0 10 11 0 11 8 1
		 8 12 0 9 13 0 12 13 0 3 14 0 12 14 0 2 15 0 15 14 0 13 15 0 4 16 0 5 17 0 16 17 0
		 11 18 0 17 18 0 10 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -23 24 -27 -28
		mu 0 4 20 21 22 23
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 30 32 -35 -36
		mu 0 4 24 25 26 27
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3
		f 4 -15 20 22 -22
		mu 0 4 15 14 21 20
		f 4 12 23 -25 -21
		mu 0 4 14 3 22 21
		f 4 -2 25 26 -24
		mu 0 4 3 2 23 22
		f 4 -14 21 27 -26
		mu 0 4 2 15 20 23
		f 4 2 29 -31 -29
		mu 0 4 4 5 25 24
		f 4 9 31 -33 -30
		mu 0 4 5 18 26 25
		f 4 -19 33 34 -32
		mu 0 4 18 17 27 26
		f 4 -9 28 35 -34
		mu 0 4 17 4 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "MeterMan29";
	setAttr ".rp" -type "double3" 0 33.634247103376829 23.327913106669321 ;
	setAttr ".sp" -type "double3" 0 33.634247103376829 23.327913106669321 ;
createNode mesh -n "MeterMan29Shape" -p "MeterMan29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.55000001 0.875 0.2 0.625 0.60000002 0.875 0.15000001
		 0.625 0.64999998 0.875 0.099999994 0.625 0.70000005 0.875 0.049999997 0.125 0.2 0.375
		 0.55000001 0.125 0.15000001 0.375 0.60000002 0.125 0.099999994 0.375 0.64999998 0.125
		 0.049999997 0.375 0.70000005 0.375 0.5 0.625 0.5 0.625 0.55000001 0.375 0.55000001
		 0.375 0.70000005 0.625 0.70000005 0.625 0.75 0.375 0.75 0.375 0.60000002 0.625 0.60000002
		 0.625 0.64999998 0.375 0.64999998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  -0.5 34.046577 24.175682 
		0.5 34.046577 24.175682 -0.5 26.889904 24.175682 0.5 26.889904 24.175682 -0.5 26.889904 
		22.166967 0.5 26.889904 22.166967 -0.5 34.046577 22.166967 0.5 34.046577 22.166967 
		0.5 28.321236 22.166967 0.5 29.752573 22.166967 0.5 31.183907 22.166967 0.5 32.615242 
		22.166967 -0.5 28.321236 22.166967 -0.5 29.752573 22.166967 -0.5 31.183907 22.166967 
		-0.5 32.615242 22.166967 -0.5 26.889904 19.931446 0.5 26.889904 19.931446 0.5 28.321236 
		19.931446 -0.5 28.321236 19.931446 0.5 32.615242 19.931446 -0.5 32.615242 19.931446 
		0.5 34.046577 19.931446 -0.5 34.046577 19.931446 0.5 29.752573 19.931446 -0.5 29.752573 
		19.931446 0.5 31.183907 19.931446 -0.5 31.183907 19.931446;
	setAttr -s 28 ".vt[0:27]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 16.35666656 0.5
		 0.5 16.35666656 0.5 -0.5 16.35666656 -0.18682289 0.5 16.35666656 -0.18682289 -0.5 -1 -0.18682289
		 0.5 -1 -0.18682289 0.5 12.88533783 -0.18682289 0.5 9.41400146 -0.18682289 0.5 5.94266891 -0.18682289
		 0.5 2.47133255 -0.18682289 -0.5 12.88533783 -0.18682289 -0.5 9.41400146 -0.18682289
		 -0.5 5.94266891 -0.18682289 -0.5 2.47133255 -0.18682289 -0.5 16.35666656 -0.95119524
		 0.5 16.35666656 -0.95119524 0.5 12.88533783 -0.95119524 -0.5 12.88533783 -0.95119524
		 0.5 2.47133255 -0.95119524 -0.5 2.47133255 -0.95119524 0.5 -1 -0.95119524 -0.5 -1 -0.95119524
		 0.5 9.41400146 -0.95119524 -0.5 9.41400146 -0.95119524 0.5 5.94266891 -0.95119524
		 -0.5 5.94266891 -0.95119524;
	setAttr -s 48 ".ed[0:47]"  0 1 0 2 3 0 4 5 1 6 7 1 0 2 0 1 3 0 2 4 0
		 3 5 0 4 12 1 5 8 1 6 0 0 7 1 0 8 9 0 9 10 1 10 11 0 11 7 1 12 13 0 13 14 1 14 15 0
		 15 6 1 11 15 0 10 14 0 9 13 0 8 12 0 4 16 0 5 17 0 16 17 0 8 18 0 17 18 0 12 19 0
		 18 19 0 16 19 0 11 20 0 15 21 0 20 21 0 7 22 0 20 22 0 6 23 0 23 22 0 21 23 0 9 24 0
		 13 25 0 24 25 0 10 26 0 24 26 0 14 27 0 26 27 0 25 27 0;
	setAttr -s 22 -ch 96 ".fc[0:21]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 26 28 30 -32
		mu 0 4 30 31 32 33
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 8 -12 -16 -15 -14 -13 -10 -8 -6
		mu 0 8 1 10 21 19 17 15 11 3
		f 8 10 4 6 8 16 17 18 19
		mu 0 8 12 0 2 13 22 24 26 28
		f 4 -35 36 -39 -40
		mu 0 4 34 35 36 37
		f 4 -22 14 20 -19
		mu 0 4 27 18 20 29
		f 4 -43 44 46 -48
		mu 0 4 38 39 40 41
		f 4 -24 12 22 -17
		mu 0 4 23 14 16 25
		f 4 2 25 -27 -25
		mu 0 4 4 5 31 30
		f 4 9 27 -29 -26
		mu 0 4 5 14 32 31
		f 4 23 29 -31 -28
		mu 0 4 14 23 33 32
		f 4 -9 24 31 -30
		mu 0 4 23 4 30 33
		f 4 -21 32 34 -34
		mu 0 4 29 20 35 34
		f 4 15 35 -37 -33
		mu 0 4 20 7 36 35
		f 4 -4 37 38 -36
		mu 0 4 7 6 37 36
		f 4 -20 33 39 -38
		mu 0 4 6 29 34 37
		f 4 -23 40 42 -42
		mu 0 4 25 16 39 38
		f 4 13 43 -45 -41
		mu 0 4 16 18 40 39
		f 4 21 45 -47 -44
		mu 0 4 18 27 41 40
		f 4 -18 41 47 -46
		mu 0 4 27 25 38 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "MeterMan30";
	setAttr ".rp" -type "double3" 0 33.634247103376829 15.630523664391198 ;
	setAttr ".sp" -type "double3" 0 33.634247103376829 15.630523664391198 ;
createNode mesh -n "MeterMan30Shape" -p "MeterMan30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.375 0.375
		 0.625 0.375 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -0.5 34.046577 16.478292 
		0.5 34.046577 16.478292 -0.5 32.517246 16.478292 0.5 32.517246 16.478292 -0.5 32.517246 
		12.99801 0.5 32.517246 12.99801 -0.5 34.046577 12.99801 0.5 34.046577 12.99801 0.5 
		32.517246 14.738152 -0.5 32.517246 14.738152 0.5 29.573282 14.738152 -0.5 29.573282 
		14.738152 0.5 29.573282 12.99801 -0.5 29.573282 12.99801;
	setAttr -s 14 ".vt[0:13]"  -0.5 -1 0.50000024 0.5 -1 0.50000024 -0.5 2.70899582 0.50000024
		 0.5 2.70899582 0.50000024 -0.5 2.70899582 -0.68998361 0.5 2.70899582 -0.68998361
		 -0.5 -1 -0.68998361 0.5 -1 -0.68998361 0.5 2.70899582 -0.094991684 -0.5 2.70899582 -0.094991684
		 0.5 9.84882355 -0.094991684 -0.5 9.84882355 -0.094991684 0.5 9.84882355 -0.68998361
		 -0.5 9.84882355 -0.68998361;
	setAttr -s 23 ".ed[0:22]"  0 1 0 2 3 0 4 5 1 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 1 9 4 1 8 9 0 8 10 0 9 11 0 10 11 0 5 12 0 10 12 0
		 4 13 0 13 12 0 11 13 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 5 -12 -10 -13 -8 -6
		mu 0 5 1 10 11 15 3
		f 5 10 4 6 13 8
		mu 0 5 12 0 2 16 13
		f 4 -18 19 -22 -23
		mu 0 4 18 19 20 21
		f 4 -15 15 17 -17
		mu 0 4 17 14 19 18
		f 4 12 18 -20 -16
		mu 0 4 14 5 20 19
		f 4 -3 20 21 -19
		mu 0 4 5 4 21 20
		f 4 -14 16 22 -21
		mu 0 4 4 17 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "MeterMan31";
	setAttr ".t" -type "double3" 0 33.634247103376829 8.4975131441321317 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 3.9246479251879594 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode transform -n "polySurface18" -p "MeterMan31";
createNode mesh -n "polySurfaceShape33" -p "polySurface18";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.75 0.25 0.125 0 0.25 0.25 0.125 0.25 0.375 0.375 0.625 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 4.63189697 -0.69095099
		 0.5 4.63189697 -0.69095099 -0.5 -1 -0.69095099 0.5 -1 -0.69095099 0.5 4.63189697 0.5
		 -0.5 4.63189697 0.5 0.5 4.63189697 -0.095475435 -0.5 4.63189697 -0.095475435;
	setAttr -s 15 ".ed[0:14]"  0 1 0 2 3 0 4 5 0 0 7 0 1 6 0 2 4 0 3 5 0
		 4 0 0 5 1 0 8 3 0 9 2 0 7 6 0 6 8 0 7 9 0 8 9 0;
	setAttr -s 6 -ch 26 ".fc[0:5]" -type "polyFaces" 
		f 4 0 4 -12 -4
		mu 0 4 0 1 2 3
		f 4 1 6 -3 -6
		mu 0 4 4 5 6 7
		f 4 2 8 -1 -8
		mu 0 4 7 6 8 9
		f 5 -9 -7 -10 -13 -5
		mu 0 5 1 10 11 12 2
		f 5 7 3 13 10 5
		mu 0 5 13 0 3 14 15
		f 4 -15 9 -2 -11
		mu 0 4 16 17 5 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface19" -p "MeterMan31";
createNode mesh -n "polySurfaceShape34" -p "polySurface19";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.25 0.625
		 0.25 0.625 0.375 0.375 0.375 0.375 0.25 0.625 0.25 0.625 0.375 0.375 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 4.63189697 0.5 0.5 4.63189697 0.5 0.5 4.63189697 -0.095475435
		 -0.5 4.63189697 -0.095475435 -0.5 16.68940735 0.5 0.5 16.68940735 0.5 0.5 16.68940735 -0.095475435
		 -0.5 16.68940735 -0.095475435;
	setAttr -s 12 ".ed[0:11]"  0 1 0 0 3 0 1 2 0 2 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 5 6 0 3 7 0 6 7 0 4 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 6 8 10 -12
		mu 0 4 0 1 2 3
		f 4 0 5 -7 -5
		mu 0 4 4 5 1 0
		f 4 2 7 -9 -6
		mu 0 4 5 6 2 1
		f 4 3 9 -11 -8
		mu 0 4 6 7 3 2
		f 4 -2 4 11 -10
		mu 0 4 7 4 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "MeterMan32";
	setAttr ".rp" -type "double3" 0 33.634247103376829 3.6977057775884279 ;
	setAttr ".sp" -type "double3" 0 33.634247103376829 3.6977057775884279 ;
createNode mesh -n "MeterMan32Shape" -p "MeterMan32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.625 0.625
		 0.875 0.125 0.125 0.125 0.375 0.625 0.375 0.5 0.625 0.5 0.625 0.625 0.375 0.625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  -0.5 34.046577 4.5454741 
		0.5 34.046577 4.5454741 -0.5 28.425611 4.5454741 0.5 28.425611 4.5454741 -0.5 28.425611 
		2.5367596 0.5 28.425611 2.5367596 -0.5 34.046577 2.5367594 0.5 34.046577 2.5367594 
		-0.5 26.804976 3.3409905 0.5 26.804976 3.3409905 0.5 26.804976 2.0812018 -0.5 26.804976 
		2.0812018 0.5 30.029121 2.5367596 -0.5 30.029121 2.5367596 -0.5 28.425611 1.6245325 
		0.5 28.425611 1.6245325 0.5 30.029121 1.6245325 -0.5 30.029121 1.6245325;
	setAttr -s 18 ".vt[0:17]"  -0.5 -1 0.49999994 0.5 -1 0.49999994 -0.5 12.63220215 0.49999994
		 0.5 12.63220215 0.49999994 -0.5 12.63220215 -0.18682277 0.5 12.63220215 -0.18682277
		 -0.5 -1 -0.18682283 0.5 -1 -0.18682283 -0.5 16.56263733 0.088161051 0.5 16.56263733 0.088161051
		 0.5 16.56263733 -0.3425878 -0.5 16.56263733 -0.3425878 0.5 8.74330139 -0.18682277
		 -0.5 8.74330139 -0.18682277 -0.5 12.63220215 -0.49873286 0.5 12.63220215 -0.49873286
		 0.5 8.74330139 -0.49873286 -0.5 8.74330139 -0.49873286;
	setAttr -s 31 ".ed[0:30]"  0 1 0 2 3 1 4 5 0 6 7 0 0 2 0 1 3 0 2 4 1
		 3 5 1 4 13 1 5 12 1 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 12 7 0 13 6 0 12 13 0 4 14 0 5 15 0 14 15 0 12 16 0 15 16 0 13 17 0 16 17 0 14 17 0;
	setAttr -s 15 -ch 62 ".fc[0:14]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 25 27 29 -31
		mu 0 4 22 23 24 25
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 5 -12 -21 -10 -8 -6
		mu 0 5 1 10 19 11 3
		f 5 10 4 6 8 21
		mu 0 5 12 0 2 13 20
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 -23 20 -4 -22
		mu 0 4 21 18 7 6
		f 4 2 24 -26 -24
		mu 0 4 4 5 23 22
		f 4 9 26 -28 -25
		mu 0 4 5 18 24 23
		f 4 22 28 -30 -27
		mu 0 4 18 21 25 24
		f 4 -9 23 30 -29
		mu 0 4 21 4 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "MeterMan33";
	setAttr ".rp" -type "double3" 0 42.900323006699637 13.672065412406877 ;
	setAttr ".sp" -type "double3" 0 42.900323006699637 13.672065412406877 ;
createNode mesh -n "MeterMan33Shape" -p "MeterMan33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.375 0.375
		 0.625 0.375 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -0.5 44.488323 11.824175 
		0.5 44.488323 11.824175 -0.5 38.598438 11.824175 0.5 38.598438 11.824175 -0.5 38.598438 
		17.684845 0.5 38.598438 17.684845 -0.5 44.488323 17.684845 0.5 44.488323 17.684845 
		0.5 38.598438 14.75451 -0.5 38.598438 14.75451 0.5 27.260391 14.75451 -0.5 27.260391 
		14.75451 0.5 27.260391 17.684845 -0.5 27.260391 17.684845;
	setAttr -s 14 ".vt[0:13]"  -0.5 -1 0.50000024 0.5 -1 0.50000024 -0.5 2.70899582 0.50000024
		 0.5 2.70899582 0.50000024 -0.5 2.70899582 -0.68998361 0.5 2.70899582 -0.68998361
		 -0.5 -1 -0.68998361 0.5 -1 -0.68998361 0.5 2.70899582 -0.094991684 -0.5 2.70899582 -0.094991684
		 0.5 9.84882355 -0.094991684 -0.5 9.84882355 -0.094991684 0.5 9.84882355 -0.68998361
		 -0.5 9.84882355 -0.68998361;
	setAttr -s 23 ".ed[0:22]"  0 1 0 2 3 0 4 5 1 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 1 9 4 1 8 9 0 8 10 0 9 11 0 10 11 0 5 12 0 10 12 0
		 4 13 0 13 12 0 11 13 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 5 -12 -10 -13 -8 -6
		mu 0 5 1 10 11 15 3
		f 5 10 4 6 13 8
		mu 0 5 12 0 2 16 13
		f 4 -18 19 -22 -23
		mu 0 4 18 19 20 21
		f 4 -15 15 17 -17
		mu 0 4 17 14 19 18
		f 4 12 18 -20 -16
		mu 0 4 14 5 20 19
		f 4 -3 20 21 -19
		mu 0 4 5 4 21 20
		f 4 -14 16 22 -21
		mu 0 4 4 17 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape4" -p "MeterMan33";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 1.7089919 0 0 1.7089919 
		0 0 1.7089919 -0.18998355 0 1.7089919 -0.18998355 0 0 -0.18998355 0 0 -0.18998355;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "MeterMan34";
	setAttr ".rp" -type "double3" 0 33.634247103376829 -0.22046819218352176 ;
	setAttr ".sp" -type "double3" 0 33.634247103376829 -0.22046819218352165 ;
createNode mesh -n "MeterMan34Shape" -p "MeterMan34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.625 0.125
		 0.375 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -0.5 34.046577 0.6273005 
		0.5 34.046577 0.6273005 -0.5 28.425611 0.6273005 0.5 28.425611 0.6273005 -0.5 28.425611 
		-1.3814142 0.5 28.425611 -1.3814142 -0.5 34.046577 -1.3814142 0.5 34.046577 -1.3814142 
		-0.5 26.804976 1.0828582 0.5 26.804976 1.0828582 0.5 26.804976 -0.17693053 -0.5 26.804976 
		-0.17693053 0.5 32.956322 0.6273005 -0.5 32.956322 0.6273005;
	setAttr -s 14 ".vt[0:13]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 12.63220215 0.5
		 0.5 12.63220215 0.5 -0.5 12.63220215 -0.18682273 0.5 12.63220215 -0.18682273 -0.5 -1 -0.18682273
		 0.5 -1 -0.18682273 -0.5 16.56263733 0.655765 0.5 16.56263733 0.655765 0.5 16.56263733 0.22501613
		 -0.5 16.56263733 0.22501613 0.5 5.81610107 0.5 -0.5 5.81610107 0.5;
	setAttr -s 23 ".ed[0:22]"  0 1 0 2 3 1 4 5 1 6 7 0 0 13 0 1 12 0 2 4 1
		 3 5 1 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 12 3 0 13 2 0 12 13 1;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 0 5 22 -5
		mu 0 4 0 1 18 19
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 5 -12 -10 -8 -21 -6
		mu 0 5 1 10 11 3 18
		f 5 10 4 21 6 8
		mu 0 5 12 0 19 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 -23 20 -2 -22
		mu 0 4 19 18 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge";
	setAttr ".rp" -type "double3" 0 44.964178814513318 0.79214565205678955 ;
	setAttr ".sp" -type "double3" 0 44.964178814513318 0.79214565205678955 ;
createNode mesh -n "LedgeShape" -p "|Ledge";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:12]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -0.5 45.376511 2.6117592 
		0.5 45.376511 2.6117592 -0.5 44.551849 2.6117592 0.5 44.551849 2.6117592 -0.5 44.551849 
		0.1122554 0.5 44.551849 0.1122554 -0.5 45.376511 0.1122554 0.5 45.376511 0.1122554 
		-0.5 44.551849 2.6117592 0.5 44.551849 2.6117592 0.5 44.551849 0.1122554 -0.5 44.551849 
		0.1122554 -0.5 44.551849 0.81352293 0.5 44.551849 0.81352293 0.5 44.551849 0.14275341 
		-0.5 44.551849 0.14275341;
	setAttr -s 16 ".vt[0:15]"  -0.5 -1 0.49999994 0.5 -1 0.49999994 -0.5 1 0.49999994
		 0.5 1 0.49999994 -0.5 1 -0.18682268 0.5 1 -0.18682268 -0.5 -1 -0.18682268 0.5 -1 -0.18682268
		 -0.5 1 0.49999994 0.5 1 0.49999994 0.5 1 -0.18682268 -0.5 1 -0.18682268 -0.5 1 0.0058741271
		 0.5 1 0.0058741271 0.5 1 -0.17844233 -0.5 1 -0.17844233;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 2 9 -4 -9
		mu 0 4 4 5 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13
		f 4 1 13 -15 -13
		mu 0 4 3 2 14 15
		f 4 7 15 -17 -14
		mu 0 4 2 5 16 14
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 3 15 17
		f 4 14 21 -23 -21
		mu 0 4 15 14 18 19
		f 4 16 23 -25 -22
		mu 0 4 14 16 20 18
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 15 19 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface2";
	setAttr ".rp" -type "double3" 0 44.964178814513318 0.79214565205678955 ;
	setAttr ".sp" -type "double3" 0 44.964178814513318 0.79214565205678955 ;
createNode mesh -n "polySurfaceShape9" -p "polySurface2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.25 0.625
		 0.25 0.625 0.5 0.375 0.5 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 43.277 -0.62400866 0.5 
		43.277 -0.62400866 0.5 43.277 -1.2947786 -0.5 43.277 -1.2947786 -0.5 44.551849 0.81352293 
		0.5 44.551849 0.81352293 0.5 44.551849 0.14275336 -0.5 44.551849 0.14275336;
	setAttr -s 8 ".vt[0:7]"  -0.5 4.091819763 -0.38913596 0.5 4.091819763 -0.38913596
		 0.5 4.091819763 -0.57345253 -0.5 4.091819763 -0.57345253 -0.5 1 0.0058741271 0.5 1 0.0058741271
		 0.5 1 -0.17844234 -0.5 1 -0.17844234;
	setAttr -s 12 ".ed[0:11]"  4 0 0 5 1 0 0 1 0 6 2 0 1 2 0 7 3 0 3 2 0
		 0 3 0 4 5 0 5 6 0 7 6 0 4 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 2 4 -7 -8
		mu 0 4 0 1 2 3
		f 4 8 1 -3 -1
		mu 0 4 4 5 1 0
		f 4 9 3 -5 -2
		mu 0 4 5 6 2 1
		f 4 -11 5 6 -4
		mu 0 4 6 7 3 2
		f 4 -12 0 7 -6
		mu 0 4 7 4 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge27";
	setAttr ".rp" -type "double3" 0 47.100582951676095 33.330964965920515 ;
	setAttr ".sp" -type "double3" 0 47.100582951676095 33.330964965920515 ;
createNode mesh -n "Ledge27Shape" -p "Ledge27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 47.512913 31.237801 
		0.5 47.512913 31.237801 -0.5 46.688251 31.237801 0.5 46.688251 31.237801 -0.5 46.688251 
		35.424129 0.5 46.688251 35.424129 -0.5 47.512913 35.424129 0.5 47.512913 35.424129;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 2 3 1
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 2 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge28";
	setAttr ".rp" -type "double3" 0 44.62353135250045 30.810112825799202 ;
	setAttr ".sp" -type "double3" 0 44.62353135250045 30.810112825799202 ;
createNode mesh -n "LedgeShape28" -p "Ledge28";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:12]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -0.5 45.035862 27.990496 
		0.5 45.035862 27.990496 -0.5 44.211201 27.990496 0.5 44.211201 27.990496 -0.5 44.211201 
		31.863644 0.5 44.211201 31.863644 -0.5 45.035862 31.863644 0.5 45.035862 31.863644 
		-0.5 44.211201 27.990496 0.5 44.211201 27.990496 0.5 44.211201 31.863644 -0.5 44.211201 
		31.863644 -0.5 44.211201 30.776985 0.5 44.211201 30.776985 0.5 44.211201 31.816387 
		-0.5 44.211201 31.816387;
	setAttr -s 16 ".vt[0:15]"  -0.5 -1 0.50000048 0.5 -1 0.50000048 -0.5 1 0.50000048
		 0.5 1 0.50000048 -0.5 1 -0.18682194 0.5 1 -0.18682194 -0.5 -1 -0.18682194 0.5 -1 -0.18682194
		 -0.5 1 0.50000048 0.5 1 0.50000048 0.5 1 -0.18682194 -0.5 1 -0.18682194 -0.5 1 0.0058746338
		 0.5 1 0.0058746338 0.5 1 -0.178442 -0.5 1 -0.178442;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 3 2 1
		f 4 8 3 -10 -3
		mu 0 4 4 7 6 5
		f 4 10 0 -12 -4
		mu 0 4 7 9 8 6
		f 4 5 7 9 11
		mu 0 4 1 2 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 3 0
		f 4 12 14 -14 -2
		mu 0 4 3 15 14 2
		f 4 13 16 -16 -8
		mu 0 4 2 14 16 5
		f 4 15 -19 -18 2
		mu 0 4 5 16 17 4
		f 4 17 -20 -13 6
		mu 0 4 4 17 15 3
		f 4 20 22 -22 -15
		mu 0 4 15 19 18 14
		f 4 21 24 -24 -17
		mu 0 4 14 18 20 16
		f 4 23 -27 -26 18
		mu 0 4 16 20 21 17
		f 4 25 -28 -21 19
		mu 0 4 17 21 19 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface4";
	setAttr ".rp" -type "double3" 0 44.62353135250045 30.810112825799202 ;
	setAttr ".sp" -type "double3" 0 44.62353135250045 30.810112825799202 ;
createNode mesh -n "polySurfaceShape12" -p "polySurface4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.25 0.625
		 0.25 0.625 0.5 0.375 0.5 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 42.936352 33.004536 
		0.5 42.936352 33.004536 0.5 42.936352 34.043938 -0.5 42.936352 34.043938 -0.5 44.211201 
		30.776985 0.5 44.211201 30.776985 0.5 44.211201 31.816387 -0.5 44.211201 31.816387;
	setAttr -s 8 ".vt[0:7]"  -0.5 4.091819763 -0.38913536 0.5 4.091819763 -0.38913536
		 0.5 4.091819763 -0.573452 -0.5 4.091819763 -0.573452 -0.5 1 0.0058746338 0.5 1 0.0058746338
		 0.5 1 -0.178442 -0.5 1 -0.178442;
	setAttr -s 12 ".ed[0:11]"  4 0 0 5 1 0 0 1 0 6 2 0 1 2 0 7 3 0 3 2 0
		 0 3 0 4 5 0 5 6 0 7 6 0 4 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 7 6 -5 -3
		mu 0 4 0 3 2 1
		f 4 0 2 -2 -9
		mu 0 4 4 0 1 5
		f 4 1 4 -4 -10
		mu 0 4 5 1 2 6
		f 4 3 -7 -6 10
		mu 0 4 6 2 3 7
		f 4 5 -8 -1 11
		mu 0 4 7 3 0 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge29";
	setAttr ".rp" -type "double3" 0 50.655538659444765 19.38841797141767 ;
	setAttr ".sp" -type "double3" 0 50.655538659444765 19.38841797141767 ;
createNode mesh -n "Ledge29Shape" -p "Ledge29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 48.197926 30.567886 
		0.5 48.197926 30.567886 -0.5 49.975491 30.567886 0.5 49.975491 30.567886 -0.5 49.975491 
		8.2089491 0.5 49.975491 8.2089491 -0.5 48.197926 8.2089491 0.5 48.197926 8.2089491;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge30";
	setAttr ".rp" -type "double3" 0 50.655538659444765 3.8396042755852631 ;
	setAttr ".sp" -type "double3" 0 50.655538659444765 3.8396042755852631 ;
createNode mesh -n "Ledge30Shape" -p "Ledge30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 48.197926 5.8052702 
		0.5 48.197926 5.8052702 -0.5 49.975491 5.8052702 0.5 49.975491 5.8052702 -0.5 49.975491 
		1.8739386 0.5 49.975491 1.8739386 -0.5 48.197926 1.8739386 0.5 48.197926 1.8739386;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge31";
	setAttr ".rp" -type "double3" 0 55.643586661176691 6.2536885873208075 ;
	setAttr ".sp" -type "double3" 0 55.643586661176691 6.2536885873208075 ;
createNode mesh -n "Ledge31Shape" -p "Ledge31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.3125 0.6875 0.25 0.625 0.375 0.75 0.25 0.625
		 0.4375 0.8125 0.25 0.3125 0.25 0.375 0.3125 0.25 0.25 0.375 0.375 0.1875 0.25 0.375
		 0.4375 0.375 0.4375 0.625 0.4375 0.625 0.5 0.375 0.5 0.375 0.375 0.625 0.375 0.625
		 0.4375 0.375 0.4375 0.375 0.3125 0.625 0.3125 0.625 0.375 0.375 0.375 0.375 0.4375
		 0.625 0.4375 0.625 0.4375 0.375 0.4375 0.375 0.4375 0.625 0.4375 0.375 0.375 0.625
		 0.375 0.625 0.4375 0.375 0.4375 0.625 0.4375 0.375 0.4375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 38 ".pt[0:37]" -type "float3"  -0.5 65.071426 11.808268 
		0.5 65.071426 11.808268 -0.5 56.022457 11.808268 0.5 56.022457 11.808268 -0.5 56.022457 
		0.38593218 0.5 56.022457 0.38593218 -0.5 65.071426 0.38593218 0.5 65.071426 0.38593218 
		0.5 56.022457 7.9640956 0.5 56.022457 4.5358386 0.5 56.022457 2.9531863 -0.5 56.022457 
		7.9640956 -0.5 56.022457 4.5358386 -0.5 56.022457 2.9531863 0.5 51.391541 2.9531863 
		-0.5 51.391541 2.9531863 0.5 51.391541 0.38593218 -0.5 51.391541 0.38593218 0.5 17.68437 
		4.5358386 -0.5 17.68437 4.5358386 0.5 17.68437 2.9531863 -0.5 17.68437 2.9531863 
		0.5 34.885086 7.9640956 -0.5 34.885086 7.9640956 0.5 34.885086 4.5358386 -0.5 34.885086 
		4.5358386 -0.5 29.618662 2.9531863 0.5 29.618662 2.9531863 -0.5 29.618662 0.72006178 
		0.5 29.618662 0.72006178 -0.5 17.68437 0.72025698 0.5 17.68437 0.72025698 0.49999952 
		8.6203651 4.5338264 -0.49999952 8.6203651 4.5338264 0.5 10.08455 2.9168797 -0.5 10.08455 
		2.9168797 0.5 12.095687 0.72024602 -0.5 12.095687 0.72024602;
	setAttr -s 38 ".vt[0:37]"  -0.5 -10.80667114 0.5 0.5 -10.80667114 0.5
		 -0.5 0.99992371 0.5 0.5 0.99992371 0.5 -0.5 0.99992371 -0.18682271 0.5 0.99992371 -0.18682271
		 -0.5 -10.80667114 -0.18682271 0.5 -10.80667114 -0.18682271 0.5 0.99992371 0.26885071
		 0.5 0.99992371 0.062710315 0.5 0.99992371 -0.032454252 -0.5 0.99992371 0.26885071
		 -0.5 0.99992371 0.062710315 -0.5 0.99992371 -0.032454252 0.5 7.04208374 -0.032454252
		 -0.5 7.04208374 -0.032454252 0.5 7.04208374 -0.18682271 -0.5 7.04208374 -0.18682271
		 0.5 51.021316528 0.062710315 -0.5 51.021316528 0.062710315 0.5 51.021316528 -0.032454252
		 -0.5 51.021316528 -0.032454252 0.5 28.57878113 0.26885071 -0.5 28.57878113 0.26885071
		 0.5 28.57878113 0.062710315 -0.5 28.57878113 0.062710315 -0.5 35.45011902 -0.032454252
		 0.5 35.45011902 -0.032454252 -0.5 35.45011902 -0.16316782 0.5 35.45011902 -0.16316782
		 -0.5 51.021316528 -0.16316782 0.5 51.021316528 -0.16316782 0.5 61.40748596 0.062710315
		 -0.5 61.40748596 0.062710315 0.5 61.40748596 -0.032454252 -0.5 61.40748596 -0.032454252
		 0.5 61.40748596 -0.16316782 -0.5 61.40748596 -0.16316782;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 4 5 1 6 7 0 0 2 0 1 3 0 2 11 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 1 9 10 1 10 5 1 11 12 1 12 13 1 13 4 1 10 13 0
		 9 12 0 8 11 0 10 14 0 13 15 0 14 15 0 5 16 0 14 16 0 4 17 0 17 16 0 15 17 0 9 18 0
		 12 19 0 18 19 1 10 27 0 18 20 1 13 26 0 19 21 1 8 22 0 11 23 0 22 23 0 9 24 0 22 24 0
		 12 25 0 24 25 0 23 25 0 26 21 1 27 20 1 26 27 0 26 28 0 27 29 0 28 29 0 21 30 1 28 30 0
		 20 31 1 31 30 1 29 31 0 18 32 0 19 33 0 32 33 0 20 34 1 32 34 0 21 35 1 34 35 1 33 35 0
		 31 36 0 34 36 0 30 37 0 36 37 0 35 37 0;
	setAttr -s 32 -ch 136 ".fc[0:31]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 20 -7
		mu 0 4 2 3 14 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 7 -12 -10 -15 -14 -13 -8 -6
		mu 0 7 1 10 11 19 17 15 3
		f 7 10 4 6 15 16 17 8
		mu 0 7 12 0 2 20 22 24 13
		f 4 -24 25 -28 -29
		mu 0 4 26 27 28 29
		f 4 -58 59 61 -63
		mu 0 4 44 45 46 47
		f 4 -39 40 42 -44
		mu 0 4 34 35 36 37
		f 4 -19 21 23 -23
		mu 0 4 25 18 27 26
		f 4 14 24 -26 -22
		mu 0 4 18 5 28 27
		f 4 -3 26 27 -25
		mu 0 4 5 4 29 28
		f 4 -18 22 28 -27
		mu 0 4 4 25 26 29
		f 4 -20 29 31 -31
		mu 0 4 23 16 31 30
		f 5 13 32 45 -34 -30
		mu 0 5 16 18 39 32 31
		f 4 18 34 46 -33
		mu 0 4 18 25 38 39
		f 5 -17 30 35 -45 -35
		mu 0 5 25 23 30 33 38
		f 4 -21 36 38 -38
		mu 0 4 21 14 35 34
		f 4 12 39 -41 -37
		mu 0 4 14 16 36 35
		f 4 19 41 -43 -40
		mu 0 4 16 23 37 36
		f 4 -16 37 43 -42
		mu 0 4 23 21 34 37
		f 4 -50 51 -54 -55
		mu 0 4 40 41 42 43
		f 4 -47 47 49 -49
		mu 0 4 39 38 41 40
		f 4 44 50 -52 -48
		mu 0 4 38 33 42 41
		f 4 -62 64 66 -68
		mu 0 4 47 46 48 49
		f 4 -46 48 54 -53
		mu 0 4 32 39 40 43
		f 4 -32 55 57 -57
		mu 0 4 30 31 45 44
		f 4 33 58 -60 -56
		mu 0 4 31 32 46 45
		f 4 -36 56 62 -61
		mu 0 4 33 30 44 47
		f 4 52 63 -65 -59
		mu 0 4 32 43 48 46
		f 4 53 65 -67 -64
		mu 0 4 43 42 49 48
		f 4 -51 60 67 -66
		mu 0 4 42 33 47 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge32";
	setAttr ".rp" -type "double3" 0 69.305743199202269 13.322708029643117 ;
	setAttr ".sp" -type "double3" 0 69.305743199202269 13.322708029643117 ;
createNode mesh -n "Ledge32Shape" -p "Ledge32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.375 0.25
		 0.625 0.25 0.625 0.375 0.375 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -0.5 79.290825 14.30847 0.5 
		79.290825 14.30847 -0.5 69.127274 14.30847 0.5 69.127274 14.30847 -0.5 69.127274 
		8.4295273 0.5 69.127274 8.4295273 -0.5 79.290825 8.4295273 0.5 79.290825 8.4295273 
		0.5 69.127274 12.798558 -0.5 69.127274 12.798558 -0.5 -41.984913 14.30847 0.5 -41.984913 
		14.30847 0.5 -41.984913 12.798558 -0.5 -41.984913 12.798558;
	setAttr -s 14 ".vt[0:13]"  -0.5 -10.80661011 0.23941112 0.5 -10.80661011 0.23941112
		 -0.5 1 0.23941112 0.5 1 0.23941112 -0.5 1 -0.18682271 0.5 1 -0.18682271 -0.5 -10.80661011 -0.18682271
		 0.5 -10.80661011 -0.18682271 0.5 1 0.12993979 -0.5 1 0.12993979 -0.5 130.074798584 0.23941112
		 0.5 130.074798584 0.23941112 0.5 130.074798584 0.12993979 -0.5 130.074798584 0.12993979;
	setAttr -s 23 ".ed[0:22]"  0 1 0 2 3 1 4 5 0 6 7 0 0 2 0 1 3 0 2 9 1
		 3 8 1 4 6 0 5 7 0 6 0 0 7 1 0 8 5 0 9 4 0 8 9 0 2 10 0 3 11 0 10 11 0 8 12 0 11 12 0
		 9 13 0 12 13 0 10 13 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 17 19 21 -23
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 5 -12 -10 -13 -8 -6
		mu 0 5 1 10 11 15 3
		f 5 10 4 6 13 8
		mu 0 5 12 0 2 16 13
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 1 16 -18 -16
		mu 0 4 2 3 19 18
		f 4 7 18 -20 -17
		mu 0 4 3 14 20 19
		f 4 14 20 -22 -19
		mu 0 4 14 17 21 20
		f 4 -7 15 22 -21
		mu 0 4 17 2 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge33";
	setAttr ".rp" -type "double3" 0 79.167709111542649 11.417072883532867 ;
	setAttr ".sp" -type "double3" 0 79.167709111542649 11.417072883532867 ;
createNode mesh -n "Ledge33Shape" -p "Ledge33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 79.58004 13.006071 0.5 
		79.58004 13.006071 -0.5 78.755379 13.006071 0.5 78.755379 13.006071 -0.5 78.755379 
		9.8280754 0.5 78.755379 9.8280754 -0.5 79.58004 9.8280754 0.5 79.58004 9.8280754;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge34";
	setAttr ".rp" -type "double3" 0 84.19074546447321 8.0984920708998871 ;
	setAttr ".sp" -type "double3" 0 84.19074546447321 8.0984920708998871 ;
createNode mesh -n "Ledge34Shape" -p "Ledge34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 84.266724 9.6874895 
		0.5 84.266724 9.6874895 -0.5 84.114769 9.6874895 0.5 84.114769 9.6874895 -0.5 84.114769 
		6.5094943 0.5 84.114769 6.5094943 -0.5 84.266724 6.5094943 0.5 84.266724 6.5094943;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge35";
	setAttr ".rp" -type "double3" 0 73.895995197406052 8.0984920708998871 ;
	setAttr ".sp" -type "double3" 0 73.895995197406052 8.0984920708998871 ;
createNode mesh -n "Ledge35Shape" -p "Ledge35";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.375 0.375
		 0.625 0.375 0.625 0.5 0.375 0.5 0.375 0.375 0.625 0.375 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  -0.5 73.971977 10.230507 
		0.5 73.971977 10.230507 -0.5 73.820015 10.230507 0.5 73.820015 10.230507 -0.5 73.820015 
		5.6533003 0.5 73.820015 5.6533003 -0.5 73.971977 6.7537751 0.5 73.971977 6.7537751 
		0.5 73.820015 7.9419031 -0.5 73.820015 7.9419031 0.5 73.418465 5.2365732 -0.5 73.418465 
		5.2365732 0.5 73.418465 2.9479702 -0.5 73.418465 2.9479702 0.5 72.740761 5.2365732 
		-0.5 72.740761 5.2365732 0.5 72.740761 2.9479702 -0.5 72.740761 2.9479702;
	setAttr -s 18 ".vt[0:17]"  -0.5 -1.000015258789 0.50000018 0.5 -1.000015258789 0.50000018
		 -0.5 0.99998474 0.50000018 0.5 0.99998474 0.50000018 -0.5 0.99998474 -0.18682277
		 0.5 0.99998474 -0.18682277 -0.5 -1.000015258789 -0.18682277 0.5 -1.000015258789 -0.18682277
		 0.5 0.99998474 0.15658861 -0.5 0.99998474 0.15658861 0.5 6.28495789 -0.24935383 -0.5 6.28495789 -0.24935383
		 0.5 6.28495789 -0.59276527 -0.5 6.28495789 -0.59276527 0.5 15.20445251 -0.24935383
		 -0.5 15.20445251 -0.24935383 0.5 15.20445251 -0.59276527 -0.5 15.20445251 -0.59276527;
	setAttr -s 31 ".ed[0:30]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 1 9 4 1 8 9 0 8 10 0 9 11 0 10 11 0 5 12 0 10 12 1
		 4 13 0 13 12 0 11 13 1 10 14 0 11 15 0 14 15 0 12 16 0 14 16 0 13 17 0 17 16 0 15 17 0;
	setAttr -s 15 -ch 62 ".fc[0:14]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 5 -12 -10 -13 -8 -6
		mu 0 5 1 10 11 15 3
		f 5 10 4 6 13 8
		mu 0 5 12 0 2 16 13
		f 4 -26 27 -30 -31
		mu 0 4 22 23 24 25
		f 4 -15 15 17 -17
		mu 0 4 17 14 19 18
		f 4 12 18 -20 -16
		mu 0 4 14 5 20 19
		f 4 -3 20 21 -19
		mu 0 4 5 4 21 20
		f 4 -14 16 22 -21
		mu 0 4 4 17 18 21
		f 4 -18 23 25 -25
		mu 0 4 18 19 23 22
		f 4 19 26 -28 -24
		mu 0 4 19 20 24 23
		f 4 -22 28 29 -27
		mu 0 4 20 21 25 24
		f 4 -23 24 30 -29
		mu 0 4 21 18 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group1";
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 71.177321159168329 16.257974705086937 ;
	setAttr ".sp" -type "double3" 0 71.177321159168329 16.257974705086937 ;
createNode transform -n "Ledge36" -p "group1";
	setAttr ".rp" -type "double3" 0 55.643586661176691 6.2536885873208057 ;
	setAttr ".sp" -type "double3" 0 55.643586661176691 6.2536885873208057 ;
createNode mesh -n "Ledge36Shape" -p "Ledge36";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.3125 0.6875 0.25 0.625 0.375 0.75 0.25 0.625
		 0.4375 0.8125 0.25 0.3125 0.25 0.375 0.3125 0.25 0.25 0.375 0.375 0.1875 0.25 0.375
		 0.4375 0.375 0.4375 0.625 0.4375 0.625 0.5 0.375 0.5 0.375 0.375 0.625 0.375 0.625
		 0.4375 0.375 0.4375 0.375 0.3125 0.625 0.3125 0.625 0.375 0.375 0.375 0.375 0.4375
		 0.625 0.4375 0.625 0.4375 0.375 0.4375 0.375 0.4375 0.625 0.4375 0.375 0.375 0.625
		 0.375 0.625 0.4375 0.375 0.4375 0.625 0.4375 0.375 0.4375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 38 ".pt[0:37]" -type "float3"  -0.5 65.071426 11.808268 
		0.5 65.071426 11.808268 -0.5 56.022457 11.808268 0.5 56.022457 11.808268 -0.5 56.022457 
		0.38593218 0.5 56.022457 0.38593218 -0.5 65.071426 0.38593218 0.5 65.071426 0.38593218 
		0.5 56.022457 7.9640956 0.5 56.022457 4.5358386 0.5 56.022457 2.9531863 -0.5 56.022457 
		7.9640956 -0.5 56.022457 4.5358386 -0.5 56.022457 2.9531863 0.5 51.391541 2.9531863 
		-0.5 51.391541 2.9531863 0.5 51.391541 0.38593218 -0.5 51.391541 0.38593218 0.5 17.68437 
		4.5358386 -0.5 17.68437 4.5358386 0.5 17.68437 2.9531863 -0.5 17.68437 2.9531863 
		0.5 34.885086 7.9640956 -0.5 34.885086 7.9640956 0.5 34.885086 4.5358386 -0.5 34.885086 
		4.5358386 -0.5 29.618662 2.9531863 0.5 29.618662 2.9531863 -0.5 29.618662 0.72006178 
		0.5 29.618662 0.72006178 -0.5 17.68437 0.72025698 0.5 17.68437 0.72025698 0.49999952 
		8.6203651 4.5338264 -0.49999952 8.6203651 4.5338264 0.5 10.08455 2.9168797 -0.5 10.08455 
		2.9168797 0.5 12.095687 0.72024602 -0.5 12.095687 0.72024602;
	setAttr -s 38 ".vt[0:37]"  -0.5 -10.80667114 0.5 0.5 -10.80667114 0.5
		 -0.5 0.99992371 0.5 0.5 0.99992371 0.5 -0.5 0.99992371 -0.18682271 0.5 0.99992371 -0.18682271
		 -0.5 -10.80667114 -0.18682271 0.5 -10.80667114 -0.18682271 0.5 0.99992371 0.26885071
		 0.5 0.99992371 0.062710315 0.5 0.99992371 -0.032454252 -0.5 0.99992371 0.26885071
		 -0.5 0.99992371 0.062710315 -0.5 0.99992371 -0.032454252 0.5 7.04208374 -0.032454252
		 -0.5 7.04208374 -0.032454252 0.5 7.04208374 -0.18682271 -0.5 7.04208374 -0.18682271
		 0.5 51.021316528 0.062710315 -0.5 51.021316528 0.062710315 0.5 51.021316528 -0.032454252
		 -0.5 51.021316528 -0.032454252 0.5 28.57878113 0.26885071 -0.5 28.57878113 0.26885071
		 0.5 28.57878113 0.062710315 -0.5 28.57878113 0.062710315 -0.5 35.45011902 -0.032454252
		 0.5 35.45011902 -0.032454252 -0.5 35.45011902 -0.16316782 0.5 35.45011902 -0.16316782
		 -0.5 51.021316528 -0.16316782 0.5 51.021316528 -0.16316782 0.5 61.40748596 0.062710315
		 -0.5 61.40748596 0.062710315 0.5 61.40748596 -0.032454252 -0.5 61.40748596 -0.032454252
		 0.5 61.40748596 -0.16316782 -0.5 61.40748596 -0.16316782;
	setAttr -s 68 ".ed[0:67]"  0 1 0 2 3 0 4 5 1 6 7 0 0 2 0 1 3 0 2 11 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 1 9 10 1 10 5 1 11 12 1 12 13 1 13 4 1 10 13 0
		 9 12 0 8 11 0 10 14 0 13 15 0 14 15 0 5 16 0 14 16 0 4 17 0 17 16 0 15 17 0 9 18 0
		 12 19 0 18 19 1 10 27 0 18 20 1 13 26 0 19 21 1 8 22 0 11 23 0 22 23 0 9 24 0 22 24 0
		 12 25 0 24 25 0 23 25 0 26 21 1 27 20 1 26 27 0 26 28 0 27 29 0 28 29 0 21 30 1 28 30 0
		 20 31 1 31 30 1 29 31 0 18 32 0 19 33 0 32 33 0 20 34 1 32 34 0 21 35 1 34 35 1 33 35 0
		 31 36 0 34 36 0 30 37 0 36 37 0 35 37 0;
	setAttr -s 32 -ch 136 ".fc[0:31]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 20 -7
		mu 0 4 2 3 14 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 7 -12 -10 -15 -14 -13 -8 -6
		mu 0 7 1 10 11 19 17 15 3
		f 7 10 4 6 15 16 17 8
		mu 0 7 12 0 2 20 22 24 13
		f 4 -24 25 -28 -29
		mu 0 4 26 27 28 29
		f 4 -58 59 61 -63
		mu 0 4 44 45 46 47
		f 4 -39 40 42 -44
		mu 0 4 34 35 36 37
		f 4 -19 21 23 -23
		mu 0 4 25 18 27 26
		f 4 14 24 -26 -22
		mu 0 4 18 5 28 27
		f 4 -3 26 27 -25
		mu 0 4 5 4 29 28
		f 4 -18 22 28 -27
		mu 0 4 4 25 26 29
		f 4 -20 29 31 -31
		mu 0 4 23 16 31 30
		f 5 13 32 45 -34 -30
		mu 0 5 16 18 39 32 31
		f 4 18 34 46 -33
		mu 0 4 18 25 38 39
		f 5 -17 30 35 -45 -35
		mu 0 5 25 23 30 33 38
		f 4 -21 36 38 -38
		mu 0 4 21 14 35 34
		f 4 12 39 -41 -37
		mu 0 4 14 16 36 35
		f 4 19 41 -43 -40
		mu 0 4 16 23 37 36
		f 4 -16 37 43 -42
		mu 0 4 23 21 34 37
		f 4 -50 51 -54 -55
		mu 0 4 40 41 42 43
		f 4 -47 47 49 -49
		mu 0 4 39 38 41 40
		f 4 44 50 -52 -48
		mu 0 4 38 33 42 41
		f 4 -62 64 66 -68
		mu 0 4 47 46 48 49
		f 4 -46 48 54 -53
		mu 0 4 32 39 40 43
		f 4 -32 55 57 -57
		mu 0 4 30 31 45 44
		f 4 33 58 -60 -56
		mu 0 4 31 32 46 45
		f 4 -36 56 62 -61
		mu 0 4 33 30 44 47
		f 4 52 63 -65 -59
		mu 0 4 32 43 48 46
		f 4 53 65 -67 -64
		mu 0 4 43 42 49 48
		f 4 -51 60 67 -66
		mu 0 4 42 33 47 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape13" -p "Ledge36";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[1]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[4]" -type "float3" 0 0 0.31317729 ;
	setAttr ".pt[5]" -type "float3" 0 0 0.31317729 ;
	setAttr ".pt[6]" -type "float3" 0 -9.8065977 0.31317729 ;
	setAttr ".pt[7]" -type "float3" 0 -9.8065977 0.31317729 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge37" -p "group1";
	setAttr ".rp" -type "double3" 0 69.305743199202269 13.322708029643117 ;
	setAttr ".sp" -type "double3" 0 69.305743199202269 13.322708029643117 ;
createNode mesh -n "Ledge37Shape" -p "Ledge37";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.375 0.25
		 0.625 0.25 0.625 0.375 0.375 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  -0.5 79.290825 14.30847 0.5 
		79.290825 14.30847 -0.5 69.127274 14.30847 0.5 69.127274 14.30847 -0.5 69.127274 
		8.4295273 0.5 69.127274 8.4295273 -0.5 79.290825 8.4295273 0.5 79.290825 8.4295273 
		0.5 69.127274 12.798558 -0.5 69.127274 12.798558 -0.5 -41.984913 14.30847 0.5 -41.984913 
		14.30847 0.5 -41.984913 12.798558 -0.5 -41.984913 12.798558;
	setAttr -s 14 ".vt[0:13]"  -0.5 -10.80661011 0.23941112 0.5 -10.80661011 0.23941112
		 -0.5 1 0.23941112 0.5 1 0.23941112 -0.5 1 -0.18682271 0.5 1 -0.18682271 -0.5 -10.80661011 -0.18682271
		 0.5 -10.80661011 -0.18682271 0.5 1 0.12993979 -0.5 1 0.12993979 -0.5 130.074798584 0.23941112
		 0.5 130.074798584 0.23941112 0.5 130.074798584 0.12993979 -0.5 130.074798584 0.12993979;
	setAttr -s 23 ".ed[0:22]"  0 1 0 2 3 1 4 5 0 6 7 0 0 2 0 1 3 0 2 9 1
		 3 8 1 4 6 0 5 7 0 6 0 0 7 1 0 8 5 0 9 4 0 8 9 0 2 10 0 3 11 0 10 11 0 8 12 0 11 12 0
		 9 13 0 12 13 0 10 13 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 17 19 21 -23
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 5 -12 -10 -13 -8 -6
		mu 0 5 1 10 11 15 3
		f 5 10 4 6 13 8
		mu 0 5 12 0 2 16 13
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 1 16 -18 -16
		mu 0 4 2 3 19 18
		f 4 7 18 -20 -17
		mu 0 4 3 14 20 19
		f 4 14 20 -22 -19
		mu 0 4 14 17 21 20
		f 4 -7 15 22 -21
		mu 0 4 17 2 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape14" -p "Ledge37";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -9.8065977 -0.26058882 
		0 -9.8065977 -0.26058882 0 0 -0.26058882 0 0 -0.26058882 0 0 0.31317729 0 0 0.31317729 
		0 -9.8065977 0.31317729 0 -9.8065977 0.31317729;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge38" -p "group1";
	setAttr ".rp" -type "double3" 0 79.167709111542649 11.417072883532867 ;
	setAttr ".sp" -type "double3" 0 79.167709111542649 11.417072883532867 ;
createNode mesh -n "Ledge38Shape" -p "Ledge38";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 79.58004 13.006071 0.5 
		79.58004 13.006071 -0.5 78.755379 13.006071 0.5 78.755379 13.006071 -0.5 78.755379 
		9.8280754 0.5 78.755379 9.8280754 -0.5 79.58004 9.8280754 0.5 79.58004 9.8280754;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge39" -p "group1";
	setAttr ".rp" -type "double3" 0 84.19074546447321 8.0984920708998871 ;
	setAttr ".sp" -type "double3" 0 84.19074546447321 8.0984920708998871 ;
createNode mesh -n "Ledge39Shape" -p "Ledge39";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 84.266724 9.6874895 
		0.5 84.266724 9.6874895 -0.5 84.114769 9.6874895 0.5 84.114769 9.6874895 -0.5 84.114769 
		6.5094943 0.5 84.114769 6.5094943 -0.5 84.266724 6.5094943 0.5 84.266724 6.5094943;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge40" -p "group1";
	setAttr ".rp" -type "double3" 0 73.895995197406052 8.0984920708998871 ;
	setAttr ".sp" -type "double3" 0 73.895995197406052 8.0984920708998871 ;
createNode mesh -n "Ledge40Shape" -p "Ledge40";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.375 0.375
		 0.625 0.375 0.625 0.5 0.375 0.5 0.375 0.375 0.625 0.375 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt[0:17]" -type "float3"  -0.5 73.971977 10.230507 
		0.5 73.971977 10.230507 -0.5 73.820015 10.230507 0.5 73.820015 10.230507 -0.5 73.820015 
		5.6533003 0.5 73.820015 5.6533003 -0.5 73.971977 6.7537751 0.5 73.971977 6.7537751 
		0.5 73.820015 7.9419031 -0.5 73.820015 7.9419031 0.5 73.418465 5.2365732 -0.5 73.418465 
		5.2365732 0.5 73.418465 2.9479702 -0.5 73.418465 2.9479702 0.5 72.740761 5.2365732 
		-0.5 72.740761 5.2365732 0.5 72.740761 2.9479702 -0.5 72.740761 2.9479702;
	setAttr -s 18 ".vt[0:17]"  -0.5 -1.000015258789 0.50000018 0.5 -1.000015258789 0.50000018
		 -0.5 0.99998474 0.50000018 0.5 0.99998474 0.50000018 -0.5 0.99998474 -0.18682277
		 0.5 0.99998474 -0.18682277 -0.5 -1.000015258789 -0.18682277 0.5 -1.000015258789 -0.18682277
		 0.5 0.99998474 0.15658861 -0.5 0.99998474 0.15658861 0.5 6.28495789 -0.24935383 -0.5 6.28495789 -0.24935383
		 0.5 6.28495789 -0.59276527 -0.5 6.28495789 -0.59276527 0.5 15.20445251 -0.24935383
		 -0.5 15.20445251 -0.24935383 0.5 15.20445251 -0.59276527 -0.5 15.20445251 -0.59276527;
	setAttr -s 31 ".ed[0:30]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 1 9 4 1 8 9 0 8 10 0 9 11 0 10 11 0 5 12 0 10 12 1
		 4 13 0 13 12 0 11 13 1 10 14 0 11 15 0 14 15 0 12 16 0 14 16 0 13 17 0 17 16 0 15 17 0;
	setAttr -s 15 -ch 62 ".fc[0:14]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 5 -12 -10 -13 -8 -6
		mu 0 5 1 10 11 15 3
		f 5 10 4 6 13 8
		mu 0 5 12 0 2 16 13
		f 4 -26 27 -30 -31
		mu 0 4 22 23 24 25
		f 4 -15 15 17 -17
		mu 0 4 17 14 19 18
		f 4 12 18 -20 -16
		mu 0 4 14 5 20 19
		f 4 -3 20 21 -19
		mu 0 4 5 4 21 20
		f 4 -14 16 22 -21
		mu 0 4 4 17 18 21
		f 4 -18 23 25 -25
		mu 0 4 18 19 23 22
		f 4 19 26 -28 -24
		mu 0 4 19 20 24 23
		f 4 -22 28 29 -27
		mu 0 4 20 21 25 24
		f 4 -23 24 30 -29
		mu 0 4 21 18 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape15" -p "Ledge40";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.3131772 0 0 0.3131772 
		0 0 0.31317723 0 0 0.31317723;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge41";
	setAttr ".rp" -type "double3" 0 60.492137341021312 1.0560516345704407 ;
	setAttr ".sp" -type "double3" 0 60.492137341021312 1.0560516345704407 ;
createNode mesh -n "Ledge41Shape" -p "Ledge41";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 60.644436 3.0217173 
		0.5 60.644436 3.0217173 -0.5 59.57058 3.0217173 0.5 59.57058 3.0217173 -0.5 59.57058 
		-0.90961403 0.5 59.57058 -0.90961403 -0.5 60.644436 -0.90961403 0.5 60.644436 -0.90961403;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge42";
	setAttr ".rp" -type "double3" 0 70.904735340488813 0.56489135157668813 ;
	setAttr ".sp" -type "double3" 0 70.904735340488813 0.56489135157668813 ;
createNode mesh -n "Ledge42Shape" -p "Ledge42";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 71.057037 2.5305572 
		0.5 71.057037 2.5305572 -0.5 69.983177 2.5305572 0.5 69.983177 2.5305572 -0.5 69.983177 
		-1.4007742 0.5 69.983177 -1.4007742 -0.5 71.057037 -1.4007742 0.5 71.057037 -1.4007742;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge43";
	setAttr ".rp" -type "double3" 0 60.270563275845618 30.871982626784256 ;
	setAttr ".sp" -type "double3" 0 60.270563275845618 30.871982626784256 ;
createNode mesh -n "Ledge43Shape" -p "Ledge43";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 60.422863 32.837646 
		0.5 60.422863 32.837646 -0.5 59.349007 32.837646 0.5 59.349007 32.837646 -0.5 59.349007 
		28.906317 0.5 59.349007 28.906317 -0.5 60.422863 28.906317 0.5 60.422863 28.906317;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge44";
	setAttr ".rp" -type "double3" 0 70.371725277856598 32.951633627198284 ;
	setAttr ".sp" -type "double3" 0 70.371725277856598 32.951633627198284 ;
createNode mesh -n "Ledge44Shape" -p "Ledge44";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 70.524025 34.917301 
		0.5 70.524025 34.917301 -0.5 69.450165 34.917301 0.5 69.450165 34.917301 -0.5 69.450165 
		30.985968 0.5 69.450165 30.985968 -0.5 70.524025 30.985968 0.5 70.524025 30.985968;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge45";
	setAttr ".rp" -type "double3" 0 5.6147365982077027 -15.250838204571476 ;
	setAttr ".sp" -type "double3" 0 5.6147365982077027 -15.250838204571476 ;
createNode mesh -n "Ledge45Shape" -p "Ledge45";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 5.7670364 -11.079772 
		0.5 5.7670364 -11.079772 -0.5 4.6931796 -11.079772 0.5 4.6931796 -11.079772 -0.5 
		4.6931796 -19.421906 0.5 4.6931796 -19.421906 -0.5 5.7670364 -19.421906 0.5 5.7670364 
		-19.421906;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge46";
	setAttr ".rp" -type "double3" 0 11.77417085361348 -21.593225952712078 ;
	setAttr ".sp" -type "double3" 0 11.77417085361348 -21.593225952712078 ;
createNode mesh -n "Ledge46Shape" -p "Ledge46";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 11.926471 -19.422321 
		0.5 11.926471 -19.422321 -0.5 10.852613 -19.422321 0.5 10.852613 -19.422321 -0.5 
		10.852613 -23.76413 0.5 10.852613 -23.76413 -0.5 11.926471 -23.76413 0.5 11.926471 
		-23.76413;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge47";
	setAttr ".rp" -type "double3" 0 16.469977167140659 -21.105349972085879 ;
	setAttr ".sp" -type "double3" 0 16.469977167140659 -21.105349972085879 ;
createNode mesh -n "Ledge47Shape" -p "Ledge47";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 16.622276 -19.365892 
		0.5 16.622276 -19.365892 -0.5 15.54842 -19.365892 0.5 15.54842 -19.365892 -0.5 15.54842 
		-22.844807 0.5 15.54842 -22.844807 -0.5 16.622276 -22.844807 0.5 16.622276 -22.844807;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge48";
	setAttr ".rp" -type "double3" 0 14.762411234948962 -15.616745190041128 ;
	setAttr ".sp" -type "double3" 0 14.762411234948962 -15.616745190041128 ;
createNode mesh -n "Ledge48Shape" -p "Ledge48";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 14.91471 -14.263924 
		0.5 14.91471 -14.263924 -0.5 13.840854 -14.263924 0.5 13.840854 -14.263924 -0.5 13.840854 
		-16.969566 0.5 13.840854 -16.969566 -0.5 14.91471 -16.969566 0.5 14.91471 -16.969566;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge49";
	setAttr ".rp" -type "double3" 0 11.774170853613487 -12.994411794175305 ;
	setAttr ".sp" -type "double3" 0 11.774170853613487 -12.994411794175305 ;
createNode mesh -n "Ledge49Shape" -p "Ledge49";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 11.926471 -11.64159 
		0.5 11.926471 -11.64159 -0.5 10.852613 -11.64159 0.5 10.852613 -11.64159 -0.5 10.852613 
		-14.347233 0.5 10.852613 -14.347233 -0.5 11.926471 -14.347233 0.5 11.926471 -14.347233;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge50";
	setAttr ".rp" -type "double3" 0 18.604434582380293 -13.177365286910131 ;
	setAttr ".sp" -type "double3" 0 18.604434582380293 -13.177365286910131 ;
createNode mesh -n "Ledge50Shape" -p "Ledge50";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 18.756733 -11.526033 
		0.5 18.756733 -11.526033 -0.5 17.682877 -11.526033 0.5 17.682877 -11.526033 -0.5 
		17.682877 -14.828697 0.5 17.682877 -14.828697 -0.5 18.756733 -14.828697 0.5 18.756733 
		-14.828697;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge51";
	setAttr ".rp" -type "double3" 0 22.610742637543972 -18.562187941700024 ;
	setAttr ".sp" -type "double3" 0 22.610742637543972 -18.562187941700024 ;
createNode mesh -n "Ledge51Shape" -p "Ledge51";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 21.871418 -7.5250082 
		0.5 21.871418 -7.5250082 -0.5 21.771692 -7.5250082 0.5 21.771692 -7.5250082 -0.5 
		21.771692 -29.599367 0.5 21.771692 -29.599367 -0.5 21.871418 -29.599367 0.5 21.871418 
		-29.599367;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge52";
	setAttr ".rp" -type "double3" 0 25.431419262975687 -17.684644102676824 ;
	setAttr ".sp" -type "double3" 0 25.431419262975687 -17.684644102676824 ;
createNode mesh -n "Ledge52Shape" -p "Ledge52";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 23.815403 -16.069494 
		0.5 23.815403 -16.069494 -0.5 24.673494 -16.069494 0.5 24.673494 -16.069494 -0.5 
		24.673494 -19.299793 0.5 24.673494 -19.299793 -0.5 23.815403 -19.299793 0.5 23.815403 
		-19.299793;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge53";
	setAttr ".rp" -type "double3" 0 28.502822699556894 -25.018403328799295 ;
	setAttr ".sp" -type "double3" 0 28.502822699556894 -25.018403328799295 ;
createNode mesh -n "Ledge53Shape" -p "Ledge53";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 28.358643 -21.276354 
		0.5 28.358643 -21.276354 -0.5 27.6087 -21.276354 0.5 27.6087 -21.276354 -0.5 27.6087 
		-28.760454 0.5 27.6087 -28.760454 -0.5 28.358643 -28.760454 0.5 28.358643 -28.760454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge54";
	setAttr ".rp" -type "double3" 0 34.731870435044939 -25.470846730050884 ;
	setAttr ".sp" -type "double3" 0 34.731870435044939 -25.470846730050884 ;
createNode mesh -n "Ledge54Shape" -p "Ledge54";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 34.825573 -23.255541 
		0.5 34.825573 -23.255541 -0.5 33.815735 -23.255541 0.5 33.815735 -23.255541 -0.5 
		33.815735 -27.686152 0.5 33.815735 -27.686152 -0.5 34.825573 -27.686152 0.5 34.825573 
		-27.686152;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge55";
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "Ledge55Shape" -p "Ledge55";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 30.700058 -9.7555676 
		0.5 30.700058 -9.7555676 -0.5 29.69022 -9.7555676 0.5 29.69022 -9.7555676 -0.5 29.69022 
		-19.566338 0.5 29.69022 -19.566338 -0.5 30.700058 -19.566338 0.5 30.700058 -19.566338;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge56";
	setAttr ".rp" -type "double3" 0 36.820738869035992 -14.399844029898311 ;
	setAttr ".sp" -type "double3" 0 36.820738869035992 -14.399844029898311 ;
createNode mesh -n "Ledge56Shape" -p "Ledge56";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 36.91444 -13.508624 
		0.5 36.91444 -13.508624 -0.5 35.904606 -13.508624 0.5 35.904606 -13.508624 -0.5 35.904606 
		-15.291063 0.5 35.904606 -15.291063 -0.5 36.91444 -15.291063 0.5 36.91444 -15.291063;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge57";
	setAttr ".rp" -type "double3" 0 36.820738869035992 -10.169885451066436 ;
	setAttr ".sp" -type "double3" 0 36.820738869035992 -10.169885451066436 ;
createNode mesh -n "Ledge57Shape" -p "Ledge57";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 36.91444 -9.2786655 
		0.5 36.91444 -9.2786655 -0.5 35.904606 -9.2786655 0.5 35.904606 -9.2786655 -0.5 35.904606 
		-11.061105 0.5 35.904606 -11.061105 -0.5 36.91444 -11.061105 0.5 36.91444 -11.061105;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge58";
	setAttr ".rp" -type "double3" 0 36.820738869035992 -19.047576295528401 ;
	setAttr ".sp" -type "double3" 0 36.820738869035992 -19.047576295528401 ;
createNode mesh -n "Ledge58Shape" -p "Ledge58";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 36.91444 -18.156357 
		0.5 36.91444 -18.156357 -0.5 35.904606 -18.156357 0.5 35.904606 -18.156357 -0.5 35.904606 
		-19.938795 0.5 35.904606 -19.938795 -0.5 36.91444 -19.938795 0.5 36.91444 -19.938795;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge59";
	setAttr ".rp" -type "double3" 0 39.446367533358625 -16.378777538349102 ;
	setAttr ".sp" -type "double3" 0 39.446367533358625 -16.378777538349102 ;
createNode mesh -n "Ledge59Shape" -p "Ledge59";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 37.069557 -16.171482 
		0.5 37.069557 -16.171482 -0.5 41.823177 -16.171482 0.5 41.823177 -16.171482 -0.5 
		41.823177 -16.586073 0.5 41.823177 -16.586073 -0.5 37.069557 -16.586073 0.5 37.069557 
		-16.586073;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge60";
	setAttr ".rp" -type "double3" 0 31.032305270512879 -4.7895974404672135 ;
	setAttr ".sp" -type "double3" 0 31.032305270512879 -4.7895974404672135 ;
createNode mesh -n "Ledge60Shape" -p "Ledge60";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 31.185566 -2.9201608 
		0.5 31.185566 -2.9201608 -0.5 30.879044 -2.9201608 0.5 30.879044 -2.9201608 -0.5 
		30.879044 -6.6590343 0.5 30.879044 -6.6590343 -0.5 31.185566 -6.6590343 0.5 31.185566 
		-6.6590343;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge61";
	setAttr ".rp" -type "double3" 0 51.353059414744131 -4.7895974404672135 ;
	setAttr ".sp" -type "double3" 0 51.353059414744131 -4.7895974404672135 ;
createNode mesh -n "Ledge61Shape" -p "Ledge61";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 51.797974 -2.9201608 
		0.5 51.797974 -2.9201608 -0.5 50.908142 -2.9201608 0.5 50.908142 -2.9201608 -0.5 
		50.908142 -6.6590343 0.5 50.908142 -6.6590343 -0.5 51.797974 -6.6590343 0.5 51.797974 
		-6.6590343;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge62";
	setAttr ".rp" -type "double3" 0 52.143731850755891 -11.246755667896595 ;
	setAttr ".sp" -type "double3" 0 52.143731850755891 -11.246755667896595 ;
createNode mesh -n "Ledge62Shape" -p "Ledge62";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 52.588646 -9.8643703 
		0.5 52.588646 -9.8643703 -0.5 51.698814 -9.8643703 0.5 51.698814 -9.8643703 -0.5 
		51.698814 -12.629142 0.5 51.698814 -12.629142 -0.5 52.588646 -12.629142 0.5 52.588646 
		-12.629142;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge63";
	setAttr ".rp" -type "double3" 0 46.081909841332383 -9.6214845494279739 ;
	setAttr ".sp" -type "double3" 0 46.081909841332383 -9.6214845494279739 ;
createNode mesh -n "Ledge63Shape" -p "Ledge63";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 46.656345 -8.2390985 
		0.5 46.656345 -8.2390985 -0.5 45.507473 -8.2390985 0.5 45.507473 -8.2390985 -0.5 
		45.507473 -11.00387 0.5 45.507473 -11.00387 -0.5 46.656345 -11.00387 0.5 46.656345 
		-11.00387;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge64";
	setAttr ".rp" -type "double3" 0 53.354454890994269 -24.458227731812546 ;
	setAttr ".sp" -type "double3" 0 53.354454890994269 -24.458227731812546 ;
createNode mesh -n "Ledge64Shape" -p "Ledge64";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 53.92889 -20.911098 
		0.5 53.92889 -20.911098 -0.5 52.780018 -20.911098 0.5 52.780018 -20.911098 -0.5 52.780018 
		-28.005358 0.5 52.780018 -28.005358 -0.5 53.92889 -28.005358 0.5 53.92889 -28.005358;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge65";
	setAttr ".rp" -type "double3" 0 58.44194503472508 -19.106452385809991 ;
	setAttr ".sp" -type "double3" 0 58.44194503472508 -19.106452385809991 ;
createNode mesh -n "Ledge65Shape" -p "Ledge65";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 58.817783 -16.413717 
		0.5 58.817783 -16.413717 -0.5 58.066105 -16.413717 0.5 58.066105 -16.413717 -0.5 
		58.066105 -21.799189 0.5 58.066105 -21.799189 -0.5 58.817783 -21.799189 0.5 58.817783 
		-21.799189;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge66";
	setAttr ".rp" -type "double3" 0 61.587640095977378 -15.222481953039305 ;
	setAttr ".sp" -type "double3" 0 61.587640095977378 -15.222481953039305 ;
createNode mesh -n "Ledge66Shape" -p "Ledge66";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 61.963474 -14.197064 
		0.5 61.963474 -14.197064 -0.5 61.211803 -14.197064 0.5 61.211803 -14.197064 -0.5 
		61.211803 -16.2479 0.5 61.211803 -16.2479 -0.5 61.963474 -16.2479 0.5 61.963474 -16.2479;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge67";
	setAttr ".rp" -type "double3" 0 61.876530458745442 -21.160783854382931 ;
	setAttr ".sp" -type "double3" 0 61.876530458745442 -21.160783854382931 ;
createNode mesh -n "Ledge67Shape" -p "Ledge67";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 62.252369 -20.287909 
		0.5 62.252369 -20.287909 -0.5 61.50069 -20.287909 0.5 61.50069 -20.287909 -0.5 61.50069 
		-22.033661 0.5 61.50069 -22.033661 -0.5 62.252369 -22.033661 0.5 62.252369 -22.033661;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge68";
	setAttr ".rp" -type "double3" 0 64.865891832655961 -18.820040183176047 ;
	setAttr ".sp" -type "double3" 0 64.865891832655961 -18.820040183176047 ;
createNode mesh -n "Ledge68Shape" -p "Ledge68";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 65.464302 -17.947165 
		0.5 65.464302 -17.947165 -0.5 64.267479 -17.947165 0.5 64.267479 -17.947165 -0.5 
		64.267479 -19.692917 0.5 64.267479 -19.692917 -0.5 65.464302 -19.692917 0.5 65.464302 
		-19.692917;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge69";
	setAttr ".rp" -type "double3" 0 65.570241736318224 -23.419030730617848 ;
	setAttr ".sp" -type "double3" 0 65.570241736318224 -23.419030730617848 ;
createNode mesh -n "Ledge69Shape" -p "Ledge69";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 66.017746 -22.03026 
		0.5 66.017746 -22.03026 -0.5 65.122742 -22.03026 0.5 65.122742 -22.03026 -0.5 65.122742 
		-24.8078 0.5 65.122742 -24.8078 -0.5 66.017746 -24.8078 0.5 66.017746 -24.8078;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge70";
	setAttr ".rp" -type "double3" 0 63.489107551363198 -27.841440873647318 ;
	setAttr ".sp" -type "double3" 0 63.489107551363198 -27.841440873647318 ;
createNode mesh -n "Ledge70Shape" -p "Ledge70";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 64.059387 -26.452671 
		0.5 64.059387 -26.452671 -0.5 62.918827 -26.452671 0.5 62.918827 -26.452671 -0.5 
		62.918827 -29.230211 0.5 62.918827 -29.230211 -0.5 64.059387 -29.230211 0.5 64.059387 
		-29.230211;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge71";
	setAttr ".rp" -type "double3" 0 56.517899383283535 -28.071894036228468 ;
	setAttr ".sp" -type "double3" 0 56.517899383283535 -28.071894036228468 ;
createNode mesh -n "Ledge71Shape" -p "Ledge71";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 57.088177 -26.683125 
		0.5 57.088177 -26.683125 -0.5 55.94762 -26.683125 0.5 55.94762 -26.683125 -0.5 55.94762 
		-29.460665 0.5 55.94762 -29.460665 -0.5 57.088177 -29.460665 0.5 57.088177 -29.460665;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge72";
	setAttr ".rp" -type "double3" 0 70.959506667499127 -17.327896346522163 ;
	setAttr ".sp" -type "double3" 0 70.959506667499127 -17.327896346522163 ;
createNode mesh -n "Ledge72Shape" -p "Ledge72";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 71.529785 -16.686567 
		0.5 71.529785 -16.686567 -0.5 70.389229 -16.686567 0.5 70.389229 -16.686567 -0.5 
		70.389229 -17.969227 0.5 70.389229 -17.969227 -0.5 71.529785 -17.969227 0.5 71.529785 
		-17.969227;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge73";
	setAttr ".rp" -type "double3" 0 68.866520104569332 -15.165143564828034 ;
	setAttr ".sp" -type "double3" 0 68.866520104569332 -15.165143564828034 ;
createNode mesh -n "Ledge73Shape" -p "Ledge73";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 69.436806 -13.529787 
		0.5 69.436806 -13.529787 -0.5 68.296242 -13.529787 0.5 68.296242 -13.529787 -0.5 
		68.296242 -16.800501 0.5 68.296242 -16.800501 -0.5 69.436806 -16.800501 0.5 69.436806 
		-16.800501;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge74";
	setAttr ".rp" -type "double3" 0 73.261791886721909 -12.095429939197665 ;
	setAttr ".sp" -type "double3" 0 73.261791886721909 -12.095429939197665 ;
createNode mesh -n "Ledge74Shape" -p "Ledge74";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 73.832077 -11.305095 
		0.5 73.832077 -11.305095 -0.5 72.691513 -11.305095 0.5 72.691513 -11.305095 -0.5 
		72.691513 -12.885765 0.5 72.691513 -12.885765 -0.5 73.832077 -12.885765 0.5 73.832077 
		-12.885765;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge75";
	setAttr ".rp" -type "double3" 0 71.308337761320757 -8.9559500948029687 ;
	setAttr ".sp" -type "double3" 0 71.308337761320757 -8.9559500948029687 ;
createNode mesh -n "Ledge75Shape" -p "Ledge75";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 71.878616 -8.1656151 
		0.5 71.878616 -8.1656151 -0.5 70.73806 -8.1656151 0.5 70.73806 -8.1656151 -0.5 70.73806 
		-9.7462854 0.5 70.73806 -9.7462854 -0.5 71.878616 -9.7462854 0.5 71.878616 -9.7462854;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge76";
	setAttr ".rp" -type "double3" 0 67.959559260633085 -8.8164176572743163 ;
	setAttr ".sp" -type "double3" 0 67.959559260633085 -8.8164176572743163 ;
createNode mesh -n "Ledge76Shape" -p "Ledge76";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 68.529839 -8.026083 
		0.5 68.529839 -8.026083 -0.5 67.389282 -8.026083 0.5 67.389282 -8.026083 -0.5 67.389282 
		-9.6067524 0.5 67.389282 -9.6067524 -0.5 68.529839 -9.6067524 0.5 68.529839 -9.6067524;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge77";
	setAttr ".rp" -type "double3" 0 58.75041838374198 -10.63033934514681 ;
	setAttr ".sp" -type "double3" 0 58.75041838374198 -10.63033934514681 ;
createNode mesh -n "Ledge77Shape" -p "Ledge77";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 59.320698 -9.8400049 
		0.5 59.320698 -9.8400049 -0.5 58.180138 -9.8400049 0.5 58.180138 -9.8400049 -0.5 
		58.180138 -11.420674 0.5 58.180138 -11.420674 -0.5 59.320698 -11.420674 0.5 59.320698 
		-11.420674;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge78";
	setAttr ".rp" -type "double3" 0 65.094631224977007 -10.63033934514681 ;
	setAttr ".sp" -type "double3" 0 65.094631224977007 -10.63033934514681 ;
createNode mesh -n "Ledge78Shape" -p "Ledge78";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 65.664917 -9.8400049 
		0.5 65.664917 -9.8400049 -0.5 64.524353 -9.8400049 0.5 64.524353 -9.8400049 -0.5 
		64.524353 -11.420674 0.5 64.524353 -11.420674 -0.5 65.664917 -11.420674 0.5 65.664917 
		-11.420674;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge79";
	setAttr ".rp" -type "double3" 0 84.375825776537383 -5.3511243800776365 ;
	setAttr ".sp" -type "double3" 0 84.375825776537383 -5.3511243800776365 ;
createNode mesh -n "Ledge79Shape" -p "Ledge79";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 84.755119 -2.9980507 
		0.5 84.755119 -2.9980507 -0.5 83.996536 -2.9980507 0.5 83.996536 -2.9980507 -0.5 
		83.996536 -7.7041979 0.5 83.996536 -7.7041979 -0.5 84.755119 -7.7041979 0.5 84.755119 
		-7.7041979;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge80";
	setAttr ".rp" -type "double3" 0 88.684631786722292 -5.3511243800776365 ;
	setAttr ".sp" -type "double3" 0 88.684631786722292 -5.3511243800776365 ;
createNode mesh -n "Ledge80Shape" -p "Ledge80";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 89.257034 -2.9980507 
		0.5 89.257034 -2.9980507 -0.5 88.112228 -2.9980507 0.5 88.112228 -2.9980507 -0.5 
		88.112228 -7.7041979 0.5 88.112228 -7.7041979 -0.5 89.257034 -7.7041979 0.5 89.257034 
		-7.7041979;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge81";
	setAttr ".rp" -type "double3" 0 79.593516346155994 -21.74814964879705 ;
	setAttr ".sp" -type "double3" 0 79.593516346155994 -21.74814964879705 ;
createNode mesh -n "Ledge81Shape" -p "Ledge81";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 80.165924 -21.13862 
		0.5 80.165924 -21.13862 -0.5 79.021118 -21.13862 0.5 79.021118 -21.13862 -0.5 79.021118 
		-22.357679 0.5 79.021118 -22.357679 -0.5 80.165924 -22.357679 0.5 80.165924 -22.357679;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge82";
	setAttr ".rp" -type "double3" 0 76.503683085758041 -5.2929911224915216 ;
	setAttr ".sp" -type "double3" 0 76.503683085758041 -5.2929911224915207 ;
createNode mesh -n "Ledge82Shape" -p "Ledge82";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 77.076088 -3.9314485 
		0.5 77.076088 -3.9314485 -0.5 75.931282 -3.9314485 0.5 75.931282 -3.9314485 -0.5 
		75.931282 -6.6545339 0.5 75.931282 -6.6545339 -0.5 77.076088 -6.6545339 0.5 77.076088 
		-6.6545339;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ground";
	setAttr ".rp" -type "double3" 0 -2 -12.61963792243219 ;
	setAttr ".sp" -type "double3" 0 -2 -12.61963792243219 ;
createNode mesh -n "polySurfaceShape51" -p "Ground";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 -3.3634825 81.55719 
		0.5 -3.3634825 81.55719 -0.5 -0.63651764 81.55719 0.5 -0.63651764 81.55719 -0.5 -0.63651764 
		-106.79646 0.5 -0.63651764 -106.79646 -0.5 -3.3634825 -106.79646 0.5 -3.3634825 -106.79646;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface29" -p "Ground";
createNode mesh -n "polySurfaceShape52" -p "polySurface29";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface30" -p "Ground";
createNode mesh -n "polySurfaceShape53" -p "polySurface30";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform6" -p "Ground";
createNode mesh -n "GroundShape" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge84";
	setAttr ".rp" -type "double3" 0 5.6147365982077027 -46.487475998011902 ;
	setAttr ".sp" -type "double3" 0 5.6147365982077027 -46.487475998011902 ;
createNode mesh -n "Ledge84Shape" -p "Ledge84";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 5.7670364 -37.805691 
		0.5 5.7670364 -37.805691 -0.5 4.6931796 -37.805691 0.5 4.6931796 -37.805691 -0.5 
		4.6931796 -55.169258 0.5 4.6931796 -55.169258 -0.5 5.7670364 -55.169258 0.5 5.7670364 
		-55.169258;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Nothing3";
	setAttr ".rp" -type "double3" 0 17.603822207161897 -48.516678787917485 ;
	setAttr ".sp" -type "double3" 0 17.603822207161897 -48.516678787917485 ;
createNode mesh -n "Nothing3Shape" -p "Nothing3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 20.057682 -44.308163 
		0.5 20.057682 -44.308163 -0.5 19.86171 -46.176186 0.5 19.86171 -46.176186 -0.5 13.651532 
		-51.173607 0.5 13.651532 -51.173607 -0.5 13.847505 -49.305584 0.5 13.847505 -49.305584;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge87";
	setAttr ".rp" -type "double3" 0 17.520122710359715 -42.579190440342735 ;
	setAttr ".sp" -type "double3" 0 17.520122710359715 -42.579190440342735 ;
createNode mesh -n "Ledge87Shape" -p "Ledge87";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 13.786986 -41.7076 0.5 
		13.786986 -41.7076 -0.5 13.623291 -39.871296 0.5 13.623291 -39.871296 -0.5 19.72802 
		-44.976021 0.5 19.72802 -44.976021 -0.5 19.891716 -46.812325 0.5 19.891716 -46.812325;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge88";
	setAttr ".rp" -type "double3" 0 22.400283387291243 -37.66696403542975 ;
	setAttr ".sp" -type "double3" 0 22.400283387291243 -37.66696403542975 ;
createNode mesh -n "Ledge88Shape" -p "Ledge88";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 22.335995 -33.850269 
		0.5 22.335995 -33.850269 -0.5 21.498768 -33.850269 0.5 21.498768 -33.850269 -0.5 
		21.498768 -41.483658 0.5 21.498768 -41.483658 -0.5 22.335995 -41.483658 0.5 22.335995 
		-41.483658;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge90";
	setAttr ".rp" -type "double3" 0 34.918500079473439 -38.188121075140259 ;
	setAttr ".sp" -type "double3" 0 34.918500079473439 -38.188121075140259 ;
createNode mesh -n "WallLedge90Shape" -p "WallLedge90";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 44.429676 -37.623833 
		0.5 44.429676 -37.623833 -0.5 42.429676 -38.786606 0.5 42.429676 -38.786606 -0.5 
		25.407324 -37.786606 0.5 25.407324 -37.786606 -0.5 27.407322 -36.623833 0.5 27.407322 
		-36.623833;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge91";
	setAttr ".rp" -type "double3" 0 42.286622184918826 -45.554002894178339 ;
	setAttr ".sp" -type "double3" 0 42.286622184918826 -45.554002894178339 ;
createNode mesh -n "WallLedge91Shape" -p "WallLedge91";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 51.797798 -44.989716 
		0.5 51.797798 -44.989716 -0.5 49.797798 -46.152489 0.5 49.797798 -46.152489 -0.5 
		32.775448 -45.152485 0.5 32.775448 -45.152485 -0.5 34.775444 -43.989716 0.5 34.775444 
		-43.989716;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge92";
	setAttr ".rp" -type "double3" 0 34.918500079473439 -33.173344250161968 ;
	setAttr ".sp" -type "double3" 0 34.918500079473439 -33.173344250161968 ;
createNode mesh -n "WallLedge92Shape" -p "WallLedge92";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 44.429676 -32.609058 
		0.5 44.429676 -32.609058 -0.5 42.429676 -33.771828 0.5 42.429676 -33.771828 -0.5 
		25.407324 -32.771828 0.5 25.407324 -32.771828 -0.5 27.407322 -31.609056 0.5 27.407322 
		-31.609056;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge93";
	setAttr ".rp" -type "double3" 0 43.317738774316936 -35.042242856137037 ;
	setAttr ".sp" -type "double3" 0 43.317738774316936 -35.042242856137037 ;
createNode mesh -n "Ledge93Shape" -p "Ledge93";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 43.411438 -33.011539 
		0.5 43.411438 -33.011539 -0.5 42.401604 -33.011539 0.5 42.401604 -33.011539 -0.5 
		42.401604 -37.072945 0.5 42.401604 -37.072945 -0.5 43.411438 -37.072945 0.5 43.411438 
		-37.072945;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge94";
	setAttr ".rp" -type "double3" 0 27.353662695115325 -35.042242856137037 ;
	setAttr ".sp" -type "double3" 0 27.353662695115325 -35.042242856137037 ;
createNode mesh -n "Ledge94Shape" -p "Ledge94";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 27.447365 -33.011539 
		0.5 27.447365 -33.011539 -0.5 26.437529 -33.011539 0.5 26.437529 -33.011539 -0.5 
		26.437529 -37.072945 0.5 26.437529 -37.072945 -0.5 27.447365 -37.072945 0.5 27.447365 
		-37.072945;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge95";
	setAttr ".rp" -type "double3" 0 48.043622877916128 -32.646441271907555 ;
	setAttr ".sp" -type "double3" 0 48.043622877916128 -32.646441271907555 ;
createNode mesh -n "Ledge95Shape" -p "Ledge95";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 48.137325 -30.615736 
		0.5 48.137325 -30.615736 -0.5 47.127487 -30.615736 0.5 47.127487 -30.615736 -0.5 
		47.127487 -34.677143 0.5 47.127487 -34.677143 -0.5 48.137325 -34.677143 0.5 48.137325 
		-34.677143;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge96";
	setAttr ".rp" -type "double3" 0 51.848260488432118 -39.132852782271456 ;
	setAttr ".sp" -type "double3" 0 51.848260488432118 -39.132852782271456 ;
createNode mesh -n "Ledge96Shape" -p "Ledge96";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 51.941963 -37.102146 
		0.5 51.941963 -37.102146 -0.5 50.932125 -37.102146 0.5 50.932125 -37.102146 -0.5 
		50.932125 -41.163555 0.5 50.932125 -41.163555 -0.5 51.941963 -41.163555 0.5 51.941963 
		-41.163555;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge97";
	setAttr ".rp" -type "double3" 0 45.029437698518848 -51.284825254691761 ;
	setAttr ".sp" -type "double3" 0 45.029437698518848 -51.284825254691761 ;
createNode mesh -n "Ledge97Shape" -p "Ledge97";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 41.711426 -59.19614 
		0.5 41.711426 -59.19614 -0.5 38.787132 -58.49065 0.5 38.787132 -58.49065 -0.5 49.11517 
		-43.959492 0.5 49.11517 -43.959492 -0.5 52.039463 -44.664986 0.5 52.039463 -44.664986;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge98";
	setAttr ".rp" -type "double3" 0 31.273520463341452 -52.828887766451111 ;
	setAttr ".sp" -type "double3" 0 31.273520463341452 -52.828887766451111 ;
createNode mesh -n "Ledge98Shape" -p "Ledge98";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 29.267857 -52.478554 
		0.5 29.267857 -52.478554 -0.5 30.551653 -52.478554 0.5 30.551653 -52.478554 -0.5 
		30.551653 -53.179218 0.5 30.551653 -53.179218 -0.5 29.267857 -53.179218 0.5 29.267857 
		-53.179218;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge99";
	setAttr ".rp" -type "double3" 0 17.603822207161897 -57.245779775029511 ;
	setAttr ".sp" -type "double3" 0 17.603822207161897 -57.245779775029511 ;
createNode mesh -n "Ledge99Shape" -p "Ledge99";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 20.057682 -53.037262 
		0.5 20.057682 -53.037262 -0.5 19.86171 -54.905285 0.5 19.86171 -54.905285 -0.5 13.651532 
		-59.90271 0.5 13.651532 -59.90271 -0.5 13.847505 -58.034687 0.5 13.847505 -58.034687;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Nothing2";
	setAttr ".rp" -type "double3" 0 17.520122710359715 -51.308291427454762 ;
	setAttr ".sp" -type "double3" 0 17.520122710359715 -51.308291427454762 ;
createNode mesh -n "Nothing2Shape" -p "Nothing2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 13.786986 -50.436699 
		0.5 13.786986 -50.436699 -0.5 13.623291 -48.600395 0.5 13.623291 -48.600395 -0.5 
		19.72802 -53.70512 0.5 19.72802 -53.70512 -0.5 19.891716 -55.541424 0.5 19.891716 
		-55.541424;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge101";
	setAttr ".rp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
	setAttr ".sp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
createNode mesh -n "Ledge101Shape" -p "Ledge101";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 35.113277 -50.767445 
		0.5 35.113277 -50.767445 -0.5 37.648632 -50.767445 0.5 37.648632 -50.767445 -0.5 
		37.648632 -54.646046 0.5 37.648632 -54.646046 -0.5 35.113277 -54.646046 0.5 35.113277 
		-54.646046;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge102";
	setAttr ".rp" -type "double3" 0 19.656277226954593 -63.837796191105262 ;
	setAttr ".sp" -type "double3" 0 19.656277226954593 -63.837796191105262 ;
createNode mesh -n "Ledge102Shape" -p "Ledge102";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 18.967491 -61.898495 
		0.5 18.967491 -61.898495 -0.5 20.345064 -61.898495 0.5 20.345064 -61.898495 -0.5 
		20.345064 -65.777092 0.5 20.345064 -65.777092 -0.5 18.967491 -65.777092 0.5 18.967491 
		-65.777092;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge103";
	setAttr ".rp" -type "double3" 1.3877787807814457e-17 52.492615678681901 -63.004094104053557 ;
	setAttr ".sp" -type "double3" 1.3877787807814457e-17 52.492615678681901 -63.004094104053557 ;
createNode mesh -n "WallLedge103Shape" -p "WallLedge103";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.71055889 45.00824 -64.563698 
		0.28883401 44.959858 -64.573044 -0.70512664 43.00811 -63.400936 0.29426625 42.959728 
		-63.410282 -0.29334605 60.025478 -62.400936 0.70604682 59.9771 -62.410282 -0.2987783 
		62.025608 -63.563694 0.70061463 61.97723 -63.57304;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge105";
	setAttr ".rp" -type "double3" 0 60.88845199203648 -66.451454385761451 ;
	setAttr ".sp" -type "double3" 0 60.88845199203648 -66.451454385761451 ;
createNode mesh -n "Ledge105Shape" -p "Ledge105";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 60.982151 -64.420746 
		0.5 60.982151 -64.420746 -0.5 59.972317 -64.420746 0.5 59.972317 -64.420746 -0.5 
		59.972317 -74.959976 0.5 59.972317 -74.959976 -0.5 60.982151 -74.959976 0.5 60.982151 
		-74.959976;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge106";
	setAttr ".t" -type "double3" -0.24175388983552892 -0.67887240798967241 -13.672435707202638 ;
	setAttr ".rp" -type "double3" 0 66.627440996344092 -63.665135015584866 ;
	setAttr ".sp" -type "double3" 0 66.627440996344092 -63.665135015584866 ;
createNode mesh -n "Ledge106Shape" -p "Ledge106";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 66.721146 -61.63443 
		0.5 66.721146 -61.63443 -0.5 65.711304 -61.63443 0.5 65.711304 -61.63443 -0.5 65.711304 
		-72.17366 0.5 65.711304 -72.17366 -0.5 66.721146 -72.17366 0.5 66.721146 -72.17366;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge107";
	setAttr ".rp" -type "double3" 0 63.179209301904699 -69.960281493083485 ;
	setAttr ".sp" -type "double3" 0 63.179209301904699 -69.960281493083485 ;
createNode mesh -n "Ledge107Shape" -p "Ledge107";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 61.756725 -69.774933 
		0.5 61.756725 -69.774933 -0.5 62.403378 -69.774933 0.5 62.403378 -69.774933 -0.5 
		62.403378 -70.145622 0.5 62.403378 -70.145622 -0.5 61.756725 -70.145622 0.5 61.756725 
		-70.145622;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Nothing";
	setAttr ".t" -type "double3" -0.24175388983552892 -0.67887240798967241 -13.672435707202638 ;
	setAttr ".rp" -type "double3" 0 69.048954796867662 -67.261351072631783 ;
	setAttr ".sp" -type "double3" 0 69.048954796867662 -67.261351072631783 ;
createNode mesh -n "NothingShape" -p "Nothing";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 67.625877 -64.369049 
		0.5 67.625877 -64.369049 -0.5 68.802635 -67.545807 0.5 68.802635 -67.545807 -0.5 
		67.833412 -67.51503 0.5 67.833412 -67.51503 -0.5 66.656654 -64.338272 0.5 66.656654 
		-64.338272;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Nothing1";
	setAttr ".t" -type "double3" -0.24175388983552892 -0.67887240798967241 -13.672435707202638 ;
	setAttr ".rp" -type "double3" 0 69.048954796867662 -66.758073012734769 ;
	setAttr ".sp" -type "double3" 0 69.048954796867662 -66.758073012734769 ;
createNode mesh -n "Nothing1Shape" -p "Nothing1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 66.612839 -69.724968 
		0.5 66.612839 -69.724968 -0.5 67.837463 -66.500343 0.5 67.837463 -66.500343 -0.5 
		68.806686 -66.469566 0.5 68.806686 -66.469566 -0.5 67.582062 -69.694191 0.5 67.582062 
		-69.694191;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge110";
	setAttr ".t" -type "double3" 0 1.3047475624759315 -1.2485244115269865 ;
	setAttr -l on ".tx";
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 55.078117370605469 -73.836196899414062 ;
	setAttr ".sp" -type "double3" 0 55.078117370605469 -73.836196899414062 ;
createNode mesh -n "Ledge110Shape" -p "Ledge110";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 55.583035 -69.488213 
		0.5 55.583035 -69.488213 -0.5 54.5732 -69.488213 0.5 54.5732 -69.488213 -0.5 54.5732 
		-82.03112 0.5 54.5732 -82.03112 -0.5 55.583035 -82.03112 0.5 55.583035 -82.03112;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge111";
	setAttr ".t" -type "double3" 0.0018339326065728301 0.29258678905696911 -7.1398136811408932 ;
	setAttr ".rp" -type "double3" 0 50.599288940429688 -73.836196899414062 ;
	setAttr ".sp" -type "double3" 0 50.599288940429688 -73.836196899414062 ;
createNode mesh -n "Ledge111Shape" -p "Ledge111";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 51.104206 -68.566574 
		0.5 51.104206 -68.566574 -0.5 50.094372 -68.566574 0.5 50.094372 -68.566574 -0.5 
		50.094372 -79.10582 0.5 50.094372 -79.10582 -0.5 51.104206 -79.10582 0.5 51.104206 
		-79.10582;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge112";
	setAttr ".t" -type "double3" 0 1.0318614683992848 0 ;
	setAttr ".rp" -type "double3" 0 46.338356018066406 -73.836196899414062 ;
	setAttr ".sp" -type "double3" 0 46.338356018066406 -73.836196899414062 ;
createNode mesh -n "Ledge112Shape" -p "Ledge112";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 46.843273 -67.709885 
		0.5 46.843273 -67.709885 -0.5 45.833439 -67.709885 0.5 45.833439 -67.709885 -0.5 
		45.833439 -79.962509 0.5 45.833439 -79.962509 -0.5 46.843273 -79.962509 0.5 46.843273 
		-79.962509;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge114";
	setAttr ".rp" -type "double3" 0 31.84189143886071 -67.49936324603469 ;
	setAttr ".sp" -type "double3" 0 31.84189143886071 -67.49936324603469 ;
createNode mesh -n "Ledge114Shape" -p "Ledge114";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.30000001 0.67500001 0.25 0.625 0.35000002 0.72500002
		 0.25 0.625 0.40000001 0.77500004 0.25 0.625 0.44999999 0.82499999 0.25 0.32500002
		 0.25 0.375 0.30000001 0.27500001 0.25 0.375 0.35000002 0.22499999 0.25 0.375 0.40000001
		 0.175 0.25 0.375 0.44999999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -0.5 41.584202 -63.003155 
		0.5 41.584202 -63.003155 -0.5 30.940376 -63.003155 0.5 30.940376 -63.003155 -0.5 
		30.940376 -72.308746 0.5 30.940376 -72.308746 -0.5 41.584202 -72.308746 0.5 41.584202 
		-72.308746 0.5 30.940374 -64.864273 0.5 30.940376 -66.725395 0.5 30.940376 -68.58651 
		0.5 30.940374 -70.447632 -0.5 30.940374 -64.864273 -0.5 30.940376 -66.725395 -0.5 
		30.940376 -68.58651 -0.5 30.940374 -70.447632;
	setAttr -s 16 ".vt[0:15]"  -0.5 -10.80659771 0.5 0.5 -10.80659771 0.5
		 -0.5 1 0.5 0.5 1 0.5 -0.5 1 -0.18682271 0.5 1 -0.18682271 -0.5 -10.80659771 -0.18682271
		 0.5 -10.80659771 -0.18682271 0.5 1.000001907349 0.36263546 0.5 1 0.22527093 0.5 1 0.087906353
		 0.5 1.000001907349 -0.049458176 -0.5 1.000001907349 0.36263546 -0.5 1 0.22527093
		 -0.5 1 0.087906353 -0.5 1.000001907349 -0.049458176;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 12 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 9 10 0 10 11 0 11 5 0 12 13 0 13 14 0 14 15 0
		 15 4 0 11 15 1 10 14 1 9 13 1 8 12 1;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 23 -7
		mu 0 4 2 3 14 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 8 -12 -10 -16 -15 -14 -13 -8 -6
		mu 0 8 1 10 11 21 19 17 15 3
		f 8 10 4 6 16 17 18 19 8
		mu 0 8 12 0 2 22 24 26 28 13
		f 4 -21 15 -3 -20
		mu 0 4 29 20 5 4
		f 4 -22 14 20 -19
		mu 0 4 27 18 20 29
		f 4 -23 13 21 -18
		mu 0 4 25 16 18 27
		f 4 -24 12 22 -17
		mu 0 4 23 14 16 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape17" -p "Ledge114";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[1]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[4]" -type "float3" 0 0 0.31317729 ;
	setAttr ".pt[5]" -type "float3" 0 0 0.31317729 ;
	setAttr ".pt[6]" -type "float3" 0 -9.8065977 0.31317729 ;
	setAttr ".pt[7]" -type "float3" 0 -9.8065977 0.31317729 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge115";
	setAttr ".rp" -type "double3" 0 36.262005662890658 -75.958703432145086 ;
	setAttr ".sp" -type "double3" 0 36.262005662890658 -75.958703432145086 ;
createNode mesh -n "Ledge115Shape" -p "Ledge115";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.30000001 0.67500001 0.25 0.625 0.35000002 0.72500002
		 0.25 0.625 0.40000001 0.77500004 0.25 0.625 0.44999999 0.82499999 0.25 0.32500002
		 0.25 0.375 0.30000001 0.27500001 0.25 0.375 0.35000002 0.22499999 0.25 0.375 0.40000001
		 0.175 0.25 0.375 0.44999999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -0.5 46.004318 -71.462494 
		0.5 46.004318 -71.462494 -0.5 35.360489 -71.462494 0.5 35.360489 -71.462494 -0.5 
		35.360489 -80.768089 0.5 35.360489 -80.768089 -0.5 46.004318 -80.768089 0.5 46.004318 
		-80.768089 0.5 35.360489 -73.323616 0.5 35.360489 -75.184731 0.5 35.360489 -77.045853 
		0.5 35.360489 -78.906967 -0.5 35.360489 -73.323616 -0.5 35.360489 -75.184731 -0.5 
		35.360489 -77.045853 -0.5 35.360489 -78.906967;
	setAttr -s 16 ".vt[0:15]"  -0.5 -10.80659771 0.5 0.5 -10.80659771 0.5
		 -0.5 1 0.5 0.5 1 0.5 -0.5 1 -0.18682271 0.5 1 -0.18682271 -0.5 -10.80659771 -0.18682271
		 0.5 -10.80659771 -0.18682271 0.5 1.000001907349 0.36263546 0.5 1 0.22527093 0.5 1 0.087906353
		 0.5 1.000001907349 -0.049458176 -0.5 1.000001907349 0.36263546 -0.5 1 0.22527093
		 -0.5 1 0.087906353 -0.5 1.000001907349 -0.049458176;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 12 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 9 10 0 10 11 0 11 5 0 12 13 0 13 14 0 14 15 0
		 15 4 0 11 15 1 10 14 1 9 13 1 8 12 1;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 23 -7
		mu 0 4 2 3 14 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 8 -12 -10 -16 -15 -14 -13 -8 -6
		mu 0 8 1 10 11 21 19 17 15 3
		f 8 10 4 6 16 17 18 19 8
		mu 0 8 12 0 2 22 24 26 28 13
		f 4 -21 15 -3 -20
		mu 0 4 29 20 5 4
		f 4 -22 14 20 -19
		mu 0 4 27 18 20 29
		f 4 -23 13 21 -18
		mu 0 4 25 16 18 27
		f 4 -24 12 22 -17
		mu 0 4 23 14 16 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape17" -p "Ledge115";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[1]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[4]" -type "float3" 0 0 0.31317729 ;
	setAttr ".pt[5]" -type "float3" 0 0 0.31317729 ;
	setAttr ".pt[6]" -type "float3" 0 -9.8065977 0.31317729 ;
	setAttr ".pt[7]" -type "float3" 0 -9.8065977 0.31317729 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge116";
	setAttr ".rp" -type "double3" 0 37.031386950192491 -62.494023047518205 ;
	setAttr ".sp" -type "double3" 0 37.031386950192491 -62.494023047518205 ;
createNode mesh -n "Ledge116Shape" -p "Ledge116";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.30000001 0.67500001 0.25 0.625 0.35000002 0.72500002
		 0.25 0.625 0.40000001 0.77500004 0.25 0.625 0.44999999 0.82499999 0.25 0.32500002
		 0.25 0.375 0.30000001 0.27500001 0.25 0.375 0.35000002 0.22499999 0.25 0.375 0.40000001
		 0.175 0.25 0.375 0.44999999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -0.5 46.773697 -60.188248 
		0.5 46.773697 -60.188248 -0.5 36.129871 -60.188248 0.5 36.129871 -60.188248 -0.5 
		36.129871 -65.112976 0.5 36.129871 -65.112976 -0.5 46.773697 -65.112976 0.5 46.773697 
		-65.112976 0.5 36.129868 -61.173195 0.5 36.129871 -62.158138 0.5 36.129871 -63.143085 
		0.5 36.129868 -64.128029 -0.5 36.129868 -61.173195 -0.5 36.129871 -62.158138 -0.5 
		36.129871 -63.143085 -0.5 36.129868 -64.128029;
	setAttr -s 16 ".vt[0:15]"  -0.5 -10.80659771 0.5 0.5 -10.80659771 0.5
		 -0.5 1 0.5 0.5 1 0.5 -0.5 1 -0.18682271 0.5 1 -0.18682271 -0.5 -10.80659771 -0.18682271
		 0.5 -10.80659771 -0.18682271 0.5 1.000001907349 0.36263546 0.5 1 0.22527093 0.5 1 0.087906353
		 0.5 1.000001907349 -0.049458176 -0.5 1.000001907349 0.36263546 -0.5 1 0.22527093
		 -0.5 1 0.087906353 -0.5 1.000001907349 -0.049458176;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 12 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 9 10 0 10 11 0 11 5 0 12 13 0 13 14 0 14 15 0
		 15 4 0 11 15 1 10 14 1 9 13 1 8 12 1;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 23 -7
		mu 0 4 2 3 14 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 8 -12 -10 -16 -15 -14 -13 -8 -6
		mu 0 8 1 10 11 21 19 17 15 3
		f 8 10 4 6 16 17 18 19 8
		mu 0 8 12 0 2 22 24 26 28 13
		f 4 -21 15 -3 -20
		mu 0 4 29 20 5 4
		f 4 -22 14 20 -19
		mu 0 4 27 18 20 29
		f 4 -23 13 21 -18
		mu 0 4 25 16 18 27
		f 4 -24 12 22 -17
		mu 0 4 23 14 16 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape17" -p "Ledge116";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[1]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[4]" -type "float3" 0 0 0.31317729 ;
	setAttr ".pt[5]" -type "float3" 0 0 0.31317729 ;
	setAttr ".pt[6]" -type "float3" 0 -9.8065977 0.31317729 ;
	setAttr ".pt[7]" -type "float3" 0 -9.8065977 0.31317729 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge117";
	setAttr ".rp" -type "double3" 0 40.15425695051217 -75.742777307325895 ;
	setAttr ".sp" -type "double3" 0 40.15425695051217 -75.742777307325895 ;
createNode mesh -n "WallLedge117Shape" -p "WallLedge117";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 39.555901 -73.934097 
		0.5 39.555901 -73.934097 -0.5 40.752609 -73.934097 0.5 40.752609 -73.934097 -0.5 
		40.752609 -77.551453 0.5 40.752609 -77.551453 -0.5 39.555901 -77.551453 0.5 39.555901 
		-77.551453;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge118";
	setAttr -l on ".tx";
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 41.090494353702368 -67.707885887476621 ;
	setAttr ".sp" -type "double3" 0 41.090494353702368 -67.707885887476621 ;
createNode mesh -n "WallLedge118Shape" -p "WallLedge118";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 40.492138 -65.899208 
		0.5 40.492138 -65.899208 -0.5 41.688847 -65.899208 0.5 41.688847 -65.899208 -0.5 
		41.688847 -69.516563 0.5 41.688847 -69.516563 -0.5 40.492138 -69.516563 0.5 40.492138 
		-69.516563;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge119";
	setAttr ".rp" -type "double3" 0 43.047551612511313 -84.50821484224069 ;
	setAttr ".sp" -type "double3" 0 43.047551612511313 -84.50821484224069 ;
createNode mesh -n "WallLedge119Shape" -p "WallLedge119";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 42.449196 -82.699539 
		0.5 42.449196 -82.699539 -0.5 43.645905 -82.699539 0.5 43.645905 -82.699539 -0.5 
		43.645905 -86.316895 0.5 43.645905 -86.316895 -0.5 42.449196 -86.316895 0.5 42.449196 
		-86.316895;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge120";
	setAttr ".rp" -type "double3" 0 23.434279573441213 -49.841677967114883 ;
	setAttr ".sp" -type "double3" 0 23.434279573441213 -49.841677967114883 ;
createNode mesh -n "Ledge120Shape" -p "Ledge120";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 23.912674 -47.663399 
		0.5 23.912674 -47.663399 -0.5 22.482548 -47.663399 0.5 22.482548 -47.663399 -0.5 
		22.482548 -52.019955 0.5 22.482548 -52.019955 -0.5 23.912674 -52.019955 0.5 23.912674 
		-52.019955;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge121";
	setAttr ".rp" -type "double3" 0 41.988863478697631 -47.51656426450252 ;
	setAttr ".sp" -type "double3" 0 41.988863478697631 -47.51656426450252 ;
createNode mesh -n "Ledge121Shape" -p "Ledge121";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 42.467255 -45.338284 
		0.5 42.467255 -45.338284 -0.5 41.037132 -45.338284 0.5 41.037132 -45.338284 -0.5 
		41.037132 -49.694843 0.5 41.037132 -49.694843 -0.5 42.467255 -49.694843 0.5 42.467255 
		-49.694843;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge122";
	setAttr ".t" -type "double3" 0 68.629506447894386 -20.459473278436079 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 39.653975829009617 0 0 ;
	setAttr ".rp" -type "double3" 0 5.5330661707666691 -67.019253036270428 ;
	setAttr ".sp" -type "double3" 0 5.5330661707666691 -67.019253036270428 ;
createNode mesh -n "polySurfaceShape49" -p "Ledge122";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 5.4687796 -63.202557 
		0.5 5.4687796 -63.202557 -0.5 4.6315513 -63.202557 0.5 4.6315513 -63.202557 -0.5 
		4.6315513 -70.835953 0.5 4.6315513 -70.835953 -0.5 5.4687796 -70.835953 0.5 5.4687796 
		-70.835953;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge123";
	setAttr ".rp" -type "double3" 0 5.5330661707666691 -78.35784959087573 ;
	setAttr ".sp" -type "double3" 0 5.5330661707666691 -78.35784959087573 ;
createNode mesh -n "Ledge123Shape" -p "Ledge123";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 5.4687796 -74.541153 
		0.5 5.4687796 -74.541153 -0.5 4.6315513 -74.541153 0.5 4.6315513 -74.541153 -0.5 
		4.6315513 -82.174545 0.5 4.6315513 -82.174545 -0.5 5.4687796 -82.174545 0.5 5.4687796 
		-82.174545;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge124";
	setAttr ".rp" -type "double3" 0 12.902650643961053 -93.11002290853412 ;
	setAttr ".sp" -type "double3" 0 12.902650643961053 -93.11002290853412 ;
createNode mesh -n "WallLedge124Shape" -p "WallLedge124";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 22.413826 -92.545738 
		0.5 22.413826 -92.545738 -0.5 20.413826 -93.708511 0.5 20.413826 -93.708511 -0.5 
		3.3914745 -92.708504 0.5 3.3914745 -92.708504 -0.5 5.3914747 -91.545731 0.5 5.3914747 
		-91.545731;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge125";
	setAttr ".rp" -type "double3" 0 12.902650643961053 -88.09524608355585 ;
	setAttr ".sp" -type "double3" 0 12.902650643961053 -88.09524608355585 ;
createNode mesh -n "WallLedge125Shape" -p "WallLedge125";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 22.413826 -87.53096 
		0.5 22.413826 -87.53096 -0.5 20.413826 -88.693733 0.5 20.413826 -88.693733 -0.5 3.3914745 
		-87.693726 0.5 3.3914745 -87.693726 -0.5 5.3914747 -86.53096 0.5 5.3914747 -86.53096;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge126";
	setAttr ".rp" -type "double3" 0 21.301889338804557 -89.964144689530912 ;
	setAttr ".sp" -type "double3" 0 21.301889338804557 -89.964144689530912 ;
createNode mesh -n "Ledge126Shape" -p "Ledge126";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 21.395592 -87.933441 
		0.5 21.395592 -87.933441 -0.5 20.385756 -87.933441 0.5 20.385756 -87.933441 -0.5 
		20.385756 -91.99485 0.5 20.385756 -91.99485 -0.5 21.395592 -91.99485 0.5 21.395592 
		-91.99485;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge127";
	setAttr ".rp" -type "double3" 0 5.3378132596029388 -89.964144689530912 ;
	setAttr ".sp" -type "double3" 0 5.3378132596029388 -89.964144689530912 ;
createNode mesh -n "Ledge127Shape" -p "Ledge127";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 5.4315157 -87.933441 
		0.5 5.4315157 -87.933441 -0.5 4.4216785 -87.933441 0.5 4.4216785 -87.933441 -0.5 
		4.4216785 -91.99485 0.5 4.4216785 -91.99485 -0.5 5.4315157 -91.99485 0.5 5.4315157 
		-91.99485;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge128";
	setAttr ".t" -type "double3" 0 25.744979368587323 -79.079638434109441 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr ".rp" -type "double3" 0 -5.5982200881057514e-15 0 ;
	setAttr ".sp" -type "double3" 0 -5.6843418860808015e-14 0 ;
	setAttr ".spt" -type "double3" 0 5.1245198772702253e-14 0 ;
createNode mesh -n "LedgeShape128" -p "Ledge128";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.30000001 0.375 0.30000001 0.375 0.5 0.625 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.82499999 0.25 0.77500004 0.25 0.72500002
		 0.25 0.67500001 0.25 0.125 0 0.32500002 0.25 0.27500001 0.25 0.22499999 0.25 0.175
		 0.25 0.125 0.25 0.375 0.44999999 0.625 0.44999999 0.375 0.40000001 0.625 0.40000001
		 0.625 0.35000002 0.375 0.35000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.5 -10.80656433 0.5 0.5 -10.80656433 0.5
		 -0.5 1 0.5 0.5 1 0.5 -0.5 1 -0.18682218 0.5 1 -0.18682218 -0.5 -10.80656433 -0.18682218
		 0.5 -10.80656433 -0.18682218 0.5 1.000061035156 0.36263561 0.5 1 0.22527099 0.5 1 0.087906361
		 0.5 1.000061035156 -0.049458265 -0.5 1.000061035156 0.36263561 -0.5 1 0.22527099
		 -0.5 1 0.087906361 -0.5 1.000061035156 -0.049458265;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 12 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 9 10 0 10 11 0 11 5 0 12 13 0 13 14 0 14 15 0
		 15 4 0 11 15 1 10 14 0 9 13 0 8 12 1;
	setAttr -s 9 -ch 44 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 23 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 6 7 8 9
		f 4 3 11 -1 -11
		mu 0 4 9 8 10 11
		f 8 -12 -10 -16 -15 -14 -13 -8 -6
		mu 0 8 1 12 13 14 15 16 17 2
		f 8 10 4 6 16 17 18 19 8
		mu 0 8 18 0 3 19 20 21 22 23
		f 4 -21 15 -3 -20
		mu 0 4 24 25 7 6
		f 4 -22 14 20 -19
		mu 0 4 26 27 25 24
		f 4 -24 12 22 -17
		mu 0 4 5 4 28 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface15";
	setAttr ".t" -type "double3" 0 25.744979368587323 -79.079638434109441 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr ".rp" -type "double3" 0 -5.5982200881057514e-15 0 ;
	setAttr ".sp" -type "double3" 0 -5.6843418860808015e-14 0 ;
	setAttr ".spt" -type "double3" 0 5.1245198772702253e-14 0 ;
createNode mesh -n "polySurfaceShape30" -p "polySurface15";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.35000002
		 0.625 0.35000002 0.625 0.40000001 0.375 0.40000001 0.375 0.35000002 0.625 0.35000002
		 0.625 0.40000001 0.375 0.40000001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  0.5 26.78833008 0.22527099 -0.5 26.78833008 0.22527099
		 0.5 26.78833008 0.087906361 -0.5 26.78833008 0.087906361 -0.5 1 0.22527099 0.5 1 0.22527099
		 0.5 1 0.087906361 -0.5 1 0.087906361;
	setAttr -s 12 ".ed[0:11]"  5 0 0 4 1 0 0 1 0 6 2 0 0 2 0 7 3 0 2 3 0
		 1 3 0 5 4 0 5 6 0 6 7 0 4 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -3 4 6 -8
		mu 0 4 0 1 2 3
		f 4 -9 0 2 -2
		mu 0 4 4 5 1 0
		f 4 9 3 -5 -1
		mu 0 4 5 6 2 1
		f 4 10 5 -7 -4
		mu 0 4 6 7 3 2
		f 4 -12 1 7 -6
		mu 0 4 7 4 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge129";
createNode mesh -n "LedgeShape129" -p "Ledge129";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1 16.48817444 -72.27477264 -1 16.48817444 -72.27477264
		 1 19.09677887 -70.59402466 -1 19.09677887 -70.59402466 1 19.12210655 -72.23409271
		 -1 19.12210655 -72.23409271 -1 16.46283913 -70.63470459 1 16.46283913 -70.63470459;
	setAttr -s 12 ".ed[0:11]"  7 0 0 6 1 0 0 1 0 7 2 0 6 3 0 2 3 0 0 4 0
		 2 4 0 1 5 0 4 5 0 3 5 0 7 6 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -6 7 9 -11
		mu 0 4 0 1 2 3
		f 4 -12 3 5 -5
		mu 0 4 4 5 1 0
		f 4 0 6 -8 -4
		mu 0 4 5 6 2 1
		f 4 2 8 -10 -7
		mu 0 4 6 7 3 2
		f 4 -2 4 10 -9
		mu 0 4 7 4 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface13";
createNode mesh -n "polySurfaceShape28" -p "polySurface13";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.625 0.5 0.625 0.75
		 0.625 0.75 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.375 0.75 0.375 0.75
		 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0.5 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.5 0.375 0.5 0.625 0.75 0.625 0.75 0.375
		 0.75 0.375 0.75 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  1 15.66425133 -77.19330597 -1 15.66425133 -77.19330597
		 1 16.51349068 -73.9148407 -1 16.51349068 -73.9148407 1 16.43748665 -68.99463654 1 15.6877327 -69.53831482
		 1 16.5641613 -77.19497681 1 16.5388298 -75.55490875 1 16.48817444 -72.27477264 1 16.46283913 -70.63470459
		 -1 15.6877327 -69.53831482 -1 16.43748665 -68.99463654 -1 16.46283913 -70.63470459
		 -1 16.48817444 -72.27477264 -1 16.5388298 -75.55490875 -1 16.5641613 -77.19497681
		 -1 4.90765667 -54.6719017 1 4.90765667 -54.6719017 -1 5.65742683 -54.12820816 1 5.65742683 -54.12820816
		 -1 16.43748474 -68.99463654 1 16.43748474 -68.99463654 -1 15.6877327 -69.53831482
		 1 15.6877327 -69.53831482 -1 16.43748474 -68.99463654 1 16.43748474 -68.99463654
		 1 15.6877327 -69.53831482 -1 15.6877327 -69.53831482 -1 16.5641613 -77.19497681 1 16.5641613 -77.19497681
		 1 16.46283913 -70.63470459 1 16.5388298 -75.55490875 -1 16.46283913 -70.63470459
		 -1 16.5388298 -75.55490875;
	setAttr -s 44 ".ed[0:43]"  5 0 0 6 0 0 10 1 0 1 0 0 15 1 0 8 2 0 2 7 0
		 13 3 0 3 14 0 2 3 1 4 5 0 7 6 0 9 8 0 4 9 0 10 5 0 11 10 0 11 12 0 12 13 0 14 15 0
		 7 14 0 8 13 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 20 22 0 21 23 0 20 24 0
		 21 25 0 24 25 0 23 26 0 25 26 0 22 27 0 27 26 0 24 27 0 24 32 0 25 30 0 28 29 0 31 29 0
		 33 28 0 31 33 0 30 32 0;
	setAttr -s 12 -ch 56 ".fc[0:11]" -type "polyFaces" 
		f 8 10 0 -2 -12 -7 -6 -13 -14
		mu 0 8 0 1 2 3 4 5 6 7
		f 4 -15 2 3 -1
		mu 0 4 1 8 9 2
		f 8 -16 16 17 7 8 18 4 -3
		mu 0 8 8 10 11 12 13 14 15 9
		f 4 -10 6 19 -9
		mu 0 4 13 5 4 14
		f 4 -21 5 9 -8
		mu 0 4 12 6 5 13
		f 4 21 26 -23 -26
		mu 0 4 16 17 18 19
		f 4 23 30 -32 -30
		mu 0 4 20 21 22 23
		f 4 28 32 -34 -31
		mu 0 4 21 24 25 22
		f 4 -25 34 35 -33
		mu 0 4 24 26 27 25
		f 4 -28 29 36 -35
		mu 0 4 26 20 23 27
		f 4 31 38 43 -38
		mu 0 4 23 22 28 29
		f 4 -43 40 -40 -42
		mu 0 4 30 31 32 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge133";
createNode mesh -n "LedgeShape133" -p "Ledge133";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge131";
createNode mesh -n "LedgeShape131" -p "Ledge131";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge130";
createNode mesh -n "LedgeShape130" -p "Ledge130";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge24";
createNode mesh -n "LedgeShape24" -p "Ledge24";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge132";
createNode mesh -n "LedgeShape132" -p "Ledge132";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge26";
createNode mesh -n "LedgeShape26" -p "Ledge26";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform1";
createNode mesh -n "Ledge83Shape" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 114 ".uvst[0].uvsp[0:113]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.33333331 0.70833331 0.25 0.625 0.41666669 0.79166669
		 0.25 0.29166666 0.25 0.375 0.33333331 0.20833333 0.25 0.375 0.41666669 0.375 0.33333331
		 0.625 0.33333331 0.625 0.41666669 0.375 0.41666669 0.375 0.375 0.625 0.375 0.375
		 0.375 0.625 0.375 0.625 0.41666669 0.375 0.41666669 0.375 0.39583334 0.625 0.39583334
		 0.375 0.39583334 0.625 0.39583334 0.625 0.41666669 0.375 0.41666669 0.375 0.40277776
		 0.375 0.40972221 0.625 0.40277776 0.625 0.40972221 0.375 0.40277776 0.625 0.40277776
		 0.625 0.40972221 0.375 0.40972221 0.375 0.40972221 0.375 0.40972221 0.375 0.40972221
		 0.375 0.40972221 0.375 0.40972221 0.625 0.40972221 0.625 0.40972221 0.625 0.40972221
		 0.625 0.40972221 0.625 0.40972221 0.375 0.40277773 0.375 0.40277773 0.375 0.40277776
		 0.375 0.40277773 0.375 0.40277776 0.625 0.40277773 0.625 0.40277773 0.625 0.40277776
		 0.625 0.40277773 0.625 0.40277776 0.625 0.40972221 0.375 0.40972221 0.375 0.40972221
		 0.625 0.40972221 0.625 0.40972221 0.375 0.40972221 0.375 0.40972221 0.625 0.40972221
		 0.625 0.40972221 0.375 0.40972221 0.375 0.40972221 0.625 0.40972221 0.375 0.40277776
		 0.625 0.40277776 0.625 0.40277776 0.375 0.40277776 0.375 0.40277776 0.625 0.40277776
		 0.625 0.40277773 0.375 0.40277773 0.375 0.40277773 0.625 0.40277773 0.625 0.40277773
		 0.375 0.40277773 0.625 0.40972221 0.375 0.40972221 0.375 0.40972221 0.625 0.40972221
		 0.625 0.40972221 0.375 0.40972221 0.375 0.40972221 0.625 0.40972221 0.625 0.40972221
		 0.375 0.40972221 0.375 0.40972221 0.625 0.40972221 0.375 0.40277776 0.625 0.40277776
		 0.625 0.40277776 0.375 0.40277776 0.375 0.40277776 0.625 0.40277776 0.625 0.40277773
		 0.375 0.40277773 0.375 0.40277773 0.625 0.40277773 0.625 0.40277773 0.375 0.40277773;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 104 ".vt[0:103]"  -1 -0.16504574 -21.11912346 1 -0.16504574 -21.11912346
		 -1 0.90808618 -21.11912346 1 0.90808618 -21.11912346 -1 0.76109719 -32.22587967 1 0.76109719 -32.22587967
		 -1 -0.16504574 -32.22587967 1 -0.16504574 -32.22587967 1 0.91039908 -21.80322647
		 1 1.79943752 -31.24721718 -1 0.91039908 -21.80322647 -1 1.79943752 -31.24721718 1 2.089794159 -21.80419922
		 -1 2.089794159 -21.80419922 1 2.089794159 -31.24721718 -1 2.089794159 -31.24721718
		 -1 2.089794159 -22.67020988 1 2.089794159 -22.67020988 1 3.98405075 -22.67020988
		 -1 3.98405075 -22.67020988 1 3.98405075 -31.24721718 -1 3.98405075 -31.24721718 -1 3.98405075 -23.96652222
		 1 3.98405075 -23.96652222 1 5.34381485 -23.96652222 -1 5.34381485 -23.96652222 1 5.34381485 -31.24721718
		 -1 5.34381485 -31.24721718 -1 5.34381485 -26.71086121 -1 5.34381485 -29.8118248 1 5.34381485 -26.71086121
		 1 5.34381485 -29.8118248 1 18.59638977 -26.71086121 -1 18.59638977 -26.71086121 1 18.59638977 -29.8118248
		 -1 18.59638977 -29.8118248 -1 8.21442413 -29.8118248 -1 9.6832428 -29.8118248 -1 12.78538513 -29.8118248
		 -1 14.49632263 -29.8118248 -1 17.10314941 -29.8118248 1 8.21442413 -29.8118248 1 9.6832428 -29.8118248
		 1 12.78538513 -29.8118248 1 14.49632263 -29.8118248 1 17.10314941 -29.8118248 -1 8.21442413 -26.71086121
		 -1 9.6832428 -26.71086121 -1 12.78538513 -26.71086121 -1 14.49632263 -26.71086121
		 -1 17.10314941 -26.71086121 1 8.21442413 -26.71086121 1 9.6832428 -26.71086121 1 12.78538513 -26.71086121
		 1 14.49632263 -26.71086121 1 17.10314941 -26.71086121 -1 17.10314941 -31.086330414
		 1 17.10314941 -31.086330414 -1 18.59638977 -31.086330414 1 18.59638977 -31.086330414
		 -1 12.78538513 -31.086330414 1 12.78538513 -31.086330414 -1 14.49632263 -31.086330414
		 1 14.49632263 -31.086330414 -1 8.21442413 -31.086330414 1 8.21442413 -31.086330414
		 -1 9.6832428 -31.086330414 1 9.6832428 -31.086330414 1 17.10314941 -25.43635559 -1 17.10314941 -25.43635559
		 1 18.59638977 -25.43635559 -1 18.59638977 -25.43635559 1 12.78538513 -25.43635559
		 -1 12.78538513 -25.43635559 1 14.49632263 -25.43635559 -1 14.49632263 -25.43635559
		 1 8.21442413 -25.43635559 -1 8.21442413 -25.43635559 1 9.6832428 -25.43635559 -1 9.6832428 -25.43635559
		 1 17.10314941 -29.8118248 -1 17.10314941 -29.8118248 -1 18.59638977 -29.8118248 1 18.59638977 -29.8118248
		 1 12.78538513 -29.8118248 -1 12.78538513 -29.8118248 -1 14.49632263 -29.8118248 1 14.49632263 -29.8118248
		 1 8.21442413 -29.8118248 -1 8.21442413 -29.8118248 -1 9.6832428 -29.8118248 1 9.6832428 -29.8118248
		 -1 17.10314941 -26.71086121 1 17.10314941 -26.71086121 1 18.59638977 -26.71086121
		 -1 18.59638977 -26.71086121 -1 12.78538513 -26.71086121 1 12.78538513 -26.71086121
		 1 14.49632263 -26.71086121 -1 14.49632263 -26.71086121 -1 8.21442413 -26.71086121
		 1 8.21442413 -26.71086121 1 9.6832428 -26.71086121 -1 9.6832428 -26.71086121;
	setAttr -s 164 ".ed[0:163]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 10 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 9 5 0 10 11 0 11 4 0 9 11 0 8 10 0 8 12 0 10 13 0
		 12 13 0 9 14 0 12 17 0 11 15 0 14 15 1 13 16 0 16 15 1 17 14 1 17 16 0 17 18 0 16 19 0
		 18 19 0 14 20 0 18 23 0 15 21 0 20 21 1 19 22 0 22 21 1 23 20 1 23 22 0 23 24 0 22 25 0
		 24 25 0 20 26 0 24 30 0 21 27 0 26 27 0 25 28 0 28 29 1 29 27 0 30 31 1 31 26 0 31 29 0
		 30 28 0 30 51 0 28 46 0 32 33 0 31 41 0 32 34 0 29 36 0 34 35 0 33 35 0 36 37 0 37 38 0
		 38 39 0 39 40 0 40 35 0 41 42 0 42 43 0 43 44 0 44 45 0 45 34 0 46 47 0 47 48 0 48 49 0
		 49 50 0 50 33 0 51 52 0 52 53 0 53 54 0 54 55 0 55 32 0 40 45 0 39 44 0 38 43 0 37 42 0
		 36 41 0 55 50 0 54 49 0 53 48 0 52 47 0 51 46 0 81 56 0 80 57 0 56 57 0 82 58 0 56 58 0
		 83 59 0 59 58 0 57 59 0 85 60 0 84 61 0 60 61 0 86 62 0 60 62 0 87 63 0 62 63 0 61 63 0
		 89 64 0 88 65 0 64 65 0 90 66 0 64 66 0 91 67 0 66 67 0 65 67 0 93 68 0 92 69 0 68 69 0
		 94 70 0 68 70 0 95 71 0 70 71 0 69 71 0 97 72 0 96 73 0 72 73 0 98 74 0 72 74 0 99 75 0
		 74 75 0 73 75 0 101 76 0 100 77 0 76 77 0 102 78 0 76 78 0 103 79 0 78 79 0 77 79 0
		 81 80 0 81 82 0 83 82 0 80 83 0 85 84 0 85 86 0 86 87 0 84 87 0 89 88 0 89 90 0 90 91 0
		 88 91 0 93 92 0 93 94 0 94 95 0 92 95 0 97 96 0 97 98 0 98 99 0 96 99 0 101 100 0
		 101 102 0 102 103 0 100 103 0;
	setAttr -s 62 -ch 280 ".fc[0:61]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 17 -7
		mu 0 4 2 3 14 19
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 6 -12 -10 -14 -13 -8 -6
		mu 0 6 1 10 11 17 15 3
		f 6 10 4 6 14 15 8
		mu 0 6 12 0 2 18 20 13
		f 4 -17 13 -3 -16
		mu 0 4 21 16 5 4
		f 4 -21 22 28 -26
		mu 0 4 22 23 27 26
		f 4 -18 18 20 -20
		mu 0 4 19 14 23 22
		f 5 12 21 -28 -23 -19
		mu 0 5 14 16 24 27 23
		f 4 16 23 -25 -22
		mu 0 4 16 21 25 24
		f 5 -15 19 25 26 -24
		mu 0 5 21 19 22 26 25
		f 4 -32 33 39 -37
		mu 0 4 28 29 33 32
		f 4 -29 29 31 -31
		mu 0 4 26 27 29 28
		f 5 27 32 -39 -34 -30
		mu 0 5 27 24 30 33 29
		f 4 24 34 -36 -33
		mu 0 4 24 25 31 30
		f 5 -27 30 36 37 -35
		mu 0 5 25 26 28 32 31
		f 4 -43 44 53 -48
		mu 0 4 34 35 40 38
		f 4 -40 40 42 -42
		mu 0 4 32 33 35 34
		f 6 38 43 -52 -51 -45 -41
		mu 0 6 33 30 36 41 40 35
		f 4 35 45 -47 -44
		mu 0 4 30 31 37 36
		f 6 -38 41 47 48 49 -46
		mu 0 6 31 32 34 38 39 37
		f 4 -53 51 46 -50
		mu 0 4 39 41 36 37
		f 4 -57 58 60 -62
		mu 0 4 42 43 44 45
		f 4 -54 54 91 -56
		mu 0 4 38 40 61 56
		f 14 50 57 67 68 69 70 71 -59 -82 -81 -80 -79 -78 -55
		mu 0 14 40 41 51 52 53 54 55 44 43 65 64 63 62 61
		f 4 52 59 86 -58
		mu 0 4 41 39 46 51
		f 14 -49 55 72 73 74 75 76 61 -67 -66 -65 -64 -63 -60
		mu 0 14 39 38 56 57 58 59 60 42 45 50 49 48 47 46
		f 4 -95 96 -99 -100
		mu 0 4 66 67 68 69
		f 4 -84 65 82 -71
		mu 0 4 54 49 50 55
		f 4 -103 104 106 -108
		mu 0 4 70 71 72 73
		f 4 -86 63 84 -69
		mu 0 4 52 47 48 53
		f 4 -111 112 114 -116
		mu 0 4 74 75 76 77
		f 4 -119 120 122 -124
		mu 0 4 78 79 80 81
		f 4 -89 80 87 -76
		mu 0 4 59 64 65 60
		f 4 -127 128 130 -132
		mu 0 4 82 83 84 85
		f 4 -91 78 89 -74
		mu 0 4 57 62 63 58
		f 4 -135 136 138 -140
		mu 0 4 86 87 88 89
		f 4 -141 92 94 -94
		mu 0 4 90 91 67 66
		f 4 141 95 -97 -93
		mu 0 4 91 92 68 67
		f 4 -143 97 98 -96
		mu 0 4 92 93 69 68
		f 4 -144 93 99 -98
		mu 0 4 93 90 66 69
		f 4 -145 100 102 -102
		mu 0 4 94 95 71 70
		f 4 145 103 -105 -101
		mu 0 4 95 96 72 71
		f 4 146 105 -107 -104
		mu 0 4 96 97 73 72
		f 4 -148 101 107 -106
		mu 0 4 97 94 70 73
		f 4 -149 108 110 -110
		mu 0 4 98 99 75 74
		f 4 149 111 -113 -109
		mu 0 4 99 100 76 75
		f 4 150 113 -115 -112
		mu 0 4 100 101 77 76
		f 4 -152 109 115 -114
		mu 0 4 101 98 74 77
		f 4 -153 116 118 -118
		mu 0 4 102 103 79 78
		f 4 153 119 -121 -117
		mu 0 4 103 104 80 79
		f 4 154 121 -123 -120
		mu 0 4 104 105 81 80
		f 4 -156 117 123 -122
		mu 0 4 105 102 78 81
		f 4 -157 124 126 -126
		mu 0 4 106 107 83 82
		f 4 157 127 -129 -125
		mu 0 4 107 108 84 83
		f 4 158 129 -131 -128
		mu 0 4 108 109 85 84
		f 4 -160 125 131 -130
		mu 0 4 109 106 82 85
		f 4 -161 132 134 -134
		mu 0 4 110 111 87 86
		f 4 161 135 -137 -133
		mu 0 4 111 112 88 87
		f 4 162 137 -139 -136
		mu 0 4 112 113 89 88
		f 4 -164 133 139 -138
		mu 0 4 113 110 86 89;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge126";
	setAttr ".t" -type "double3" 0 31.584331184924622 7.0461878926358281 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 1.3206026033321361 1.3206026033321361 1.3206026033321361 ;
	setAttr ".rp" -type "double3" 0 43.047551612511313 -84.50821484224069 ;
	setAttr ".sp" -type "double3" 0 43.047551612511313 -84.50821484224069 ;
createNode mesh -n "WallLedge126Shape" -p "WallLedge126";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 42.449196 -82.699539 
		0.5 42.449196 -82.699539 -0.5 43.645905 -82.699539 0.5 43.645905 -82.699539 -0.5 
		43.645905 -86.316895 0.5 43.645905 -86.316895 -0.5 42.449196 -86.316895 0.5 42.449196 
		-86.316895;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge135";
	setAttr ".t" -type "double3" 0 10.269872133906084 16.364401543851201 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".rp" -type "double3" 0 46.338356018066406 -73.836196899414062 ;
	setAttr ".sp" -type "double3" 0 46.338356018066406 -73.836196899414062 ;
createNode mesh -n "polySurfaceShape45" -p "Ledge135";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 46.843273 -65.340065 
		0.5 46.843273 -65.340065 -0.5 45.833439 -65.340065 0.5 45.833439 -65.340065 -0.5 
		45.833439 -82.332329 0.5 45.833439 -82.332329 -0.5 46.843273 -82.332329 0.5 46.843273 
		-82.332329;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform3";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode mesh -n "Ledge135Shape" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Wall";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "WallShape" -p "Wall";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Wall1";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "WallShape1" -p "Wall1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 0 -1.6053433 0 0 -1.6053433 
		0 0 -1.6053433 0 0 -1.6053433;
createNode transform -n "transform4";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "polySurfaceShape48" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface27";
createNode mesh -n "polySurfaceShape43" -p "polySurface27";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[2]" -type "float3" 2.220446e-16 0 -1.3803959 ;
	setAttr ".pt[3]" -type "float3" -2.220446e-16 0 -1.3803959 ;
	setAttr ".pt[5]" -type "float3" 0 0 -2.3588812 ;
	setAttr ".pt[7]" -type "float3" 0 0 -2.3588812 ;
	setAttr ".pt[10]" -type "float3" 0 0 -2.3588812 ;
	setAttr ".pt[11]" -type "float3" 0 0 -2.3588812 ;
	setAttr ".pt[16]" -type "float3" 0 0 -2.3588812 ;
	setAttr ".pt[17]" -type "float3" 0 0 -2.3588812 ;
	setAttr ".pt[22]" -type "float3" -2.220446e-16 0 -1.3803959 ;
	setAttr ".pt[23]" -type "float3" 2.220446e-16 0 -1.3803959 ;
	setAttr ".pt[26]" -type "float3" 0 0 -2.3588812 ;
	setAttr ".pt[29]" -type "float3" 0 0 -2.3588812 ;
createNode transform -n "polySurface28";
createNode mesh -n "polySurfaceShape44" -p "polySurface28";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[6:7]" -type "float3"  0 0 -2.357785 0 0 -2.357785;
createNode transform -n "transform2";
createNode mesh -n "polySurfaceShape36" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge136";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "LedgeShape136" -p "Ledge136";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Wall2";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "WallShape2" -p "Wall2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform5";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "polySurfaceShape46" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "WallLedge129";
	setAttr ".t" -type "double3" -0.028530798647636857 22.795057873254187 1.6571904792969647 ;
	setAttr ".rp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
	setAttr ".sp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
createNode mesh -n "WallLedge129Shape" -p "WallLedge129";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 35.113277 -46.518494 
		0.5 35.113277 -46.518494 -0.5 37.648632 -46.518494 0.5 37.648632 -46.518494 -0.5 
		37.648632 -54.646046 0.5 37.648632 -54.646046 -0.5 35.113277 -54.646046 0.5 35.113277 
		-54.646046;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge";
	setAttr ".t" -type "double3" -0.028530798647636857 26.938272945031535 2.2106836642940451 ;
	setAttr ".rp" -type "double3" 0 41.988863478697631 -47.51656426450252 ;
	setAttr ".sp" -type "double3" 0 41.988863478697631 -47.51656426450252 ;
createNode mesh -n "WallLedgeShape" -p "WallLedge";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 38.484955 -45.338284 
		0.5 38.484955 -45.338284 -0.5 41.405674 -45.338284 0.5 41.405674 -45.338284 -0.5 
		41.405674 -49.694843 0.5 41.405674 -49.694843 -0.5 38.484955 -49.694843 0.5 38.484955 
		-49.694843;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge140";
	setAttr ".t" -type "double3" -0.028530798647636857 25.175293612017704 -7.5475914424694324 ;
	setAttr ".rp" -type "double3" 0 41.988863478697631 -47.51656426450252 ;
	setAttr ".sp" -type "double3" 0 41.988863478697631 -47.51656426450252 ;
createNode mesh -n "Ledge140Shape" -p "Ledge140";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 42.467255 -45.338284 
		0.5 42.467255 -45.338284 -0.5 41.037132 -45.338284 0.5 41.037132 -45.338284 -0.5 
		41.037132 -49.694843 0.5 41.037132 -49.694843 -0.5 42.467255 -49.694843 0.5 42.467255 
		-49.694843;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge141";
	setAttr ".t" -type "double3" 0.0018339326065728301 22.109985529921374 16.110698716836815 ;
	setAttr ".rp" -type "double3" 0 52.385831832885742 -73.836196899414062 ;
	setAttr ".sp" -type "double3" 0 52.385831832885742 -73.836196899414062 ;
createNode mesh -n "Ledge141Shape" -p "Ledge141";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 51.104206 -73.294296 
		0.5 51.104206 -73.294296 -0.5 54.493851 -73.294296 0.5 54.493851 -73.294296 -0.5 
		54.493851 -74.378098 0.5 54.493851 -74.378098 -0.5 51.104206 -74.378098 0.5 51.104206 
		-74.378098;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge142";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "LedgeShape142" -p "Ledge142";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge143";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "LedgeShape143" -p "Ledge143";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform7";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "LedgeShape137" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge144";
	setAttr ".t" -type "double3" 0.0018339326065728301 22.109985529921374 18.56047422802714 ;
	setAttr ".rp" -type "double3" 0 50.599288940429688 -73.836193084716797 ;
	setAttr ".sp" -type "double3" 0 50.599288940429688 -73.836193084716797 ;
createNode mesh -n "Ledge144Shape" -p "Ledge144";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 51.104206 -66.513535 
		0.5 51.104206 -66.513535 -0.5 50.094372 -66.513535 0.5 50.094372 -66.513535 -0.5 
		50.094372 -81.158852 0.5 50.094372 -81.158852 -0.5 51.104206 -81.158852 0.5 51.104206 
		-81.158852;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge146";
	setAttr ".t" -type "double3" 0 27.134288565478016 -39.410695381425555 ;
	setAttr ".r" -type "double3" 39.653975829009617 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "LedgeShape146" -p "Ledge146";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge145";
	setAttr ".t" -type "double3" 0 27.134288565478016 -39.410695381425555 ;
	setAttr ".r" -type "double3" 39.653975829009617 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "LedgeShape145" -p "Ledge145";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform8";
	setAttr ".t" -type "double3" 0 27.134288565478016 -39.410695381425555 ;
	setAttr ".r" -type "double3" 39.653975829009617 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "Ledge122Shape" -p "transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "Wall3";
	setAttr ".t" -type "double3" 0 -29.782339473899953 50.439387328082915 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "WallShape3" -p "Wall3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform9";
	setAttr ".t" -type "double3" 0 -29.782339473899953 50.439387328082915 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "WallLedge128Shape" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 44 ".vt[0:43]"  -1 35.27500534 -82.1995163 1 35.27500534 -82.1995163
		 -1 50.82007599 -82.1995163 1 50.82007599 -82.1995163 -1 50.82007599 -86.81689453
		 1 50.82007599 -86.81689453 -1 35.27500534 -86.81689453 1 35.27500534 -86.81689453
		 1 49.01159668 -82.1995163 -1 49.01159668 -82.1995163 -1 49.01159668 -86.81689453
		 1 49.01159668 -86.81689453 1 48.39294815 -82.1995163 -1 48.39294815 -82.1995163 -1 48.39294815 -86.81689453
		 1 48.39294815 -86.81689453 1 46.556427 -82.1995163 -1 46.556427 -82.1995163 -1 46.556427 -86.81689453
		 1 46.556427 -86.81689453 1 45.64718628 -82.1995163 -1 45.64718628 -82.1995163 -1 45.64718628 -86.81689453
		 1 45.64718628 -86.81689453 1 49.01159668 -86.049530029 1 48.39294815 -83.76360321
		 1 46.556427 -83.76360321 1 45.64718628 -86.049530029 1 35.27500534 -86.049530029
		 -1 35.27500534 -86.049530029 -1 45.64718628 -86.049530029 -1 46.556427 -83.76360321
		 -1 48.39294815 -83.76360321 -1 49.01159668 -86.049530029 -1 50.82007599 -86.049530029
		 1 50.82007599 -86.049530029 -1 46.556427 -82.1995163 1 46.556427 -82.1995163 1 48.39294815 -82.1995163
		 -1 48.39294815 -82.1995163 1 46.556427 -83.76360321 1 48.39294815 -83.76360321 -1 46.556427 -83.76360321
		 -1 48.39294815 -83.76360321;
	setAttr -s 76 ".ed[0:75]"  0 1 0 2 3 0 4 5 0 6 7 0 0 21 0 1 20 0 2 34 0
		 3 35 0 4 10 0 5 11 0 6 29 0 7 28 0 8 3 0 9 2 0 8 9 0 10 14 0 9 33 0 11 15 0 10 11 0
		 11 24 0 12 8 0 13 9 0 12 13 0 13 32 0 14 15 0 15 25 0 37 38 0 36 39 0 16 17 0 18 22 0
		 17 31 0 19 23 0 18 19 0 19 26 0 20 16 0 21 17 0 20 21 0 22 6 0 21 30 0 23 7 0 22 23 0
		 23 27 0 24 8 0 25 12 0 24 25 0 26 16 0 41 40 0 27 20 0 26 27 0 28 1 0 27 28 0 29 0 0
		 28 29 0 30 22 0 29 30 0 31 18 0 30 31 0 32 14 0 42 43 0 33 10 0 32 33 0 34 4 0 33 34 0
		 35 5 0 34 35 0 35 24 0 26 31 0 25 32 0 37 36 0 38 39 0 40 37 0 41 38 0 36 42 0 39 43 0
		 40 42 0 41 43 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 5 36 -5
		mu 0 4 0 1 32 33
		f 4 64 63 -3 -62
		mu 0 4 29 25 5 4
		f 4 40 39 -4 -38
		mu 0 4 35 36 7 6
		f 4 3 11 52 -11
		mu 0 4 6 7 42 45
		f 4 -12 -40 41 50
		mu 0 4 43 10 37 41
		f 4 10 54 53 37
		mu 0 4 12 44 46 34
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -60 62 61 8
		mu 0 4 16 49 31 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 65 -20 -10 -64
		mu 0 4 23 38 19 11
		f 4 -23 20 14 -22
		mu 0 4 21 20 14 15
		f 4 -58 60 59 15
		mu 0 4 22 48 49 16
		f 4 18 17 -25 -16
		mu 0 4 17 18 24 22
		f 4 -26 -18 19 44
		mu 0 4 39 24 19 38
		f 4 -69 26 69 -28
		mu 0 4 50 51 52 53
		f 4 -37 34 28 -36
		mu 0 4 33 32 26 27
		f 4 -54 56 55 29
		mu 0 4 34 46 47 28
		f 4 32 31 -41 -30
		mu 0 4 28 30 36 35
		f 4 -42 -32 33 48
		mu 0 4 41 37 30 40
		f 4 -44 -45 42 -21
		mu 0 4 20 39 38 14
		f 4 -71 -47 71 -27
		mu 0 4 51 54 55 52
		f 4 -48 -49 45 -35
		mu 0 4 32 41 40 26
		f 4 -50 -51 47 -6
		mu 0 4 1 43 41 32
		f 4 -53 49 -1 -52
		mu 0 4 45 42 9 8
		f 4 -55 51 4 38
		mu 0 4 46 44 0 33
		f 4 -57 -39 35 30
		mu 0 4 47 46 33 27
		f 4 -59 -73 27 73
		mu 0 4 56 57 50 53
		f 4 -61 -24 21 16
		mu 0 4 49 48 21 15
		f 4 -63 -17 13 6
		mu 0 4 31 49 15 2
		f 4 1 7 -65 -7
		mu 0 4 2 3 25 29
		f 4 -43 -66 -8 -13
		mu 0 4 14 38 23 3
		f 4 46 74 58 -76
		mu 0 4 55 54 57 56
		f 4 25 67 57 24
		mu 0 4 24 39 48 22
		f 4 -34 -33 -56 -67
		mu 0 4 40 30 28 47;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge130";
	setAttr ".t" -type "double3" 0 -29.782339473899953 50.439387328082915 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "WallLedgeShape130" -p "WallLedge130";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "WallLedge131";
	setAttr ".t" -type "double3" 0 -29.782339473899953 50.439387328082915 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "WallLedgeShape131" -p "WallLedge131";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform10";
	setAttr ".t" -type "double3" 0 -29.782339473899953 50.439387328082915 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "polySurfaceShape55" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge147";
	setAttr ".t" -type "double3" 0 28.115450144013273 -56.709812171187679 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
createNode mesh -n "LedgeShape147" -p "Ledge147";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.30000001 0.375 0.30000001 0.375 0.5 0.625 0.5 0.625 0.75
		 0.375 0.75 0.75 0 0.875 0 0.875 0.25 0.82499999 0.25 0.77500004 0.25 0.72500002 0.25
		 0.67500001 0.25 0.125 0 0.25 0 0.32500002 0.25 0.27500001 0.25 0.22499999 0.25 0.175
		 0.25 0.125 0.25 0.375 0.44999999 0.625 0.44999999 0.375 0.40000001 0.625 0.40000001
		 0.375 0.35000002 0.625 0.35000002 0.375 0.875 0.625 0.875 0.625 1 0.375 1 0.625 0.75
		 0.375 0.75 0.625 0.875 0.375 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".vt[0:21]"  -0.5 -10.80651855 0.5 0.5 -10.80651855 0.5
		 -0.5 1 0.5 0.5 1 0.5 -0.5 1 -0.18682265 0.5 1 -0.18682265 -0.5 -10.80651665 -0.18682265
		 0.5 -10.80651665 -0.18682265 0.5 1.000091552734 0.36263549 0.5 1 0.22527099 0.5 1 0.087906361
		 0.5 1.000091552734 -0.049458027 -0.5 1.000091552734 0.36263549 -0.5 1 0.22527099
		 -0.5 1 0.087906361 -0.5 1.000091552734 -0.049458027 0.5 -10.80651665 -0.12252212
		 -0.5 -10.80651665 -0.12252212 -0.5 -10.80651665 -0.18682265 0.5 -10.80651665 -0.18682265
		 0.5 -10.80651665 -0.12252212 -0.5 -10.80651665 -0.12252212;
	setAttr -s 35 ".ed[0:34]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 12 0
		 3 8 0 4 6 0 5 7 0 6 17 0 7 16 0 8 9 0 9 10 0 10 11 0 11 5 0 12 13 0 13 14 0 14 15 0
		 15 4 0 11 15 1 10 14 1 9 13 1 8 12 1 16 1 0 17 0 0 16 17 0 6 18 0 7 19 0 18 19 0
		 16 20 0 19 20 0 17 21 0 20 21 0 18 21 0;
	setAttr -s 14 -ch 66 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 23 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 6 7 8 9
		f 9 -25 -12 -10 -16 -15 -14 -13 -8 -6
		mu 0 9 1 10 11 12 13 14 15 16 2
		f 9 10 25 4 6 16 17 18 19 8
		mu 0 9 17 18 0 3 19 20 21 22 23
		f 4 -21 15 -3 -20
		mu 0 4 24 25 7 6
		f 4 -22 14 20 -19
		mu 0 4 26 27 25 24
		f 4 -23 13 21 -18
		mu 0 4 28 29 27 26
		f 4 -24 12 22 -17
		mu 0 4 5 4 29 28
		f 4 -27 24 -1 -26
		mu 0 4 30 31 32 33
		f 4 3 28 -30 -28
		mu 0 4 9 8 34 35
		f 4 11 30 -32 -29
		mu 0 4 8 31 36 34
		f 4 26 32 -34 -31
		mu 0 4 31 30 37 36
		f 4 -11 27 34 -33
		mu 0 4 30 9 35 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall4";
	setAttr ".t" -type "double3" 0 28.115450144013273 -56.709812171187679 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
createNode mesh -n "WallShape4" -p "Wall4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 0.875 0.375 0.875 0.375 0.75 0.625 0.75 0.625 0.875 0.375 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -45.53477478 -0.18682265 0.5 -45.53477478 -0.18682265
		 0.5 -45.53477478 -0.12252212 -0.5 -45.53477478 -0.12252212 -0.5 -10.80651855 -0.18682265
		 0.5 -10.80651855 -0.18682265 0.5 -10.80651855 -0.12252212 -0.5 -10.80651855 -0.12252212;
	setAttr -s 12 ".ed[0:11]"  4 0 0 5 1 0 0 1 0 6 2 0 1 2 0 7 3 0 2 3 0
		 0 3 0 4 5 0 5 6 0 6 7 0 4 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 2 4 6 -8
		mu 0 4 0 1 2 3
		f 4 8 1 -3 -1
		mu 0 4 4 5 1 0
		f 4 9 3 -5 -2
		mu 0 4 5 6 2 1
		f 4 10 5 -7 -4
		mu 0 4 6 7 3 2
		f 4 -12 0 7 -6
		mu 0 4 7 4 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface5";
	setAttr ".t" -type "double3" 0 13.441712585798228 -64.99686564276837 ;
	setAttr ".r" -type "double3" 35.946967344119528 0 0 ;
	setAttr ".s" -type "double3" 2 0.078442847501337523 26.736987705471847 ;
createNode transform -n "polySurface8" -p "polySurface5";
createNode transform -n "polySurface9" -p "polySurface8";
createNode mesh -n "polySurfaceShape24" -p "polySurface9";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.25 0.625
		 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.625 0 0.875 0 0.875
		 0.25 0.125 0 0.375 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 1 0.5 0.5 1 0.5 0.5 0.99972534 -0.18682241
		 -0.5 0.99972534 -0.18682241 -0.5 -10.80667114 -0.18682265 0.5 -10.80667114 -0.18682265
		 0.5 -10.80670166 0.49999964 -0.5 -10.80670166 0.49999964;
	setAttr -s 12 ".ed[0:11]"  0 3 0 1 2 0 4 7 0 5 6 0 0 1 0 3 2 0 4 5 0
		 7 6 0 2 5 0 6 1 0 7 0 0 3 4 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 1 2 3
		f 4 6 3 -8 -3
		mu 0 4 4 5 6 7
		f 4 -4 -9 -2 -10
		mu 0 4 8 9 10 1
		f 4 2 10 0 11
		mu 0 4 11 12 0 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge148";
	setAttr ".t" -type "double3" 0 13.441712585798228 -64.99686564276837 ;
	setAttr ".r" -type "double3" 35.946967344119528 0 0 ;
	setAttr ".s" -type "double3" 2 0.078442847501337523 26.736987705471847 ;
	setAttr ".rp" -type "double3" 0 -8.0981623161932301 -12.399313236174862 ;
	setAttr ".rpt" -type "double3" 0 8.8210538388097852 -2.392597711188313 ;
	setAttr ".sp" -type "double3" 0 -103.23646545410156 -0.46375131607055664 ;
	setAttr ".spt" -type "double3" 0 95.138303137908338 -11.935561920104304 ;
createNode mesh -n "LedgeShape148" -p "Ledge148";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -138.13693237 -0.50941253 0.5 -138.13693237 -0.50941253
		 0.5 -147.41183472 -0.48960328 -0.5 -147.41183472 -0.48960328 -0.5 -59.061096191 -0.43789911
		 0.5 -59.061096191 -0.43789911 0.5 -68.33609009 -0.41809011 -0.5 -68.33609009 -0.41809011;
	setAttr -s 12 ".ed[0:11]"  4 0 0 5 1 0 0 1 0 6 2 0 1 2 0 7 3 0 3 2 0
		 0 3 0 4 5 0 5 6 0 7 6 0 4 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 2 4 -7 -8
		mu 0 4 0 1 2 3
		f 4 8 1 -3 -1
		mu 0 4 4 5 1 0
		f 4 9 3 -5 -2
		mu 0 4 5 6 2 1
		f 4 -11 5 6 -4
		mu 0 4 6 7 3 2
		f 4 -12 0 7 -6
		mu 0 4 7 4 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks1";
	setAttr ".t" -type "double3" 83.002411691968419 77.261691980696327 -399.3449736398577 ;
	setAttr ".s" -type "double3" 0.12039022700312275 0.12039022700312275 0.12039022700312275 ;
	setAttr ".rp" -type "double3" -92.008393986455516 21.189561620873476 349.14345648451047 ;
	setAttr ".sp" -type "double3" -92.008393986455516 21.189561620873476 349.14345648451052 ;
	setAttr ".spt" -type "double3" 1.4210854715202004e-14 0 -5.6843418860808015e-14 ;
createNode transform -n "Ledge" -p "TrainTracks1";
	setAttr ".t" -type "double3" -17.540527451570835 -13.008696617515213 5.0843984153307957 ;
createNode mesh -n "LedgeShape" -p "|TrainTracks1|Ledge";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 13.040146 149.79857 0 13.040146 
		149.79857 0 -13.040146 149.79857 0 -13.040146 149.79857 0 -13.040146 0 0 -13.040146 
		0 0 13.040146 0 0 13.040146 0;
createNode transform -n "TrainTracks:group1" -p "TrainTracks1";
	setAttr ".rp" -type "double3" -18.164685898512023 14.628421596992284 10.217786280796336 ;
	setAttr ".sp" -type "double3" -18.164685898512023 14.628421596992284 10.217786280796336 ;
createNode transform -n "TrainTracks:pCube1" -p "TrainTracks:group1";
	setAttr ".t" -type "double3" 12.602802947265175 13.121879391181736 10.260061113521861 ;
createNode mesh -n "TrainTracks:pCubeShape1" -p "|TrainTracks1|TrainTracks:group1|TrainTracks:pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -10.504569 -13.419831 -0.084549755 
		-10.504569 -13.419831 -0.084549755 -10.504569 -13.419831 -0.084549755 -10.504569 
		-13.419831 -0.084549755;
createNode transform -n "TrainTracks:pCube4" -p "TrainTracks:group1";
	setAttr ".t" -type "double3" -49.042777123134435 13.121879391181736 10.260061113521861 ;
createNode mesh -n "TrainTracks:pCubeShape4" -p "|TrainTracks1|TrainTracks:group1|TrainTracks:pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-14 0 
		-7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 
		1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 
		0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 0 0 62.342239 0 0 62.336342 
		0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 -0.084549755 3.0957942 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 17.267553 -13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube5" -p "TrainTracks:group1";
	setAttr ".t" -type "double3" 12.602802947265175 13.121879391181736 272.76007226492925 ;
createNode mesh -n "TrainTracks:pCubeShape5" -p "TrainTracks:pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -10.504569 -13.419831 -0.084549755 
		-10.504569 -13.419831 -0.084549755 -10.504569 -13.419831 -0.084549755 -10.504569 
		-13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube6" -p "TrainTracks:group1";
	setAttr ".t" -type "double3" -49.042777123134435 13.121879391181736 272.76007226492925 ;
createNode mesh -n "TrainTracks:pCubeShape6" -p "TrainTracks:pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-14 0 
		-7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 
		1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 
		0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 0 0 62.342239 0 0 62.336342 
		0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 -0.084549755 3.0957942 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 17.267553 -13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:group2" -p "TrainTracks1";
	setAttr ".t" -type "double3" 0 0 82.356799824005662 ;
	setAttr ".rp" -type "double3" -18.164685898512023 14.628421596992284 10.217786280796336 ;
	setAttr ".sp" -type "double3" -18.164685898512023 14.628421596992284 10.217786280796336 ;
createNode transform -n "TrainTracks:pCube1" -p "TrainTracks:group2";
	setAttr ".t" -type "double3" 12.602802947265175 13.121879391181736 10.260061113521861 ;
createNode mesh -n "TrainTracks:pCubeShape1" -p "|TrainTracks1|TrainTracks:group2|TrainTracks:pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -10.504569 -13.419831 -0.084549755 
		-10.504569 -13.419831 -0.084549755 -10.504569 -13.419831 -0.084549755 -10.504569 
		-13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube4" -p "TrainTracks:group2";
	setAttr ".t" -type "double3" -49.042777123134435 13.121879391181736 10.260061113521861 ;
createNode mesh -n "TrainTracks:pCubeShape4" -p "|TrainTracks1|TrainTracks:group2|TrainTracks:pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-14 0 
		-7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 
		1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 
		0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 0 0 62.342239 0 0 62.336342 
		0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 -0.084549755 3.0957942 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 17.267553 -13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube7" -p "TrainTracks:group2";
	setAttr ".t" -type "double3" 12.602802947265175 13.121879391181736 272.76007226492925 ;
createNode mesh -n "TrainTracks:pCubeShape7" -p "TrainTracks:pCube7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -10.504569 -13.419831 -0.084549755 
		-10.504569 -13.419831 -0.084549755 -10.504569 -13.419831 -0.084549755 -10.504569 
		-13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube8" -p "TrainTracks:group2";
	setAttr ".t" -type "double3" -49.042777123134435 13.121879391181736 272.76007226492925 ;
createNode mesh -n "TrainTracks:pCubeShape8" -p "TrainTracks:pCube8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-14 0 
		-7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 
		1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 
		0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 0 0 62.342239 0 0 62.336342 
		0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 -0.084549755 3.0957942 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 17.267553 -13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:group3" -p "TrainTracks1";
	setAttr ".t" -type "double3" 0 0 162.83600790262261 ;
	setAttr ".rp" -type "double3" -18.164685898512023 14.628421596992284 10.217786280796336 ;
	setAttr ".sp" -type "double3" -18.164685898512023 14.628421596992284 10.217786280796336 ;
createNode transform -n "TrainTracks:pCube1" -p "TrainTracks:group3";
	setAttr ".t" -type "double3" 12.602802947265175 13.121879391181736 10.260061113521861 ;
createNode mesh -n "TrainTracks:pCubeShape1" -p "|TrainTracks1|TrainTracks:group3|TrainTracks:pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -10.504569 -13.419831 -0.084549755 
		-10.504569 -13.419831 -0.084549755 -10.504569 -13.419831 -0.084549755 -10.504569 
		-13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube4" -p "TrainTracks:group3";
	setAttr ".t" -type "double3" -49.042777123134435 13.121879391181736 10.260061113521861 ;
createNode mesh -n "TrainTracks:pCubeShape4" -p "|TrainTracks1|TrainTracks:group3|TrainTracks:pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-14 0 
		-7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 
		1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 
		0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 0 0 62.342239 0 0 62.336342 
		0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 -0.084549755 3.0957942 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 17.267553 -13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube9" -p "TrainTracks:group3";
	setAttr ".t" -type "double3" 12.602802947265175 13.121879391181736 272.76007226492925 ;
createNode mesh -n "TrainTracks:pCubeShape9" -p "TrainTracks:pCube9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -10.504569 -13.419831 -0.084549755 
		-10.504569 -13.419831 -0.084549755 -10.504569 -13.419831 -0.084549755 -10.504569 
		-13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube10" -p "TrainTracks:group3";
	setAttr ".t" -type "double3" -49.042777123134435 13.121879391181736 272.76007226492925 ;
createNode mesh -n "TrainTracks:pCubeShape10" -p "TrainTracks:pCube10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-14 0 
		-7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 
		1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 
		0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 0 0 62.342239 0 0 62.336342 
		0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 -0.084549755 3.0957942 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 17.267553 -13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube24" -p "TrainTracks:group3";
	setAttr ".t" -type "double3" 18.170751734825828 112.20870017653684 444.68809970609902 ;
	setAttr ".r" -type "double3" -32.346932443285773 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape24" -p "TrainTracks:pCube24";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -10.504569 -13.419831 -0.084549755 
		-10.504569 -13.419831 -0.084549755 -10.504569 -13.419831 -0.084549755 -10.504569 
		-13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube25" -p "TrainTracks:group3";
	setAttr ".t" -type "double3" -43.474828335573783 112.20870017653684 444.68809970609902 ;
	setAttr ".r" -type "double3" -32.346932443285773 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape25" -p "TrainTracks:pCube25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-14 0 
		-7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 
		1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 
		0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 0 0 62.342239 0 0 62.336342 
		0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 -0.084549755 3.0957942 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 17.267553 -13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube26" -p "TrainTracks:group3";
	setAttr ".t" -type "double3" -1.4827272009238897 198.02185631006571 530.73984308690956 ;
	setAttr ".r" -type "double3" -32.346932443285773 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape26" -p "TrainTracks:pCube26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -10.504569 -13.419831 -0.084549755 
		-10.504569 -13.419831 -0.084549755 -10.504569 -13.419831 -0.084549755 -10.504569 
		-13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube27" -p "TrainTracks:group3";
	setAttr ".t" -type "double3" -63.128307271323493 198.02185631006571 530.73984308690956 ;
	setAttr ".r" -type "double3" -32.346932443285773 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape27" -p "TrainTracks:pCube27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-14 0 
		-7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 
		1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 
		0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 0 0 62.342239 0 0 62.336342 
		0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 -0.084549755 3.0957942 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 17.267553 -13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube28" -p "TrainTracks:group3";
	setAttr ".t" -type "double3" 15.26532588017669 35.856650358503217 347.71381761626759 ;
	setAttr ".r" -type "double3" -28.480639384009272 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape28" -p "TrainTracks:pCube28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -10.504569 -13.419831 -0.084549755 
		-10.504569 -13.419831 -0.084549755 -10.504569 -13.419831 -0.084549755 -10.504569 
		-13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube29" -p "TrainTracks:group3";
	setAttr ".t" -type "double3" -46.380254190222921 35.856650358503217 347.71381761626759 ;
	setAttr ".r" -type "double3" -28.480639384009272 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape29" -p "TrainTracks:pCube29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-14 0 
		-7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 
		1.9539925e-14 0 -7.0858793 1.9539925e-14 0 7.0858803 1.9539925e-14 0 -7.0858793 1.9539925e-14 
		0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 0 0 62.342239 0 0 62.336342 
		0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 -0.084549755 3.0957942 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 17.267553 -13.419831 -0.084549755;
	setAttr -s 20 ".vt[0:19]"  -3.59824181 -13.12187958 3.54927921 3.59824085 -13.12187958 3.54927921
		 -3.59824181 13.12187958 3.54927921 3.59824085 13.12187958 3.54927921 -3.59824181 13.12187958 -3.54927921
		 3.59824085 13.12187958 -3.54927921 -3.59824181 -13.12187958 -3.54927921 3.59824085 -13.12187958 -3.54927921
		 -15.69291306 25.23370361 3.54927921 -11.055794716 29.55479431 3.54927921 -11.055794716 29.55479431 -3.54927921
		 -15.69291306 25.23370361 -3.54927921 -31.65768814 25.23370361 3.54927921 -31.65465927 29.55479431 3.54927921
		 -31.65465927 29.55479431 -3.54927921 -31.65768814 25.23370361 -3.54927921 -3.59824181 -13.12187958 -3.54927921
		 3.59824085 -13.12187958 -3.54927921 3.59824085 -13.12187958 3.54927921 -3.59824181 -13.12187958 3.54927921;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 6 16 0 7 17 0 16 17 0
		 1 18 0 17 18 0 0 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 14 21 -23 -21
		mu 0 4 14 15 19 18
		f 4 16 23 -25 -22
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 20 27 -26
		mu 0 4 17 14 18 21
		f 4 3 29 -31 -29
		mu 0 4 6 7 23 22
		f 4 11 31 -33 -30
		mu 0 4 7 9 24 23
		f 4 -1 33 34 -32
		mu 0 4 9 8 25 24
		f 4 -11 28 35 -34
		mu 0 4 8 6 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge149" -p "TrainTracks1";
	setAttr ".t" -type "double3" -17.540527451570835 -13.008696617515213 285.28735842517324 ;
createNode mesh -n "LedgeShape149" -p "Ledge149";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 13.040146 135.7426 0 13.040146 
		135.7426 0 -13.040146 135.7426 0 -13.040146 135.7426 0 -13.040146 0 0 -13.040146 
		0 0 13.040146 0 0 13.040146 0;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube12" -p "TrainTracks1";
	setAttr ".t" -type "double3" -132.5063766023622 17.216074914061778 286.76816183636203 ;
	setAttr ".r" -type "double3" 3.4899374240096508 76.955363403718437 -15.538746566568976 ;
	setAttr ".rp" -type "double3" 1.8659898373825503e-14 0 151.90800919943558 ;
	setAttr ".rpt" -type "double3" 84.036711363131658 0 -84.036711363132071 ;
	setAttr ".sp" -type "double3" 1.8659898373825503e-14 0 151.90800919943558 ;
createNode mesh -n "TrainTracks:pCubeShape12" -p "TrainTracks:pCube12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.9359298 13.576586 135.7426 
		-2.9359298 13.576586 135.7426 2.9359298 -13.576586 135.7426 -2.9359298 -13.576586 
		135.7426 2.9359298 -13.576586 1.8225421e-12 -2.9359298 -13.576586 1.8225421e-12 2.9359298 
		13.576586 1.8225421e-12 -2.9359298 13.576586 1.8225421e-12;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube13" -p "TrainTracks1";
	setAttr ".t" -type "double3" -132.5063766023622 17.216074914061778 286.76816183636203 ;
	setAttr ".r" -type "double3" 31.439382399815141 105.30000825079884 13.24679406264592 ;
	setAttr ".rp" -type "double3" 1.8659898373825503e-14 0 151.90800919943558 ;
	setAttr ".rpt" -type "double3" 84.036711363131658 0 -84.036711363132071 ;
	setAttr ".sp" -type "double3" 1.8659898373825503e-14 0 151.90800919943558 ;
createNode mesh -n "TrainTracks:pCubeShape13" -p "TrainTracks:pCube13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.9359298 13.576586 135.7426 
		-2.9359298 13.576586 135.7426 2.9359298 -13.576586 135.7426 -2.9359298 -13.576586 
		135.7426 2.9359298 -13.576586 1.8225421e-12 -2.9359298 -13.576586 1.8225421e-12 2.9359298 
		13.576586 1.8225421e-12 -2.9359298 13.576586 1.8225421e-12;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube14" -p "TrainTracks1";
	setAttr ".t" -type "double3" -39.329366952706017 -29.194905662557389 272.83789576057171 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape14" -p "TrainTracks:pCube14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.8845224 14.342908 135.7426 
		-2.8845224 14.342908 135.7426 2.8845224 -14.342908 135.7426 -2.8845224 -14.342908 
		135.7426 2.8845224 -14.342908 0 -2.8845224 -14.342908 0 2.8845224 14.342908 0 -2.8845224 
		14.342908 0;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube15" -p "TrainTracks1";
	setAttr ".t" -type "double3" -39.329366952706017 -29.194905662557389 433.49457256563113 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape15" -p "TrainTracks:pCube15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.8845224 14.342908 135.7426 
		-2.8845224 14.342908 135.7426 2.8845224 -14.342908 135.7426 -2.8845224 -14.342908 
		135.7426 2.8845224 -14.342908 0 -2.8845224 -14.342908 0 2.8845224 14.342908 0 -2.8845224 
		14.342908 0;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube16" -p "TrainTracks1";
	setAttr ".t" -type "double3" 0.41503929255121358 -29.194905662557389 272.83789576057171 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape16" -p "TrainTracks:pCube16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.8845224 14.342908 135.7426 
		-2.8845224 14.342908 135.7426 2.8845224 -14.342908 135.7426 -2.8845224 -14.342908 
		135.7426 2.8845224 -14.342908 0 -2.8845224 -14.342908 0 2.8845224 14.342908 0 -2.8845224 
		14.342908 0;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube17" -p "TrainTracks1";
	setAttr ".t" -type "double3" 0.41503929255121358 -29.194905662557389 433.49457256563113 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape17" -p "TrainTracks:pCube17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.8845224 14.342908 135.7426 
		-2.8845224 14.342908 135.7426 2.8845224 -14.342908 135.7426 -2.8845224 -14.342908 
		135.7426 2.8845224 -14.342908 0 -2.8845224 -14.342908 0 2.8845224 14.342908 0 -2.8845224 
		14.342908 0;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube18" -p "TrainTracks1";
	setAttr ".t" -type "double3" -39.329366952706017 -29.194905662557389 11.99971301758768 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape18" -p "TrainTracks:pCube18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.8845224 14.342908 135.7426 
		-2.8845224 14.342908 135.7426 2.8845224 -14.342908 135.7426 -2.8845224 -14.342908 
		135.7426 2.8845224 -14.342908 0 -2.8845224 -14.342908 0 2.8845224 14.342908 0 -2.8845224 
		14.342908 0;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube19" -p "TrainTracks1";
	setAttr ".t" -type "double3" -39.329366952706017 -29.194905662557389 172.6563898226471 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape19" -p "TrainTracks:pCube19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.8845224 14.342908 135.7426 
		-2.8845224 14.342908 135.7426 2.8845224 -14.342908 135.7426 -2.8845224 -14.342908 
		135.7426 2.8845224 -14.342908 0 -2.8845224 -14.342908 0 2.8845224 14.342908 0 -2.8845224 
		14.342908 0;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube20" -p "TrainTracks1";
	setAttr ".t" -type "double3" 0.41503929255121358 -29.194905662557389 11.99971301758768 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape20" -p "TrainTracks:pCube20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.8845224 14.342908 135.7426 
		-2.8845224 14.342908 135.7426 2.8845224 -14.342908 135.7426 -2.8845224 -14.342908 
		135.7426 2.8845224 -14.342908 0 -2.8845224 -14.342908 0 2.8845224 14.342908 0 -2.8845224 
		14.342908 0;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube21" -p "TrainTracks1";
	setAttr ".t" -type "double3" 0.41503929255121358 -29.194905662557389 172.6563898226471 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape21" -p "TrainTracks:pCube21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.8845224 14.342908 135.7426 
		-2.8845224 14.342908 135.7426 2.8845224 -14.342908 135.7426 -2.8845224 -14.342908 
		135.7426 2.8845224 -14.342908 0 -2.8845224 -14.342908 0 2.8845224 14.342908 0 -2.8845224 
		14.342908 0;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube22" -p "TrainTracks1";
	setAttr ".t" -type "double3" -132.5063766023622 17.216074914061775 24.001647856997295 ;
	setAttr ".r" -type "double3" 3.4899374240096508 76.955363403718437 -15.538746566568976 ;
	setAttr ".rp" -type "double3" 1.8659898373825503e-14 0 151.90800919943558 ;
	setAttr ".rpt" -type "double3" 84.036711363131658 0 -84.036711363132071 ;
	setAttr ".sp" -type "double3" 1.8659898373825503e-14 0 151.90800919943558 ;
createNode mesh -n "TrainTracks:pCubeShape22" -p "TrainTracks:pCube22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.9359298 13.576586 135.7426 
		-2.9359298 13.576586 135.7426 2.9359298 -13.576586 135.7426 -2.9359298 -13.576586 
		135.7426 2.9359298 -13.576586 1.8225421e-12 -2.9359298 -13.576586 1.8225421e-12 2.9359298 
		13.576586 1.8225421e-12 -2.9359298 13.576586 1.8225421e-12;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube23" -p "TrainTracks1";
	setAttr ".t" -type "double3" -132.5063766023622 17.216074914061775 24.001647856997295 ;
	setAttr ".r" -type "double3" 31.439382399815141 105.30000825079884 13.24679406264592 ;
	setAttr ".rp" -type "double3" 1.8659898373825503e-14 0 151.90800919943558 ;
	setAttr ".rpt" -type "double3" 84.036711363131658 0 -84.036711363132071 ;
	setAttr ".sp" -type "double3" 1.8659898373825503e-14 0 151.90800919943558 ;
createNode mesh -n "TrainTracks:pCubeShape23" -p "TrainTracks:pCube23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.9359298 13.576586 135.7426 
		-2.9359298 13.576586 135.7426 2.9359298 -13.576586 135.7426 -2.9359298 -13.576586 
		135.7426 2.9359298 -13.576586 1.8225421e-12 -2.9359298 -13.576586 1.8225421e-12 2.9359298 
		13.576586 1.8225421e-12 -2.9359298 13.576586 1.8225421e-12;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube30" -p "TrainTracks1";
	setAttr ".t" -type "double3" -54.325731177211438 11.831318320550167 453.08350061216333 ;
	setAttr ".r" -type "double3" -23.178148648768573 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape30" -p "TrainTracks:pCube30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 18.054504 44.002384 0 18.054504 
		44.002384 0 -8.0257807 44.002384 0 -8.0257807 44.002384 0 -13.040146 0 0 -13.040146 
		0 0 13.040146 0 0 13.040146 0;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube31" -p "TrainTracks1";
	setAttr ".t" -type "double3" -54.325731177211438 46.33546559307154 522.60951841598455 ;
	setAttr ".r" -type "double3" -23.178148648768573 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape31" -p "TrainTracks:pCube31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.673009 43.224697 84.344162 
		1.673009 43.224697 84.344162 1.673009 17.144432 84.344162 1.673009 17.144432 84.344162 
		0 -13.040146 0 0 -13.040146 0 0 13.040146 0 0 13.040146 0;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge150" -p "TrainTracks1";
	setAttr ".t" -type "double3" -17.540527451570835 39.788959190496065 184.29787073950996 ;
	setAttr ".rp" -type "double3" 0 0 38.926019191741943 ;
	setAttr ".sp" -type "double3" 0 0 38.926019191741943 ;
createNode mesh -n "LedgeShape150" -p "Ledge150";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.2434498e-13 13.040146 153.28029 
		1.2434498e-13 13.040146 153.28029 1.2434498e-13 -13.040146 153.28029 1.2434498e-13 
		-13.040146 153.28029 8.5265128e-14 -13.040146 -75.428268 8.5265128e-14 -13.040146 
		-75.428268 8.5265128e-14 13.040146 -75.428268 8.5265128e-14 13.040146 -75.428268;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube33" -p "TrainTracks1";
	setAttr ".t" -type "double3" -52.103963444969608 10.998535868529864 79.840638593786153 ;
	setAttr ".rp" -type "double3" 0 0 143.44218063354492 ;
	setAttr ".sp" -type "double3" 0 0 143.44218063354492 ;
createNode mesh -n "TrainTracks:pCubeShape33" -p "TrainTracks:pCube33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  3.0902894 13.040146 174.47174 
		-3.0902894 13.040146 174.47174 3.0902894 -13.040146 174.47174 -3.0902894 -13.040146 
		174.47174 3.0902894 -13.040146 112.41261 -3.0902894 -13.040146 112.41261 3.0902894 
		13.040146 112.41261 -3.0902894 13.040146 112.41261;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube34" -p "TrainTracks1";
	setAttr ".t" -type "double3" 15.135112794623367 10.998535868529864 79.840638593786153 ;
	setAttr ".rp" -type "double3" 0 0 143.44218063354492 ;
	setAttr ".sp" -type "double3" 0 0 143.44218063354492 ;
createNode mesh -n "TrainTracks:pCubeShape34" -p "TrainTracks:pCube34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  3.0902894 13.040146 177.39319 
		-3.0902894 13.040146 177.39319 3.0902894 -13.040146 177.39319 -3.0902894 -13.040146 
		177.39319 3.0902894 -13.040146 109.49115 -3.0902894 -13.040146 109.49115 3.0902894 
		13.040146 109.49115 -3.0902894 13.040146 109.49115;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube35" -p "TrainTracks1";
	setAttr ".t" -type "double3" 13.738579484701646 46.33546559307154 522.60951841598455 ;
	setAttr ".r" -type "double3" -23.178148648768573 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape35" -p "TrainTracks:pCube35";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.673009 43.224697 84.344162 
		1.673009 43.224697 84.344162 1.673009 17.144432 84.344162 1.673009 17.144432 84.344162 
		0 -13.040146 0 0 -13.040146 0 0 13.040146 0 0 13.040146 0;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TrainTracks:pCube36" -p "TrainTracks1";
	setAttr ".t" -type "double3" 13.738579484701646 11.831318320550166 453.08350061216333 ;
	setAttr ".r" -type "double3" -23.178148648768573 0 0 ;
createNode mesh -n "TrainTracks:pCubeShape36" -p "TrainTracks:pCube36";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 18.054504 44.002384 0 18.054504 
		44.002384 0 -8.0257807 44.002384 0 -8.0257807 44.002384 0 -13.040146 0 0 -13.040146 
		0 0 13.040146 0 0 13.040146 0;
	setAttr -s 8 ".vt[0:7]"  -5.30084085 -15.91631317 17.57284927 5.30084085 -15.91631317 17.57284927
		 -5.30084085 15.91631317 17.57284927 5.30084085 15.91631317 17.57284927 -5.30084085 15.91631317 -17.57284927
		 5.30084085 15.91631317 -17.57284927 -5.30084085 -15.91631317 -17.57284927 5.30084085 -15.91631317 -17.57284927;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LedgeWall1";
	setAttr ".t" -type "double3" 0 3.9090163084356959 79.05601443677773 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
	setAttr ".rp" -type "double3" 0 68.867562050593932 -145.68576319267976 ;
	setAttr ".sp" -type "double3" 0 39.948137283325195 -84.508216857910156 ;
	setAttr ".spt" -type "double3" 0 28.91942476726873 -61.177546334769588 ;
createNode mesh -n "LedgeWallShape1" -p "LedgeWall1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform11";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 4.7875438475940655 80.430009437668417 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "WallLedge127Shape" -p "transform11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.13812788 0.375 0.13812788 0.125 0.13812788
		 0.375 0.61187208 0.625 0.61187208 0.875 0.13812788 0.625 0.17389631 0.375 0.17389631
		 0.125 0.17389631 0.375 0.57610369 0.625 0.57610369 0.875 0.17389631;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -1 36.12131882 -82.19953918 1 36.12131882 -82.19953918
		 -1 49.97376251 -82.19953918 1 49.97376251 -82.19953918 -1 49.97376251 -86.81689453
		 1 49.97376251 -86.81689453 -1 36.12131882 -86.81689453 1 36.12131882 -86.81689453
		 1 43.77495575 -82.19953918 -1 43.77495575 -82.19953918 -1 43.77495575 -86.81689453
		 1 43.77495575 -86.81689453 1 45.7568779 -82.19953918 -1 45.7568779 -82.19953918 -1 45.7568779 -86.81689453
		 1 45.7568779 -86.81689453;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 14 0 5 15 0 6 0 0 7 1 0 8 9 0 10 6 0 9 10 0 11 7 0 10 11 0 11 8 0 12 3 0
		 13 2 0 12 13 0 13 14 0 14 15 0 15 12 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 0 5 12 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 16 15 -4 -14
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -16 17 -6
		mu 0 4 1 10 19 14
		f 4 10 4 14 13
		mu 0 4 12 0 15 16
		f 4 -21 18 -2 -20
		mu 0 4 21 20 3 2
		f 4 -22 19 6 8
		mu 0 4 22 21 2 13
		f 4 2 9 -23 -9
		mu 0 4 4 5 24 23
		f 4 -24 -10 -8 -19
		mu 0 4 20 25 11 3
		f 4 21 22 23 20
		mu 0 4 21 23 25 20
		f 4 -13 -18 -17 -15
		mu 0 4 15 14 18 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge151";
	setAttr ".t" -type "double3" -0.028530798647636857 38.762245791245441 -2.1939789482319654 ;
	setAttr ".rp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "Ledge151Shape" -p "Ledge151";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 41.840557 -39.012535 
		0.5 41.840557 -39.012535 -0.5 41.095131 -39.012535 0.5 41.095131 -39.012535 -0.5 
		41.095131 -49.694843 0.5 41.095131 -49.694843 -0.5 41.840557 -49.694843 0.5 41.840557 
		-49.694843;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge153";
	setAttr ".t" -type "double3" -0.028530798647636857 45.35681556327048 1.3087883968333998 ;
	setAttr ".rp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "Ledge153Shape" -p "Ledge153";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 41.840557 -39.012535 
		0.5 41.840557 -39.012535 -0.5 41.095131 -39.012535 0.5 41.095131 -39.012535 -0.5 
		41.095131 -49.694843 0.5 41.095131 -49.694843 -0.5 41.840557 -49.694843 0.5 41.840557 
		-49.694843;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge133";
	setAttr ".t" -type "double3" 0 3.7603647129281796 80.835014203788006 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "WallLedgeShape133" -p "WallLedge133";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "WallLedge132";
	setAttr ".t" -type "double3" 0 3.7603647129281796 80.835014203788006 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "WallLedgeShape132" -p "WallLedge132";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 0 0.70166945 0 0 0.70166945 
		0 0 0.70166945 0 0 0.70166945;
createNode transform -n "transform12";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 3.7603647129281796 80.835014203788006 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "LedgeWallShape" -p "transform12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/nathanwaters/Documents/RunnerFiles/CommercialZone/CommercialZoneTest.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n"
		+ "                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 100 100 -ps 2 0 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode makeTextCurves -n "makeTextCurves1";
	setAttr ".t" -type "string" "Here Lies NateDawg";
	setAttr ".f" -type "string" "Times New Roman-Regular";
	setAttr -s 16 ".p";
createNode displayLayer -n "Background";
	setAttr ".do" 1;
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupId -n "groupId39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId45";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 7;
	setAttr -s 7 ".out";
createNode groupId -n "groupId47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:31]";
createNode groupId -n "groupId49";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId50";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId51";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId52";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId53";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId54";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polyChipOff -n "polyChipOff2";
	setAttr ".ics" -type "componentList" 3 "f[0:2]" "f[4:16]" "f[18:21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 654998630;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 0 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId55";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode groupId -n "groupId56";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0
		 0 -17.227968747441579 -103.81015137362924 1;
	setAttr ".wt" 0.33462461829185486;
	setAttr ".re" 10;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[6:7]" "e[12]" "e[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0
		 0 -17.227968747441579 -103.81015137362924 1;
	setAttr ".wt" 0.25834572315216064;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[12]" "e[17]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0
		 0 -17.227968747441579 -103.81015137362924 1;
	setAttr ".wt" 0.24197785556316376;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 5.87142944 0 0 5.87142944
		 0 0 5.87142944 0 0 5.87142944 0 0 5.87142944 0 0 5.87142944 0 0 5.87142944 0 0 5.87142944;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12]" "e[17]" "e[28:29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0
		 0 -17.227968747441579 -103.81015137362924 1;
	setAttr ".wt" 0.72363227605819702;
	setAttr ".dr" no;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 -0.92067611 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.92067611 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.92067611 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.92067611 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.92067611 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.92067611 ;
	setAttr ".tk[22]" -type "float3" 0 0 -0.92067611 ;
	setAttr ".tk[23]" -type "float3" 0 0 -0.92067611 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[14:17]";
createNode polyCloseBorder -n "polyCloseBorder1";
	setAttr ".ics" -type "componentList" 1 "e[36:39]";
createNode polyCloseBorder -n "polyCloseBorder2";
	setAttr ".ics" -type "componentList" 3 "e[28]" "e[30]" "e[32:33]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[7]" "f[14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0
		 0 -17.227968747441579 -103.81015137362924 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 52.626209 -56.976715 ;
	setAttr ".rs" 1625403240;
	setAttr ".lt" -type "double3" 0 0 5.816768169023085 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 50.619466250117021 -56.976716315035517 ;
	setAttr ".cbx" -type "double3" 1 54.632955019648278 -56.976712500338259 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[7]" "f[14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0
		 0 -17.227968747441579 -103.81015137362924 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 52.626194 -51.159946 ;
	setAttr ".rs" 1584155681;
	setAttr ".lt" -type "double3" 0 -7.1054273576010019e-15 0.84464111984335932 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 50.619466250117021 -51.159951483492549 ;
	setAttr ".cbx" -type "double3" 1 54.632924502070153 -51.159943854098017 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0
		 0 -17.227968747441579 -103.81015137362924 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 51.367855 -50.737621 ;
	setAttr ".rs" 947306860;
	setAttr ".lt" -type "double3" 0 -1.2685823820417773e-15 2.8565935715260622 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 51.367856447870935 -51.159943854098017 ;
	setAttr ".cbx" -type "double3" 1 51.367856447870935 -50.315301214937861 ;
createNode polyChipOff -n "polyChipOff3";
	setAttr ".ics" -type "componentList" 2 "f[6:9]" "f[14:39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0
		 0 -17.227968747441579 -103.81015137362924 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -17.227968 -103.81015 ;
	setAttr ".rs" 1638303969;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 4;
	setAttr ".rs" -type "Int32Array" 2 2 3 ;
	setAttr -s 3 ".out";
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
	setAttr ".gi" 34;
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode polyChipOff -n "polyChipOff4";
	setAttr ".ics" -type "componentList" 1 "f[0:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0
		 0 -17.227968747441579 -103.81015137362924 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -17.227968 -103.81015 ;
	setAttr ".rs" 1558525661;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate4";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId63";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polyChipOff -n "polyChipOff5";
	setAttr ".ics" -type "componentList" 2 "f[11]" "f[13:16]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1.0000000000000002 0
		 0 -1.0000000000000002 2.2204460492503131e-16 0 0 -17.227968747441579 -103.81015137362924 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -17.227968 -103.81015 ;
	setAttr ".rs" 866711129;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate5";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId64";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId65";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polySubdFace -n "polySubdFace1";
	setAttr ".ics" -type "componentList" 1 "f[5:8]";
	setAttr ".dvv" 3;
	setAttr ".sbm" 1;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[16:23]" -type "float3"  0 0.87395626 0 0 0.87395626
		 0 0 0.87395626 0 0 0.87395626 0 0 0.87395626 0 0 0.87395626 0 0 0.87395626 0 0 0.87395626
		 0;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 4 "f[14]" "f[16]" "f[18]" "f[20]";
createNode polyCloseBorder -n "polyCloseBorder3";
	setAttr ".ics" -type "componentList" 4 "e[33]" "e[35]" "e[37]" "e[39]";
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
	setAttr ".gi" 40;
createNode polyCloseBorder -n "polyCloseBorder4";
	setAttr ".ics" -type "componentList" 4 "e[32]" "e[34]" "e[36]" "e[38]";
createNode groupId -n "groupId66";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:18]";
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.80194101676894003 0.59740321862507451 0
		 0 -0.59740321862507451 0.80194101676894003 0 0 29.687862434110357 -37.038709930986457 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 76.354126 -91.228951 ;
	setAttr ".rs" 1081402734;
	setAttr ".lt" -type "double3" 0 -3.7747582837255314e-15 1.2062529367603068 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 75.887887843090482 -91.576273123748734 ;
	setAttr ".cbx" -type "double3" 1 76.82036216391235 -90.881629566559653 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.80194101676894003 0.59740321862507451 0
		 0 -0.59740321862507451 0.80194101676894003 0 0 29.687862434110357 -37.038709930986457 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 76.248207 -92.059952 ;
	setAttr ".rs" 423067534;
	setAttr ".lt" -type "double3" 0 2.1316282072803009e-14 17.735400716410691 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 75.88789316570589 -92.543632428888714 ;
	setAttr ".cbx" -type "double3" 1 76.608524796114224 -91.57627867234504 ;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.61946684122085571;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyChipOff -n "polyChipOff6";
	setAttr ".ics" -type "componentList" 2 "f[0:1]" "f[3:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 1311525114;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate6";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId67";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polyChipOff -n "polyChipOff7";
	setAttr ".ics" -type "componentList" 1 "f[0:18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1.0000000000000002 0
		 0 -1.0000000000000002 2.2204460492503131e-16 0 0 -17.227968747441579 -103.81015137362924 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -17.227968 -103.81015 ;
	setAttr ".rs" 1678771875;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate7";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode polyChipOff -n "polyChipOff8";
	setAttr ".ics" -type "componentList" 2 "f[8]" "f[10:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.76991241190998339 0.63814957336579958 0
		 0 -0.63814957336579958 0.76991241190998339 0 0 27.134288565478016 -39.410695381425555 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 27.134289 -39.410694 ;
	setAttr ".rs" 114225796;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate8";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId73";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId74";
	setAttr ".ihi" 0;
createNode groupId -n "groupId75";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId76";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polySeparate -n "polySeparate9";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 2 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId78";
	setAttr ".ihi" 0;
createNode groupId -n "groupId79";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId80";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode polyChipOff -n "polyChipOff10";
	setAttr ".ics" -type "componentList" 1 "f[0:29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.7239242361205167 0 0 0 0 1.7239242361205167 0
		 0 -29.782339473899953 50.439387328082915 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -29.782339 50.439388 ;
	setAttr ".rs" 810374753;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate10";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId81";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId82";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode polyCube -n "TrainTracks:polyCube1";
	setAttr ".w" 7.1964832746121203;
	setAttr ".h" 26.243758782363471;
	setAttr ".d" 7.0985580172958294;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "TrainTracks:polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12.602802947265175 13.121879391181736 10.260061113521861 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.602803 26.243759 10.260061 ;
	setAttr ".rs" 393242258;
	setAttr ".lt" -type "double3" -13.37435104817316 3.1691028599670876e-15 14.272370459246549 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 9.0045613796534809 26.243758968818454 6.7107821389887796 ;
	setAttr ".cbx" -type "double3" 16.20104451487687 26.243758968818454 13.809340088054942 ;
createNode polyExtrudeFace -n "TrainTracks:polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12.602802947265175 13.121879391181736 10.260061113521861 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.77155095 40.516129 10.260061 ;
	setAttr ".rs" 1939909552;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.0901101081547462 38.355581097114353 6.7107819005702005 ;
	setAttr ".cbx" -type "double3" 1.5470082313838276 42.676675610053806 13.809340326473521 ;
createNode polyTweak -n "TrainTracks:polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  1.27968228 -2.16054702 -1.7763568e-14
		 -1.27968216 2.16054678 -1.0214052e-14 -1.27968216 2.16054678 -1.0214052e-14 1.27968228
		 -2.16054702 -1.7763568e-14;
createNode polyCube -n "TrainTracks:polyCube2";
	setAttr ".w" 10.601681785851165;
	setAttr ".h" 31.832627171922116;
	setAttr ".d" 35.145699317436083;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "TrainTracks:polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12.602802947265175 13.121879391181736 10.260061113521861 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.602802 -1.8645498e-07 10.260061 ;
	setAttr ".rs" 419537247;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 9.0045611412349018 -1.8645498300884356e-07 6.7107819005702005 ;
	setAttr ".cbx" -type "double3" 16.201043799621132 -1.8645498300884356e-07 13.809340326473521 ;
createNode polyTweak -n "TrainTracks:polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  -15.96477604 0 -1.9850788e-13
		 -20.59886551 0 -1.9495516e-13 -20.59886551 0 -1.9495516e-13 -15.96477604 0 -1.9850788e-13;
createNode polySeparate -n "polySeparate11";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId84";
	setAttr ".ihi" 0;
createNode groupId -n "groupId85";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId86";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode polySubdFace -n "polySubdFace2";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.7239242361205167 0 0 0 0 1.7239242361205167 0
		 0 3.7603647129281796 80.835014203788006 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 84.459152 -60.870762 ;
	setAttr ".rs" 1031348203;
	setAttr ".lt" -type "double3" 0 0 4.4179643959839439 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 82.641755492514434 -60.870763594430855 ;
	setAttr ".cbx" -type "double3" 1 86.276546997059086 -60.870763594430855 ;
createNode polyChipOff -n "polyChipOff11";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[7:10]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.7239242361205167 0 0 0 0 1.7239242361205167 0
		 0 3.7603647129281796 80.835014203788006 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 84.967377 -56.452785 ;
	setAttr ".rs" 2050018405;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0.58961987 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.58961987 0 ;
	setAttr ".tk[12]" -type "float3" 0 0.58961987 0 ;
	setAttr ".tk[13]" -type "float3" 0 0.58961987 0 ;
createNode polySeparate -n "polySeparate12";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId87";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId88";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr -s 227 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 53 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".w" 3072;
	setAttr ".h" 3072;
	setAttr ".pa" 1;
	setAttr ".dar" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "makeTextCurves1.p[0]" "Char_H_1.t";
connectAttr "makeTextCurves1.p[1]" "Char_e_1.t";
connectAttr "makeTextCurves1.p[2]" "Char_r_1.t";
connectAttr "makeTextCurves1.p[3]" "Char_e_2.t";
connectAttr "makeTextCurves1.p[5]" "Char_L_1.t";
connectAttr "makeTextCurves1.p[6]" "Char_i_1.t";
connectAttr "makeTextCurves1.p[7]" "Char_e_3.t";
connectAttr "makeTextCurves1.p[8]" "Char_s_1.t";
connectAttr "makeTextCurves1.p[10]" "Char_N_1.t";
connectAttr "makeTextCurves1.p[11]" "Char_a_1.t";
connectAttr "makeTextCurves1.p[12]" "Char_t_1.t";
connectAttr "makeTextCurves1.p[13]" "Char_e_4.t";
connectAttr "makeTextCurves1.p[14]" "Char_D_1.t";
connectAttr "makeTextCurves1.p[15]" "Char_a_2.t";
connectAttr "makeTextCurves1.p[16]" "Char_w_1.t";
connectAttr "makeTextCurves1.p[17]" "Char_g_1.t";
connectAttr "groupId32.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupId33.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupId34.id" "|Ledge|LedgeShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|Ledge|LedgeShape.iog.og[0].gco";
connectAttr "groupId35.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupId36.id" "LedgeShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape28.iog.og[0].gco";
connectAttr "groupId37.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape52.i";
connectAttr "groupId69.id" "polySurfaceShape52.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape52.iog.og[0].gco";
connectAttr "groupParts23.og" "polySurfaceShape53.i";
connectAttr "groupId70.id" "polySurfaceShape53.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape53.iog.og[0].gco";
connectAttr "groupId67.id" "GroundShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "GroundShape.iog.og[0].gco";
connectAttr "groupParts21.og" "GroundShape.i";
connectAttr "groupId68.id" "GroundShape.ciog.cog[0].cgid";
connectAttr "groupId42.id" "LedgeShape128.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape128.iog.og[0].gco";
connectAttr "groupId43.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupId44.id" "LedgeShape129.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape129.iog.og[0].gco";
connectAttr "groupId45.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupParts3.og" "LedgeShape133.i";
connectAttr "groupId49.id" "LedgeShape133.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape133.iog.og[0].gco";
connectAttr "groupParts4.og" "LedgeShape131.i";
connectAttr "groupId50.id" "LedgeShape131.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape131.iog.og[0].gco";
connectAttr "groupParts5.og" "LedgeShape130.i";
connectAttr "groupId51.id" "LedgeShape130.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape130.iog.og[0].gco";
connectAttr "groupParts6.og" "LedgeShape24.i";
connectAttr "groupId52.id" "LedgeShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape24.iog.og[0].gco";
connectAttr "groupParts7.og" "LedgeShape132.i";
connectAttr "groupId53.id" "LedgeShape132.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape132.iog.og[0].gco";
connectAttr "groupParts8.og" "LedgeShape26.i";
connectAttr "groupId54.id" "LedgeShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape26.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "Ledge83Shape.iog.og[0].gco";
connectAttr "groupId47.id" "Ledge83Shape.ciog.cog[0].cgid";
connectAttr "groupId57.id" "Ledge135Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "Ledge135Shape.iog.og[1].gco";
connectAttr "groupParts11.og" "Ledge135Shape.i";
connectAttr "groupId58.id" "Ledge135Shape.ciog.cog[1].cgid";
connectAttr "groupParts15.og" "WallShape.i";
connectAttr "groupId62.id" "WallShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallShape.iog.og[0].gco";
connectAttr "groupParts16.og" "WallShape1.i";
connectAttr "groupId63.id" "WallShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallShape1.iog.og[0].gco";
connectAttr "polyChipOff4.out" "polySurfaceShape48.i";
connectAttr "groupId61.id" "polySurfaceShape48.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape48.iog.og[0].gco";
connectAttr "groupParts9.og" "polySurfaceShape43.i";
connectAttr "groupId55.id" "polySurfaceShape43.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape43.iog.og[0].gco";
connectAttr "groupParts10.og" "polySurfaceShape44.i";
connectAttr "groupId56.id" "polySurfaceShape44.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape44.iog.og[0].gco";
connectAttr "polyChipOff2.out" "polySurfaceShape36.i";
connectAttr "groupId48.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupParts17.og" "LedgeShape136.i";
connectAttr "groupId64.id" "LedgeShape136.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape136.iog.og[0].gco";
connectAttr "groupParts18.og" "WallShape2.i";
connectAttr "groupId65.id" "WallShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallShape2.iog.og[0].gco";
connectAttr "polyChipOff5.out" "polySurfaceShape46.i";
connectAttr "groupId59.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupParts24.og" "LedgeShape142.i";
connectAttr "groupId71.id" "LedgeShape142.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape142.iog.og[0].gco";
connectAttr "groupParts25.og" "LedgeShape143.i";
connectAttr "groupId72.id" "LedgeShape143.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape143.iog.og[0].gco";
connectAttr "polyChipOff7.out" "LedgeShape137.i";
connectAttr "groupId66.id" "LedgeShape137.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape137.iog.og[0].gco";
connectAttr "groupParts27.og" "LedgeShape146.i";
connectAttr "groupId75.id" "LedgeShape146.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape146.iog.og[0].gco";
connectAttr "groupParts28.og" "LedgeShape145.i";
connectAttr "groupId76.id" "LedgeShape145.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape145.iog.og[0].gco";
connectAttr "groupParts26.og" "Ledge122Shape.i";
connectAttr "groupId73.id" "Ledge122Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ledge122Shape.iog.og[0].gco";
connectAttr "groupId74.id" "Ledge122Shape.ciog.cog[0].cgid";
connectAttr "groupParts30.og" "WallShape3.i";
connectAttr "groupId79.id" "WallShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallShape3.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "WallLedge128Shape.iog.og[0].gco";
connectAttr "groupId78.id" "WallLedge128Shape.ciog.cog[0].cgid";
connectAttr "groupParts32.og" "WallLedgeShape130.i";
connectAttr "groupId81.id" "WallLedgeShape130.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape130.iog.og[0].gco";
connectAttr "groupParts33.og" "WallLedgeShape131.i";
connectAttr "groupId82.id" "WallLedgeShape131.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape131.iog.og[0].gco";
connectAttr "polyChipOff10.out" "polySurfaceShape55.i";
connectAttr "groupId80.id" "polySurfaceShape55.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape55.iog.og[0].gco";
connectAttr "groupId40.id" "LedgeShape147.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape147.iog.og[0].gco";
connectAttr "groupId41.id" "WallShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallShape4.iog.og[0].gco";
connectAttr "groupId38.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupId39.id" "LedgeShape148.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape148.iog.og[0].gco";
connectAttr "TrainTracks:polyCube2.out" "|TrainTracks1|Ledge|LedgeShape.i";
connectAttr "TrainTracks:polyExtrudeFace3.out" "|TrainTracks1|TrainTracks:group1|TrainTracks:pCube1|TrainTracks:pCubeShape1.i"
		;
connectAttr "groupParts35.og" "LedgeWallShape1.i";
connectAttr "groupId85.id" "LedgeWallShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeWallShape1.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "WallLedge127Shape.iog.og[0].gco";
connectAttr "groupId84.id" "WallLedge127Shape.ciog.cog[0].cgid";
connectAttr "groupParts37.og" "WallLedgeShape133.i";
connectAttr "groupId87.id" "WallLedgeShape133.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape133.iog.og[0].gco";
connectAttr "groupParts38.og" "WallLedgeShape132.i";
connectAttr "groupId88.id" "WallLedgeShape132.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape132.iog.og[0].gco";
connectAttr "polyChipOff11.out" "LedgeWallShape.i";
connectAttr "groupId86.id" "LedgeWallShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeWallShape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "layerManager.dli[1]" "Background.id";
connectAttr "Ledge83Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupId48.id" "groupParts2.gi";
connectAttr "polySeparate1.out[1]" "groupParts3.ig";
connectAttr "groupId49.id" "groupParts3.gi";
connectAttr "polySeparate1.out[2]" "groupParts4.ig";
connectAttr "groupId50.id" "groupParts4.gi";
connectAttr "polySeparate1.out[3]" "groupParts5.ig";
connectAttr "groupId51.id" "groupParts5.gi";
connectAttr "polySeparate1.out[4]" "groupParts6.ig";
connectAttr "groupId52.id" "groupParts6.gi";
connectAttr "polySeparate1.out[5]" "groupParts7.ig";
connectAttr "groupId53.id" "groupParts7.gi";
connectAttr "polySeparate1.out[6]" "groupParts8.ig";
connectAttr "groupId54.id" "groupParts8.gi";
connectAttr "groupParts2.og" "polyChipOff2.ip";
connectAttr "polySurfaceShape36.wm" "polyChipOff2.mp";
connectAttr "polySurfaceShape36.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts9.ig";
connectAttr "groupId55.id" "groupParts9.gi";
connectAttr "polySeparate2.out[1]" "groupParts10.ig";
connectAttr "groupId56.id" "groupParts10.gi";
connectAttr "polySurfaceShape45.o" "polySplitRing1.ip";
connectAttr "Ledge135Shape.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "Ledge135Shape.wm" "polySplitRing2.mp";
connectAttr "polyTweak1.out" "polySplitRing3.ip";
connectAttr "Ledge135Shape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak1.ip";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "Ledge135Shape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "polyExtrudeFace1.ip";
connectAttr "Ledge135Shape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "Ledge135Shape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "Ledge135Shape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyChipOff3.ip";
connectAttr "Ledge135Shape.wm" "polyChipOff3.mp";
connectAttr "Ledge135Shape.o" "polySeparate3.ip";
connectAttr "polyChipOff3.out" "groupParts11.ig";
connectAttr "groupId57.id" "groupParts11.gi";
connectAttr "polySeparate3.out[0]" "groupParts12.ig";
connectAttr "groupId59.id" "groupParts12.gi";
connectAttr "polySeparate3.out[1]" "groupParts13.ig";
connectAttr "polySeparate3.out[2]" "groupParts14.ig";
connectAttr "groupId61.id" "groupParts14.gi";
connectAttr "groupParts14.og" "polyChipOff4.ip";
connectAttr "polySurfaceShape48.wm" "polyChipOff4.mp";
connectAttr "polySurfaceShape48.o" "polySeparate4.ip";
connectAttr "polySeparate4.out[0]" "groupParts15.ig";
connectAttr "groupId62.id" "groupParts15.gi";
connectAttr "polySeparate4.out[1]" "groupParts16.ig";
connectAttr "groupId63.id" "groupParts16.gi";
connectAttr "groupParts12.og" "polyChipOff5.ip";
connectAttr "polySurfaceShape46.wm" "polyChipOff5.mp";
connectAttr "polySurfaceShape46.o" "polySeparate5.ip";
connectAttr "polySeparate5.out[0]" "groupParts17.ig";
connectAttr "groupId64.id" "groupParts17.gi";
connectAttr "polySeparate5.out[1]" "groupParts18.ig";
connectAttr "groupId65.id" "groupParts18.gi";
connectAttr "groupParts13.og" "polySubdFace1.ip";
connectAttr "polySubdFace1.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyCloseBorder3.ip";
connectAttr "polyCloseBorder3.out" "groupParts19.ig";
connectAttr "groupParts19.og" "polyCloseBorder4.ip";
connectAttr "polyCloseBorder4.out" "groupParts20.ig";
connectAttr "groupId66.id" "groupParts20.gi";
connectAttr "polySurfaceShape49.o" "polyExtrudeFace4.ip";
connectAttr "Ledge122Shape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "Ledge122Shape.wm" "polyExtrudeFace5.mp";
connectAttr "polySurfaceShape51.o" "polySplitRing10.ip";
connectAttr "GroundShape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polyChipOff6.ip";
connectAttr "GroundShape.wm" "polyChipOff6.mp";
connectAttr "GroundShape.o" "polySeparate6.ip";
connectAttr "polyChipOff6.out" "groupParts21.ig";
connectAttr "groupId67.id" "groupParts21.gi";
connectAttr "polySeparate6.out[0]" "groupParts22.ig";
connectAttr "groupId69.id" "groupParts22.gi";
connectAttr "polySeparate6.out[1]" "groupParts23.ig";
connectAttr "groupId70.id" "groupParts23.gi";
connectAttr "groupParts20.og" "polyChipOff7.ip";
connectAttr "LedgeShape137.wm" "polyChipOff7.mp";
connectAttr "LedgeShape137.o" "polySeparate7.ip";
connectAttr "polySeparate7.out[0]" "groupParts24.ig";
connectAttr "groupId71.id" "groupParts24.gi";
connectAttr "polySeparate7.out[1]" "groupParts25.ig";
connectAttr "groupId72.id" "groupParts25.gi";
connectAttr "polyExtrudeFace5.out" "polyChipOff8.ip";
connectAttr "Ledge122Shape.wm" "polyChipOff8.mp";
connectAttr "Ledge122Shape.o" "polySeparate8.ip";
connectAttr "polyChipOff8.out" "groupParts26.ig";
connectAttr "groupId73.id" "groupParts26.gi";
connectAttr "polySeparate8.out[0]" "groupParts27.ig";
connectAttr "groupId75.id" "groupParts27.gi";
connectAttr "polySeparate8.out[1]" "groupParts28.ig";
connectAttr "groupId76.id" "groupParts28.gi";
connectAttr "WallLedge128Shape.o" "polySeparate9.ip";
connectAttr "polySeparate9.out[0]" "groupParts30.ig";
connectAttr "groupId79.id" "groupParts30.gi";
connectAttr "polySeparate9.out[1]" "groupParts31.ig";
connectAttr "groupId80.id" "groupParts31.gi";
connectAttr "groupParts31.og" "polyChipOff10.ip";
connectAttr "polySurfaceShape55.wm" "polyChipOff10.mp";
connectAttr "polySurfaceShape55.o" "polySeparate10.ip";
connectAttr "polySeparate10.out[0]" "groupParts32.ig";
connectAttr "groupId81.id" "groupParts32.gi";
connectAttr "polySeparate10.out[1]" "groupParts33.ig";
connectAttr "groupId82.id" "groupParts33.gi";
connectAttr "TrainTracks:polyCube1.out" "TrainTracks:polyExtrudeFace1.ip";
connectAttr "|TrainTracks1|TrainTracks:group1|TrainTracks:pCube1|TrainTracks:pCubeShape1.wm" "TrainTracks:polyExtrudeFace1.mp"
		;
connectAttr "TrainTracks:polyTweak1.out" "TrainTracks:polyExtrudeFace2.ip";
connectAttr "|TrainTracks1|TrainTracks:group1|TrainTracks:pCube1|TrainTracks:pCubeShape1.wm" "TrainTracks:polyExtrudeFace2.mp"
		;
connectAttr "TrainTracks:polyExtrudeFace1.out" "TrainTracks:polyTweak1.ip";
connectAttr "TrainTracks:polyTweak2.out" "TrainTracks:polyExtrudeFace3.ip";
connectAttr "|TrainTracks1|TrainTracks:group1|TrainTracks:pCube1|TrainTracks:pCubeShape1.wm" "TrainTracks:polyExtrudeFace3.mp"
		;
connectAttr "TrainTracks:polyExtrudeFace2.out" "TrainTracks:polyTweak2.ip";
connectAttr "WallLedge127Shape.o" "polySeparate11.ip";
connectAttr "polySeparate11.out[0]" "groupParts35.ig";
connectAttr "groupId85.id" "groupParts35.gi";
connectAttr "polySeparate11.out[1]" "groupParts36.ig";
connectAttr "groupId86.id" "groupParts36.gi";
connectAttr "groupParts36.og" "polySubdFace2.ip";
connectAttr "polySubdFace2.out" "polyExtrudeFace6.ip";
connectAttr "LedgeWallShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak4.out" "polyChipOff11.ip";
connectAttr "LedgeWallShape.wm" "polyChipOff11.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak4.ip";
connectAttr "LedgeWallShape.o" "polySeparate12.ip";
connectAttr "polySeparate12.out[0]" "groupParts37.ig";
connectAttr "groupId87.id" "groupParts37.gi";
connectAttr "polySeparate12.out[1]" "groupParts38.ig";
connectAttr "groupId88.id" "groupParts38.gi";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "Ledge1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge8Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge9Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge10Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge11Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge12Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge13Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge14Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge15Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge16Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge17Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge18Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge19Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge20Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge21Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge22Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge23Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge25Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge27Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan28Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan29Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan30Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan32Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan33Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan34Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge29Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge30Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge31Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge32Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge33Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge34Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge35Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge36Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge37Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge38Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge39Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge40Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge41Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge42Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge43Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge44Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge45Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge46Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge47Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge48Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge49Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge50Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge51Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge52Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge53Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge54Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge55Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge56Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge57Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge58Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge59Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge60Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge61Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge62Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge63Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge64Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge65Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge66Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge67Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge68Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge69Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge70Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge71Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge72Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge73Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge74Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge75Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge76Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge77Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge78Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge79Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge80Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge81Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge82Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge84Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nothing3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge87Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge88Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge90Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge91Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge92Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge93Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge94Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge95Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge96Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge97Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge98Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge99Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nothing2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge101Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge102Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge103Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge105Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge106Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge107Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "NothingShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nothing1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge110Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge111Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge112Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge114Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge115Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge116Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge117Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge118Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge119Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge120Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge121Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge123Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge124Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge125Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge126Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge127Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|Ledge|LedgeShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape148.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape147.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape128.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape129.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge83Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge83Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape133.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape131.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape130.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape132.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape43.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape44.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge126Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge135Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge135Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape48.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape136.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape137.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge129Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge140Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "GroundShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "GroundShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape52.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape53.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge141Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape142.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape143.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge144Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge122Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge122Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape146.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape145.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge128Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge128Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape55.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape130.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape131.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|TrainTracks1|TrainTracks:group1|TrainTracks:pCube1|TrainTracks:pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|TrainTracks1|Ledge|LedgeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|TrainTracks1|TrainTracks:group1|TrainTracks:pCube4|TrainTracks:pCubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|TrainTracks1|TrainTracks:group2|TrainTracks:pCube1|TrainTracks:pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|TrainTracks1|TrainTracks:group2|TrainTracks:pCube4|TrainTracks:pCubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|TrainTracks1|TrainTracks:group3|TrainTracks:pCube1|TrainTracks:pCubeShape1.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|TrainTracks1|TrainTracks:group3|TrainTracks:pCube4|TrainTracks:pCubeShape4.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "TrainTracks:pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape149.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape30.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape31.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape150.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape33.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape34.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape35.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TrainTracks:pCubeShape36.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge127Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge127Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeWallShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeWallShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge151Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge153Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape133.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape132.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId51.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId52.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId53.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId55.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId63.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId64.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId65.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId67.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId69.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId71.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId72.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId73.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId74.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId75.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId76.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId78.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId79.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId80.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId81.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId82.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId84.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId85.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId86.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId87.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId88.msg" ":initialShadingGroup.gn" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of CommercialZoneFrozenTransformations.ma
