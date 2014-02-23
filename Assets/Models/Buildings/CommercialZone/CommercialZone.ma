//Maya ASCII 2014 scene
//Name: CommercialZone.ma
//Last modified: Sat, Feb 22, 2014 08:26:38 PM
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 21.83471517094663 27.693003140197991 -48.267377372058156 ;
	setAttr ".r" -type "double3" -4.5383527295337256 78.199999999995114 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 22.376260058527357;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 25.922450325173116 -52.828887027824365 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 142.29228092695513 2.3888982681595894 21.785668791348996 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 0 -1.1102230246251563e-16 ;
	setAttr ".rpt" -type "double3" 2.2589794332341524e-16 9.512285815109368e-22 2.4287527243684052e-16 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 0.86602540378443893;
	setAttr ".ow" 158.22759769845507;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -2.2204460492503131e-16 2 -1.9239070305551741e-16 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "MeterMan";
	setAttr ".t" -type "double3" 0 56.410902269771171 -76.496265303459779 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 1 1 ;
	setAttr -l on ".sx";
createNode mesh -n "MeterManShape" -p "MeterMan";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge1";
	setAttr ".t" -type "double3" 0 3.4886184521727461 3.7397000139949546 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.45556732409898271 4.4861625032283277 ;
	setAttr -l on ".sx";
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
	setAttr ".t" -type "double3" 0 2.3888982681595894 21.785668791348961 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 2.363482377603749 26.626419555955145 ;
	setAttr -l on ".sx";
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
	setAttr ".t" -type "double3" 0 2.3888982681595894 21.785668791348961 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 2.363482377603749 26.626419555955145 ;
	setAttr -l on ".sx";
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
	setAttr ".t" -type "double3" 0 9.7909314526443865 10.774840107544692 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 1.7797830323699997 3.4094445215465492 ;
	setAttr -l on ".sx";
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
	setAttr ".t" -type "double3" 0 9.7909314526443865 5.2053542001511488 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 1.7797830323699997 3.4094445215465492 ;
	setAttr -l on ".sx";
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
	setAttr ".t" -type "double3" 0 9.7909314526443865 -0.14428357931896674 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 1.7797830323699997 3.4094445215465492 ;
	setAttr -l on ".sx";
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
	setAttr ".t" -type "double3" 0 9.6443660340287689 27.776428666956569 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.53380551354727801 16.442839350760963 ;
	setAttr -l on ".sx";
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
	setAttr ".t" -type "double3" 0 12.107545345226502 15.285929735276024 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 2 0.53380551354727801 10.221643181750206 ;
	setAttr -l on ".sx";
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
	setAttr ".t" -type "double3" 0 12.107545345226502 19.771790158261162 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 2 0.53380551354727801 10.221643181750206 ;
	setAttr -l on ".sx";
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
	setAttr ".t" -type "double3" 0 14.471242246377733 20.677690231818147 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.45556732409898271 4.4861625032283277 ;
	setAttr -l on ".sx";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 14.471242246377733 12.970067278487557 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.45556732409898271 4.4861625032283277 ;
	setAttr -l on ".sx";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 26.455511325661341 5.0872358157337239 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.45556732409898271 2.9430224551061621 ;
	setAttr -l on ".sx";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 26.416530028635915 10.466654805242722 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.45556732409898271 2.9430224551061621 ;
	setAttr -l on ".sx";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 26.455511325661337 0.17559239052985731 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.45556732409898271 2.9430224551061621 ;
	setAttr -l on ".sx";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 22.290910339495177 2.7240795611688498 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.86513972213438572 24.483602241736911 ;
	setAttr -l on ".sx";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 15.298833108763343 -6.2657340212006556 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.52916610430367594 8.7919504230705812 ;
	setAttr -l on ".sx";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 18.088413819735809 16.756774960278168 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 1.1994431779755483 4.7418654848475512 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 23.123253257543357 22.828198988222567 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 2.0877752016322373 10.363089567017653 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 23.123253257543357 31.981775211382256 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 2.0877752016322373 10.363089567017653 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 30.518790881471375 15.011164332548615 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.69592506058913983 45.882470861436225 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 44.964178814513318 14.048404580611759 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 4.639227534593374 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 44.964178814513318 20.994028505299049 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 4.639227534593374 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 44.964178814513318 8.203077515280885 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 4.639227534593374 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
createNode transform -n "MeterMan24";
	setAttr ".t" -type "double3" 0 44.964178814513318 0.77607371462517516 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 4.639227534593374 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "polySurfaceShape1" -p "MeterMan24";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 47.441230413688963 -2.4712287733680487 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 4.639227534593374 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 33.634247103376829 28.79496509329466 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 3.9246479251879594 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "MeterMan28Shape" -p "MeterMan28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "MeterMan28";
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
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 14.991095 0 0 14.991095 
		0 0 14.991095 0.31317729 0 14.991095 0.31317729 0 0 0.31317729 0 0 0.31317729;
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
createNode transform -n "MeterMan29";
	setAttr ".t" -type "double3" 0 33.634247103376829 22.585390821365792 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 3.9246479251879594 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "MeterMan29Shape" -p "MeterMan29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "MeterMan29";
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
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 15.35667 0 0 15.35667 0 
		0 15.35667 0.31317729 0 15.35667 0.31317729 0 0 0.31317729 0 0 0.31317729;
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
createNode transform -n "MeterMan30";
	setAttr ".t" -type "double3" 0 33.634247103376829 14.888001379087669 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 3.9246479251879594 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "MeterMan30Shape" -p "MeterMan30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape4" -p "MeterMan30";
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
createNode transform -n "MeterMan31";
	setAttr ".t" -type "double3" 0 33.634247103376829 8.4975131441321317 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 3.9246479251879594 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "MeterMan31Shape" -p "MeterMan31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape5" -p "MeterMan31";
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
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 3.6318994 0 0 3.6318994 
		0 0 3.6318994 -0.19095069 0 3.6318994 -0.19095069 0 0 -0.19095069 0 0 -0.19095069;
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
createNode transform -n "MeterMan32";
	setAttr ".t" -type "double3" 0 33.634247103376829 2.9551834922848998 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 3.9246479251879594 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "MeterMan32Shape" -p "MeterMan32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape6" -p "MeterMan32";
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
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 11.632198 0 0 11.632198 
		0 0 11.632198 0.31317735 0 11.632198 0.31317735 0 0 0.31317729 0 0 0.31317729;
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
createNode transform -n "MeterMan33";
	setAttr ".t" -type "double3" 0 42.900323006699637 12.929543127103347 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 -0.588 -3.925 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr ".t" -type "double3" 0 33.634247103376829 -0.96299047748705036 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 3.9246479251879594 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "MeterMan34Shape" -p "MeterMan34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[12:13]" -type "float3"  0 2.9272017 5.5511151e-17 
		0 2.9272017 5.5511151e-17;
createNode mesh -n "polySurfaceShape7" -p "MeterMan34";
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
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 11.632198 2.9802322e-08 
		0 11.632198 2.9802322e-08 0 11.632198 0.31317729 0 11.632198 0.31317729 0 0 0.31317729 
		0 0 0.31317729;
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
createNode transform -n "Ledge";
	setAttr ".t" -type "double3" 0 44.964178814513318 0.79214565205678955 ;
	setAttr ".s" -type "double3" 2 0.58767004643099818 4.639227534593374 ;
createNode mesh -n "LedgeShape" -p "Ledge";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2";
	setAttr ".t" -type "double3" 0 44.964178814513318 0.79214565205678955 ;
	setAttr ".s" -type "double3" 2 0.58767004643099818 4.639227534593374 ;
createNode mesh -n "polySurfaceShape9" -p "polySurface2";
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 44.964178814513318 0.79214565205678955 ;
	setAttr ".s" -type "double3" 2 0.58767004643099818 4.639227534593374 ;
createNode mesh -n "MeterMan24Shape" -p "transform1";
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
createNode transform -n "Ledge27";
	setAttr ".t" -type "double3" 0 47.100582951676095 34.057415313792426 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 -4.639227534593374 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.7264503478719142 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 -0.8830389916612057 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
createNode transform -n "Ledge28";
	setAttr ".t" -type "double3" 0 44.62353135250045 30.810112825799202 ;
	setAttr ".s" -type "double3" 2 0.58767004643099818 -4.639227534593374 ;
createNode mesh -n "LedgeShape28" -p "Ledge28";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4";
	setAttr ".t" -type "double3" 0 44.62353135250045 30.810112825799202 ;
	setAttr ".s" -type "double3" 2 0.58767004643099818 -4.639227534593374 ;
createNode mesh -n "polySurfaceShape12" -p "polySurface4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 44.62353135250045 30.810112825799202 ;
	setAttr ".s" -type "double3" 2 0.58767004643099818 -4.639227534593374 ;
createNode mesh -n "MeterMan26Shape" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.5 -1 0.50000048 0.5 -1 0.50000048 -0.5 1 0.50000048
		 0.5 1 0.50000048 -0.5 1 -0.18682194 0.5 1 -0.18682194 -0.5 -1 -0.18682194 0.5 -1 -0.18682194
		 -0.5 1 0.50000048 0.5 1 0.50000048 0.5 1 -0.18682194 -0.5 1 -0.18682194 -0.5 1 0.0058746338
		 0.5 1 0.0058746338 0.5 1 -0.178442 -0.5 1 -0.178442 -0.5 4.091819763 -0.38913536
		 0.5 4.091819763 -0.38913536 0.5 4.091819763 -0.573452 -0.5 4.091819763 -0.573452
		 -0.5 1 0.0058746338 0.5 1 0.0058746338 0.5 1 -0.178442 -0.5 1 -0.178442;
	setAttr -s 40 ".ed[0:39]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 20 16 0 21 17 0 16 17 0
		 22 18 0 17 18 0 23 19 0 19 18 0 16 19 0 20 21 0 21 22 0 23 22 0 20 23 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
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
		f 4 36 29 -31 -29
		mu 0 4 26 27 23 22
		f 4 37 31 -33 -30
		mu 0 4 27 28 24 23
		f 4 -39 33 34 -32
		mu 0 4 28 29 25 24
		f 4 -40 28 35 -34
		mu 0 4 29 26 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge29";
	setAttr ".t" -type "double3" 0 50.655538659444765 18.645895686114141 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.31995369769197379 34.010141368896576 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge30";
	setAttr ".t" -type "double3" 0 50.655538659444765 3.097081990281735 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.31995369769197379 7.179918925695933 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge31";
	setAttr ".t" -type "double3" 0 57.212415260667683 5.511166302017279 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.23356620152150395 17.630689889704669 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.5688285994910007 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.3344702553368801 0.58593364151423732 ;
createNode mesh -n "Ledge31Shape" -p "Ledge31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt";
	setAttr ".pt[18]" -type "float3" 0 -1.1920929e-07 -1.3969839e-09 ;
	setAttr ".pt[19]" -type "float3" 0 -1.1920929e-07 -1.3969839e-09 ;
	setAttr ".pt[20]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".pt[21]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".pt[28]" -type "float3" 0 0 -0.0033616144 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.0033616144 ;
	setAttr ".pt[30]" -type "float3" 0 -1.1920929e-07 -0.0033505436 ;
	setAttr ".pt[31]" -type "float3" 0 -1.1920929e-07 -0.0033505436 ;
	setAttr ".pt[32]" -type "float3" -2.3841858e-07 -4.7254014 -0.00011412951 ;
	setAttr ".pt[33]" -type "float3" 2.3841858e-07 -4.7254014 -0.00011412951 ;
	setAttr ".pt[34]" -type "float3" 0 1.5434259 -0.0020592872 ;
	setAttr ".pt[35]" -type "float3" 0 1.5434259 -0.0020592872 ;
	setAttr ".pt[36]" -type "float3" 0 10.153996 -0.0033511673 ;
	setAttr ".pt[37]" -type "float3" 0 10.153996 -0.0033511673 ;
createNode mesh -n "polySurfaceShape13" -p "Ledge31";
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
createNode transform -n "Ledge32";
	setAttr ".t" -type "double3" 0 70.874571798693268 12.580185744339587 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.13916436115044506 14.792764173006599 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.5688285994910007 0.74252228530352848 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.3344702553368801 0.5859336415142371 ;
createNode mesh -n "Ledge32Shape" -p "Ledge32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape14" -p "Ledge32";
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
createNode transform -n "Ledge33";
	setAttr ".t" -type "double3" 0 79.167709111542649 10.674550598229338 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 6.0830770664532405 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 84.19074546447321 7.3559697855963586 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.92402011742356704 6.0830770664532405 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 73.895995197406052 7.3559697855963586 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.92402011742356704 7.6643186940036703 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge35Shape" -p "Ledge35";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[6:7]" -type "float3"  0 0 0.14358413 0 0 0.14358413;
createNode mesh -n "polySurfaceShape15" -p "Ledge35";
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
createNode transform -n "group1";
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 71.177321159168329 16.257974705086937 ;
	setAttr ".sp" -type "double3" 0 71.177321159168329 16.257974705086937 ;
createNode transform -n "Ledge36" -p "group1";
	setAttr ".t" -type "double3" 0 57.212415260667683 5.511166302017279 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.23356620152150395 17.630689889704669 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.5688285994910007 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.3344702553368801 0.58593364151423732 ;
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
	setAttr -s 14 ".pt";
	setAttr ".pt[18]" -type "float3" 0 -1.1920929e-07 -1.3969839e-09 ;
	setAttr ".pt[19]" -type "float3" 0 -1.1920929e-07 -1.3969839e-09 ;
	setAttr ".pt[20]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".pt[21]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".pt[28]" -type "float3" 0 0 -0.0033616144 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.0033616144 ;
	setAttr ".pt[30]" -type "float3" 0 -1.1920929e-07 -0.0033505436 ;
	setAttr ".pt[31]" -type "float3" 0 -1.1920929e-07 -0.0033505436 ;
	setAttr ".pt[32]" -type "float3" -2.3841858e-07 -4.7254014 -0.00011412951 ;
	setAttr ".pt[33]" -type "float3" 2.3841858e-07 -4.7254014 -0.00011412951 ;
	setAttr ".pt[34]" -type "float3" 0 1.5434259 -0.0020592872 ;
	setAttr ".pt[35]" -type "float3" 0 1.5434259 -0.0020592872 ;
	setAttr ".pt[36]" -type "float3" 0 10.153996 -0.0033511673 ;
	setAttr ".pt[37]" -type "float3" 0 10.153996 -0.0033511673 ;
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
	setAttr ".t" -type "double3" 0 70.874571798693268 12.580185744339587 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.13916436115044506 14.792764173006599 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.5688285994910007 0.74252228530352848 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.3344702553368801 0.5859336415142371 ;
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
	setAttr ".t" -type "double3" 0 79.167709111542649 10.674550598229338 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.58767004643099818 6.0830770664532405 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 84.19074546447321 7.3559697855963586 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.92402011742356704 6.0830770664532405 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.31317729 0 0 0.31317729 
		0 0 0.31317729 0 0 0.31317729;
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
	setAttr ".t" -type "double3" 0 73.895995197406052 7.3559697855963586 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.92402011742356704 7.6643186940036703 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 2 ".pt[6:7]" -type "float3"  0 0 0.14358413 0 0 0.14358413;
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
	setAttr ".t" -type "double3" 0 60.492137341021312 0.31352934926691223 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.078442847501337523 7.179918925695933 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge42";
	setAttr ".t" -type "double3" 0 70.904735340488813 -0.17763093372684047 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.078442847501337523 7.179918925695933 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge43";
	setAttr ".t" -type "double3" 0 60.270563275845618 30.129460341480726 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.078442847501337523 7.179918925695933 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge44";
	setAttr ".t" -type "double3" 0 70.371725277856598 32.209111341894754 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.078442847501337523 7.179918925695933 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge45";
	setAttr ".t" -type "double3" 0 5.6147365982077027 -15.993360489875007 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.078442847501337523 13.601957103209829 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge46";
	setAttr ".t" -type "double3" 0 11.77417085361348 -22.335748238015611 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.078442847501337523 7.7775637701628444 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge47";
	setAttr ".t" -type "double3" 0 16.469977167140659 -21.847872257389412 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.078442847501337523 6.5212078732264933 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge48";
	setAttr ".t" -type "double3" 0 14.762411234948962 -16.359267475344659 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.078442847501337523 5.3953407100100534 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge49";
	setAttr ".t" -type "double3" 0 11.774170853613487 -13.736934079478834 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.078442847501337523 5.3953407100100534 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge50";
	setAttr ".t" -type "double3" 0 18.604434582380293 -13.919887572213661 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.078442847501337523 6.2645904085274191 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge51";
	setAttr ".t" -type "double3" 0 22.610742637543972 -19.304710227003554 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.16095014176167871 33.595801961134036 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge52";
	setAttr ".t" -type "double3" 0 25.431419262975687 -18.427166387980353 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.24207577811480693 6.1592304911281524 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge53";
	setAttr ".t" -type "double3" 0 28.502822699556894 -25.760925614102824 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.10587797614749606 12.352679193334057 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge54";
	setAttr ".t" -type "double3" 0 34.731870435044939 -26.213369015354413 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 7.9068584584628514 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge55";
	setAttr ".t" -type "double3" 0 30.606355277912613 -15.403474869450722 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 15.740261542892927 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge56";
	setAttr ".t" -type "double3" 0 36.820738869035992 -15.142366315201842 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 4.0511750640913453 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge57";
	setAttr ".t" -type "double3" 0 36.820738869035992 -10.912407736369964 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 4.0511750640913453 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge58";
	setAttr ".t" -type "double3" 0 36.820738869035992 -19.790098580831931 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 4.0511750640913453 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge59";
	setAttr ".t" -type "double3" 0 40.606673282830847 -17.121299823652631 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.57202069304426417 2.0596130565962096 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge60";
	setAttr ".t" -type "double3" 0 32.192611019985108 -5.532119725770742 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.143434837854716 6.8997035625044489 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge61";
	setAttr ".t" -type "double3" 0 52.513365164216346 -5.532119725770742 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.094029511014501466 6.8997035625044489 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge62";
	setAttr ".t" -type "double3" 0 53.304037600228106 -11.989277953200125 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.094029511014501466 5.481431099172493 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge63";
	setAttr ".t" -type "double3" 0 47.242215590804605 -10.364006834731503 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072089290931184047 5.481431099172493 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge64";
	setAttr ".t" -type "double3" 0 54.514760640466491 -25.200750017116075 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072089290931184047 11.785076417839836 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge65";
	setAttr ".t" -type "double3" 0 59.602250784197302 -19.84897467111352 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.10573096039187112 9.2971158723490142 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge66";
	setAttr ".t" -type "double3" 0 62.7479458454496 -15.965004238342834 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.10573096039187112 4.4419553763354083 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge67";
	setAttr ".t" -type "double3" 0 63.036836208217665 -21.90330613968646 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.10573096039187112 3.9977598522936311 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge68";
	setAttr ".t" -type "double3" 0 66.026197582128191 -19.562562468479577 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.068028111032913646 3.9977598522936311 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge69";
	setAttr ".t" -type "double3" 0 66.730547485790453 -24.161553015921378 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.093591435524243483 5.5000216495254852 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge70";
	setAttr ".t" -type "double3" 0 64.64941330083542 -28.583963158950848 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072793341083915553 5.5000216495254852 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge71";
	setAttr ".t" -type "double3" 0 57.678205132755757 -28.814416321531997 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072793341083915553 5.5000216495254852 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge72";
	setAttr ".t" -type "double3" 0 72.119812416971357 -18.070418631825692 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072793341083915553 3.3235053700404182 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge73";
	setAttr ".t" -type "double3" 0 70.026825854041562 -15.907665850131565 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072793341083915553 6.2180724207339511 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge74";
	setAttr ".t" -type "double3" 0 74.422097636194138 -12.837952224501194 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072793341083915553 3.7574028610219017 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge75";
	setAttr ".t" -type "double3" 0 72.468643510792987 -9.698472380106498 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072793341083915553 3.7574028610219017 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge76";
	setAttr ".t" -type "double3" 0 69.119865010105315 -9.5589399425778456 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072793341083915553 3.7574028610219017 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge77";
	setAttr ".t" -type "double3" 0 59.910724133214202 -11.372861630450339 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072793341083915553 3.7574028610219017 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge78";
	setAttr ".t" -type "double3" 0 66.254936974449237 -11.372861630450339 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072793341083915553 3.7574028610219017 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge79";
	setAttr ".t" -type "double3" 0 85.536131526009598 -6.093646665381165 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.10514593476405928 8.3080350286775406 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge80";
	setAttr ".t" -type "double3" 0 89.844937536194521 -6.093646665381165 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072433864546980045 8.3080350286775406 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge81";
	setAttr ".t" -type "double3" 0 80.753822095628237 -22.490671934100575 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072433864546980045 3.230902646723437 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge82";
	setAttr ".t" -type "double3" 0 77.663988835230271 -6.0355134077950492 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.072433864546980045 5.4207369617076386 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.1603057494722242 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.7429931053556569 0.58593364151423732 ;
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
createNode transform -n "Ledge83";
	setAttr ".t" -type "double3" 0 0.68265436965092086 -27.415024598111771 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.078442847501337523 16.171215213410225 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge83Shape" -p "Ledge83";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape16" -p "Ledge83";
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
createNode transform -n "Ground";
	setAttr ".t" -type "double3" 0 -2 -12.61963792243219 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 2.363482377603749 189.3536574610963 ;
	setAttr -l on ".sx";
createNode mesh -n "GroundShape" -p "Ground";
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
createNode transform -n "Ledge84";
	setAttr ".t" -type "double3" 0 5.6147365982077027 -47.229998283315432 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.078442847501337523 26.736987705471847 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge85";
	setAttr ".t" -type "double3" 0 10.983963141077938 -62.34999315390688 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 35.946967344119528 0 0 ;
	setAttr ".s" -type "double3" 2 0.078442847501337523 26.736987705471847 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "polySurfaceShape18" -p "Ledge85";
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
createNode transform -n "polySurface5" -p "Ledge85";
createNode transform -n "polySurface7" -p "polySurface5";
createNode transform -n "transform7" -p "polySurface7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape22" -p "transform7";
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
createNode transform -n "polySurface8" -p "polySurface5";
createNode transform -n "polySurface9" -p "polySurface8";
createNode mesh -n "polySurfaceShape24" -p "polySurface9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface10" -p "polySurface8";
createNode transform -n "transform6" -p "polySurface10";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape25" -p "transform6";
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
createNode transform -n "transform5" -p "polySurface8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape23" -p "transform5";
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
createNode transform -n "transform4" -p "polySurface5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape20" -p "transform4";
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
createNode transform -n "polySurface6" -p "Ledge85";
createNode mesh -n "polySurfaceShape21" -p "polySurface6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform3" -p "Ledge85";
	setAttr ".v" no;
createNode mesh -n "Ledge85Shape" -p "transform3";
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
createNode transform -n "Ledge86";
	setAttr ".t" -type "double3" 0 17.603822207161897 -49.259201073221014 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -45.998435222561731 0 0 ;
	setAttr ".s" -type "double3" 2 0.21995546708165981 12.570040741436728 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge86Shape" -p "Ledge86";
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
createNode transform -n "Ledge87";
	setAttr ".t" -type "double3" 0 17.520122710359715 -43.321712725646265 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 45 0 0 ;
	setAttr ".s" -type "double3" 2 0.21995546708165981 12.570040741436728 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge88";
	setAttr ".t" -type "double3" 0 22.400283387291243 -38.409486320733279 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.098484929307543351 12.570040741436728 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge89";
	setAttr ".t" -type "double3" 0 28.115450144013273 -53.57141005175464 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "polySurfaceShape17" -p "Ledge89";
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
createNode transform -n "polySurface16" -p "Ledge89";
createNode mesh -n "polySurfaceShape31" -p "polySurface16";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface17" -p "Ledge89";
createNode mesh -n "polySurfaceShape32" -p "polySurface17";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform10" -p "Ledge89";
	setAttr ".v" no;
createNode mesh -n "Ledge89Shape" -p "transform10";
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
	setAttr -s 8 ".pt";
	setAttr ".pt[6]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[7]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[16]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[17]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[18]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[19]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[20]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[21]" -type "float3" 0 1.9073486e-06 0 ;
createNode transform -n "Ledge90";
	setAttr ".t" -type "double3" 0 34.918500079473439 -38.930643360443781 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge90Shape" -p "Ledge90";
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
createNode transform -n "Ledge91";
	setAttr ".t" -type "double3" 0 42.286622184918826 -46.296525179481861 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge91Shape" -p "Ledge91";
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
createNode transform -n "Ledge92";
	setAttr ".t" -type "double3" 0 34.918500079473439 -33.915866535465497 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge92Shape" -p "Ledge92";
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
createNode transform -n "Ledge93";
	setAttr ".t" -type "double3" 0 43.317738774316936 -35.784765141440566 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 7.3693107109666034 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge94";
	setAttr ".t" -type "double3" 0 27.353662695115325 -35.784765141440566 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 7.3693107109666034 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge95";
	setAttr ".t" -type "double3" 0 48.043622877916128 -33.388963557211085 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 7.3693107109666034 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge96";
	setAttr ".t" -type "double3" 0 51.848260488432118 -39.875375067574986 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 7.3693107109666034 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge97";
	setAttr ".t" -type "double3" 0 45.029437698518848 -52.02734753999529 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 142.64629753267724 0 0 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge98";
	setAttr ".t" -type "double3" 0 31.273520463341452 -53.57141005175464 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.27813228300742937 2.4761359631957585 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge99";
	setAttr ".t" -type "double3" 0 17.603822207161897 -57.988302060333041 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -45.998435222561731 0 0 ;
	setAttr ".s" -type "double3" 2 0.21995546708165981 12.570040741436728 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge100";
	setAttr ".t" -type "double3" 0 17.520122710359715 -52.050813712758291 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 45 0 0 ;
	setAttr ".s" -type "double3" 2 0.21995546708165981 12.570040741436728 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge100Shape" -p "Ledge100";
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
createNode transform -n "Ledge101";
	setAttr ".t" -type "double3" 0 38.264493605906395 -53.449268494534067 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.38413726278891591 7.1031449578189925 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge102";
	setAttr ".t" -type "double3" 0 20.879917403179977 -64.580318476408792 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.28607503951360547 7.1031449578189925 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.2236401762253839 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.6796586786024967 0.58593364151423721 ;
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
createNode transform -n "Ledge103";
	setAttr ".t" -type "double3" 0 52.492615678681901 -63.746616389357087 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 90 0.26775395974713773 -1.3861534245141662 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge103Shape" -p "Ledge103";
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
createNode transform -n "Ledge104";
	setAttr ".t" -type "double3" 0 56.250204732636099 -57.672535091832529 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 90 0.26775395974713773 -1.3861534245141662 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge104Shape" -p "Ledge104";
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
createNode transform -n "Ledge105";
	setAttr ".t" -type "double3" 0 60.88845199203648 -67.193976671064974 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 7.3693107109666034 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[1]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[4]" -type "float3" 0 8.4821039e-14 -0.56584913 ;
	setAttr ".pt[5]" -type "float3" 0 8.4821039e-14 -0.56584913 ;
	setAttr ".pt[6]" -type "float3" 0 -9.8065977 -0.56584913 ;
	setAttr ".pt[7]" -type "float3" 0 -9.8065977 -0.56584913 ;
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
	setAttr ".t" -type "double3" 0 66.627440996344092 -64.407657300888388 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 7.3693107109666034 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[1]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[4]" -type "float3" 0 8.4821039e-14 -0.56584913 ;
	setAttr ".pt[5]" -type "float3" 0 8.4821039e-14 -0.56584913 ;
	setAttr ".pt[6]" -type "float3" 0 -9.8065977 -0.56584913 ;
	setAttr ".pt[7]" -type "float3" 0 -9.8065977 -0.56584913 ;
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
	setAttr ".t" -type "double3" 0 63.179209301904699 -70.702803778387008 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.22416703244065739 1.9956980354357323 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge108";
	setAttr ".t" -type "double3" 0 69.048954796867662 -68.003873357935305 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -45 0 0 ;
	setAttr ".s" -type "double3" 2 0.38051709731662703 1.9956980354357323 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge108Shape" -p "Ledge108";
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
createNode transform -n "Ledge109";
	setAttr ".t" -type "double3" 0 69.048954796867662 -67.500595298038292 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 45 0 0 ;
	setAttr ".s" -type "double3" 2 0.38625108871941283 1.9956980354357323 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge109Shape" -p "Ledge109";
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
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -9.8065987 0 ;
	setAttr ".pt[1]" -type "float3" 0 -9.8065987 0 ;
	setAttr ".pt[4]" -type "float3" 0 0 0.31317729 ;
	setAttr ".pt[5]" -type "float3" 0 0 0.31317729 ;
	setAttr ".pt[6]" -type "float3" 0 -9.8065987 0.31317729 ;
	setAttr ".pt[7]" -type "float3" 0 -9.8065987 0.31317729 ;
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
	setAttr ".t" -type "double3" 0 55.489335924257809 -71.339809038470889 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 7.3693107109666034 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[1]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[4]" -type "float3" 0 8.4821039e-14 -0.56584913 ;
	setAttr ".pt[5]" -type "float3" 0 8.4821039e-14 -0.56584913 ;
	setAttr ".pt[6]" -type "float3" 0 -9.8065977 -0.56584913 ;
	setAttr ".pt[7]" -type "float3" 0 -9.8065977 -0.56584913 ;
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
	setAttr ".t" -type "double3" 0 51.01050545915416 -71.339809038470889 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 7.3693107109666034 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[1]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[4]" -type "float3" 0 8.4821039e-14 -0.56584913 ;
	setAttr ".pt[5]" -type "float3" 0 8.4821039e-14 -0.56584913 ;
	setAttr ".pt[6]" -type "float3" 0 -9.8065977 -0.56584913 ;
	setAttr ".pt[7]" -type "float3" 0 -9.8065977 -0.56584913 ;
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
	setAttr ".t" -type "double3" 0 46.749573536411042 -71.339809038470889 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 7.3693107109666034 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[1]" -type "float3" 0 -9.8065977 0 ;
	setAttr ".pt[4]" -type "float3" 0 8.4821039e-14 -0.56584913 ;
	setAttr ".pt[5]" -type "float3" 0 8.4821039e-14 -0.56584913 ;
	setAttr ".pt[6]" -type "float3" 0 -9.8065977 -0.56584913 ;
	setAttr ".pt[7]" -type "float3" 0 -9.8065977 -0.56584913 ;
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
createNode transform -n "Ledge113";
	setAttr ".t" -type "double3" 0 25.744979368587323 -75.941236314676388 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "polySurfaceShape17" -p "Ledge113";
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
createNode mesh -n "polySurfaceShape19" -p "Ledge113";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
	setAttr -s 4 ".pt";
	setAttr ".pt[8]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[11]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[12]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[15]" -type "float3" 0 1.9073486e-06 0 ;
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
createNode transform -n "polySurface14" -p "Ledge113";
createNode mesh -n "polySurfaceShape29" -p "polySurface14";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface15" -p "Ledge113";
createNode mesh -n "polySurfaceShape30" -p "polySurface15";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform9" -p "Ledge113";
	setAttr ".v" no;
createNode mesh -n "Ledge113Shape" -p "transform9";
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
createNode transform -n "Ledge114";
	setAttr ".t" -type "double3" 0 31.84189143886071 -68.241885531338212 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.098484929307543351 14.54875590559225 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt";
	setAttr ".pt[8]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[11]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[12]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[15]" -type "float3" 0 1.9073486e-06 0 ;
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
	setAttr ".t" -type "double3" 0 36.262005662890658 -76.701225717448608 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.098484929307543351 14.54875590559225 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt";
	setAttr ".pt[8]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[11]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[12]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[15]" -type "float3" 0 1.9073486e-06 0 ;
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
	setAttr ".t" -type "double3" 0 37.031386950192491 -63.236545332821741 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.098484929307543351 8.1703002539697973 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
	setAttr -s 4 ".pt";
	setAttr ".pt[8]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[11]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[12]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".pt[15]" -type "float3" 0 1.9073486e-06 0 ;
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
createNode transform -n "Ledge117";
	setAttr ".t" -type "double3" 0 41.377897126737551 -76.485299592629417 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.27075602261590354 6.7227790306809112 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.2236401762253839 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.6796586786024967 0.58593364151423721 ;
createNode mesh -n "Ledge117Shape" -p "Ledge117";
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
createNode transform -n "Ledge118";
	setAttr ".t" -type "double3" 0 42.314134529927749 -68.450408172780143 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.27075602261590354 6.7227790306809112 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.2236401762253839 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.6796586786024967 0.58593364151423721 ;
createNode mesh -n "Ledge118Shape" -p "Ledge118";
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
createNode transform -n "Ledge119";
	setAttr ".t" -type "double3" 0 44.271191788736694 -85.250737127544213 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.27075602261590354 6.7227790306809112 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 -1.2236401762253839 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 -4.9032988548278809 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 3.6796586786024967 0.58593364151423721 ;
createNode mesh -n "Ledge119Shape" -p "Ledge119";
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
createNode transform -n "Ledge120";
	setAttr ".t" -type "double3" 0 23.434279573441213 -50.584200252418405 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.048267367251117847 7.7990418146585245 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge121";
	setAttr ".t" -type "double3" 0 41.988863478697631 -48.25908654980605 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.048267367251117847 7.7990418146585245 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge122";
	setAttr ".t" -type "double3" 0 5.5330661707666691 -67.76177532157395 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.098484929307543351 12.570040741436728 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge122Shape" -p "Ledge122";
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
createNode transform -n "Ledge123";
	setAttr ".t" -type "double3" 0 5.5330661707666691 -79.100371876179253 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.098484929307543351 12.570040741436728 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge124";
	setAttr ".t" -type "double3" 0 12.902650643961053 -93.852545193837642 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge124Shape" -p "Ledge124";
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
createNode transform -n "Ledge125";
	setAttr ".t" -type "double3" 0 12.902650643961053 -88.837768368859372 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
createNode mesh -n "Ledge125Shape" -p "Ledge125";
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
createNode transform -n "Ledge126";
	setAttr ".t" -type "double3" 0 21.301889338804557 -90.706666974834434 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 7.3693107109666034 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "Ledge127";
	setAttr ".t" -type "double3" 0 5.3378132596029388 -90.706666974834434 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 2 0.083865250685419376 7.3693107109666034 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 0.7425222853035286 ;
	setAttr ".sp" -type "double3" 0 0 0.15658864378929138 ;
	setAttr ".spt" -type "double3" 0 0 0.58593364151423732 ;
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
createNode transform -n "polySurface11";
createNode transform -n "polySurface12" -p "polySurface11";
createNode mesh -n "polySurfaceShape27" -p "polySurface12";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface13" -p "polySurface11";
createNode mesh -n "polySurfaceShape28" -p "polySurface13";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform8" -p "polySurface11";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape26" -p "transform8";
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
createNode polyCube -n "polyCube1";
	setAttr ".h" 2;
	setAttr ".cuv" 4;
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
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n"
		+ "                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.58767004643099818 0 0 0 0 4.639227534593374 0
		 0 44.964178814513318 0.79214565205678955 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 45.551849 1.5185961 ;
	setAttr ".rs" 1904902645;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 45.551848860944318 -0.07456741949606871 ;
	setAttr ".cbx" -type "double3" 1 45.551848860944318 3.111759419353477 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.58767004643099818 0 0 0 0 4.639227534593374 0
		 0 44.964178814513318 0.79214565205678955 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 45.551849 1.5185959 ;
	setAttr ".rs" 483847698;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 45.551848860944318 -0.074567488625946074 ;
	setAttr ".cbx" -type "double3" 1 45.551848860944318 3.1117592810937218 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.58767004643099818 0 0 0 0 4.639227534593374 0
		 0 44.964178814513318 0.79214565205678955 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 45.551849 0.39185396 ;
	setAttr ".rs" 1082557705;
	setAttr ".lt" -type "double3" 0 1.8325419931035192 1.8169715078850497 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 45.551848860944318 -0.03568912214748543 ;
	setAttr ".cbx" -type "double3" 1 45.551848860944318 0.81939706447083249 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[3]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[4]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[5]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[8]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[9]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".tk[10]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[11]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.49412581 ;
	setAttr ".tk[13]" -type "float3" 0 0 -0.49412581 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.0083803115 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.0083803115 ;
createNode makeTextCurves -n "makeTextCurves1";
	setAttr ".t" -type "string" "Here Lies NateDawg";
	setAttr ".f" -type "string" "Times New Roman-Regular";
	setAttr -s 16 ".p";
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.58767004643099818 0 0 0 0 3.9246479251879594 0
		 0 33.634247103376829 28.92293208264255 1;
	setAttr ".wt" 0.80124610662460327;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[6]" "f[8]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.58767004643099818 0 0 0 0 3.9246479251879594 0
		 0 33.634247103376829 28.92293208264255 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 42.03944 29.537487 ;
	setAttr ".rs" 761268864;
	setAttr ".lt" -type "double3" 0 7.1054273576010019e-15 2.234846696662899 ;
	setAttr ".ls" -type "double3" 1 1 2.049492339300941 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 41.047145279658729 28.189718711959848 ;
	setAttr ".cbx" -type "double3" 1 43.0317344031141 30.885256045236531 ;
createNode polySubdFace -n "polySubdFace1";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".dvv" 5;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 3 "f[2]" "f[6]" "f[8]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.58767004643099818 0 0 0 0 3.9246479251879594 0
		 0 33.634247103376829 22.713357810713681 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 38.146576 21.980145 ;
	setAttr ".rs" 508080459;
	setAttr ".lt" -type "double3" 0 3.6738086358781095e-16 2.9998924085180789 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 33.046577056945829 21.98014444003098 ;
	setAttr ".cbx" -type "double3" 1 43.24657234483562 21.98014444003098 ;
createNode polySubdFace -n "polySubdFace2";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.58767004643099818 0 0 0 0 3.9246479251879594 0
		 0 33.634247103376829 15.015968368435558 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 35.226242 13.475593 ;
	setAttr ".rs" 389890708;
	setAttr ".lt" -type "double3" 0 -8.4468782756208988e-16 4.1958642145469796 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 35.226240560380568 12.308025873332699 ;
	setAttr ".cbx" -type "double3" 1 35.226240560380568 14.643159102181119 ;
createNode polySubdFace -n "polySubdFace3";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.58767004643099818 0 0 0 0 3.9246479251879594 0
		 0 33.634247103376829 8.6254801334800213 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 36.356277 9.4192886 ;
	setAttr ".rs" 228899214;
	setAttr ".lt" -type "double3" 0 -2.0298443935846443e-16 7.0858393545432108 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 36.356275613475901 8.2507730154832526 ;
	setAttr ".cbx" -type "double3" 1 36.356275613475901 10.587804096074001 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.58767004643099818 0 0 0 0 3.9246479251879594 0
		 0 33.634247103376829 3.0831504816327895 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 41.057812 1.7386189 ;
	setAttr ".rs" 558240898;
	setAttr ".lt" -type "double3" 0 1.3277327703207592e-17 2.3097957680966417 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 41.057811684691529 2.3499373448773331 ;
	setAttr ".cbx" -type "double3" 1 41.057811684691529 5.0454744442267696 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.58767004643099818 0 0 0 0 3.9246479251879594 0
		 0 33.634247103376829 -0.8350234881391605 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 41.057812 1.7386189 ;
	setAttr ".rs" 540641354;
	setAttr ".lt" -type "double3" 0 1.3277327703207592e-17 2.3097957680966417 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 41.057811684691529 -1.5682368588218625 ;
	setAttr ".cbx" -type "double3" 1 41.057811684691529 1.1273004744548192 ;
createNode polySubdFace -n "polySubdFace4";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0 0.15576501 0 0 0.15576501
		 0 0 0.41183886 0 0 0.41183886;
createNode polySubdFace -n "polySubdFace5";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0 -0.41183886 0 0 -0.41183886
		 0 0 -0.15576504 0 0 -0.15576504;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.58767004643099818 0 0 0 0 3.9246479251879594 0
		 0 33.634247103376829 3.0831504816327895 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 39.915119 2.349937 ;
	setAttr ".rs" 666371235;
	setAttr ".lt" -type "double3" 0 2.2596599557041531e-14 1.224137276449766 ;
	setAttr ".ls" -type "double3" 1 1 0.99950633782383924 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 38.772424559031194 2.3499369355046533 ;
	setAttr ".cbx" -type "double3" 1 41.05781392647485 2.3499370524682761 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[4]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[5]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".tk[12]" -type "float3" 0 2.9272017 -1.4901161e-08 ;
	setAttr ".tk[13]" -type "float3" 0 2.9272017 -1.4901161e-08 ;
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[14:17]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.58767004643099818 0 0 0 0 4.639227534593374 0
		 0 44.964178814513318 0.79214565205678955 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 44.96418 0.79214567 ;
	setAttr ".rs" 1037757475;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polyChipOff -n "polyChipOff2";
	setAttr ".ics" -type "componentList" 1 "f[0:12]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.58767004643099818 0 0 0 0 4.639227534593374 0
		 0 44.964178814513318 0.79214565205678955 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 44.96418 0.79214567 ;
	setAttr ".rs" 1318857821;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode displayLayer -n "Background";
	setAttr ".do" 1;
createNode polySubdFace -n "polySubdFace6";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".dvv" 4;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.23356620152150395 0 0 0 0 17.630689889704669 0
		 0 56.788831549623573 3.4929227684223823 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 57.022396 1.5599207 ;
	setAttr ".rs" 124305041;
	setAttr ".lt" -type "double3" 0 9.1313893765578204e-17 1.4112412179364071 ;
	setAttr ".ls" -type "double3" 1 1 1.1626859811556425 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 57.022397751145078 0.19910946136689844 ;
	setAttr ".cbx" -type "double3" 1 57.022397751145078 2.9207319772024949 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[8:13]" -type "float3"  0 0 -0.059443627 0 0 -0.093878321
		 0 0 -0.017337214 0 0 -0.059443627 0 0 -0.093878321 0 0 -0.017337214;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[7]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.23356620152150395 0 0 0 0 17.630689889704669 0
		 0 56.788831549623573 3.4929227684223823 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 57.022396 3.7596405 ;
	setAttr ".rs" 1263552142;
	setAttr ".lt" -type "double3" 0 -9.5850096554060866e-16 11.683295408757054 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 57.022394187207674 2.920731911523057 ;
	setAttr ".cbx" -type "double3" 1 57.022394187207674 4.5985488848807261 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.23356620152150395 0 0 0 0 17.630689889704669 0
		 0 56.788831549623573 3.4929227684223823 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 57.022392 6.4157476 ;
	setAttr ".rs" 1769738128;
	setAttr ".lt" -type "double3" 0 5.4211861252527202e-16 6.4414851813594254 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 57.022390623270269 4.5985488848807261 ;
	setAttr ".cbx" -type "double3" 1 57.022390623270269 8.232946333022765 ;
createNode polySubdFace -n "polySubdFace7";
	setAttr ".ics" -type "componentList" 1 "f[15]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 1 "f[21]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.23356620152150395 0 0 0 0 17.630689889704669 0
		 0 56.788831549623573 3.4929227684223823 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 66.88723 2.920732 ;
	setAttr ".rs" 1860868787;
	setAttr ".lt" -type "double3" 0 -2.8222846512099468e-16 2.3045703080879578 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 65.068778519319565 2.920731911523057 ;
	setAttr ".cbx" -type "double3" 1 68.705686647769681 2.920731911523057 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[26:27]" -type "float3"  0 9.43947124 0 0 9.43947124
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 2 "f[7]" "f[24]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.23356620152150395 0 0 0 0 17.630689889704669 0
		 0 56.788831549623573 3.4929227684223823 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 68.705688 2.6073551 ;
	setAttr ".rs" 1279463257;
	setAttr ".lt" -type "double3" 0 9.4558114107978247e-17 2.4258518874615476 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 68.705686647769681 0.61616154494085595 ;
	setAttr ".cbx" -type "double3" 1 68.705686647769681 4.5985488848807261 ;
createNode polySubdFace -n "polySubdFace8";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.13916436115044506 0 0 0 0 14.792764173006599 0
		 0 69.988107651864098 11.006329149897194 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 70.127274 13.738191 ;
	setAttr ".rs" 1705800919;
	setAttr ".lt" -type "double3" 0 2.2121434540087567e-15 17.962608435163915 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 70.127272013014547 12.928498328081067 ;
	setAttr ".cbx" -type "double3" 1 70.127272013014547 14.547882205767696 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[8:9]" -type "float3"  0 0 0.10364559 0 0 0.10364559;
createNode polySubdFace -n "polySubdFace9";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.92402011742356704 0 0 0 0 7.6643186940036703 0
		 0 73.895995197406052 6.89834680103694 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 74.820015 6.7824845 ;
	setAttr ".rs" 1035686606;
	setAttr ".lt" -type "double3" 0 3.1112729773683534 4.8834281803212454 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 74.820015314829618 5.4664773085175105 ;
	setAttr ".cbx" -type "double3" 1 74.820015314829618 8.0984917282781428 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.92402011742356704 0 0 0 0 7.6643186940036703 0
		 0 73.895995197406052 6.89834680103694 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 79.70343 3.6712117 ;
	setAttr ".rs" 1993450768;
	setAttr ".lt" -type "double3" 0 5.3689219410483095e-17 8.2417947485308645 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 79.703429770705753 2.3552043914399494 ;
	setAttr ".cbx" -type "double3" 1 79.703429770705753 4.9872191538223269 ;
createNode polySubdFace -n "polySubdFace10";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".dvv" 3;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 1 "f[7]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.078442847501337523 0 0 0 0 16.171215213410225 0
		 0 0.68265436965092086 -29.204730971500904 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.76109719 -26.672503 ;
	setAttr ".rs" 1269614964;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 0.76109721715225842 -31.247208340253785 ;
	setAttr ".cbx" -type "double3" 1 0.76109721715225842 -22.097797972151891 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0 0.16842139 0 0 -0.16842145
		 0 0 0.16842139 0 0 -0.16842145;
createNode polySubdFace -n "polySubdFace11";
	setAttr ".ics" -type "componentList" 1 "f[7]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[2]" -type "float3" 0 1.8738356 0 ;
	setAttr ".tk[3]" -type "float3" 0 1.8738356 0 ;
	setAttr ".tk[8]" -type "float3" 0 1.9033203 0.018215826 ;
	setAttr ".tk[9]" -type "float3" 0 13.236896 -6.6613381e-16 ;
	setAttr ".tk[10]" -type "float3" 0 1.9033203 0.018215826 ;
	setAttr ".tk[11]" -type "float3" 0 13.236896 -6.6613381e-16 ;
	setAttr ".tk[12]" -type "float3" 0 16.938412 0.018156121 ;
	setAttr ".tk[13]" -type "float3" 0 16.938412 0.018156121 ;
	setAttr ".tk[14]" -type "float3" 0 16.938412 -4.4408921e-16 ;
	setAttr ".tk[15]" -type "float3" 0 16.938412 -4.4408921e-16 ;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.078442847501337523 0 0 0 0 16.171215213410225 0
		 0 0.68265436965092086 -29.204730971500904 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.0897944 -26.95871 ;
	setAttr ".rs" 1119615619;
	setAttr ".lt" -type "double3" 0 4.2060892687138602e-16 1.8942542063266783 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 2.0897944640422557 -31.247209063163439 ;
	setAttr ".cbx" -type "double3" 1 2.0897944640422557 -22.670210366453869 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[16:17]" -type "float3"  0 0 0.23841685 0 0 0.23841685;
createNode polySubdFace -n "polySubdFace12";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.078442847501337523 0 0 0 0 16.171215213410225 0
		 0 0.68265436965092086 -29.204730971500904 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.9840491 -27.606863 ;
	setAttr ".rs" 1187993763;
	setAttr ".lt" -type "double3" 0 -3.250784989251867e-15 1.3597659337436876 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 3.9840490093430998 -31.247211231892397 ;
	setAttr ".cbx" -type "double3" 1 3.9840490093430998 -23.966516535550817 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[18:23]" -type "float3"  0 0 -1.4901161e-08 0 0 -1.4901161e-08
		 0 0 -1.4901161e-08 0 0 -1.4901161e-08 0 -1.4210855e-14 0.1850321 0 -1.4210855e-14
		 0.1850321;
createNode polySubdFace -n "polySubdFace13";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".dvv" 3;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	setAttr ".ics" -type "componentList" 1 "f[23]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.078442847501337523 0 0 0 0 16.171215213410225 0
		 0 0.68265436965092086 -29.204730971500904 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5.3438148 -28.261341 ;
	setAttr ".rs" 2031028565;
	setAttr ".lt" -type "double3" 0 -1.1268192176900865e-14 13.252573910970137 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 5.3438150029048552 -29.811822305774548 ;
	setAttr ".cbx" -type "double3" 1 5.3438150029048552 -26.710858212248951 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[28:31]" -type "float3"  0 -3.5527137e-14 -0.01963005
		 0 -3.5527137e-14 -0.061313115 0 -3.5527137e-14 -0.01963005 0 -3.5527137e-14 -0.061313115;
createNode polySubdFace -n "polySubdFace14";
	setAttr ".ics" -type "componentList" 2 "f[24]" "f[26]";
	setAttr ".dvv" 6;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	setAttr ".ics" -type "componentList" 5 "f[28]" "f[30]" "f[32:33]" "f[35]" "f[37]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.078442847501337523 0 0 0 0 16.171215213410225 0
		 0 0.68265436965092086 -29.204730971500904 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 13.405404 -28.261341 ;
	setAttr ".rs" 1490962578;
	setAttr ".lt" -type "double3" 0 -1.5608213058187896e-16 1.2745073166446801 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 8.2144203304859609 -29.811824715473392 ;
	setAttr ".cbx" -type "double3" 1 18.596388530851144 -26.710858453218833 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[36:55]" -type "float3"  0 8.43725395 -8.7430063e-16
		 0 -0.99559653 -8.7430063e-16 0 10.39341259 -4.3715032e-16 0 4.046972275 -4.3715032e-16
		 0 9.12156487 -2.220446e-16 0 8.43725395 -8.7430063e-16 0 -0.99559653 -8.7430063e-16
		 0 10.39341259 -4.3715032e-16 0 4.046972275 -4.3715032e-16 0 9.12156487 -2.220446e-16
		 0 8.43725395 -8.8817842e-16 0 -0.99559653 -8.8817842e-16 0 10.39341259 -4.4408921e-16
		 0 4.046972275 -4.4408921e-16 0 9.12156487 -2.220446e-16 0 8.43725395 -8.8817842e-16
		 0 -0.99559653 -8.8817842e-16 0 10.39341259 -4.4408921e-16 0 4.046972275 -4.4408921e-16
		 0 9.12156487 -2.220446e-16;
createNode polySubdFace -n "polySubdFace15";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".dvv" 5;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.063504246416740184 0.046048789464654065 0
		 0 -15.695579099768452 21.645214443046399 0 0 13.441712585798228 -64.99686564276837 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 16.062622 -69.266472 ;
	setAttr ".rs" 310986896;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 15.687738402361315 -69.53831405872269 ;
	setAttr ".cbx" -type "double3" 1 16.437507492658614 -68.994634526496881 ;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.063504246416740184 0.046048789464654065 0
		 0 -15.695579099768452 21.645214443046399 0 0 13.441712585798228 -64.99686564276837 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 16.06262 -69.266472 ;
	setAttr ".rs" 362431075;
	setAttr ".lt" -type "double3" 0 1.0047518372857668e-14 0.65180715494530561 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 15.687736679521104 -69.538313339469482 ;
	setAttr ".cbx" -type "double3" 1 16.437504619133396 -68.994634641639095 ;
createNode polySubdFace -n "polySubdFace16";
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".dvv" 5;
	setAttr ".sbm" 1;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[4]" -type "float3" 0 -1.9073486e-06 7.4505806e-09 ;
	setAttr ".tk[5]" -type "float3" 0 -1.9073486e-06 7.4505806e-09 ;
	setAttr ".tk[6]" -type "float3" 0 -1.9073486e-06 7.4505806e-09 ;
	setAttr ".tk[7]" -type "float3" 0 -1.9073486e-06 7.4505806e-09 ;
	setAttr ".tk[12]" -type "float3" 0 -60.060978 -0.22669758 ;
	setAttr ".tk[13]" -type "float3" 0 -60.060978 -0.22669758 ;
	setAttr ".tk[14]" -type "float3" 0 -57.529331 -0.20688815 ;
	setAttr ".tk[15]" -type "float3" 0 -57.529331 -0.20688815 ;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.063504246416740184 0.046048789464654065 0
		 0 -15.695579099768452 21.645214443046399 0 0 13.441712585798228 -64.99686564276837 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 16.4755 -71.454735 ;
	setAttr ".rs" 508471150;
	setAttr ".lt" -type "double3" 0 3.6588787555302815e-14 2.6342598897923826 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 16.462833121151849 -72.27477233566519 ;
	setAttr ".cbx" -type "double3" 1 16.488165499161902 -70.63470489394966 ;
createNode polySubdFace -n "polySubdFace17";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace27";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.098484929307543351 0 0 0 0 24.784200889809185 0
		 0 28.115450144013273 -56.709812171187679 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 27.051163 -60.543243 ;
	setAttr ".rs" 229843848;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 27.051163132522767 -61.340063806619135 ;
	setAttr ".cbx" -type "double3" 1 27.051163132522767 -59.746424900324264 ;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[8]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".tk[11]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".tk[12]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".tk[15]" -type "float3" 0 1.9073486e-06 0 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.27911076 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.27911076 ;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.098484929307543351 0 0 0 0 24.784200889809185 0
		 0 28.115450144013273 -56.709812171187679 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 27.051165 -60.543243 ;
	setAttr ".rs" 217338254;
	setAttr ".lt" -type "double3" 0 -7.5943836164084002e-16 3.4202063224965471 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 27.051165104896267 -61.340062329365651 ;
	setAttr ".cbx" -type "double3" 1 27.051165104896267 -59.746424900324264 ;
createNode polyExtrudeFace -n "polyExtrudeFace29";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.098484929307543351 0 0 0 0 24.784200889809185 0
		 0 25.744979368587323 -79.079638434109441 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 25.843464 -75.198715 ;
	setAttr ".rs" 1906725438;
	setAttr ".lt" -type "double3" 0 5.6393912349739551e-16 2.5397560264425145 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 25.843464297894865 -76.900949717513868 ;
	setAttr ".cbx" -type "double3" 1 25.843464297894865 -73.496478525888563 ;
createNode polyExtrudeFace -n "polyExtrudeFace30";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.063504246416740184 0.046048789464654065 0
		 0 -15.695579099768452 21.645214443046399 0 0 13.441712585798228 -64.99686564276837 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 16.114202 -77.194138 ;
	setAttr ".rs" 208473311;
	setAttr ".lt" -type "double3" 0 3.8895184211584999 5.1965301052441921 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 15.664243388205453 -77.194977825680013 ;
	setAttr ".cbx" -type "double3" 1 16.564162340739866 -77.193296716695102 ;
createNode polyChipOff -n "polyChipOff3";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[22:25]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.063504246416740184 0.046048789464654065 0
		 0 -15.695579099768452 21.645214443046399 0 0 13.441712585798228 -64.99686564276837 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 13.441712 -64.996864 ;
	setAttr ".rs" 1811306249;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polyChipOff -n "polyChipOff4";
	setAttr ".ics" -type "componentList" 2 "f[10:12]" "f[14:15]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.063504246416740184 0.046048789464654065 0
		 0 -15.695579099768452 21.645214443046399 0 0 13.441712585798228 -64.99686564276837 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 13.441712 -64.996864 ;
	setAttr ".rs" 416443122;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate4";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 1 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:15]";
createNode polyChipOff -n "polyChipOff5";
	setAttr ".ics" -type "componentList" 1 "f[1:4]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.063504246416740184 0.046048789464654065 0
		 0 -15.695579099768452 21.645214443046399 0 0 13.441712585798228 -64.99686564276837 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 13.441712 -64.996864 ;
	setAttr ".rs" 1074188048;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate5";
	setAttr ".ic" 4;
	setAttr ".rs" -type "Int32Array" 1 1 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".muv" 2;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode polyChipOff -n "polyChipOff6";
	setAttr ".ics" -type "componentList" 1 "f[12:16]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 1550420767;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate6";
	setAttr ".ic" 5;
	setAttr ".rs" -type "Int32Array" 1 4 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode polyChipOff -n "polyChipOff7";
	setAttr ".ics" -type "componentList" 2 "f[8]" "f[10:13]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.098484929307543351 0 0 0 0 24.784200889809185 0
		 0 25.744979368587323 -79.079638434109441 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 25.74498 -79.079636 ;
	setAttr ".rs" 1956010815;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate7";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polyChipOff -n "polyChipOff8";
	setAttr ".ics" -type "componentList" 2 "f[3]" "f[15:18]";
	setAttr ".ix" -type "matrix" 2 0 0 0 0 0.098484929307543351 0 0 0 0 24.784200889809185 0
		 0 28.115450144013273 -56.709812171187679 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 28.11545 -56.709812 ;
	setAttr ".rs" 1548815580;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate8";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:18]";
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr -s 157 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 26 ".gn";
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
	setAttr ".pa" 1;
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
connectAttr "polyCube1.out" "MeterManShape.i";
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
connectAttr "polyExtrudeFace4.out" "MeterMan28Shape.i";
connectAttr "polyExtrudeFace5.out" "MeterMan29Shape.i";
connectAttr "polyExtrudeFace6.out" "MeterMan30Shape.i";
connectAttr "polyExtrudeFace7.out" "MeterMan31Shape.i";
connectAttr "polyExtrudeFace10.out" "MeterMan32Shape.i";
connectAttr "polySubdFace4.out" "MeterMan34Shape.i";
connectAttr "polyChipOff2.out" "LedgeShape.i";
connectAttr "groupId3.id" "LedgeShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape.iog.og[0].gco";
connectAttr "groupParts3.og" "polySurfaceShape9.i";
connectAttr "groupId4.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupId1.id" "MeterMan24Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "MeterMan24Shape.iog.og[0].gco";
connectAttr "groupParts1.og" "MeterMan24Shape.i";
connectAttr "groupId2.id" "MeterMan24Shape.ciog.cog[0].cgid";
connectAttr "groupParts5.og" "LedgeShape28.i";
connectAttr "groupId7.id" "LedgeShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape28.iog.og[0].gco";
connectAttr "groupParts6.og" "polySurfaceShape12.i";
connectAttr "groupId8.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "MeterMan26Shape.iog.og[0].gco";
connectAttr "groupId6.id" "MeterMan26Shape.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace15.out" "Ledge31Shape.i";
connectAttr "polyExtrudeFace16.out" "Ledge32Shape.i";
connectAttr "polyExtrudeFace18.out" "Ledge35Shape.i";
connectAttr "polyExtrudeFace23.out" "Ledge83Shape.i";
connectAttr "groupParts10.og" "polySurfaceShape22.i";
connectAttr "groupId13.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupParts12.og" "polySurfaceShape24.i";
connectAttr "groupId15.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupParts13.og" "polySurfaceShape25.i";
connectAttr "groupId16.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "polyChipOff5.out" "polySurfaceShape23.i";
connectAttr "groupId14.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "polyChipOff4.out" "polySurfaceShape20.i";
connectAttr "groupId11.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupParts9.og" "polySurfaceShape21.i";
connectAttr "groupId12.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupId9.id" "Ledge85Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ledge85Shape.iog.og[0].gco";
connectAttr "groupParts7.og" "Ledge85Shape.i";
connectAttr "groupId10.id" "Ledge85Shape.ciog.cog[0].cgid";
connectAttr "groupParts21.og" "polySurfaceShape31.i";
connectAttr "groupId26.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape32.i";
connectAttr "groupId27.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape32.iog.og[0].gco";
connectAttr "groupId24.id" "Ledge89Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ledge89Shape.iog.og[0].gco";
connectAttr "groupParts20.og" "Ledge89Shape.i";
connectAttr "groupId25.id" "Ledge89Shape.ciog.cog[0].cgid";
connectAttr "groupParts18.og" "polySurfaceShape29.i";
connectAttr "groupId22.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape30.i";
connectAttr "groupId23.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupId20.id" "Ledge113Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ledge113Shape.iog.og[0].gco";
connectAttr "groupParts17.og" "Ledge113Shape.i";
connectAttr "groupId21.id" "Ledge113Shape.ciog.cog[0].cgid";
connectAttr "groupParts15.og" "polySurfaceShape27.i";
connectAttr "groupId18.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupParts16.og" "polySurfaceShape28.i";
connectAttr "groupId19.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "polyChipOff6.out" "polySurfaceShape26.i";
connectAttr "groupId17.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape26.iog.og[0].gco";
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
connectAttr "polySurfaceShape1.o" "polyExtrudeFace1.ip";
connectAttr "MeterMan24Shape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "MeterMan24Shape.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace3.ip";
connectAttr "MeterMan24Shape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak1.ip";
connectAttr "polySurfaceShape2.o" "polySplitRing1.ip";
connectAttr "MeterMan28Shape.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polyExtrudeFace4.ip";
connectAttr "MeterMan28Shape.wm" "polyExtrudeFace4.mp";
connectAttr "polySurfaceShape3.o" "polySubdFace1.ip";
connectAttr "polySubdFace1.out" "polyExtrudeFace5.ip";
connectAttr "MeterMan29Shape.wm" "polyExtrudeFace5.mp";
connectAttr "|MeterMan30|polySurfaceShape4.o" "polySubdFace2.ip";
connectAttr "polySubdFace2.out" "polyExtrudeFace6.ip";
connectAttr "MeterMan30Shape.wm" "polyExtrudeFace6.mp";
connectAttr "polySurfaceShape5.o" "polySubdFace3.ip";
connectAttr "polySubdFace3.out" "polyExtrudeFace7.ip";
connectAttr "MeterMan31Shape.wm" "polyExtrudeFace7.mp";
connectAttr "polySurfaceShape6.o" "polyExtrudeFace8.ip";
connectAttr "MeterMan32Shape.wm" "polyExtrudeFace8.mp";
connectAttr "polySurfaceShape7.o" "polyExtrudeFace9.ip";
connectAttr "MeterMan34Shape.wm" "polyExtrudeFace9.mp";
connectAttr "polyTweak2.out" "polySubdFace4.ip";
connectAttr "polyExtrudeFace9.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySubdFace5.ip";
connectAttr "polyExtrudeFace8.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace10.ip";
connectAttr "MeterMan32Shape.wm" "polyExtrudeFace10.mp";
connectAttr "polySubdFace5.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace3.out" "polyChipOff1.ip";
connectAttr "MeterMan24Shape.wm" "polyChipOff1.mp";
connectAttr "MeterMan24Shape.o" "polySeparate1.ip";
connectAttr "polyChipOff1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polySeparate1.out[1]" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "groupParts2.og" "polyChipOff2.ip";
connectAttr "LedgeShape.wm" "polyChipOff2.mp";
connectAttr "MeterMan26Shape.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts5.ig";
connectAttr "groupId7.id" "groupParts5.gi";
connectAttr "polySeparate2.out[1]" "groupParts6.ig";
connectAttr "groupId8.id" "groupParts6.gi";
connectAttr "layerManager.dli[1]" "Background.id";
connectAttr "|Ledge31|polySurfaceShape13.o" "polySubdFace6.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace11.ip";
connectAttr "Ledge31Shape.wm" "polyExtrudeFace11.mp";
connectAttr "polySubdFace6.out" "polyTweak5.ip";
connectAttr "polyExtrudeFace11.out" "polyExtrudeFace12.ip";
connectAttr "Ledge31Shape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "polyExtrudeFace13.ip";
connectAttr "Ledge31Shape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace13.out" "polySubdFace7.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace14.ip";
connectAttr "Ledge31Shape.wm" "polyExtrudeFace14.mp";
connectAttr "polySubdFace7.out" "polyTweak6.ip";
connectAttr "polyExtrudeFace14.out" "polyExtrudeFace15.ip";
connectAttr "Ledge31Shape.wm" "polyExtrudeFace15.mp";
connectAttr "|Ledge32|polySurfaceShape14.o" "polySubdFace8.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace16.ip";
connectAttr "Ledge32Shape.wm" "polyExtrudeFace16.mp";
connectAttr "polySubdFace8.out" "polyTweak7.ip";
connectAttr "|Ledge35|polySurfaceShape15.o" "polySubdFace9.ip";
connectAttr "polySubdFace9.out" "polyExtrudeFace17.ip";
connectAttr "Ledge35Shape.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace17.out" "polyExtrudeFace18.ip";
connectAttr "Ledge35Shape.wm" "polyExtrudeFace18.mp";
connectAttr "polySurfaceShape16.o" "polySubdFace10.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace19.ip";
connectAttr "Ledge83Shape.wm" "polyExtrudeFace19.mp";
connectAttr "polySubdFace10.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polySubdFace11.ip";
connectAttr "polyExtrudeFace19.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace20.ip";
connectAttr "Ledge83Shape.wm" "polyExtrudeFace20.mp";
connectAttr "polySubdFace11.out" "polyTweak10.ip";
connectAttr "polyExtrudeFace20.out" "polySubdFace12.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace21.ip";
connectAttr "Ledge83Shape.wm" "polyExtrudeFace21.mp";
connectAttr "polySubdFace12.out" "polyTweak11.ip";
connectAttr "polyExtrudeFace21.out" "polySubdFace13.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace22.ip";
connectAttr "Ledge83Shape.wm" "polyExtrudeFace22.mp";
connectAttr "polySubdFace13.out" "polyTweak12.ip";
connectAttr "polyExtrudeFace22.out" "polySubdFace14.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace23.ip";
connectAttr "Ledge83Shape.wm" "polyExtrudeFace23.mp";
connectAttr "polySubdFace14.out" "polyTweak13.ip";
connectAttr "|Ledge89|polySurfaceShape17.o" "polySubdFace15.ip";
connectAttr "polySurfaceShape18.o" "polyExtrudeFace24.ip";
connectAttr "Ledge85Shape.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace24.out" "polyExtrudeFace25.ip";
connectAttr "Ledge85Shape.wm" "polyExtrudeFace25.mp";
connectAttr "polyTweak14.out" "polySubdFace16.ip";
connectAttr "polyExtrudeFace25.out" "polyTweak14.ip";
connectAttr "polySubdFace16.out" "polyExtrudeFace26.ip";
connectAttr "Ledge85Shape.wm" "polyExtrudeFace26.mp";
connectAttr "polySubdFace15.out" "polySubdFace17.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace27.ip";
connectAttr "Ledge89Shape.wm" "polyExtrudeFace27.mp";
connectAttr "polySubdFace17.out" "polyTweak15.ip";
connectAttr "polyExtrudeFace27.out" "polyExtrudeFace28.ip";
connectAttr "Ledge89Shape.wm" "polyExtrudeFace28.mp";
connectAttr "polySurfaceShape19.o" "polyExtrudeFace29.ip";
connectAttr "Ledge113Shape.wm" "polyExtrudeFace29.mp";
connectAttr "polyExtrudeFace26.out" "polyExtrudeFace30.ip";
connectAttr "Ledge85Shape.wm" "polyExtrudeFace30.mp";
connectAttr "polyExtrudeFace30.out" "polyChipOff3.ip";
connectAttr "Ledge85Shape.wm" "polyChipOff3.mp";
connectAttr "Ledge85Shape.o" "polySeparate3.ip";
connectAttr "polyChipOff3.out" "groupParts7.ig";
connectAttr "groupId9.id" "groupParts7.gi";
connectAttr "polySeparate3.out[0]" "groupParts8.ig";
connectAttr "groupId11.id" "groupParts8.gi";
connectAttr "polySeparate3.out[1]" "groupParts9.ig";
connectAttr "groupId12.id" "groupParts9.gi";
connectAttr "groupParts8.og" "polyChipOff4.ip";
connectAttr "polySurfaceShape20.wm" "polyChipOff4.mp";
connectAttr "polySurfaceShape20.o" "polySeparate4.ip";
connectAttr "polySeparate4.out[0]" "groupParts10.ig";
connectAttr "groupId13.id" "groupParts10.gi";
connectAttr "polySeparate4.out[1]" "groupParts11.ig";
connectAttr "groupId14.id" "groupParts11.gi";
connectAttr "groupParts11.og" "polyChipOff5.ip";
connectAttr "polySurfaceShape23.wm" "polyChipOff5.mp";
connectAttr "polySurfaceShape23.o" "polySeparate5.ip";
connectAttr "polySeparate5.out[0]" "groupParts12.ig";
connectAttr "groupId15.id" "groupParts12.gi";
connectAttr "polySeparate5.out[1]" "groupParts13.ig";
connectAttr "groupId16.id" "groupParts13.gi";
connectAttr "polySurfaceShape22.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape25.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape22.wm" "polyUnite1.im[0]";
connectAttr "polySurfaceShape25.wm" "polyUnite1.im[1]";
connectAttr "polyUnite1.out" "groupParts14.ig";
connectAttr "groupId17.id" "groupParts14.gi";
connectAttr "groupParts14.og" "polyChipOff6.ip";
connectAttr "polySurfaceShape26.wm" "polyChipOff6.mp";
connectAttr "polySurfaceShape26.o" "polySeparate6.ip";
connectAttr "polySeparate6.out[0]" "groupParts15.ig";
connectAttr "groupId18.id" "groupParts15.gi";
connectAttr "polySeparate6.out[1]" "groupParts16.ig";
connectAttr "groupId19.id" "groupParts16.gi";
connectAttr "polyExtrudeFace29.out" "polyChipOff7.ip";
connectAttr "Ledge113Shape.wm" "polyChipOff7.mp";
connectAttr "Ledge113Shape.o" "polySeparate7.ip";
connectAttr "polyChipOff7.out" "groupParts17.ig";
connectAttr "groupId20.id" "groupParts17.gi";
connectAttr "polySeparate7.out[0]" "groupParts18.ig";
connectAttr "groupId22.id" "groupParts18.gi";
connectAttr "polySeparate7.out[1]" "groupParts19.ig";
connectAttr "groupId23.id" "groupParts19.gi";
connectAttr "polyExtrudeFace28.out" "polyChipOff8.ip";
connectAttr "Ledge89Shape.wm" "polyChipOff8.mp";
connectAttr "Ledge89Shape.o" "polySeparate8.ip";
connectAttr "polyChipOff8.out" "groupParts20.ig";
connectAttr "groupId24.id" "groupParts20.gi";
connectAttr "polySeparate8.out[0]" "groupParts21.ig";
connectAttr "groupId26.id" "groupParts21.gi";
connectAttr "polySeparate8.out[1]" "groupParts22.ig";
connectAttr "groupId27.id" "groupParts22.gi";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "MeterManShape.iog" ":initialShadingGroup.dsm" -na;
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
connectAttr "MeterMan31Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan32Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan33Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan34Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan24Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan24Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan26Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan26Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
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
connectAttr "Ledge83Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "GroundShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge84Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge86Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge87Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge88Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge90Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge91Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge92Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge93Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge94Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge95Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge96Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge97Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge98Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge99Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge100Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge101Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge102Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge103Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge104Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge105Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge106Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge107Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge108Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge109Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge110Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge111Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge112Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge114Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge115Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge116Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge117Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge118Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge119Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge120Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge121Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge122Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge123Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge124Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge125Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge126Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge127Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge85Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge85Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge113Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge113Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge89Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge89Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape32.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of CommercialZone.ma
