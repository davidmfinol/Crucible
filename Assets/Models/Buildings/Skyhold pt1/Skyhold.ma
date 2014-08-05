//Maya ASCII 2014 scene
//Name: Skyhold.ma
//Last modified: Mon, Aug 04, 2014 11:29:06 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 130.63917385571429 61.893578956362205 208.84212100712821 ;
	setAttr ".r" -type "double3" -7.5383527298139823 -319.39999999997826 -5.2361959597627571e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 257.75800035447952;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -35.653335571289063 28.078353881835938 14.825321197509766 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dst" yes;
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
	setAttr ".t" -type "double3" 143.04826855797924 74.277818604597627 220.90788355223145 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 302.92186563531772;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -521.18363822651031 21.697586059570313 14.725984573364315 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 3.5527136788005009e-015 0 ;
	setAttr ".rpt" -type "double3" -3.7747854105399366e-015 0 1.0030079361426585e-014 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 307.81388724994787;
	setAttr ".ow" 29.319314082356858;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -213.36975097656244 21.697586059570313 14.72598457336419 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "box";
	setAttr ".t" -type "double3" 36.982013115083333 0.7592145190912456 10.91713566390934 ;
createNode mesh -n "boxShape" -p "box";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" -7.0142975 0 0 ;
	setAttr ".pt[2]" -type "float3" -7.0142975 0 0 ;
	setAttr ".pt[4]" -type "float3" -7.0142975 0 0 ;
	setAttr ".pt[6]" -type "float3" -7.0142975 0 0 ;
	setAttr ".pt[9]" -type "float3" -7.0142975 0 0 ;
	setAttr ".pt[10]" -type "float3" -7.0142975 0 0 ;
	setAttr ".pt[12]" -type "float3" 8.626687 0 0 ;
	setAttr ".pt[13]" -type "float3" 8.626687 0 0 ;
	setAttr ".pt[14]" -type "float3" 8.626687 0 0 ;
	setAttr ".pt[15]" -type "float3" 8.626687 0 0 ;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 147.81335593584964 11.218742827264425 11.3048964848147 ;
createNode transform -n "polySurface17" -p "pCube2";
createNode transform -n "WallBoxLedge" -p "polySurface17";
createNode mesh -n "WallBoxLedgeShape" -p "WallBoxLedge";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Mesh" -p "polySurface17";
createNode mesh -n "MeshShape" -p "Mesh";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform12" -p "polySurface17";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform12";
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
createNode transform -n "polySurface18" -p "pCube2";
createNode mesh -n "polySurfaceShape19" -p "polySurface18";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform11" -p "pCube2";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform11";
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
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" 162.05263602709667 -37.785998537644623 12.84474671980005 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
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
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	setAttr ".t" -type "double3" 147.81335593584964 28.886964069164065 25.725324380174357 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt[0:39]" -type "float3"  0 0 1.1184253 0 0 1.1184253 
		0 0 -1.1184253 0 0 -1.1184253 0 0 1.1184253 0 0 1.1184253 0 0 -1.1184253 0 0 -1.1184253 
		7.6293945e-006 0 1.1184242 7.6293945e-006 0 1.1184242 7.6293945e-006 0 -1.1184261 
		7.6293945e-006 0 -1.1184261 7.6293945e-006 0 1.1184242 7.6293945e-006 0 1.1184242 
		7.6293945e-006 0 -1.1184261 7.6293945e-006 0 -1.1184261 7.6293945e-006 0 1.1184242 
		7.6293945e-006 0 1.1184242 7.6293945e-006 0 -1.1184261 7.6293945e-006 0 -1.1184261 
		7.6293945e-006 0 1.1184242 7.6293945e-006 0 1.1184242 7.6293945e-006 0 -1.1184261 
		7.6293945e-006 0 -1.1184261 7.6293945e-006 0 1.1184242 7.6293945e-006 0 1.1184242 
		7.6293945e-006 0 -1.1184261 7.6293945e-006 0 -1.1184261 7.6293945e-006 0 1.1184242 
		7.6293945e-006 0 1.1184242 7.6293945e-006 0 -1.1184261 7.6293945e-006 0 -1.1184261 
		0.72734231 0 1.1184253 0.72734231 0 -1.1184253 -0.72734231 0 1.1184253 -0.72734231 
		0 -1.1184253 0.72734231 8.0902519 1.1184253 0.72734231 8.0902519 -1.1184253 -0.72734231 
		8.0902519 1.1184253 -0.72734231 8.0902519 -1.1184253;
createNode mesh -n "polySurfaceShape1" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75
		 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625
		 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375
		 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt[0:31]" -type "float3"  0 0 1.0392696 0 0 1.0392696 
		0 0 -1.0392698 0 0 -1.0392698 0 0 1.0392696 0 0 1.0392696 0 0 -1.0392698 0 0 -1.0392698 
		0 0 1.0392696 0 0 1.0392696 0 0 -1.0392698 0 0 -1.0392698 0 0 1.0392696 0 0 1.0392696 
		0 0 -1.0392698 0 0 -1.0392698 0 0 1.0392696 0 0 1.0392696 0 0 -1.0392698 0 0 -1.0392698 
		0 0 1.0392696 0 0 1.0392696 0 0 -1.0392698 0 0 -1.0392698 0 0 1.0392696 0 0 1.0392696 
		0 0 -1.0392698 0 0 -1.0392698 0 0 1.0392696 0 0 1.0392696 0 0 -1.0392698 0 0 -1.0392698;
	setAttr -s 32 ".vt[0:31]"  -27.9626236 -19.70025253 -8.28308487 34.38182068 -19.70025253 -8.28308487
		 34.38182068 -19.70025253 8.28308582 -27.9626236 -19.70025253 8.28308582 -27.9626236 -28.061569214 -8.28308487
		 34.38182068 -28.061569214 -8.28308487 34.38182068 -28.061569214 8.28308582 -27.9626236 -28.061569214 8.28308582
		 -19.54858398 -28.061569214 -8.28308487 25.96780396 -28.061569214 -8.28308487 25.96780396 -28.061569214 8.28308582
		 -19.54858398 -28.061569214 8.28308582 -19.54858398 -36.49890518 -8.28308487 25.96780396 -36.49890518 -8.28308487
		 25.96780396 -36.49890518 8.28308582 -19.54858398 -36.49890518 8.28308582 -11.44758606 -36.49890518 -8.28308487
		 17.86680603 -36.49890518 -8.28308487 17.86680603 -36.49890518 8.28308582 -11.44758606 -36.49890518 8.28308582
		 -11.44758606 -44.65400314 -8.28308487 17.86680603 -44.65400314 -8.28308487 17.86680603 -44.65400314 8.28308582
		 -11.44758606 -44.65400314 8.28308582 -3.69787598 -44.65400314 -8.28308487 10.11709595 -44.65400314 -8.28308487
		 10.11709595 -44.65400314 8.28308582 -3.69787598 -44.65400314 8.28308582 -3.69787598 -52.73911667 -8.28308487
		 10.11709595 -52.73911667 -8.28308487 10.11709595 -52.73911667 8.28308582 -3.69787598 -52.73911667 8.28308582;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 3 2 0 0 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 5 6 0 3 7 0 7 6 0 4 7 0 4 8 0 5 9 0 8 9 0 6 10 0 9 10 0 7 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 17 18 0 15 19 0 19 18 0 16 19 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0
		 23 22 0 20 23 0 20 24 0 21 25 0 24 25 0 22 26 0 25 26 0 23 27 0 27 26 0 24 27 0 24 28 0
		 25 29 0 28 29 0 26 30 0 29 30 0 27 31 0 31 30 0 28 31 0;
	setAttr -s 29 -ch 116 ".fc[0:28]" -type "polyFaces" 
		f 4 54 56 -59 -60
		mu 0 4 28 29 30 31
		f 4 0 5 -7 -5
		mu 0 4 0 1 5 4
		f 4 1 7 -9 -6
		mu 0 4 1 2 6 5
		f 4 -3 9 10 -8
		mu 0 4 2 3 7 6
		f 4 -4 4 11 -10
		mu 0 4 3 0 4 7
		f 4 6 13 -15 -13
		mu 0 4 4 5 9 8
		f 4 8 15 -17 -14
		mu 0 4 5 6 10 9
		f 4 -11 17 18 -16
		mu 0 4 6 7 11 10
		f 4 -12 12 19 -18
		mu 0 4 7 4 8 11
		f 4 14 21 -23 -21
		mu 0 4 8 9 13 12
		f 4 16 23 -25 -22
		mu 0 4 9 10 14 13
		f 4 -19 25 26 -24
		mu 0 4 10 11 15 14
		f 4 -20 20 27 -26
		mu 0 4 11 8 12 15
		f 4 22 29 -31 -29
		mu 0 4 12 13 17 16
		f 4 24 31 -33 -30
		mu 0 4 13 14 18 17
		f 4 -27 33 34 -32
		mu 0 4 14 15 19 18
		f 4 -28 28 35 -34
		mu 0 4 15 12 16 19
		f 4 30 37 -39 -37
		mu 0 4 16 17 21 20
		f 4 32 39 -41 -38
		mu 0 4 17 18 22 21
		f 4 -35 41 42 -40
		mu 0 4 18 19 23 22
		f 4 -36 36 43 -42
		mu 0 4 19 16 20 23
		f 4 38 45 -47 -45
		mu 0 4 20 21 25 24
		f 4 40 47 -49 -46
		mu 0 4 21 22 26 25
		f 4 -43 49 50 -48
		mu 0 4 22 23 27 26
		f 4 -44 44 51 -50
		mu 0 4 23 20 24 27
		f 4 46 53 -55 -53
		mu 0 4 24 25 29 28
		f 4 48 55 -57 -54
		mu 0 4 25 26 30 29
		f 4 -51 57 58 -56
		mu 0 4 26 27 31 30
		f 4 -52 52 59 -58
		mu 0 4 27 24 28 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	setAttr ".t" -type "double3" 147.81335593584964 26.501566731589563 44.682593789187635 ;
createNode mesh -n "polySurfaceShape1" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75
		 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625
		 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375
		 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -27.9626236 -19.70025253 -8.28308487 34.38182068 -19.70025253 -8.28308487
		 34.38182068 -19.70025253 8.28308582 -27.9626236 -19.70025253 8.28308582 -27.9626236 -28.061569214 -8.28308487
		 34.38182068 -28.061569214 -8.28308487 34.38182068 -28.061569214 8.28308582 -27.9626236 -28.061569214 8.28308582
		 -19.54858398 -28.061569214 -8.28308487 25.96780396 -28.061569214 -8.28308487 25.96780396 -28.061569214 8.28308582
		 -19.54858398 -28.061569214 8.28308582 -19.54858398 -36.49890518 -8.28308487 25.96780396 -36.49890518 -8.28308487
		 25.96780396 -36.49890518 8.28308582 -19.54858398 -36.49890518 8.28308582 -11.44758606 -36.49890518 -8.28308487
		 17.86680603 -36.49890518 -8.28308487 17.86680603 -36.49890518 8.28308582 -11.44758606 -36.49890518 8.28308582
		 -11.44758606 -44.65400314 -8.28308487 17.86680603 -44.65400314 -8.28308487 17.86680603 -44.65400314 8.28308582
		 -11.44758606 -44.65400314 8.28308582 -3.69787598 -44.65400314 -8.28308487 10.11709595 -44.65400314 -8.28308487
		 10.11709595 -44.65400314 8.28308582 -3.69787598 -44.65400314 8.28308582 -3.69787598 -52.73911667 -8.28308487
		 10.11709595 -52.73911667 -8.28308487 10.11709595 -52.73911667 8.28308582 -3.69787598 -52.73911667 8.28308582;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 3 2 0 0 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 5 6 0 3 7 0 7 6 0 4 7 0 4 8 0 5 9 0 8 9 0 6 10 0 9 10 0 7 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 17 18 0 15 19 0 19 18 0 16 19 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0
		 23 22 0 20 23 0 20 24 0 21 25 0 24 25 0 22 26 0 25 26 0 23 27 0 27 26 0 24 27 0 24 28 0
		 25 29 0 28 29 0 26 30 0 29 30 0 27 31 0 31 30 0 28 31 0;
	setAttr -s 29 -ch 116 ".fc[0:28]" -type "polyFaces" 
		f 4 54 56 -59 -60
		mu 0 4 28 29 30 31
		f 4 0 5 -7 -5
		mu 0 4 0 1 5 4
		f 4 1 7 -9 -6
		mu 0 4 1 2 6 5
		f 4 -3 9 10 -8
		mu 0 4 2 3 7 6
		f 4 -4 4 11 -10
		mu 0 4 3 0 4 7
		f 4 6 13 -15 -13
		mu 0 4 4 5 9 8
		f 4 8 15 -17 -14
		mu 0 4 5 6 10 9
		f 4 -11 17 18 -16
		mu 0 4 6 7 11 10
		f 4 -12 12 19 -18
		mu 0 4 7 4 8 11
		f 4 14 21 -23 -21
		mu 0 4 8 9 13 12
		f 4 16 23 -25 -22
		mu 0 4 9 10 14 13
		f 4 -19 25 26 -24
		mu 0 4 10 11 15 14
		f 4 -20 20 27 -26
		mu 0 4 11 8 12 15
		f 4 22 29 -31 -29
		mu 0 4 12 13 17 16
		f 4 24 31 -33 -30
		mu 0 4 13 14 18 17
		f 4 -27 33 34 -32
		mu 0 4 14 15 19 18
		f 4 -28 28 35 -34
		mu 0 4 15 12 16 19
		f 4 30 37 -39 -37
		mu 0 4 16 17 21 20
		f 4 32 39 -41 -38
		mu 0 4 17 18 22 21
		f 4 -35 41 42 -40
		mu 0 4 18 19 23 22
		f 4 -36 36 43 -42
		mu 0 4 19 16 20 23
		f 4 38 45 -47 -45
		mu 0 4 20 21 25 24
		f 4 40 47 -49 -46
		mu 0 4 21 22 26 25
		f 4 -43 49 50 -48
		mu 0 4 22 23 27 26
		f 4 -44 44 51 -50
		mu 0 4 23 20 24 27
		f 4 46 53 -55 -53
		mu 0 4 24 25 29 28
		f 4 48 55 -57 -54
		mu 0 4 25 26 30 29
		f 4 -51 57 58 -56
		mu 0 4 26 27 31 30
		f 4 -52 52 59 -58
		mu 0 4 27 24 28 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75
		 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625
		 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -19.54857635 -28.061569214 -8.28308582 25.96781158 -28.061569214 -8.28308582
		 25.96781158 -28.061569214 8.28308392 -19.54857635 -28.061569214 8.28308392 -19.54857635 -36.49890518 -8.28308582
		 25.96781158 -36.49890518 -8.28308582 25.96781158 -36.49890518 8.28308392 -19.54857635 -36.49890518 8.28308392
		 -11.44757843 -36.49890518 -8.28308582 17.86681366 -36.49890518 -8.28308582 17.86681366 -36.49890518 8.28308392
		 -11.44757843 -36.49890518 8.28308392 -11.44757843 -44.65400314 -8.28308582 17.86681366 -44.65400314 -8.28308582
		 17.86681366 -44.65400314 8.28308392 -11.44757843 -44.65400314 8.28308392 -3.69786835 -44.65400314 -8.28308582
		 10.11710358 -44.65400314 -8.28308582 10.11710358 -44.65400314 8.28308392 -3.69786835 -44.65400314 8.28308392
		 -3.69786835 -52.73911667 -8.28308582 10.11710358 -52.73911667 -8.28308582 10.11710358 -52.73911667 8.28308392
		 -3.69786835 -52.73911667 8.28308392;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 3 2 0 0 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 5 6 0 3 7 0 7 6 0 4 7 0 4 8 0 5 9 0 8 9 0 6 10 0 9 10 0 7 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 17 18 0 15 19 0 19 18 0 16 19 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0
		 23 22 0 20 23 0;
	setAttr -s 21 -ch 84 ".fc[0:20]" -type "polyFaces" 
		f 4 38 40 -43 -44
		mu 0 4 20 21 22 23
		f 4 0 5 -7 -5
		mu 0 4 0 1 5 4
		f 4 1 7 -9 -6
		mu 0 4 1 2 6 5
		f 4 -3 9 10 -8
		mu 0 4 2 3 7 6
		f 4 -4 4 11 -10
		mu 0 4 3 0 4 7
		f 4 6 13 -15 -13
		mu 0 4 4 5 9 8
		f 4 8 15 -17 -14
		mu 0 4 5 6 10 9
		f 4 -11 17 18 -16
		mu 0 4 6 7 11 10
		f 4 -12 12 19 -18
		mu 0 4 7 4 8 11
		f 4 14 21 -23 -21
		mu 0 4 8 9 13 12
		f 4 16 23 -25 -22
		mu 0 4 9 10 14 13
		f 4 -19 25 26 -24
		mu 0 4 10 11 15 14
		f 4 -20 20 27 -26
		mu 0 4 11 8 12 15
		f 4 22 29 -31 -29
		mu 0 4 12 13 17 16
		f 4 24 31 -33 -30
		mu 0 4 13 14 18 17
		f 4 -27 33 34 -32
		mu 0 4 14 15 19 18
		f 4 -28 28 35 -34
		mu 0 4 15 12 16 19
		f 4 30 37 -39 -37
		mu 0 4 16 17 21 20
		f 4 32 39 -41 -38
		mu 0 4 17 18 22 21
		f 4 -35 41 42 -40
		mu 0 4 18 19 23 22
		f 4 -36 36 43 -42
		mu 0 4 19 16 20 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform1" -p "pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform1";
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
createNode transform -n "polySurface3" -p "pCube6";
createNode transform -n "transform2" -p "polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:12]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 0.75 0.375 0.75 0.625 1 0.625 1
		 0.375 1 0.375 1 0.625 0.75 0.375 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -11.4475708 -44.65400314 -8.28308487 17.86682129 -44.65400314 -8.28308487
		 17.86682129 -44.65400314 8.28308487 -11.4475708 -44.65400314 8.28308487 -3.69787598 -44.65400314 -8.28308487
		 10.11709595 -44.65400314 -8.28308487 10.11709595 -44.65400314 8.28308487 -3.69787598 -44.65400314 8.28308487
		 -3.69787598 -52.73911667 -8.28308487 10.11709595 -52.73911667 -8.28308487 10.11709595 -52.73911667 8.28308487
		 -3.69787598 -52.73911667 8.28308487 -11.4475708 -36.49890518 -8.28308487 17.86682129 -36.49890518 -8.28308487
		 17.86682129 -36.49890518 8.28308487 -11.4475708 -36.49890518 8.28308487;
	setAttr -s 28 ".ed[0:27]"  12 0 0 13 1 0 0 1 0 14 2 0 1 2 0 15 3 0 3 2 0
		 0 3 0 0 4 0 1 5 0 4 5 0 2 6 0 5 6 0 3 7 0 7 6 0 4 7 0 4 8 0 5 9 0 8 9 0 6 10 0 9 10 0
		 7 11 0 11 10 0 8 11 0 12 13 0 13 14 0 15 14 0 12 15 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 18 20 -23 -24
		mu 0 4 0 1 2 3
		f 4 24 1 -3 -1
		mu 0 4 4 5 6 7
		f 4 25 3 -5 -2
		mu 0 4 5 8 9 6
		f 4 -27 5 6 -4
		mu 0 4 8 10 11 9
		f 4 -28 0 7 -6
		mu 0 4 10 4 7 11
		f 4 2 9 -11 -9
		mu 0 4 7 6 12 13
		f 4 4 11 -13 -10
		mu 0 4 6 9 14 12
		f 4 -7 13 14 -12
		mu 0 4 9 11 15 14
		f 4 -8 8 15 -14
		mu 0 4 11 7 13 15
		f 4 10 17 -19 -17
		mu 0 4 13 12 1 0
		f 4 12 19 -21 -18
		mu 0 4 12 14 2 1
		f 4 -15 21 22 -20
		mu 0 4 14 15 3 2
		f 4 -16 16 23 -22
		mu 0 4 15 13 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface4" -p "pCube6";
createNode mesh -n "polySurfaceShape6" -p "polySurface4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 0.75 0.375 0.75 0.625 1 0.625 1 0.375 1 0.375 1 0.625 0.75 0.375 0.75
		 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -19.54858398 -28.061569214 -8.28308487 25.96780396 -28.061569214 -8.28308487
		 25.96780396 -28.061569214 8.28308487 -19.54858398 -28.061569214 8.28308487 -19.54858398 -36.49890518 -8.28308487
		 25.96780396 -36.49890518 -8.28308487 25.96780396 -36.49890518 8.28308487 -19.54858398 -36.49890518 8.28308487
		 -11.4475708 -36.49890518 -8.28308487 17.86682129 -36.49890518 -8.28308487 17.86682129 -36.49890518 8.28308487
		 -11.4475708 -36.49890518 8.28308487;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 3 2 0 0 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 5 6 0 3 7 0 7 6 0 4 7 0 4 8 0 5 9 0 8 9 0 6 10 0 9 10 0 7 11 0 11 10 0 8 11 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 5 -7 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -9 -6
		mu 0 4 1 4 5 2
		f 4 -3 9 10 -8
		mu 0 4 4 6 7 5
		f 4 -4 4 11 -10
		mu 0 4 6 0 3 7
		f 4 6 13 -15 -13
		mu 0 4 3 2 8 9
		f 4 8 15 -17 -14
		mu 0 4 2 5 10 8
		f 4 -11 17 18 -16
		mu 0 4 5 7 11 10
		f 4 -12 12 19 -18
		mu 0 4 7 3 9 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform3" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform3";
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
createNode transform -n "polySurface5" -p "pCube6";
	setAttr ".t" -type "double3" 0 24.553859675583855 0 ;
	setAttr ".r" -type "double3" 0 0 180 ;
	setAttr ".rp" -type "double3" 3.209625244140625 -44.619010925292969 0 ;
	setAttr ".sp" -type "double3" 3.209625244140625 -44.619010925292969 0 ;
createNode transform -n "transform4" -p "polySurface5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:12]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 0.75 0.375 0.75 0.625 1 0.625 1
		 0.375 1 0.375 1 0.625 0.75 0.375 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -11.4475708 -44.65400314 -8.28308487 17.86682129 -44.65400314 -8.28308487
		 17.86682129 -44.65400314 8.28308487 -11.4475708 -44.65400314 8.28308487 -3.69787598 -44.65400314 -8.28308487
		 10.11709595 -44.65400314 -8.28308487 10.11709595 -44.65400314 8.28308487 -3.69787598 -44.65400314 8.28308487
		 -3.69787598 -52.73911667 -8.28308487 10.11709595 -52.73911667 -8.28308487 10.11709595 -52.73911667 8.28308487
		 -3.69787598 -52.73911667 8.28308487 -11.4475708 -36.49890518 -8.28308487 17.86682129 -36.49890518 -8.28308487
		 17.86682129 -36.49890518 8.28308487 -11.4475708 -36.49890518 8.28308487;
	setAttr -s 28 ".ed[0:27]"  12 0 0 13 1 0 0 1 0 14 2 0 1 2 0 15 3 0 3 2 0
		 0 3 0 0 4 0 1 5 0 4 5 0 2 6 0 5 6 0 3 7 0 7 6 0 4 7 0 4 8 0 5 9 0 8 9 0 6 10 0 9 10 0
		 7 11 0 11 10 0 8 11 0 12 13 0 13 14 0 15 14 0 12 15 0;
	setAttr -s 13 -ch 52 ".fc[0:12]" -type "polyFaces" 
		f 4 18 20 -23 -24
		mu 0 4 0 1 2 3
		f 4 24 1 -3 -1
		mu 0 4 4 5 6 7
		f 4 25 3 -5 -2
		mu 0 4 5 8 9 6
		f 4 -27 5 6 -4
		mu 0 4 8 10 11 9
		f 4 -28 0 7 -6
		mu 0 4 10 4 7 11
		f 4 2 9 -11 -9
		mu 0 4 7 6 12 13
		f 4 4 11 -13 -10
		mu 0 4 6 9 14 12
		f 4 -7 13 14 -12
		mu 0 4 9 11 15 14
		f 4 -8 8 15 -14
		mu 0 4 11 7 13 15
		f 4 10 17 -19 -17
		mu 0 4 13 12 1 0
		f 4 12 19 -21 -18
		mu 0 4 12 14 2 1
		f 4 -15 21 22 -20
		mu 0 4 14 15 3 2
		f 4 -16 16 23 -22
		mu 0 4 15 13 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface6";
	setAttr ".t" -type "double3" 0 5.0054220367835995 -8.0430307882264458 ;
	setAttr ".s" -type "double3" 0.63594116859167493 0.63594116859167493 0.63594116859167493 ;
	setAttr ".rp" -type "double3" 151.02296447753906 -5.8405141830444336 44.682594299316406 ;
	setAttr ".sp" -type "double3" 151.02296447753906 -5.8405141830444336 44.682594299316406 ;
createNode mesh -n "polySurfaceShape7" -p "polySurface6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" -13.918713605949456 17.634906161389399 -63.780413473164643 ;
createNode transform -n "transform6" -p "pCube7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform6";
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
	setAttr -s 7 ".pt[1:7]" -type "float3"  34.68961 0 0 3.5527137e-015 
		55.642719 0 34.68961 55.642719 0 3.5527137e-015 55.642719 -60.903622 34.68961 55.642719 
		-60.903622 0 0 -60.903622 34.68961 0 -60.903622;
createNode transform -n "pCube8";
	setAttr ".t" -type "double3" 1.7872302176109509 111.03670977070786 -47.340551923008285 ;
	setAttr ".s" -type "double3" 0.4214759862593313 0.4214759862593313 0.4214759862593313 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 -57.769815887362057 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-015 -57.769815887362057 0 ;
createNode transform -n "transform5" -p "pCube8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform5";
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
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" -4.6414137 -52.996582 4.6414132 ;
	setAttr ".pt[1]" -type "float3" 4.6414132 -52.996582 4.6414132 ;
	setAttr ".pt[6]" -type "float3" -4.6414137 -52.996582 -4.6414132 ;
	setAttr ".pt[7]" -type "float3" 4.6414132 -52.996582 -4.6414132 ;
	setAttr ".pt[8]" -type "float3" 6.2228441 -47.961189 2.9032983e-012 ;
	setAttr ".pt[9]" -type "float3" -6.2228436 -47.961189 2.9032983e-012 ;
	setAttr ".pt[11]" -type "float3" -2.3841858e-007 -2.0194839e-027 0 ;
	setAttr ".pt[15]" -type "float3" -2.3841858e-007 2.0194839e-027 0 ;
	setAttr ".pt[16]" -type "float3" 0 -47.961189 -6.2228441 ;
	setAttr ".pt[19]" -type "float3" 0 -47.961189 6.2228441 ;
	setAttr ".pt[20]" -type "float3" 4.7683716e-007 0 0 ;
	setAttr ".pt[22]" -type "float3" 0 -41.247688 2.9032983e-012 ;
createNode transform -n "pCube9";
	setAttr ".t" -type "double3" -15.263419337520444 69.713392905285929 -43.958825668944058 ;
	setAttr ".s" -type "double3" 0.26626662712444493 0.26626662712444493 0.26626662712444493 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 -57.769815887362057 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-015 -57.769815887362057 0 ;
createNode transform -n "transform9" -p "pCube9";
	setAttr ".v" no;
createNode mesh -n "pCubeShape9" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[7].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.875 0.75 0 0.25 0 0.375 0.875 0.625 0.625 0.875
		 0.125 0.125 0.125 0.375 0.625 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.625 0.125
		 0.375 0.125 0.5 0.75 0.5 0.5 0.5 0.25 0.5 0 0.5 1 0.25 0.125 0.75 0.125 0.5 0.875
		 0.5 0.625 0.5 0.375 0.5 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  -8.472435 -57.056717 4.6414132 
		8.472435 -57.056717 4.6414132 -2.9249353 28.931953 -6.625811e-013 2.9249353 28.931953 
		3.6592951e-013 -2.9249353 28.931953 -6.625811e-013 2.9249353 28.931953 3.6592951e-013 
		-8.472435 -57.056717 -4.6414132 8.472435 -57.056717 -4.6414132 11.359175 -52.049011 
		2.7255036e-012 -11.359175 -52.049011 9.2602466e-013 3.9215233 22.973619 3.6948222e-013 
		-3.9215233 22.973619 -9.9831254e-013 3.9215233 30.962086 5.9519268e-013 -3.9215233 
		30.962086 -7.7868614e-013 3.9215233 22.973619 3.6948222e-013 -3.9215233 22.973619 
		-9.9831254e-013 -2.9071651e-013 -52.049011 -6.2228441 3.2008758e-014 30.962086 -5.6843419e-014 
		1.2114212e-013 30.962086 -5.6843419e-014 -1.7397139e-013 -52.049011 6.2228441 -5.250164 
		22.973619 -1.2361031e-012 5.250164 22.973619 6.0325437e-013 -2.3266781e-013 -45.372253 
		1.8247335e-012 -5.3498628e-014 22.973619 -3.1619152e-013 1.0043012e-013 33.668625 
		-1.5624605e-014 6.5833616e-014 22.973619 -3.1619152e-013;
	setAttr -s 26 ".vt[0:25]"  -14.98291206 -14.98291206 14.98291206 14.98291206 -14.98291206 14.98291206
		 -14.98291206 14.98291206 14.98291206 14.98291206 14.98291206 14.98291206 -14.98291206 14.98291206 -14.98291206
		 14.98291206 14.98291206 -14.98291206 -14.98291206 -14.98291206 -14.98291206 14.98291206 -14.98291206 -14.98291206
		 20.087919235 -20.087919235 0 -20.087919235 -20.087919235 0 20.087919235 0 -20.087919235
		 -20.087919235 0 -20.087919235 20.087919235 20.087919235 0 -20.087919235 20.087919235 0
		 20.087919235 0 20.087919235 -20.087919235 0 20.087919235 0 -20.087919235 -20.087919235
		 0 20.087919235 -20.087919235 0 20.087919235 20.087919235 0 -20.087919235 20.087919235
		 -26.89382935 0 0 26.89382935 0 0 0 -26.89382935 0 0 0 -26.89382935 0 26.89382935 0
		 0 0 26.89382935;
	setAttr -s 48 ".ed[0:47]"  0 19 1 2 18 1 4 17 1 6 16 1 0 15 1 1 14 1
		 2 13 1 3 12 1 4 11 1 5 10 1 6 9 1 7 8 1 8 1 1 9 0 1 10 7 1 11 6 1 12 5 1 13 4 1 14 3 1
		 15 2 1 16 7 1 17 5 1 18 3 1 19 1 1 9 20 1 20 13 1 20 15 1 20 11 1 8 21 1 21 12 1
		 21 10 1 21 14 1 16 22 1 22 19 1 22 8 1 22 9 1 17 23 1 23 16 1 23 10 1 23 11 1 18 24 1
		 24 17 1 24 12 1 24 13 1 19 25 1 25 18 1 25 14 1 25 15 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 44 47 -5
		mu 0 4 0 31 38 27
		f 4 1 40 43 -7
		mu 0 4 2 30 37 25
		f 4 2 36 39 -9
		mu 0 4 4 29 36 21
		f 4 3 32 35 -11
		mu 0 4 6 28 35 17
		f 4 -13 28 31 -6
		mu 0 4 1 15 34 26
		f 4 10 24 27 15
		mu 0 4 12 16 33 20
		f 4 -26 26 19 6
		mu 0 4 24 33 27 2
		f 4 -27 -25 13 4
		mu 0 4 27 33 16 0
		f 4 -28 25 17 8
		mu 0 4 20 33 24 13
		f 4 -30 30 -10 -17
		mu 0 4 23 34 19 11
		f 4 -31 -29 -12 -15
		mu 0 4 19 34 15 10
		f 4 -32 29 -8 -19
		mu 0 4 26 34 23 3
		f 4 -34 34 12 -24
		mu 0 4 32 35 14 9
		f 4 -35 -33 20 11
		mu 0 4 14 35 28 7
		f 4 -36 33 -1 -14
		mu 0 4 17 35 32 8
		f 4 -38 38 14 -21
		mu 0 4 28 36 18 7
		f 4 -39 -37 21 9
		mu 0 4 18 36 29 5
		f 4 -40 37 -4 -16
		mu 0 4 21 36 28 6
		f 4 -42 42 16 -22
		mu 0 4 29 37 22 5
		f 4 -43 -41 22 7
		mu 0 4 22 37 30 3
		f 4 -44 41 -3 -18
		mu 0 4 25 37 29 4
		f 4 -46 46 18 -23
		mu 0 4 30 38 26 3
		f 4 -47 -45 23 5
		mu 0 4 26 38 31 1
		f 4 -48 45 -2 -20
		mu 0 4 27 38 30 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface7";
createNode transform -n "transform8" -p "polySurface7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform8";
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
	setAttr -s 33 ".pt";
	setAttr ".pt[0]" -type "float3" -1.1943766e-007 0 0 ;
	setAttr ".pt[1]" -type "float3" -1.1943766e-007 0 0 ;
	setAttr ".pt[2]" -type "float3" -3.229466 0 0 ;
	setAttr ".pt[3]" -type "float3" 3.2294657 0 0 ;
	setAttr ".pt[4]" -type "float3" 4.3298159 0 0 ;
	setAttr ".pt[5]" -type "float3" -4.3298159 0 0 ;
	setAttr ".pt[6]" -type "float3" -1.1943766e-007 0 0 ;
	setAttr ".pt[7]" -type "float3" 5.7967834 0 0 ;
	setAttr ".pt[8]" -type "float3" -1.1943766e-007 0 0 ;
	setAttr ".pt[9]" -type "float3" 4.2298908 0 0 ;
	setAttr ".pt[10]" -type "float3" -4.2298908 0 0 ;
	setAttr ".pt[11]" -type "float3" -5.7967834 0 0 ;
	setAttr ".pt[12]" -type "float3" -4.3298159 0 0 ;
	setAttr ".pt[13]" -type "float3" 4.3298159 0 0 ;
	setAttr ".pt[14]" -type "float3" 5.6711078 0 0 ;
	setAttr ".pt[15]" -type "float3" -1.1943766e-007 0 0 ;
	setAttr ".pt[16]" -type "float3" -5.6711073 0 0 ;
	setAttr ".pt[17]" -type "float3" -5.2134123 0 0 ;
	setAttr ".pt[18]" -type "float3" -4.4279757 0 0 ;
	setAttr ".pt[19]" -type "float3" -3.7431457 0 0 ;
	setAttr ".pt[20]" -type "float3" -1.721843 0 0 ;
	setAttr ".pt[21]" -type "float3" -1.1943766e-007 0 0 ;
	setAttr ".pt[22]" -type "float3" 1.7218426 0 0 ;
	setAttr ".pt[23]" -type "float3" 3.7431457 0 0 ;
	setAttr ".pt[24]" -type "float3" 4.4279757 0 0 ;
	setAttr ".pt[25]" -type "float3" 5.2134123 0 0 ;
	setAttr ".pt[26]" -type "float3" 5.0844378 0 0 ;
	setAttr ".pt[27]" -type "float3" -1.1943766e-007 0 0 ;
	setAttr ".pt[28]" -type "float3" -5.0844369 0 0 ;
	setAttr ".pt[29]" -type "float3" 0 -31.083794 0 ;
	setAttr ".pt[30]" -type "float3" 0 -31.083794 0 ;
	setAttr ".pt[33]" -type "float3" 0 -31.083794 0 ;
	setAttr ".pt[34]" -type "float3" 0 -31.083794 0 ;
createNode transform -n "pCube10";
	setAttr ".t" -type "double3" 15.510228261391299 69.713392905285929 -43.958825668944058 ;
	setAttr ".s" -type "double3" 0.26626662712444493 0.26626662712444493 0.26626662712444493 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 -57.769815887362057 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-015 -57.769815887362057 0 ;
createNode transform -n "transform7" -p "pCube10";
	setAttr ".v" no;
createNode mesh -n "pCubeShape10" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[9].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 39 ".uvst[0].uvsp[0:38]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.875 0.75 0 0.25 0 0.375 0.875 0.625 0.625 0.875
		 0.125 0.125 0.125 0.375 0.625 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.625 0.125
		 0.375 0.125 0.5 0.75 0.5 0.5 0.5 0.25 0.5 0 0.5 1 0.25 0.125 0.75 0.125 0.5 0.875
		 0.5 0.625 0.5 0.375 0.5 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  -8.472435 -57.056717 4.6414132 
		8.472435 -57.056717 4.6414132 -2.9249353 28.931953 -6.625811e-013 2.9249353 28.931953 
		3.6592951e-013 -2.9249353 28.931953 -6.625811e-013 2.9249353 28.931953 3.6592951e-013 
		-8.472435 -57.056717 -4.6414132 8.472435 -57.056717 -4.6414132 11.359175 -52.049011 
		2.7255036e-012 -11.359175 -52.049011 9.2602466e-013 3.9215233 22.973619 3.6948222e-013 
		-3.9215233 22.973619 -9.9831254e-013 3.9215233 30.962086 5.9519268e-013 -3.9215233 
		30.962086 -7.7868614e-013 3.9215233 22.973619 3.6948222e-013 -3.9215233 22.973619 
		-9.9831254e-013 -2.9071651e-013 -52.049011 -6.2228441 3.2008758e-014 30.962086 -5.6843419e-014 
		1.2114212e-013 30.962086 -5.6843419e-014 -1.7397139e-013 -52.049011 6.2228441 -5.250164 
		22.973619 -1.2361031e-012 5.250164 22.973619 6.0325437e-013 -2.3266781e-013 -45.372253 
		1.8247335e-012 -5.3498628e-014 22.973619 -3.1619152e-013 1.0043012e-013 33.668625 
		-1.5624605e-014 6.5833616e-014 22.973619 -3.1619152e-013;
	setAttr -s 26 ".vt[0:25]"  -14.98291206 -14.98291206 14.98291206 14.98291206 -14.98291206 14.98291206
		 -14.98291206 14.98291206 14.98291206 14.98291206 14.98291206 14.98291206 -14.98291206 14.98291206 -14.98291206
		 14.98291206 14.98291206 -14.98291206 -14.98291206 -14.98291206 -14.98291206 14.98291206 -14.98291206 -14.98291206
		 20.087919235 -20.087919235 0 -20.087919235 -20.087919235 0 20.087919235 0 -20.087919235
		 -20.087919235 0 -20.087919235 20.087919235 20.087919235 0 -20.087919235 20.087919235 0
		 20.087919235 0 20.087919235 -20.087919235 0 20.087919235 0 -20.087919235 -20.087919235
		 0 20.087919235 -20.087919235 0 20.087919235 20.087919235 0 -20.087919235 20.087919235
		 -26.89382935 0 0 26.89382935 0 0 0 -26.89382935 0 0 0 -26.89382935 0 26.89382935 0
		 0 0 26.89382935;
	setAttr -s 48 ".ed[0:47]"  0 19 1 2 18 1 4 17 1 6 16 1 0 15 1 1 14 1
		 2 13 1 3 12 1 4 11 1 5 10 1 6 9 1 7 8 1 8 1 1 9 0 1 10 7 1 11 6 1 12 5 1 13 4 1 14 3 1
		 15 2 1 16 7 1 17 5 1 18 3 1 19 1 1 9 20 1 20 13 1 20 15 1 20 11 1 8 21 1 21 12 1
		 21 10 1 21 14 1 16 22 1 22 19 1 22 8 1 22 9 1 17 23 1 23 16 1 23 10 1 23 11 1 18 24 1
		 24 17 1 24 12 1 24 13 1 19 25 1 25 18 1 25 14 1 25 15 1;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 44 47 -5
		mu 0 4 0 31 38 27
		f 4 1 40 43 -7
		mu 0 4 2 30 37 25
		f 4 2 36 39 -9
		mu 0 4 4 29 36 21
		f 4 3 32 35 -11
		mu 0 4 6 28 35 17
		f 4 -13 28 31 -6
		mu 0 4 1 15 34 26
		f 4 10 24 27 15
		mu 0 4 12 16 33 20
		f 4 -26 26 19 6
		mu 0 4 24 33 27 2
		f 4 -27 -25 13 4
		mu 0 4 27 33 16 0
		f 4 -28 25 17 8
		mu 0 4 20 33 24 13
		f 4 -30 30 -10 -17
		mu 0 4 23 34 19 11
		f 4 -31 -29 -12 -15
		mu 0 4 19 34 15 10
		f 4 -32 29 -8 -19
		mu 0 4 26 34 23 3
		f 4 -34 34 12 -24
		mu 0 4 32 35 14 9
		f 4 -35 -33 20 11
		mu 0 4 14 35 28 7
		f 4 -36 33 -1 -14
		mu 0 4 17 35 32 8
		f 4 -38 38 14 -21
		mu 0 4 28 36 18 7
		f 4 -39 -37 21 9
		mu 0 4 18 36 29 5
		f 4 -40 37 -4 -16
		mu 0 4 21 36 28 6
		f 4 -42 42 16 -22
		mu 0 4 29 37 22 5
		f 4 -43 -41 22 7
		mu 0 4 22 37 30 3
		f 4 -44 41 -3 -18
		mu 0 4 25 37 29 4
		f 4 -46 46 18 -23
		mu 0 4 30 38 26 3
		f 4 -47 -45 23 5
		mu 0 4 26 38 31 1
		f 4 -48 45 -2 -20
		mu 0 4 27 38 30 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface8";
createNode transform -n "transform10" -p "polySurface8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform10";
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
createNode transform -n "pCube11";
	setAttr ".t" -type "double3" 53.32478764504053 67.338144286959945 -179.32819731211131 ;
createNode transform -n "polySurface19" -p "pCube11";
createNode transform -n "transform15" -p "polySurface19";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape21" -p "transform15";
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
createNode transform -n "polySurface20" -p "pCube11";
createNode mesh -n "polySurfaceShape22" -p "polySurface20";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform13" -p "pCube11";
	setAttr ".v" no;
createNode mesh -n "pCubeShape11" -p "transform13";
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
createNode transform -n "group2";
	setAttr ".t" -type "double3" 20.327212550687765 15.712638415511488 17.274741436562664 ;
	setAttr ".s" -type "double3" 0.58681343012273401 0.58681343012273401 0.58681343012273401 ;
	setAttr ".rp" -type "double3" 130.51150461613159 35.346201955152218 -111.55380992829068 ;
	setAttr ".sp" -type "double3" 150.83872076533325 40.851386262918638 -128.92835796793565 ;
	setAttr ".spt" -type "double3" -20.327216149201661 -5.5051843077664229 17.374548039644939 ;
createNode transform -n "pCylinder1" -p "group2";
	setAttr ".t" -type "double3" 150.83869406245239 15.63208268033544 -128.9283388944493 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.63531649 0.078125
		 0.578125 0.020933539 0.5 0 0.421875 0.020933539 0.36468354 0.078125 0.34375 0.15625
		 0.36468354 0.234375 0.421875 0.29156646 0.5 0.3125 0.578125 0.29156646 0.63531649
		 0.234375 0.65625 0.15625 0.375 0.3125 0.39583334 0.3125 0.41666669 0.3125 0.43750003
		 0.3125 0.45833337 0.3125 0.47916672 0.3125 0.50000006 0.3125 0.52083337 0.3125 0.54166669
		 0.3125 0.5625 0.3125 0.58333331 0.3125 0.60416663 0.3125 0.62499994 0.3125 0.375
		 0.68843985 0.39583334 0.68843985 0.41666669 0.68843985 0.43750003 0.68843985 0.45833337
		 0.68843985 0.47916672 0.68843985 0.50000006 0.68843985 0.52083337 0.68843985 0.54166669
		 0.68843985 0.5625 0.68843985 0.58333331 0.68843985 0.60416663 0.68843985 0.62499994
		 0.68843985 0.63531649 0.765625 0.578125 0.70843351 0.5 0.6875 0.421875 0.70843351
		 0.36468354 0.765625 0.34375 0.84375 0.36468354 0.921875 0.421875 0.97906649 0.5 1
		 0.578125 0.97906649 0.63531649 0.921875 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  -2.8421709e-014 10.319048 
		0 -1.4210855e-014 10.319048 2.8421709e-014 0 10.319048 2.8421709e-014 1.4210855e-014 
		10.319048 2.8421709e-014 2.8421709e-014 10.319048 2.8421709e-014 2.8421709e-014 10.319048 
		2.191776e-014 2.8421709e-014 10.319048 0 1.4210855e-014 10.319048 -2.8421709e-014 
		0 10.319048 -2.8421709e-014 -1.4210855e-014 10.319048 -2.8421709e-014 -2.8421709e-014 
		10.319048 -2.8421709e-014 -2.8421709e-014 10.319048 -2.191776e-014 -2.8421709e-014 
		-7.6050005 0 -1.4210855e-014 -7.6050005 2.8421709e-014 0 -7.6050005 2.8421709e-014 
		1.4210855e-014 -7.6050005 2.8421709e-014 2.8421709e-014 -7.6050005 2.8421709e-014 
		2.8421709e-014 -7.6050005 2.191776e-014 2.8421709e-014 -7.6050005 0 1.4210855e-014 
		-7.6050005 -2.8421709e-014 0 -7.6050005 -2.8421709e-014 -1.4210855e-014 -7.6050005 
		-2.8421709e-014 -2.8421709e-014 -7.6050005 -2.8421709e-014 -2.8421709e-014 -7.6050005 
		-2.191776e-014 0 10.319048 0 0 -7.6050005 0;
	setAttr -s 26 ".vt[0:25]"  49.39927673 -17.6920681 -28.5206871 28.5206871 -17.6920681 -49.39927673
		 0 -17.6920681 -57.041374207 -28.5206871 -17.6920681 -49.39927673 -49.39927673 -17.6920681 -28.5206871
		 -57.041374207 -17.6920681 0 -49.39927673 -17.6920681 28.5206871 -28.5206871 -17.6920681 49.39927673
		 0 -17.6920681 57.041374207 28.5206871 -17.6920681 49.39927673 49.39927673 -17.6920681 28.5206871
		 57.041374207 -17.6920681 0 49.39927673 17.6920681 -28.5206871 28.5206871 17.6920681 -49.39927673
		 0 17.6920681 -57.041374207 -28.5206871 17.6920681 -49.39927673 -49.39927673 17.6920681 -28.5206871
		 -57.041374207 17.6920681 0 -49.39927673 17.6920681 28.5206871 -28.5206871 17.6920681 49.39927673
		 0 17.6920681 57.041374207 28.5206871 17.6920681 49.39927673 49.39927673 17.6920681 28.5206871
		 57.041374207 17.6920681 0 0 -17.6920681 0 0 17.6920681 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 24 0 1 24 1 1 24 2 1 24 3 1 24 4 1
		 24 5 1 24 6 1 24 7 1 24 8 1 24 9 1 24 10 1 24 11 1 12 25 1 13 25 1 14 25 1 15 25 1
		 16 25 1 17 25 1 18 25 1 19 25 1 20 25 1 21 25 1 22 25 1 23 25 1;
	setAttr -s 36 -ch 120 ".fc[0:35]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 3 -1 -37 37
		mu 0 3 1 0 50
		f 3 -2 -38 38
		mu 0 3 2 1 50
		f 3 -3 -39 39
		mu 0 3 3 2 50
		f 3 -4 -40 40
		mu 0 3 4 3 50
		f 3 -5 -41 41
		mu 0 3 5 4 50
		f 3 -6 -42 42
		mu 0 3 6 5 50
		f 3 -7 -43 43
		mu 0 3 7 6 50
		f 3 -8 -44 44
		mu 0 3 8 7 50
		f 3 -9 -45 45
		mu 0 3 9 8 50
		f 3 -10 -46 46
		mu 0 3 10 9 50
		f 3 -11 -47 47
		mu 0 3 11 10 50
		f 3 -12 -48 36
		mu 0 3 0 11 50
		f 3 12 49 -49
		mu 0 3 48 47 51
		f 3 13 50 -50
		mu 0 3 47 46 51
		f 3 14 51 -51
		mu 0 3 46 45 51
		f 3 15 52 -52
		mu 0 3 45 44 51
		f 3 16 53 -53
		mu 0 3 44 43 51
		f 3 17 54 -54
		mu 0 3 43 42 51
		f 3 18 55 -55
		mu 0 3 42 41 51
		f 3 19 56 -56
		mu 0 3 41 40 51
		f 3 20 57 -57
		mu 0 3 40 39 51
		f 3 21 58 -58
		mu 0 3 39 38 51
		f 3 22 59 -59
		mu 0 3 38 49 51
		f 3 23 48 -60
		mu 0 3 49 48 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder2" -p "group2";
	setAttr ".t" -type "double3" 150.83869406245239 36.511321135051901 -128.9283388944493 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.63531649 0.078125
		 0.578125 0.020933539 0.5 0 0.421875 0.020933539 0.36468354 0.078125 0.34375 0.15625
		 0.36468354 0.234375 0.421875 0.29156646 0.5 0.3125 0.578125 0.29156646 0.63531649
		 0.234375 0.65625 0.15625 0.375 0.3125 0.39583334 0.3125 0.41666669 0.3125 0.43750003
		 0.3125 0.45833337 0.3125 0.47916672 0.3125 0.50000006 0.3125 0.52083337 0.3125 0.54166669
		 0.3125 0.5625 0.3125 0.58333331 0.3125 0.60416663 0.3125 0.62499994 0.3125 0.375
		 0.68843985 0.39583334 0.68843985 0.41666669 0.68843985 0.43750003 0.68843985 0.45833337
		 0.68843985 0.47916672 0.68843985 0.50000006 0.68843985 0.52083337 0.68843985 0.54166669
		 0.68843985 0.5625 0.68843985 0.58333331 0.68843985 0.60416663 0.68843985 0.62499994
		 0.68843985 0.63531649 0.765625 0.578125 0.70843351 0.5 0.6875 0.421875 0.70843351
		 0.36468354 0.765625 0.34375 0.84375 0.36468354 0.921875 0.421875 0.97906649 0.5 1
		 0.578125 0.97906649 0.63531649 0.921875 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  -2.8421709e-014 8.9598808 
		0 -1.4210855e-014 8.9598808 2.8421709e-014 0 8.9598808 2.8421709e-014 1.4210855e-014 
		8.9598808 2.8421709e-014 2.8421709e-014 8.9598808 2.8421709e-014 2.8421709e-014 8.9598808 
		2.191776e-014 2.8421709e-014 8.9598808 0 1.4210855e-014 8.9598808 -2.8421709e-014 
		0 8.9598808 -2.8421709e-014 -1.4210855e-014 8.9598808 -2.8421709e-014 -2.8421709e-014 
		8.9598808 -2.8421709e-014 -2.8421709e-014 8.9598808 -2.191776e-014 -2.8421709e-014 
		-8.9641685 0 -1.4210855e-014 -8.9641685 2.8421709e-014 0 -8.9641685 2.8421709e-014 
		1.4210855e-014 -8.9641685 2.8421709e-014 2.8421709e-014 -8.9641685 2.8421709e-014 
		2.8421709e-014 -8.9641685 2.191776e-014 2.8421709e-014 -8.9641685 0 1.4210855e-014 
		-8.9641685 -2.8421709e-014 0 -8.9641685 -2.8421709e-014 -1.4210855e-014 -8.9641685 
		-2.8421709e-014 -2.8421709e-014 -8.9641685 -2.8421709e-014 -2.8421709e-014 -8.9641685 
		-2.191776e-014 0 8.9598808 0 0 -8.9641685 0;
	setAttr -s 26 ".vt[0:25]"  49.39927673 -17.6920681 -28.5206871 28.5206871 -17.6920681 -49.39927673
		 0 -17.6920681 -57.041374207 -28.5206871 -17.6920681 -49.39927673 -49.39927673 -17.6920681 -28.5206871
		 -57.041374207 -17.6920681 0 -49.39927673 -17.6920681 28.5206871 -28.5206871 -17.6920681 49.39927673
		 0 -17.6920681 57.041374207 28.5206871 -17.6920681 49.39927673 49.39927673 -17.6920681 28.5206871
		 57.041374207 -17.6920681 0 49.39927673 17.6920681 -28.5206871 28.5206871 17.6920681 -49.39927673
		 0 17.6920681 -57.041374207 -28.5206871 17.6920681 -49.39927673 -49.39927673 17.6920681 -28.5206871
		 -57.041374207 17.6920681 0 -49.39927673 17.6920681 28.5206871 -28.5206871 17.6920681 49.39927673
		 0 17.6920681 57.041374207 28.5206871 17.6920681 49.39927673 49.39927673 17.6920681 28.5206871
		 57.041374207 17.6920681 0 0 -17.6920681 0 0 17.6920681 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 24 0 1 24 1 1 24 2 1 24 3 1 24 4 1
		 24 5 1 24 6 1 24 7 1 24 8 1 24 9 1 24 10 1 24 11 1 12 25 1 13 25 1 14 25 1 15 25 1
		 16 25 1 17 25 1 18 25 1 19 25 1 20 25 1 21 25 1 22 25 1 23 25 1;
	setAttr -s 36 -ch 120 ".fc[0:35]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 3 -1 -37 37
		mu 0 3 1 0 50
		f 3 -2 -38 38
		mu 0 3 2 1 50
		f 3 -3 -39 39
		mu 0 3 3 2 50
		f 3 -4 -40 40
		mu 0 3 4 3 50
		f 3 -5 -41 41
		mu 0 3 5 4 50
		f 3 -6 -42 42
		mu 0 3 6 5 50
		f 3 -7 -43 43
		mu 0 3 7 6 50
		f 3 -8 -44 44
		mu 0 3 8 7 50
		f 3 -9 -45 45
		mu 0 3 9 8 50
		f 3 -10 -46 46
		mu 0 3 10 9 50
		f 3 -11 -47 47
		mu 0 3 11 10 50
		f 3 -12 -48 36
		mu 0 3 0 11 50
		f 3 12 49 -49
		mu 0 3 48 47 51
		f 3 13 50 -50
		mu 0 3 47 46 51
		f 3 14 51 -51
		mu 0 3 46 45 51
		f 3 15 52 -52
		mu 0 3 45 44 51
		f 3 16 53 -53
		mu 0 3 44 43 51
		f 3 17 54 -54
		mu 0 3 43 42 51
		f 3 18 55 -55
		mu 0 3 42 41 51
		f 3 19 56 -56
		mu 0 3 41 40 51
		f 3 20 57 -57
		mu 0 3 40 39 51
		f 3 21 58 -58
		mu 0 3 39 38 51
		f 3 22 59 -59
		mu 0 3 38 49 51
		f 3 23 48 -60
		mu 0 3 49 48 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface14" -p "group2";
	setAttr ".t" -type "double3" 150.83869406245239 57.117682610991451 -128.9283388944493 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "polySurfaceShape14" -p "polySurface14";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.375 0.67250806
		 0.375 0.3125 0.39583334 0.3125 0.39583334 0.67250806 0.39583334 0.68843985 0.375
		 0.68843985 0.41666669 0.3125 0.41666669 0.67250806 0.41666669 0.68843985 0.43750003
		 0.3125 0.43750003 0.67250806 0.43750003 0.68843985 0.45833337 0.3125 0.45833337 0.67250806
		 0.45833337 0.68843985 0.47916672 0.3125 0.47916672 0.67250806 0.47916672 0.68843985
		 0.50000006 0.3125 0.50000006 0.67250806 0.50000006 0.68843985 0.52083337 0.3125 0.52083337
		 0.67250806 0.52083337 0.68843985 0.54166669 0.3125 0.54166669 0.67250806 0.54166669
		 0.68843985 0.5625 0.3125 0.5625 0.67250806 0.5625 0.68843985 0.58333331 0.3125 0.58333337
		 0.67250806 0.58333331 0.68843985 0.60416663 0.3125 0.60416663 0.67250806 0.60416663
		 0.68843985 0.62499994 0.3125 0.62499994 0.67250806 0.62499994 0.68843985 0.578125
		 0.020933539 0.63531649 0.078125 0.5 0.15000001 0.5 0 0.421875 0.020933539 0.36468354
		 0.078125 0.34375 0.15625 0.36468354 0.234375 0.421875 0.29156646 0.5 0.3125 0.578125
		 0.29156646 0.63531649 0.234375 0.65625 0.15625 0.578125 0.97906649 0.5 1 0.5 0.99311352
		 0.5748142 0.97306716 0.421875 0.97906649 0.42518583 0.97306716 0.36468354 0.921875
		 0.37041804 0.91829932 0.34375 0.84375 0.35037166 0.84348518 0.36468354 0.765625 0.37041804
		 0.76867098 0.421875 0.70843351 0.42518583 0.71390319 0.5 0.6875 0.5 0.69385684 0.578125
		 0.70843351 0.5748142 0.71390319 0.63531649 0.765625 0.62958199 0.76867098 0.65625
		 0.84375 0.64962834 0.84348518 0.63531649 0.921875 0.62958199 0.91829932;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 49 ".vt[0:48]"  49.39929199 -10.08706665 -28.52069092 28.52069092 -10.08706665 -49.39930725
		 0 -10.08706665 -57.041412354 -28.52064514 -10.08706665 -49.39930725 -49.39927673 -10.08706665 -28.52069092
		 -57.04132843 -10.08706665 -6.1035156e-005 -49.39927673 -10.08706665 28.52058411 -28.52064514 -10.08706665 49.39917755
		 0 -10.08706665 57.041267395 28.52069092 -10.08706665 49.39917755 49.39929199 -10.08706665 28.52058411
		 57.041427612 -10.08706665 -6.1035156e-005 49.39929199 7.37302399 -28.52069092 28.52069092 7.37302399 -49.39930725
		 0 7.37302399 -57.041412354 -28.52064514 7.37302399 -49.39930725 -49.39927673 7.37302399 -28.52069092
		 -57.04132843 7.37302399 -6.1035156e-005 -49.39927673 7.37302399 28.52058411 -28.52064514 7.37302399 49.39917755
		 0 7.37302399 57.041267395 28.52069092 7.37302399 49.39917755 49.39929199 7.37302399 28.52058411
		 57.041427612 7.37302399 -6.1035156e-005 0 -10.08706665 -6.1035156e-005 49.39929199 6.63308716 -28.52069092
		 57.041427612 6.63308716 -6.1035156e-005 49.39929199 6.63308716 28.52058411 28.52069092 6.63308716 49.39917755
		 0 6.63308716 57.041267395 -28.52064514 6.63308716 49.39917755 -49.39927673 6.63308716 28.52058411
		 -57.04132843 6.63308716 -6.1035156e-005 -49.39927673 6.63308716 -28.52069092 -28.52064514 6.63308716 -49.39930725
		 0 6.63308716 -57.041412354 28.52069092 6.63308716 -49.39930725 27.31207275 9.71113586 -47.30589294
		 0 9.71113586 -54.62409973 -27.3119812 9.71113586 -47.30589294 -47.30580139 9.71113586 -27.31207275
		 -54.62397766 9.71113586 -6.1035156e-005 -47.30580139 9.71113586 27.3119278 -27.3119812 9.71113586 47.30570984
		 0 9.71113586 54.62393951 27.31207275 9.71113586 47.30570984 47.30583191 9.71113586 27.3119278
		 54.62411499 9.71113586 -6.1035156e-005 47.30583191 9.71113586 -27.31207275;
	setAttr -s 84 ".ed[0:83]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 25 0 1 36 0 2 35 0 3 34 0 4 33 0
		 5 32 0 6 31 0 7 30 0 8 29 0 9 28 0 10 27 0 11 26 0 24 0 1 24 1 1 24 2 1 24 3 1 24 4 1
		 24 5 1 24 6 1 24 7 1 24 8 1 24 9 1 24 10 1 24 11 1 12 48 1 13 37 1 14 38 1 15 39 1
		 16 40 1 17 41 1 18 42 1 19 43 1 20 44 1 21 45 1 22 46 1 23 47 1 25 12 0 26 23 0 27 22 0
		 28 21 0 29 20 0 30 19 0 31 18 0 32 17 0 33 16 0 34 15 0 35 14 0 36 13 0 37 38 0 38 39 0
		 39 40 0 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 37 0;
	setAttr -s 36 -ch 156 ".fc[0:35]" -type "polyFaces" 
		f 6 -25 0 25 71 -13 -61
		mu 0 6 0 1 2 3 4 5
		f 6 -26 1 26 70 -14 -72
		mu 0 6 3 2 6 7 8 4
		f 6 -27 2 27 69 -15 -71
		mu 0 6 7 6 9 10 11 8
		f 6 -28 3 28 68 -16 -70
		mu 0 6 10 9 12 13 14 11
		f 6 -29 4 29 67 -17 -69
		mu 0 6 13 12 15 16 17 14
		f 6 -30 5 30 66 -18 -68
		mu 0 6 16 15 18 19 20 17
		f 6 -31 6 31 65 -19 -67
		mu 0 6 19 18 21 22 23 20
		f 6 -32 7 32 64 -20 -66
		mu 0 6 22 21 24 25 26 23
		f 6 -33 8 33 63 -21 -65
		mu 0 6 25 24 27 28 29 26
		f 6 -34 9 34 62 -22 -64
		mu 0 6 28 27 30 31 32 29
		f 6 -35 10 35 61 -23 -63
		mu 0 6 31 30 33 34 35 32
		f 6 -36 11 24 60 -24 -62
		mu 0 6 34 33 36 37 38 35
		f 3 -1 -37 37
		mu 0 3 39 40 41
		f 3 -2 -38 38
		mu 0 3 42 39 41
		f 3 -3 -39 39
		mu 0 3 43 42 41
		f 3 -4 -40 40
		mu 0 3 44 43 41
		f 3 -5 -41 41
		mu 0 3 45 44 41
		f 3 -6 -42 42
		mu 0 3 46 45 41
		f 3 -7 -43 43
		mu 0 3 47 46 41
		f 3 -8 -44 44
		mu 0 3 48 47 41
		f 3 -9 -45 45
		mu 0 3 49 48 41
		f 3 -10 -46 46
		mu 0 3 50 49 41
		f 3 -11 -47 47
		mu 0 3 51 50 41
		f 3 -12 -48 36
		mu 0 3 40 51 41
		f 4 13 50 -73 -50
		mu 0 4 52 53 54 55
		f 4 14 51 -74 -51
		mu 0 4 53 56 57 54
		f 4 15 52 -75 -52
		mu 0 4 56 58 59 57
		f 4 16 53 -76 -53
		mu 0 4 58 60 61 59
		f 4 17 54 -77 -54
		mu 0 4 60 62 63 61
		f 4 18 55 -78 -55
		mu 0 4 62 64 65 63
		f 4 19 56 -79 -56
		mu 0 4 64 66 67 65
		f 4 20 57 -80 -57
		mu 0 4 66 68 69 67
		f 4 21 58 -81 -58
		mu 0 4 68 70 71 69
		f 4 22 59 -82 -59
		mu 0 4 70 72 73 71
		f 4 23 48 -83 -60
		mu 0 4 72 74 75 73
		f 4 12 49 -84 -49
		mu 0 4 74 52 55 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface15" -p "group2";
	setAttr ".t" -type "double3" 150.83869406245239 57.117682610991451 -128.9283388944493 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "polySurfaceShape15" -p "polySurface15";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 37 ".uvst[0].uvsp[0:36]" -type "float2" 0.62958199 0.91829932
		 0.5748142 0.97306716 0.5 0.83749998 0.5 0.99311352 0.42518583 0.97306716 0.37041804
		 0.91829932 0.35037166 0.84348518 0.37041804 0.76867098 0.42518583 0.71390319 0.5
		 0.69385684 0.5748142 0.71390319 0.62958199 0.76867098 0.64962834 0.84348518 0.62958199
		 0.91829932 0.5748142 0.97306716 0.5748142 0.97306716 0.62958199 0.91829932 0.5 0.99311352
		 0.5 0.99311352 0.42518583 0.97306716 0.42518583 0.97306716 0.37041804 0.91829932
		 0.37041804 0.91829932 0.35037166 0.84348518 0.35037166 0.84348518 0.37041804 0.76867098
		 0.37041804 0.76867098 0.42518583 0.71390319 0.42518583 0.71390319 0.5 0.69385684
		 0.5 0.69385684 0.5748142 0.71390319 0.5748142 0.71390319 0.62958199 0.76867098 0.62958199
		 0.76867098 0.64962834 0.84348518 0.64962834 0.84348518;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 37 ".vt[0:36]"  47.30583191 14.43854523 -27.31207275 27.31207275 14.43854523 -47.30589294
		 0 14.43854523 -54.62409973 -27.3119812 14.43854523 -47.30589294 -47.30580139 14.43854523 -27.31207275
		 -54.62397766 14.43854523 -6.1035156e-005 -47.30580139 14.43854523 27.3119278 -27.3119812 14.43854523 47.30570984
		 0 14.43854523 54.62393951 27.31207275 14.43854523 47.30570984 47.30583191 14.43854523 27.3119278
		 54.62411499 14.43854523 -6.1035156e-005 43.90701294 18.27500153 -25.34976196 25.3497467 18.27500153 -43.90705872
		 0 18.27500153 -7.6293945e-005 0 18.27500153 -50.69949341 -25.34967041 18.27500153 -43.90705872
		 -43.90696716 18.27500153 -25.34976196 -50.69935608 18.27500153 -7.6293945e-005 -43.90696716 18.27500153 25.34960175
		 -25.34967041 18.27500153 43.90689087 0 18.27500153 50.6993103 25.3497467 18.27500153 43.90689087
		 43.90701294 18.27500153 25.34960175 50.69949341 18.27500153 -7.6293945e-005 47.30583191 9.71113586 -27.31207275
		 27.31207275 9.71113586 -47.30589294 0 9.71113586 -54.62409973 -27.3119812 9.71113586 -47.30589294
		 -47.30580139 9.71113586 -27.31207275 -54.62397766 9.71113586 -6.1035156e-005 -47.30580139 9.71113586 27.3119278
		 -27.3119812 9.71113586 47.30570984 0 9.71113586 54.62393951 27.31207275 9.71113586 47.30570984
		 47.30583191 9.71113586 27.3119278 54.62411499 9.71113586 -6.1035156e-005;
	setAttr -s 72 ".ed[0:71]"  25 0 0 26 1 0 0 1 0 27 2 0 1 2 0 28 3 0 2 3 0
		 29 4 0 3 4 0 30 5 0 4 5 0 31 6 0 5 6 0 32 7 0 6 7 0 33 8 0 7 8 0 34 9 0 8 9 0 35 10 0
		 9 10 0 36 11 0 10 11 0 11 0 0 0 12 0 1 13 0 12 13 0 13 14 1 12 14 1 2 15 0 13 15 0
		 15 14 1 3 16 0 15 16 0 16 14 1 4 17 0 16 17 0 17 14 1 5 18 0 17 18 0 18 14 1 6 19 0
		 18 19 0 19 14 1 7 20 0 19 20 0 20 14 1 8 21 0 20 21 0 21 14 1 9 22 0 21 22 0 22 14 1
		 10 23 0 22 23 0 23 14 1 11 24 0 23 24 0 24 14 1 24 12 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 25 0;
	setAttr -s 36 -ch 132 ".fc[0:35]" -type "polyFaces" 
		f 3 26 27 -29
		mu 0 3 0 1 2
		f 3 30 31 -28
		mu 0 3 1 3 2
		f 3 33 34 -32
		mu 0 3 3 4 2
		f 3 36 37 -35
		mu 0 3 4 5 2
		f 3 39 40 -38
		mu 0 3 5 6 2
		f 3 42 43 -41
		mu 0 3 6 7 2
		f 3 45 46 -44
		mu 0 3 7 8 2
		f 3 48 49 -47
		mu 0 3 8 9 2
		f 3 51 52 -50
		mu 0 3 9 10 2
		f 3 54 55 -53
		mu 0 3 10 11 2
		f 3 57 58 -56
		mu 0 3 11 12 2
		f 3 59 28 -59
		mu 0 3 12 0 2
		f 4 60 1 -3 -1
		mu 0 4 13 14 15 16
		f 4 61 3 -5 -2
		mu 0 4 14 17 18 15
		f 4 62 5 -7 -4
		mu 0 4 17 19 20 18
		f 4 63 7 -9 -6
		mu 0 4 19 21 22 20
		f 4 64 9 -11 -8
		mu 0 4 21 23 24 22
		f 4 65 11 -13 -10
		mu 0 4 23 25 26 24
		f 4 66 13 -15 -12
		mu 0 4 25 27 28 26
		f 4 67 15 -17 -14
		mu 0 4 27 29 30 28
		f 4 68 17 -19 -16
		mu 0 4 29 31 32 30
		f 4 69 19 -21 -18
		mu 0 4 31 33 34 32
		f 4 70 21 -23 -20
		mu 0 4 33 35 36 34
		f 4 71 0 -24 -22
		mu 0 4 35 13 16 36
		f 4 2 25 -27 -25
		mu 0 4 16 15 1 0
		f 4 4 29 -31 -26
		mu 0 4 15 18 3 1
		f 4 6 32 -34 -30
		mu 0 4 18 20 4 3
		f 4 8 35 -37 -33
		mu 0 4 20 22 5 4
		f 4 10 38 -40 -36
		mu 0 4 22 24 6 5
		f 4 12 41 -43 -39
		mu 0 4 24 26 7 6
		f 4 14 44 -46 -42
		mu 0 4 26 28 8 7
		f 4 16 47 -49 -45
		mu 0 4 28 30 9 8
		f 4 18 50 -52 -48
		mu 0 4 30 32 10 9
		f 4 20 53 -55 -51
		mu 0 4 32 34 11 10
		f 4 22 56 -58 -54
		mu 0 4 34 36 12 11
		f 4 23 24 -60 -57
		mu 0 4 36 16 0 12;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface11" -p "group2";
	setAttr ".t" -type "double3" 150.83869406245239 57.117682610991451 -128.9283388944493 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "polySurfaceShape13" -p "polySurface11";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 144 ".uvst[0].uvsp[0:143]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  1.5599439 0.011914931 -0.90063357 
		0.90063405 0.011914931 -1.5599436 -7.5885612e-007 0.011914931 -1.8012681 -0.90063405 
		0.011914931 -1.5599436 -1.5599444 0.011914931 -0.90063357 -1.8012681 0.011914931 
		0 -1.5599444 0.011914931 0.90063393 -0.90063405 0.011914931 1.5599444 -7.5885612e-007 
		0.011914931 1.8012681 0.90063405 0.011914931 1.5599444 1.5599439 0.011914931 0.90063393 
		1.8012681 0.011914931 0 1.5599439 -0.011914931 -0.90063357 0.90063405 -0.011914931 
		-1.5599436 -7.5885612e-007 -0.011914931 -1.8012681 -0.90063405 -0.011914931 -1.5599436 
		-1.5599444 -0.011914931 -0.90063357 -1.8012681 -0.011914931 0 -1.5599444 -0.011914931 
		0.90063393 -0.90063405 -0.011914931 1.5599444 -7.5885612e-007 -0.011914931 1.8012681 
		0.90063405 -0.011914931 1.5599444 1.5599439 -0.011914931 0.90063393 1.8012681 -0.011914931 
		0;
	setAttr -s 48 ".vt[0:47]"  47.05015564 -10.83740234 -27.16444397 27.16442871 -10.83740234 -47.050170898
		 0 -10.83740234 -54.32887268 -27.16438293 -10.83740234 -47.050170898 -47.050125122 -10.83740234 -27.16444397
		 -54.32878113 -10.83740234 -6.1035156e-005 -47.050125122 -10.83740234 27.16433716
		 -27.16438293 -10.83740234 47.050086975 0 -10.83740234 54.32875061 27.16442871 -10.83740234 47.050086975
		 47.05015564 -10.83740234 27.16433716 54.3288269 -10.83740234 -6.1035156e-005 47.05015564 -11.55614471 -27.16444397
		 27.16442871 -11.55614471 -47.050170898 0 -11.55614471 -54.32887268 -27.16438293 -11.55614471 -47.050170898
		 -47.050125122 -11.55614471 -27.16444397 -54.32878113 -11.55614471 -6.1035156e-005
		 -47.050125122 -11.55614471 27.16433716 -27.16438293 -11.55614471 47.050086975 0 -11.55614471 54.32875061
		 27.16442871 -11.55614471 47.050086975 47.05015564 -11.55614471 27.16433716 54.3288269 -11.55614471 -6.1035156e-005
		 49.34677124 -12.044296265 -28.49040222 28.49038696 -12.044296265 -49.34680176 0 -12.044296265 -56.98078918
		 -28.49032593 -12.044296265 -49.34680176 -49.34674072 -12.044296265 -28.49040222 -56.98069763 -12.044296265 -6.1035156e-005
		 -49.34674072 -12.044296265 28.49029541 -28.49032593 -12.044296265 49.34671021 0 -12.044296265 56.98065186
		 28.49038696 -12.044296265 49.34671021 49.34677124 -12.044296265 28.49029541 56.98074341 -12.044296265 -6.1035156e-005
		 49.39929199 -10.08706665 -28.52069092 28.52069092 -10.08706665 -49.39930725 0 -10.08706665 -57.041412354
		 -28.52064514 -10.08706665 -49.39930725 -49.39927673 -10.08706665 -28.52069092 -57.04133606 -10.08706665 -6.1035156e-005
		 -49.39927673 -10.08706665 28.52062988 -28.52064514 -10.08706665 49.39923096 0 -10.08706665 57.041305542
		 28.52069092 -10.08706665 49.39923096 49.39929199 -10.08706665 28.52062988 57.041427612 -10.08706665 -6.1035156e-005;
	setAttr -s 84 ".ed[0:83]"  36 0 0 37 1 0 0 1 0 38 2 0 1 2 0 39 3 0 2 3 0
		 40 4 0 3 4 0 41 5 0 4 5 0 42 6 0 5 6 0 43 7 0 6 7 0 44 8 0 7 8 0 45 9 0 8 9 0 46 10 0
		 9 10 0 47 11 0 10 11 0 11 0 0 0 12 0 1 13 0 12 13 0 2 14 0 13 14 0 3 15 0 14 15 0
		 4 16 0 15 16 0 5 17 0 16 17 0 6 18 0 17 18 0 7 19 0 18 19 0 8 20 0 19 20 0 9 21 0
		 20 21 0 10 22 0 21 22 0 11 23 0 22 23 0 23 12 0 12 24 0 13 25 0 24 25 0 14 26 0 25 26 0
		 15 27 0 26 27 0 16 28 0 27 28 0 17 29 0 28 29 0 18 30 0 29 30 0 19 31 0 30 31 0 20 32 0
		 31 32 0 21 33 0 32 33 0 22 34 0 33 34 0 23 35 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0
		 39 40 0 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0;
	setAttr -s 36 -ch 144 ".fc[0:35]" -type "polyFaces" 
		f 4 72 1 -3 -1
		mu 0 4 0 1 2 3
		f 4 73 3 -5 -2
		mu 0 4 4 5 6 7
		f 4 74 5 -7 -4
		mu 0 4 8 9 10 11
		f 4 75 7 -9 -6
		mu 0 4 12 13 14 15
		f 4 76 9 -11 -8
		mu 0 4 16 17 18 19
		f 4 77 11 -13 -10
		mu 0 4 20 21 22 23
		f 4 78 13 -15 -12
		mu 0 4 24 25 26 27
		f 4 79 15 -17 -14
		mu 0 4 28 29 30 31
		f 4 80 17 -19 -16
		mu 0 4 32 33 34 35
		f 4 81 19 -21 -18
		mu 0 4 36 37 38 39
		f 4 82 21 -23 -20
		mu 0 4 40 41 42 43
		f 4 83 0 -24 -22
		mu 0 4 44 45 46 47
		f 4 2 25 -27 -25
		mu 0 4 48 49 50 51
		f 4 4 27 -29 -26
		mu 0 4 52 53 54 55
		f 4 6 29 -31 -28
		mu 0 4 56 57 58 59
		f 4 8 31 -33 -30
		mu 0 4 60 61 62 63
		f 4 10 33 -35 -32
		mu 0 4 64 65 66 67
		f 4 12 35 -37 -34
		mu 0 4 68 69 70 71
		f 4 14 37 -39 -36
		mu 0 4 72 73 74 75
		f 4 16 39 -41 -38
		mu 0 4 76 77 78 79
		f 4 18 41 -43 -40
		mu 0 4 80 81 82 83
		f 4 20 43 -45 -42
		mu 0 4 84 85 86 87
		f 4 22 45 -47 -44
		mu 0 4 88 89 90 91
		f 4 23 24 -48 -46
		mu 0 4 92 93 94 95
		f 4 26 49 -51 -49
		mu 0 4 96 97 98 99
		f 4 28 51 -53 -50
		mu 0 4 100 101 102 103
		f 4 30 53 -55 -52
		mu 0 4 104 105 106 107
		f 4 32 55 -57 -54
		mu 0 4 108 109 110 111
		f 4 34 57 -59 -56
		mu 0 4 112 113 114 115
		f 4 36 59 -61 -58
		mu 0 4 116 117 118 119
		f 4 38 61 -63 -60
		mu 0 4 120 121 122 123
		f 4 40 63 -65 -62
		mu 0 4 124 125 126 127
		f 4 42 65 -67 -64
		mu 0 4 128 129 130 131
		f 4 44 67 -69 -66
		mu 0 4 132 133 134 135
		f 4 46 69 -71 -68
		mu 0 4 136 137 138 139
		f 4 47 48 -72 -70
		mu 0 4 140 141 142 143;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface12" -p "group2";
	setAttr ".t" -type "double3" 150.83869406245239 37.776911656559264 -128.9283388944493 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "polySurfaceShape12" -p "polySurface12";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 144 ".uvst[0].uvsp[0:143]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  1.5599439 0.011914931 -0.90063357 
		0.90063405 0.011914931 -1.5599436 -7.5885612e-007 0.011914931 -1.8012681 -0.90063405 
		0.011914931 -1.5599436 -1.5599444 0.011914931 -0.90063357 -1.8012681 0.011914931 
		0 -1.5599444 0.011914931 0.90063393 -0.90063405 0.011914931 1.5599444 -7.5885612e-007 
		0.011914931 1.8012681 0.90063405 0.011914931 1.5599444 1.5599439 0.011914931 0.90063393 
		1.8012681 0.011914931 0 1.5599439 -0.011914931 -0.90063357 0.90063405 -0.011914931 
		-1.5599436 -7.5885612e-007 -0.011914931 -1.8012681 -0.90063405 -0.011914931 -1.5599436 
		-1.5599444 -0.011914931 -0.90063357 -1.8012681 -0.011914931 0 -1.5599444 -0.011914931 
		0.90063393 -0.90063405 -0.011914931 1.5599444 -7.5885612e-007 -0.011914931 1.8012681 
		0.90063405 -0.011914931 1.5599444 1.5599439 -0.011914931 0.90063393 1.8012681 -0.011914931 
		0;
	setAttr -s 48 ".vt[0:47]"  47.05015564 -10.83740234 -27.16444397 27.16442871 -10.83740234 -47.050170898
		 0 -10.83740234 -54.32887268 -27.16438293 -10.83740234 -47.050170898 -47.050125122 -10.83740234 -27.16444397
		 -54.32878113 -10.83740234 -6.1035156e-005 -47.050125122 -10.83740234 27.16433716
		 -27.16438293 -10.83740234 47.050086975 0 -10.83740234 54.32875061 27.16442871 -10.83740234 47.050086975
		 47.05015564 -10.83740234 27.16433716 54.3288269 -10.83740234 -6.1035156e-005 47.05015564 -11.55614471 -27.16444397
		 27.16442871 -11.55614471 -47.050170898 0 -11.55614471 -54.32887268 -27.16438293 -11.55614471 -47.050170898
		 -47.050125122 -11.55614471 -27.16444397 -54.32878113 -11.55614471 -6.1035156e-005
		 -47.050125122 -11.55614471 27.16433716 -27.16438293 -11.55614471 47.050086975 0 -11.55614471 54.32875061
		 27.16442871 -11.55614471 47.050086975 47.05015564 -11.55614471 27.16433716 54.3288269 -11.55614471 -6.1035156e-005
		 49.34677124 -12.044296265 -28.49040222 28.49038696 -12.044296265 -49.34680176 0 -12.044296265 -56.98078918
		 -28.49032593 -12.044296265 -49.34680176 -49.34674072 -12.044296265 -28.49040222 -56.98069763 -12.044296265 -6.1035156e-005
		 -49.34674072 -12.044296265 28.49029541 -28.49032593 -12.044296265 49.34671021 0 -12.044296265 56.98065186
		 28.49038696 -12.044296265 49.34671021 49.34677124 -12.044296265 28.49029541 56.98074341 -12.044296265 -6.1035156e-005
		 49.39929199 -10.08706665 -28.52069092 28.52069092 -10.08706665 -49.39930725 0 -10.08706665 -57.041412354
		 -28.52064514 -10.08706665 -49.39930725 -49.39927673 -10.08706665 -28.52069092 -57.04133606 -10.08706665 -6.1035156e-005
		 -49.39927673 -10.08706665 28.52062988 -28.52064514 -10.08706665 49.39923096 0 -10.08706665 57.041305542
		 28.52069092 -10.08706665 49.39923096 49.39929199 -10.08706665 28.52062988 57.041427612 -10.08706665 -6.1035156e-005;
	setAttr -s 84 ".ed[0:83]"  36 0 0 37 1 0 0 1 0 38 2 0 1 2 0 39 3 0 2 3 0
		 40 4 0 3 4 0 41 5 0 4 5 0 42 6 0 5 6 0 43 7 0 6 7 0 44 8 0 7 8 0 45 9 0 8 9 0 46 10 0
		 9 10 0 47 11 0 10 11 0 11 0 0 0 12 0 1 13 0 12 13 0 2 14 0 13 14 0 3 15 0 14 15 0
		 4 16 0 15 16 0 5 17 0 16 17 0 6 18 0 17 18 0 7 19 0 18 19 0 8 20 0 19 20 0 9 21 0
		 20 21 0 10 22 0 21 22 0 11 23 0 22 23 0 23 12 0 12 24 0 13 25 0 24 25 0 14 26 0 25 26 0
		 15 27 0 26 27 0 16 28 0 27 28 0 17 29 0 28 29 0 18 30 0 29 30 0 19 31 0 30 31 0 20 32 0
		 31 32 0 21 33 0 32 33 0 22 34 0 33 34 0 23 35 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0
		 39 40 0 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0;
	setAttr -s 36 -ch 144 ".fc[0:35]" -type "polyFaces" 
		f 4 72 1 -3 -1
		mu 0 4 0 1 2 3
		f 4 73 3 -5 -2
		mu 0 4 4 5 6 7
		f 4 74 5 -7 -4
		mu 0 4 8 9 10 11
		f 4 75 7 -9 -6
		mu 0 4 12 13 14 15
		f 4 76 9 -11 -8
		mu 0 4 16 17 18 19
		f 4 77 11 -13 -10
		mu 0 4 20 21 22 23
		f 4 78 13 -15 -12
		mu 0 4 24 25 26 27
		f 4 79 15 -17 -14
		mu 0 4 28 29 30 31
		f 4 80 17 -19 -16
		mu 0 4 32 33 34 35
		f 4 81 19 -21 -18
		mu 0 4 36 37 38 39
		f 4 82 21 -23 -20
		mu 0 4 40 41 42 43
		f 4 83 0 -24 -22
		mu 0 4 44 45 46 47
		f 4 2 25 -27 -25
		mu 0 4 48 49 50 51
		f 4 4 27 -29 -26
		mu 0 4 52 53 54 55
		f 4 6 29 -31 -28
		mu 0 4 56 57 58 59
		f 4 8 31 -33 -30
		mu 0 4 60 61 62 63
		f 4 10 33 -35 -32
		mu 0 4 64 65 66 67
		f 4 12 35 -37 -34
		mu 0 4 68 69 70 71
		f 4 14 37 -39 -36
		mu 0 4 72 73 74 75
		f 4 16 39 -41 -38
		mu 0 4 76 77 78 79
		f 4 18 41 -43 -40
		mu 0 4 80 81 82 83
		f 4 20 43 -45 -42
		mu 0 4 84 85 86 87
		f 4 22 45 -47 -44
		mu 0 4 88 89 90 91
		f 4 23 24 -48 -46
		mu 0 4 92 93 94 95
		f 4 26 49 -51 -49
		mu 0 4 96 97 98 99
		f 4 28 51 -53 -50
		mu 0 4 100 101 102 103
		f 4 30 53 -55 -52
		mu 0 4 104 105 106 107
		f 4 32 55 -57 -54
		mu 0 4 108 109 110 111
		f 4 34 57 -59 -56
		mu 0 4 112 113 114 115
		f 4 36 59 -61 -58
		mu 0 4 116 117 118 119
		f 4 38 61 -63 -60
		mu 0 4 120 121 122 123
		f 4 40 63 -65 -62
		mu 0 4 124 125 126 127
		f 4 42 65 -67 -64
		mu 0 4 128 129 130 131
		f 4 44 67 -69 -66
		mu 0 4 132 133 134 135
		f 4 46 69 -71 -68
		mu 0 4 136 137 138 139
		f 4 47 48 -72 -70
		mu 0 4 140 141 142 143;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface13" -p "group2";
	setAttr ".t" -type "double3" 150.83869406245239 18.354384653615359 -128.9283388944493 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "polySurfaceShape13" -p "polySurface13";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 144 ".uvst[0].uvsp[0:143]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt[0:35]" -type "float3"  2.1310852 0.011914931 -1.2303817 
		1.2303824 0.011914931 -2.131084 -1.0366954e-006 0.011914931 -2.4607649 -1.2303824 
		0.011914931 -2.131084 -2.1310856 0.011914931 -1.2303817 -2.4607649 0.011914931 0 
		-2.1310856 0.011914931 1.2303823 -1.2303824 0.011914931 2.1310856 -1.0366954e-006 
		0.011914931 2.4607649 1.2303824 0.011914931 2.1310856 2.1310852 0.011914931 1.2303823 
		2.4607649 0.011914931 0 1.5599439 -0.011914931 -0.90063357 0.90063405 -0.011914931 
		-1.5599436 -7.5885612e-007 -0.011914931 -1.8012681 -0.90063405 -0.011914931 -1.5599436 
		-1.5599444 -0.011914931 -0.90063357 -1.8012681 -0.011914931 0 -1.5599444 -0.011914931 
		0.90063393 -0.90063405 -0.011914931 1.5599444 -7.5885612e-007 -0.011914931 1.8012681 
		0.90063405 -0.011914931 1.5599444 1.5599439 -0.011914931 0.90063393 1.8012681 -0.011914931 
		0 -48.829659 3.7303494e-014 28.19179 -28.19182 3.7303494e-014 48.829643 2.2648346e-005 
		3.7303494e-014 56.383633 28.191805 3.7303494e-014 48.829643 48.829674 3.7303494e-014 
		28.19179 56.383633 3.7303494e-014 -7.5494481e-006 48.829674 3.7303494e-014 -28.19182 
		28.191805 3.7303494e-014 -48.829689 2.2648346e-005 3.7303494e-014 -56.383633 -28.19182 
		3.7303494e-014 -48.829689 -48.829659 3.7303494e-014 -28.19182 -56.383633 3.7303494e-014 
		-7.5494481e-006;
	setAttr -s 48 ".vt[0:47]"  47.05015564 -10.83740234 -27.16444397 27.16442871 -10.83740234 -47.050170898
		 0 -10.83740234 -54.32887268 -27.16438293 -10.83740234 -47.050170898 -47.050125122 -10.83740234 -27.16444397
		 -54.32878113 -10.83740234 -6.1035156e-005 -47.050125122 -10.83740234 27.16433716
		 -27.16438293 -10.83740234 47.050086975 0 -10.83740234 54.32875061 27.16442871 -10.83740234 47.050086975
		 47.05015564 -10.83740234 27.16433716 54.3288269 -10.83740234 -6.1035156e-005 47.05015564 -11.55614471 -27.16444397
		 27.16442871 -11.55614471 -47.050170898 0 -11.55614471 -54.32887268 -27.16438293 -11.55614471 -47.050170898
		 -47.050125122 -11.55614471 -27.16444397 -54.32878113 -11.55614471 -6.1035156e-005
		 -47.050125122 -11.55614471 27.16433716 -27.16438293 -11.55614471 47.050086975 0 -11.55614471 54.32875061
		 27.16442871 -11.55614471 47.050086975 47.05015564 -11.55614471 27.16433716 54.3288269 -11.55614471 -6.1035156e-005
		 49.34677124 -12.044296265 -28.49040222 28.49038696 -12.044296265 -49.34680176 0 -12.044296265 -56.98078918
		 -28.49032593 -12.044296265 -49.34680176 -49.34674072 -12.044296265 -28.49040222 -56.98069763 -12.044296265 -6.1035156e-005
		 -49.34674072 -12.044296265 28.49029541 -28.49032593 -12.044296265 49.34671021 0 -12.044296265 56.98065186
		 28.49038696 -12.044296265 49.34671021 49.34677124 -12.044296265 28.49029541 56.98074341 -12.044296265 -6.1035156e-005
		 49.39929199 -10.08706665 -28.52069092 28.52069092 -10.08706665 -49.39930725 0 -10.08706665 -57.041412354
		 -28.52064514 -10.08706665 -49.39930725 -49.39927673 -10.08706665 -28.52069092 -57.04133606 -10.08706665 -6.1035156e-005
		 -49.39927673 -10.08706665 28.52062988 -28.52064514 -10.08706665 49.39923096 0 -10.08706665 57.041305542
		 28.52069092 -10.08706665 49.39923096 49.39929199 -10.08706665 28.52062988 57.041427612 -10.08706665 -6.1035156e-005;
	setAttr -s 84 ".ed[0:83]"  36 0 0 37 1 0 0 1 0 38 2 0 1 2 0 39 3 0 2 3 0
		 40 4 0 3 4 0 41 5 0 4 5 0 42 6 0 5 6 0 43 7 0 6 7 0 44 8 0 7 8 0 45 9 0 8 9 0 46 10 0
		 9 10 0 47 11 0 10 11 0 11 0 0 0 12 0 1 13 0 12 13 0 2 14 0 13 14 0 3 15 0 14 15 0
		 4 16 0 15 16 0 5 17 0 16 17 0 6 18 0 17 18 0 7 19 0 18 19 0 8 20 0 19 20 0 9 21 0
		 20 21 0 10 22 0 21 22 0 11 23 0 22 23 0 23 12 0 12 24 0 13 25 0 24 25 0 14 26 0 25 26 0
		 15 27 0 26 27 0 16 28 0 27 28 0 17 29 0 28 29 0 18 30 0 29 30 0 19 31 0 30 31 0 20 32 0
		 31 32 0 21 33 0 32 33 0 22 34 0 33 34 0 23 35 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0
		 39 40 0 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0;
	setAttr -s 36 -ch 144 ".fc[0:35]" -type "polyFaces" 
		f 4 72 1 -3 -1
		mu 0 4 0 1 2 3
		f 4 73 3 -5 -2
		mu 0 4 4 5 6 7
		f 4 74 5 -7 -4
		mu 0 4 8 9 10 11
		f 4 75 7 -9 -6
		mu 0 4 12 13 14 15
		f 4 76 9 -11 -8
		mu 0 4 16 17 18 19
		f 4 77 11 -13 -10
		mu 0 4 20 21 22 23
		f 4 78 13 -15 -12
		mu 0 4 24 25 26 27
		f 4 79 15 -17 -14
		mu 0 4 28 29 30 31
		f 4 80 17 -19 -16
		mu 0 4 32 33 34 35
		f 4 81 19 -21 -18
		mu 0 4 36 37 38 39
		f 4 82 21 -23 -20
		mu 0 4 40 41 42 43
		f 4 83 0 -24 -22
		mu 0 4 44 45 46 47
		f 4 2 25 -27 -25
		mu 0 4 48 49 50 51
		f 4 4 27 -29 -26
		mu 0 4 52 53 54 55
		f 4 6 29 -31 -28
		mu 0 4 56 57 58 59
		f 4 8 31 -33 -30
		mu 0 4 60 61 62 63
		f 4 10 33 -35 -32
		mu 0 4 64 65 66 67
		f 4 12 35 -37 -34
		mu 0 4 68 69 70 71
		f 4 14 37 -39 -36
		mu 0 4 72 73 74 75
		f 4 16 39 -41 -38
		mu 0 4 76 77 78 79
		f 4 18 41 -43 -40
		mu 0 4 80 81 82 83
		f 4 20 43 -45 -42
		mu 0 4 84 85 86 87
		f 4 22 45 -47 -44
		mu 0 4 88 89 90 91
		f 4 23 24 -48 -46
		mu 0 4 92 93 94 95
		f 4 26 49 -51 -49
		mu 0 4 96 97 98 99
		f 4 28 51 -53 -50
		mu 0 4 100 101 102 103
		f 4 30 53 -55 -52
		mu 0 4 104 105 106 107
		f 4 32 55 -57 -54
		mu 0 4 108 109 110 111
		f 4 34 57 -59 -56
		mu 0 4 112 113 114 115
		f 4 36 59 -61 -58
		mu 0 4 116 117 118 119
		f 4 38 61 -63 -60
		mu 0 4 120 121 122 123
		f 4 40 63 -65 -62
		mu 0 4 124 125 126 127
		f 4 42 65 -67 -64
		mu 0 4 128 129 130 131
		f 4 44 67 -69 -66
		mu 0 4 132 133 134 135
		f 4 46 69 -71 -68
		mu 0 4 136 137 138 139
		f 4 47 48 -72 -70
		mu 0 4 140 141 142 143;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface16";
	setAttr ".t" -type "double3" 274.24920942207228 0 0 ;
createNode mesh -n "polySurfaceShape16" -p "polySurface16";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0 -0.58836818 ;
	setAttr ".pt[3]" -type "float3" 0 0 -0.58836818 ;
	setAttr ".pt[4]" -type "float3" 0 3.9250648 -0.58836818 ;
	setAttr ".pt[5]" -type "float3" 0 3.9250648 -0.58836818 ;
createNode mesh -n "polySurfaceShape17" -p "polySurface16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 183 ".uvst[0].uvsp[0:182]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.625 0.875 0.75 0 0.25 0 0.375 0.875 0.625 0.625 0.875 0.125
		 0.125 0.125 0.375 0.625 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.5 0.75 0.5
		 0.5 0.25 0.125 0.75 0.125 0.5 0.875 0.5 0.625 0.5 0.375 0.3166458 0.19164585 0.2997089
		 0.125 0.3166458 0.24999996 0.31664583 0.19164585 0.4333542 0.3083542 0.375 0.3083542
		 0.5 0.3252911 0.43335417 0.3083542 0.5666458 0.3083542 0.5 0.3252911 0.625 0.3083542
		 0.5666458 0.3083542 0.6833542 0.19164585 0.68335414 0.24999996 0.7002911 0.125 0.6833542
		 0.19164585 0.69911683 -2.4733067e-009 0.7002911 0.125 0.5 0.91295207 0.65025324 0.95113647
		 0.375 0.92588317 0.5 0.91295207 0.2997089 0.125 0.30259547 -7.5913966e-005 0.53088605
		 0.21343449 0.52534157 0.22269315 0.52050722 0.23356207 0.5062384 0.2372445 0.49408355
		 0.24146795 0.48192871 0.23724452 0.46765995 0.23356205 0.46282557 0.22269315 0.45728102
		 0.2134345 0.45819145 0.13459741 0.49408355 0.13448997 0.52997565 0.13459739 0.375
		 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.625 0.625
		 0.875 0.125 0.125 0.125 0.375 0.625 0.5 0.75 0.5 0.5 0.5 0.625 0.24953575 0.12546426
		 0.24965374 0.125 0.24953575 0.24999997 0.49953577 0.37546423 0.37499997 0.37546423
		 0.5 0.37534624 0.50046426 0.37546426 0.5 0.37534624 0.62500006 0.37546423 0.75046426
		 0.12546426 0.7504642 0.24999997 0.75034618 0.125 0.75035447 4.5446704e-009 0.7503463
		 0.125 0.50035441 0.87464553 0.62500006 0.87464553 0.5 0.87473565 0.49964556 0.87464547
		 0.5 0.87473565 0.375 0.87464553 0.24964559 0.12464557 0.24964558 4.5464841e-009 0.24965374
		 0.125 0.54947585 0.06586621 0.54951811 0.065866329 0.56944096 0.065920711 0.56241155
		 0.11286372 0.56237537 0.11289497 0.55272007 0.12517013 0.5299508 0.12532064 0.52990323
		 0.12533648 0.5298661 0.12532055 0.51603961 0.12105703 0.51500702 0.10852932 0.51499927
		 0.10849454 0.5150404 0.10837403 0.52240926 0.065931171 0.54943359 0.065866426 0.375
		 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.625 0.625
		 0.875 0.125 0.125 0.125 0.375 0.625 0.5 0.75 0.5 0.5 0.5 0.625 0.24953575 0.12546426
		 0.24965374 0.125 0.24953575 0.24999997 0.49953577 0.37546423 0.37499997 0.37546423
		 0.5 0.37534624 0.50046426 0.37546426 0.5 0.37534624 0.62500006 0.37546423 0.75046426
		 0.12546426 0.7504642 0.24999997 0.75034618 0.125 0.75035447 4.5446704e-009 0.7503463
		 0.125 0.50035441 0.87464553 0.625 0.87464553 0.5 0.87473565 0.49964556 0.87464547
		 0.5 0.87473565 0.375 0.87464553 0.24964559 0.12464557 0.24964558 4.5464841e-009 0.24965374
		 0.125 0.44151247 0.065873332 0.44157642 0.065873496 0.47172695 0.065931171 0.47820532
		 0.1085231 0.47818083 0.10855792 0.47174513 0.12108348 0.44889793 0.12658815 0.44881591
		 0.12663649 0.44873387 0.12664613 0.41923118 0.13190264 0.40923548 0.12017275 0.40919805
		 0.12014352 0.4092007 0.11999561 0.41005778 0.067943253 0.4414486 0.065873504;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt";
	setAttr ".pt[0]" -type "float3" 3.253607 -1.7850585 0 ;
	setAttr ".pt[1]" -type "float3" 2.4988501 -1.759027 0 ;
	setAttr ".pt[2]" -type "float3" 2.2416878 -1.7850585 0 ;
	setAttr ".pt[3]" -type "float3" 3.253607 -1.759027 0 ;
	setAttr ".pt[4]" -type "float3" 4.0083637 -1.759027 0 ;
	setAttr ".pt[5]" -type "float3" 4.2655272 -1.7850585 0 ;
	setAttr ".pt[6]" -type "float3" 3.253607 -1.759027 0 ;
	setAttr ".pt[7]" -type "float3" 4.2421732 -1.759027 0 ;
	setAttr ".pt[8]" -type "float3" 2.2650404 -1.759027 0 ;
	setAttr ".pt[9]" -type "float3" 2.0054162 -1.7850585 0 ;
	setAttr ".pt[10]" -type "float3" 1.9975036 -1.8057683 0 ;
	setAttr ".pt[11]" -type "float3" 2.2426429 -1.759027 0 ;
	setAttr ".pt[12]" -type "float3" 3.2508039 -1.759027 0 ;
	setAttr ".pt[13]" -type "float3" 3.253607 -1.759027 0 ;
	setAttr ".pt[14]" -type "float3" 3.2564096 -1.759027 0 ;
	setAttr ".pt[15]" -type "float3" 4.2645717 -1.759027 0 ;
	setAttr ".pt[16]" -type "float3" 4.501524 -1.8057683 0 ;
	setAttr ".pt[17]" -type "float3" 4.4928288 -1.7850585 0 ;
	setAttr ".pt[18]" -type "float3" 4.692637 -1.759027 0 ;
	setAttr ".pt[19]" -type "float3" 3.2564096 -1.759027 0 ;
	setAttr ".pt[20]" -type "float3" 3.253607 -1.759027 0 ;
	setAttr ".pt[21]" -type "float3" 3.2508042 -1.759027 0 ;
	setAttr ".pt[22]" -type "float3" 1.8235469 -1.759027 0 ;
	setAttr ".pt[23]" -type "float3" 2.0048671 -1.7122865 0 ;
	setAttr ".pt[43]" -type "float3" 1.0951828 -1.759027 0 ;
	setAttr ".pt[44]" -type "float3" 1.0951828 -1.7850585 0 ;
	setAttr ".pt[45]" -type "float3" 1.8499398 -1.759027 0 ;
	setAttr ".pt[46]" -type "float3" 2.1071022 -1.7850585 0 ;
	setAttr ".pt[47]" -type "float3" 0.34042579 -1.759027 0 ;
	setAttr ".pt[48]" -type "float3" 0.083263598 -1.7850585 0 ;
	setAttr ".pt[59]" -type "float3" 0 0 -56.202297 ;
	setAttr ".pt[62]" -type "float3" 0 0 -56.202297 ;
	setAttr ".pt[64]" -type "float3" 0 0 -56.202297 ;
	setAttr ".pt[65]" -type "float3" 0 0 -56.202297 ;
	setAttr ".pt[67]" -type "float3" 1.0923798 -1.759027 0 ;
	setAttr ".pt[68]" -type "float3" -0.35019371 -1.7590294 0 ;
	setAttr ".pt[69]" -type "float3" -0.13833122 -1.712286 0 ;
	setAttr ".pt[70]" -type "float3" -0.13768363 -1.785059 0 ;
	setAttr ".pt[71]" -type "float3" -0.14693652 -1.805769 0 ;
	setAttr ".pt[72]" -type "float3" 0.084218614 -1.759027 0 ;
	setAttr ".pt[73]" -type "float3" 1.0923798 -1.759027 0 ;
	setAttr ".pt[74]" -type "float3" 1.0951828 -1.759027 0 ;
	setAttr ".pt[75]" -type "float3" 1.097986 -1.759027 0 ;
	setAttr ".pt[76]" -type "float3" 2.1061475 -1.759027 0 ;
	setAttr ".pt[77]" -type "float3" 2.3464942 -1.8057683 0 ;
	setAttr ".pt[78]" -type "float3" 2.3381166 -1.7850585 0 ;
	setAttr ".pt[79]" -type "float3" 2.5305014 -1.759027 0 ;
	setAttr ".pt[80]" -type "float3" 1.097986 -1.759027 0 ;
	setAttr ".pt[81]" -type "float3" 1.0951828 -1.759027 0 ;
	setAttr ".pt[82]" -type "float3" 0.106617 -1.759027 0 ;
	setAttr ".pt[83]" -type "float3" 1.0951828 -1.759027 0 ;
	setAttr ".pt[84]" -type "float3" 2.0837486 -1.759027 0 ;
	setAttr -s 85 ".vt[0:84]"  -15.26341915 33.44285965 -51.11975098 -20.031681061 39.018814087 -47.94827271
		 -21.65633202 33.44285965 -49.3075676 -15.26341915 40.91866302 -49.3075676 -10.49515724 39.018814087 -47.94827271
		 -8.87050629 33.44285965 -49.3075676 -15.26341915 8.11809349 -50.96450043 -9.018043518 8.14400291 -49.18412781
		 -21.50879478 8.14400291 -49.18412781 -23.81629181 33.44285965 -43.97364044 -23.80821609 33.46356964 -43.97364044
		 -21.65029907 40.91160583 -43.97364044 -15.28112793 43.43504333 -43.97364044 -15.26341915 43.44448853 -43.97364044
		 -15.24571037 43.43504333 -43.97364044 -8.87653923 40.91160583 -43.97364044 -6.71862411 33.46356964 -43.97364044
		 -6.71054649 33.44285965 -43.97364044 -6.89614201 8.11816788 -43.97364044 -15.24571037 8.083877563 -43.97364044
		 -15.26341915 8.083778381 -43.97364044 -15.28112698 8.083877563 -43.97364044 -23.63069534 8.11816788 -43.97364044
		 -23.81573105 33.37112427 -43.97364044 -11.0091609955 77.61548615 -55.80712891 1.78723145 77.61548615 -58.67565536
		 -7.75717354 83.93041992 -53.65549088 1.78723145 86.082061768 -55.80712891 14.58362198 77.61548615 -55.80712891
		 11.33163452 83.93041992 -53.65549088 -11.0091609955 86.082061768 -47.34055328 1.78723145 88.95059204 -47.34055328
		 14.58362198 86.082061768 -47.34055328 18.91911697 77.61548615 -47.34055328 -15.34465599 77.61548615 -47.34055328
		 18.54769135 48.93442154 -47.34055328 14.28830338 48.96376419 -55.61173248 -14.97323227 48.93442154 -47.34055328
		 -10.71384048 48.96376419 -55.61173248 17.19501495 77.61548615 -43.97364044 16.81384277 48.94636536 -43.97364044
		 -13.23937988 48.94636536 -43.97364044 -13.62055397 77.61548615 -43.97364044 15.5102272 40.91866302 -49.3075676
		 15.5102272 33.44285965 -51.11975098 20.27848816 39.018814087 -47.94827271 21.90314102 33.44285965 -49.3075676
		 10.74196625 39.018814087 -47.94827271 9.11731529 33.44285965 -49.3075676 1.78723145 48.93442154 -58.42990875
		 1.78723145 48.89547348 -47.34055328 -11.299263 80.98239899 -43.97364044 -9.27531052 84.93487549 -43.97364044
		 -3.30152512 86.27400208 -43.97364044 1.78723145 87.80986023 -43.97364044 6.8759861 86.27400208 -43.97364044
		 12.84976959 84.93487549 -43.97364044 14.87372589 80.98239899 -43.97364044 1.78723145 48.90729904 -43.97364044
		 -31.1991272 -31.083795547 -144.49081421 -31.1991272 -31.083795547 -43.97364044 -31.1991272 90.91253662 -43.97364044
		 -31.1991272 90.91253662 -144.49081421 38.051311493 -31.083795547 -43.97364044 38.051311493 -31.083795547 -144.49081421
		 38.051311493 90.91253662 -144.49081421 38.051311493 90.91253662 -43.97364044 15.49251938 8.083877563 -43.97364044
		 7.14295197 8.11816788 -43.97364044 6.95791626 33.37112427 -43.97364044 6.9573555 33.44285965 -43.97364044
		 6.96543312 33.46356964 -43.97364044 9.12334824 40.91160583 -43.97364044 15.49251938 43.43504333 -43.97364044
		 15.5102272 43.44448853 -43.97364044 15.52793694 43.43504333 -43.97364044 21.89710999 40.91160583 -43.97364044
		 24.055023193 33.46356964 -43.97364044 24.063098907 33.44285965 -43.97364044 23.87750626 8.11816788 -43.97364044
		 15.52793694 8.083877563 -43.97364044 15.5102272 8.083778381 -43.97364044 9.26485252 8.14400291 -49.18412781
		 15.5102272 8.11809349 -50.96450043 21.75560379 8.14400291 -49.18412781;
	setAttr -s 134 ".ed[0:133]"  1 2 1 2 0 1 0 3 1 3 1 1 4 3 1 0 5 1 5 4 1
		 0 6 1 6 7 1 7 5 1 2 8 1 8 6 1 9 2 1 10 9 0 1 11 1 11 10 0 12 11 0 3 13 1 13 12 0
		 14 13 0 4 15 1 15 14 0 16 15 0 5 17 1 17 16 0 7 18 1 18 17 0 19 18 0 6 20 1 20 19 0
		 21 20 0 8 22 1 22 21 0 23 22 0 9 23 0 24 25 1 26 24 1 25 27 1 27 26 1 28 29 1 25 28 1
		 29 27 1 30 26 1 31 30 1 27 31 1 32 31 1 29 32 1 28 33 1 33 32 1 34 24 1 30 34 1 35 33 1
		 28 36 1 36 35 1 34 37 1 37 38 1 38 24 1 39 33 1 35 40 1 40 39 0 41 37 1 42 41 0 34 42 1
		 43 44 1 45 43 1 44 46 1 46 45 1 43 47 1 47 48 1 48 44 1 25 49 1 49 36 1 38 49 1 50 35 1
		 49 50 1 37 50 1 34 51 1 51 42 0 30 52 1 52 51 0 31 53 1 53 52 0 31 54 1 54 53 0 31 55 1
		 55 54 0 32 56 1 56 55 0 33 57 1 57 56 0 39 57 0 50 58 1 58 40 0 41 58 0 59 60 0 60 61 0
		 61 62 0 62 59 0 63 64 0 64 65 0 65 66 0 66 63 0 59 64 0 63 60 0 62 65 0 61 66 0 67 68 0
		 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0 75 76 0 76 77 0 77 78 0 78 79 0
		 79 80 0 80 81 0 81 67 0 82 48 1 48 70 1 68 82 1 81 83 1 83 82 1 84 83 1 79 84 1 78 46 1
		 46 84 1 76 45 1 74 43 1 72 47 1 83 44 1;
	setAttr -s 54 -ch 268 ".fc[0:53]" -type "polyFaces" 
		f 4 2 3 0 1
		mu 0 4 144 143 130 141
		f 4 4 -3 5 6
		mu 0 4 131 143 144 138
		f 4 7 8 9 -6
		mu 0 4 144 142 133 138
		f 4 -2 10 11 -8
		mu 0 4 144 141 132 142
		f 5 13 12 -1 14 15
		mu 0 5 145 146 140 137 147
		f 5 16 -15 -4 17 18
		mu 0 5 148 149 130 143 150
		f 5 19 -18 -5 20 21
		mu 0 5 151 152 143 131 153
		f 5 22 -21 -7 23 24
		mu 0 5 154 155 135 139 156
		f 4 -24 -10 25 26
		mu 0 4 158 139 134 157
		f 5 27 -26 -9 28 29
		mu 0 5 159 160 133 142 161
		f 5 30 -29 -12 31 32
		mu 0 5 162 163 142 132 164
		f 5 33 -32 -11 -13 34
		mu 0 5 165 166 136 140 167
		f 4 35 37 38 36
		mu 0 4 29 39 35 14
		f 4 39 41 -38 40
		mu 0 4 26 15 35 39
		f 4 42 -39 44 43
		mu 0 4 33 14 35 40
		f 4 45 -45 -42 46
		mu 0 4 30 40 35 15
		f 4 47 48 -47 -40
		mu 0 4 27 37 31 19
		f 4 -37 -43 50 49
		mu 0 4 28 21 32 36
		f 4 -48 52 53 51
		mu 0 4 37 27 18 23
		f 4 54 55 56 -50
		mu 0 4 36 24 20 28
		f 4 -52 58 59 57
		mu 0 4 37 23 57 58
		f 4 60 -55 62 61
		mu 0 4 64 24 36 63
		f 4 63 65 66 64
		mu 0 4 90 91 85 78
		f 4 67 68 69 -64
		mu 0 4 90 77 88 91
		f 4 70 71 -53 -41
		mu 0 4 39 34 17 26
		f 4 -36 -57 72 -71
		mu 0 4 39 29 16 34
		f 4 73 -54 -72 74
		mu 0 4 38 22 17 34
		f 4 -73 -56 75 -75
		mu 0 4 34 16 25 38
		f 3 -63 76 77
		mu 0 3 42 36 41
		f 4 -77 -51 78 79
		mu 0 4 44 36 32 43
		f 4 -79 -44 80 81
		mu 0 4 46 33 40 45
		f 3 -81 82 83
		mu 0 3 48 40 47
		f 3 -83 84 85
		mu 0 3 50 40 49
		f 4 -85 -46 86 87
		mu 0 4 52 40 30 51
		f 4 -87 -49 88 89
		mu 0 4 54 31 37 53
		f 3 -89 -58 90
		mu 0 3 56 37 55
		f 4 -59 -74 91 92
		mu 0 4 60 22 38 59
		f 4 -92 -76 -61 93
		mu 0 4 62 38 25 61
		f 4 94 95 96 97
		mu 0 4 12 0 2 13
		f 4 98 99 100 101
		mu 0 4 1 10 11 3
		f 4 102 -99 103 -95
		mu 0 4 6 7 9 8
		f 4 104 -100 -103 -98
		mu 0 4 4 5 7 6
		f 4 105 -101 -105 -97
		mu 0 4 2 3 5 4
		f 4 -106 -96 -104 -102
		mu 0 4 3 2 0 1
		h 15 -33 -34 -35 -14 -16 -17 -19 -20 -22 -23 -25 -27 -28 -30 -31
		mu 0 15 182 181 180 179 178 177 176 175 174 173 172 171 170 169 168
		h 12 -93 -94 -62 -78 -80 -82 -84 -86 -88 -90 -91 -60
		mu 0 12 76 75 74 73 72 71 70 69 68 67 66 65
		h 15 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120
		mu 0 15 129 128 127 126 125 124 123 122 121 120 119 118 117 116 115
		f 5 121 122 -109 -108 123
		mu 0 5 83 87 114 112 113
		f 5 -124 -107 -121 124 125
		mu 0 5 79 111 109 110 89
		f 5 126 -125 -120 -119 127
		mu 0 5 80 89 108 106 107
		f 4 128 129 -128 -118
		mu 0 4 105 86 81 104
		f 5 -67 -129 -117 -116 130
		mu 0 5 82 86 103 101 102
		f 5 -131 -115 -114 131 -65
		mu 0 5 78 100 98 99 90
		f 5 -68 -132 -113 -112 132
		mu 0 5 77 90 97 95 96
		f 5 -133 -111 -110 -123 -69
		mu 0 5 84 94 92 93 87
		f 4 -70 -122 -126 133
		mu 0 4 91 88 79 89
		f 4 -134 -127 -130 -66
		mu 0 4 91 89 80 85;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube22";
	setAttr ".t" -type "double3" 148.51475347340102 34.343321721487683 11.580411635775672 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube23";
	setAttr ".t" -type "double3" 42.298739273122365 29.930703281020165 -151.6080298385281 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[82:85]" -type "float3"  6.8400698 0 0 6.8400698 0 
		0 6.8400698 0 0 6.8400698 0 0;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape20" -p "pCube23";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.1300297e-014 -60.526798 
		6.1898303 2.9753977e-014 -60.526798 6.1898303 2.7089442e-014 27.155355 6.1898303 
		1.5543122e-014 27.155355 6.1898303 2.7089442e-014 27.155355 -6.1898303 1.5543122e-014 
		27.155355 -6.1898303 4.1300297e-014 -60.526798 -6.1898303 2.9753977e-014 -60.526798 
		-6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "group3";
	setAttr ".t" -type "double3" 0 185.70648924504303 0 ;
createNode transform -n "pCube24" -p "group3";
	setAttr ".t" -type "double3" 157.13466937581052 -26.930769335189183 -151.60802983852787 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube25" -p "group3";
	setAttr ".t" -type "double3" 148.93466937581053 -18.730769335189169 -151.6080298385279 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube26" -p "group3";
	setAttr ".t" -type "double3" 140.73466937581057 -10.530769335189166 -151.60802983852793 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube27" -p "group3";
	setAttr ".t" -type "double3" 132.53466937581058 -2.3307693351891636 -151.60802983852795 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21" -p "group3";
	setAttr ".t" -type "double3" 124.29928481474737 5.8478022437002295 -151.60802983852787 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube20" -p "group3";
	setAttr ".t" -type "double3" 116.09928481474736 14.047802243700239 -151.6080298385279 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19" -p "group3";
	setAttr ".t" -type "double3" 107.89928481474738 22.247802243700242 -151.60802983852793 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18" -p "group3";
	setAttr ".t" -type "double3" 99.699284814747386 30.447802243700245 -151.60802983852795 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17" -p "group3";
	setAttr ".t" -type "double3" 91.499284814747398 38.647802243700241 -151.60802983852798 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16" -p "group3";
	setAttr ".t" -type "double3" 83.299284814747409 46.847802243700244 -151.60802983852801 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15" -p "group3";
	setAttr ".t" -type "double3" 75.099284814747421 55.047802243700247 -151.60802983852804 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14" -p "group3";
	setAttr ".t" -type "double3" 66.899284814747432 63.247802243700235 -151.60802983852807 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "group3";
	setAttr ".t" -type "double3" 58.699284814747422 71.447802243700252 -151.6080298385281 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "group3";
	setAttr ".t" -type "double3" 50.499284814747419 79.647802243700241 -151.6080298385281 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "group3";
	setAttr ".t" -type "double3" 42.298739273122365 87.848347785325316 -151.6080298385281 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-015 0 6.1898303 
		-5.7731597e-015 0 6.1898303 5.7731597e-015 0 6.1898303 -5.7731597e-015 0 6.1898303 
		5.7731597e-015 0 -6.1898303 -5.7731597e-015 0 -6.1898303 5.7731597e-015 0 -6.1898303 
		-5.7731597e-015 0 -6.1898303;
createNode transform -n "pCube28";
	setAttr ".t" -type "double3" 99.552909062699868 -28.022098070010379 -128.18007325119154 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
	setAttr ".rpt" -type "double3" -4.1557394519170796e-015 0 8.63377056432584e-015 ;
createNode mesh -n "pCubeShape28" -p "pCube28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.875 0.21428572
		 0.875 0.17857143 0.875 0.14285713 0.625 0.14285715 0.625 0.17857143 0.625 0.21428572
		 0.625 0.23214287 0.625 0.19642857 0.625 0.1607143 0.625 0.125 0.875 0.12499999 0.875
		 0.16071428 0.875 0.19642857 0.875 0.23214287 0.625 0.125 0.875 0.12499999 0.875 0.14285713
		 0.625 0.14285715 0.625 0.14285715 0.875 0.14285713 0.875 0.16071428 0.625 0.1607143
		 0.625 0.1607143 0.875 0.16071428 0.875 0.17857143 0.625 0.17857143 0.625 0.17857143
		 0.875 0.17857143 0.875 0.19642857 0.625 0.19642857 0.625 0.19642857 0.875 0.19642857
		 0.875 0.21428572 0.625 0.21428572 0.625 0.21428572 0.875 0.21428572 0.875 0.23214287
		 0.625 0.23214287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 38 ".vt[0:37]"  3.37161636 17.037631989 -9.56144714 3.37161636 3.54829025 -9.56144714
		 3.37161636 -9.94105339 -9.56144714 3.37161636 -9.94104576 9.56145477 3.37161636 3.54829407 9.56145477
		 3.37161636 17.037631989 9.56145477 3.37161636 23.78230286 9.56145477 3.37161636 10.29296112 9.56145477
		 3.37161636 -3.1963768 9.56145477 3.37161636 -16.68571854 9.56145477 3.37161636 -16.68572235 -9.56144714
		 3.37161636 -3.19638062 -9.56144714 3.37161636 10.29296112 -9.56144714 3.37161636 23.78230286 -9.56144714
		 43.39910507 -16.68572235 -9.56144714 43.39910507 -16.68571854 9.56145477 43.39910507 -9.94105339 -9.56144714
		 43.39910507 -9.94104576 9.56145477 36.69479752 -9.94105339 -9.56144714 36.69479752 -9.94104576 9.56145477
		 36.69479752 -3.19638062 -9.56144714 36.69479752 -3.1963768 9.56145477 29.98714066 -3.19638062 -9.56144714
		 29.98714066 -3.1963768 9.56145477 29.98714066 3.54829025 -9.56144714 29.98714066 3.54829407 9.56145477
		 23.40120697 3.54829025 -9.56144714 23.40120697 3.54829407 9.56145477 23.40120697 10.29296112 -9.56144714
		 23.40120697 10.29296112 9.56145477 16.8266449 10.29296112 -9.56144714 16.8266449 10.29296112 9.56145477
		 16.8266449 17.037631989 -9.56144714 16.8266449 17.037631989 9.56145477 10.21168613 17.037631989 -9.56144714
		 10.21168613 17.037631989 9.56145477 10.21168613 23.78230286 -9.56144714 10.21168613 23.78230286 9.56145477;
	setAttr -s 66 ".ed[0:65]"  0 12 0 1 11 0 2 10 0 3 8 0 4 7 0 5 6 0 0 5 0
		 1 4 0 2 3 0 7 5 0 8 4 0 9 3 0 11 2 0 12 1 0 13 0 0 11 8 0 12 7 0 13 6 0 10 14 0 9 15 0
		 14 15 0 2 16 0 16 14 0 3 17 0 16 17 0 15 17 0 2 18 0 3 19 0 18 19 0 11 20 0 20 18 0
		 8 21 0 20 21 0 19 21 0 11 22 0 8 23 0 22 23 0 1 24 0 24 22 0 4 25 0 24 25 0 23 25 0
		 1 26 0 4 27 0 26 27 0 12 28 0 28 26 0 7 29 0 28 29 0 27 29 0 12 30 0 7 31 0 30 31 0
		 0 32 0 32 30 0 5 33 0 32 33 0 31 33 0 0 34 0 5 35 0 34 35 0 13 36 0 36 34 0 6 37 0
		 36 37 0 35 37 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 -61 -63 64 -66
		mu 0 4 34 35 36 37
		f 4 -45 -47 48 -50
		mu 0 4 26 27 28 29
		f 4 -29 -31 32 -34
		mu 0 4 18 19 20 21
		f 4 -21 -23 24 -26
		mu 0 4 14 15 16 17
		f 4 -37 -39 40 -42
		mu 0 4 22 23 24 25
		f 4 -53 -55 56 -58
		mu 0 4 30 31 32 33
		f 4 -3 21 22 -19
		mu 0 4 10 2 16 15
		f 4 8 23 -25 -22
		mu 0 4 2 3 17 16
		f 4 -12 19 25 -24
		mu 0 4 3 9 14 17
		f 4 -13 29 30 -27
		mu 0 4 2 11 20 19
		f 4 15 31 -33 -30
		mu 0 4 11 8 21 20
		f 4 -4 27 33 -32
		mu 0 4 8 3 18 21
		f 4 -2 37 38 -35
		mu 0 4 11 1 24 23
		f 4 7 39 -41 -38
		mu 0 4 1 4 25 24
		f 4 -11 35 41 -40
		mu 0 4 4 8 22 25
		f 4 -14 45 46 -43
		mu 0 4 1 12 28 27
		f 4 16 47 -49 -46
		mu 0 4 12 7 29 28
		f 4 -5 43 49 -48
		mu 0 4 7 4 26 29
		f 4 -1 53 54 -51
		mu 0 4 12 0 32 31
		f 4 6 55 -57 -54
		mu 0 4 0 5 33 32
		f 4 -10 51 57 -56
		mu 0 4 5 7 30 33
		f 4 -15 61 62 -59
		mu 0 4 0 13 36 35
		f 4 17 63 -65 -62
		mu 0 4 13 6 37 36
		f 4 -6 59 65 -64
		mu 0 4 6 5 34 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape20" -p "pCube28";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.1300297e-014 -60.526798 
		6.1898303 2.9753977e-014 -60.526798 6.1898303 2.7089442e-014 27.155355 6.1898303 
		1.5543122e-014 27.155355 6.1898303 2.7089442e-014 27.155355 -6.1898303 1.5543122e-014 
		27.155355 -6.1898303 4.1300297e-014 -60.526798 -6.1898303 2.9753977e-014 -60.526798 
		-6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube29";
	setAttr ".t" -type "double3" 99.686510883612712 -28.022098070010379 -128.18007325119154 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
	setAttr ".rpt" -type "double3" -4.1557394519170796e-015 0 8.63377056432584e-015 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 72 ".uvst[0].uvsp[0:71]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0.25
		 0.125 0 0.125 0.25 0.625 0.53571427 0.875 0.21428572 0.625 0.5714286 0.875 0.17857143
		 0.625 0.60714287 0.875 0.14285713 0.625 0.64285719 0.625 0.6785714 0.625 0.71428573
		 0.625 0.035714287 0.625 0.071428575 0.625 0.10714287 0.625 0.14285715 0.625 0.17857143
		 0.625 0.21428572 0.625 0.23214287 0.625 0.19642857 0.625 0.1607143 0.625 0.125 0.625
		 0.089285716 0.625 0.053571433 0.625 0.73214287 0.625 0.69642854 0.625 0.66071427
		 0.625 0.625 0.875 0.12499999 0.625 0.58928573 0.875 0.16071428 0.625 0.55357146 0.875
		 0.19642857 0.625 0.51785713 0.875 0.23214287 0.625 0.017857144 0.875 0.12499999 0.625
		 0.125 0.625 0.125 0.875 0.12499999 0.875 0.14285713 0.625 0.14285715 0.625 0.14285715
		 0.875 0.14285713 0.875 0.16071428 0.625 0.1607143 0.625 0.1607143 0.875 0.16071428
		 0.875 0.17857143 0.625 0.17857143 0.625 0.17857143 0.875 0.17857143 0.875 0.19642857
		 0.625 0.19642857 0.625 0.19642857 0.875 0.19642857 0.875 0.21428572 0.625 0.21428572
		 0.625 0.21428572 0.875 0.21428572 0.875 0.23214287 0.625 0.23214287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".vt[0:59]"  -3.37161827 -63.89841461 9.56145477 3.37161636 -63.89841461 9.56145477
		 -3.37161827 30.52697372 9.56145477 3.37161636 30.52697372 9.56145477 -3.37161827 30.52697372 -9.56144714
		 3.37161636 30.52697372 -9.56144714 -3.37161827 -63.89841461 -9.56144714 3.37161636 -63.89841461 -9.56144714
		 3.37161636 17.037631989 -9.56144714 3.37161636 3.54829025 -9.56144714 3.37161636 -9.94105339 -9.56144714
		 3.37161636 -23.43039322 -9.56144714 3.37161636 -36.91973495 -9.56144714 3.37161636 -50.40907288 -9.56144714
		 3.37161636 -50.40907288 9.56145477 3.37161636 -36.91973495 9.56145477 3.37161636 -23.4303894 9.56145477
		 3.37161636 -9.94104576 9.56145477 3.37161636 3.54829407 9.56145477 3.37161636 17.037631989 9.56145477
		 3.37161636 23.78230286 9.56145477 3.37161636 10.29296112 9.56145477 3.37161636 -3.1963768 9.56145477
		 3.37161636 -16.68571854 9.56145477 3.37161636 -30.17506409 9.56145477 3.37161636 -43.66440582 9.56145477
		 3.37161636 -57.15374756 -9.56144714 3.37161636 -43.66440582 -9.56144714 3.37161636 -30.17506409 -9.56144714
		 3.37161636 -16.68572235 -9.56144714 3.37161636 -3.19638062 -9.56144714 3.37161636 10.29296112 -9.56144714
		 3.37161636 23.78230286 -9.56144714 3.37161636 -57.15374756 9.56145477 50.18192673 -16.68572235 -9.56144714
		 50.18192673 -16.68571854 9.56145477 43.39910507 -16.68572235 -9.56144714 43.39910507 -16.68571854 9.56145477
		 43.39910507 -9.94105339 -9.56144714 43.39910507 -9.94104576 9.56145477 36.69479752 -9.94105339 -9.56144714
		 36.69479752 -9.94104576 9.56145477 36.69479752 -3.19638062 -9.56144714 36.69479752 -3.1963768 9.56145477
		 29.98714066 -3.19638062 -9.56144714 29.98714066 -3.1963768 9.56145477 29.98714066 3.54829025 -9.56144714
		 29.98714066 3.54829407 9.56145477 23.40120697 3.54829025 -9.56144714 23.40120697 3.54829407 9.56145477
		 23.40120697 10.29296112 -9.56144714 23.40120697 10.29296112 9.56145477 16.8266449 10.29296112 -9.56144714
		 16.8266449 10.29296112 9.56145477 16.8266449 17.037631989 -9.56144714 16.8266449 17.037631989 9.56145477
		 10.21168613 17.037631989 -9.56144714 10.21168613 17.037631989 9.56145477 10.21168613 23.78230286 -9.56144714
		 10.21168613 23.78230286 9.56145477;
	setAttr -s 96 ".ed[0:95]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 33 0 2 4 0
		 3 5 0 4 6 0 5 32 0 6 0 0 7 1 0 8 31 0 9 30 0 10 29 0 11 28 0 12 27 0 13 26 0 14 25 0
		 15 24 0 16 23 0 17 22 0 18 21 0 19 20 0 8 19 0 9 18 0 10 17 0 20 3 0 21 19 0 22 18 0
		 23 17 0 24 16 0 25 15 0 26 7 0 27 13 0 28 12 0 29 11 0 30 10 0 31 9 0 32 8 0 33 14 0
		 29 23 0 30 22 0 31 21 0 32 20 0 29 34 0 23 35 0 34 35 0 29 36 0 23 37 0 36 37 0 10 38 0
		 38 36 0 17 39 0 38 39 0 37 39 0 10 40 0 17 41 0 40 41 0 30 42 0 42 40 0 22 43 0 42 43 0
		 41 43 0 30 44 0 22 45 0 44 45 0 9 46 0 46 44 0 18 47 0 46 47 0 45 47 0 9 48 0 18 49 0
		 48 49 0 31 50 0 50 48 0 21 51 0 50 51 0 49 51 0 31 52 0 21 53 0 52 53 0 8 54 0 54 52 0
		 19 55 0 54 55 0 53 55 0 8 56 0 19 57 0 56 57 0 32 58 0 58 56 0 20 59 0 58 59 0 57 59 0;
	setAttr -s 37 -ch 174 ".fc[0:36]" -type "polyFaces" 
		f 17 0 5 40 18 32 19 31 20 30 21 29 22 28 23 27 -2 -5
		mu 0 17 0 1 45 22 33 23 32 24 31 25 30 26 29 27 28 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 17 2 9 39 12 38 13 37 14 36 15 35 16 34 17 33 -4 -9
		mu 0 17 4 5 43 13 41 15 39 17 37 19 36 20 35 21 34 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 10 4 6 8
		mu 0 4 11 0 2 12
		f 4 -91 -93 94 -96
		mu 0 4 68 69 70 71
		f 4 -75 -77 78 -80
		mu 0 4 60 61 62 63
		f 4 -59 -61 62 -64
		mu 0 4 52 53 54 55
		f 4 -51 -53 54 -56
		mu 0 4 48 49 50 51
		f 4 -67 -69 70 -72
		mu 0 4 56 57 58 59
		f 4 -83 -85 86 -88
		mu 0 4 64 65 66 67
		f 4 -45 -10 -8 -28
		mu 0 4 28 44 10 3
		f 4 41 46 -48 -46
		mu 0 4 38 31 47 46
		f 4 -42 48 50 -50
		mu 0 4 31 38 49 48
		f 4 -15 51 52 -49
		mu 0 4 38 18 50 49
		f 4 26 53 -55 -52
		mu 0 4 18 25 51 50
		f 4 -31 49 55 -54
		mu 0 4 25 31 48 51
		f 4 -27 56 58 -58
		mu 0 4 25 18 53 52
		f 4 -38 59 60 -57
		mu 0 4 18 40 54 53
		f 4 42 61 -63 -60
		mu 0 4 40 30 55 54
		f 4 -22 57 63 -62
		mu 0 4 30 25 52 55
		f 4 -43 64 66 -66
		mu 0 4 30 40 57 56
		f 4 -14 67 68 -65
		mu 0 4 40 16 58 57
		f 4 25 69 -71 -68
		mu 0 4 16 26 59 58
		f 4 -30 65 71 -70
		mu 0 4 26 30 56 59
		f 4 -26 72 74 -74
		mu 0 4 26 16 61 60
		f 4 -39 75 76 -73
		mu 0 4 16 42 62 61
		f 4 43 77 -79 -76
		mu 0 4 42 29 63 62
		f 4 -23 73 79 -78
		mu 0 4 29 26 60 63
		f 4 -44 80 82 -82
		mu 0 4 29 42 65 64
		f 4 -13 83 84 -81
		mu 0 4 42 14 66 65
		f 4 24 85 -87 -84
		mu 0 4 14 27 67 66
		f 4 -29 81 87 -86
		mu 0 4 27 29 64 67
		f 4 -25 88 90 -90
		mu 0 4 27 14 69 68
		f 4 -40 91 92 -89
		mu 0 4 14 44 70 69
		f 4 44 93 -95 -92
		mu 0 4 44 28 71 70
		f 4 -24 89 95 -94
		mu 0 4 28 27 68 71;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape20" -p "pCube29";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.1300297e-014 -60.526798 
		6.1898303 2.9753977e-014 -60.526798 6.1898303 2.7089442e-014 27.155355 6.1898303 
		1.5543122e-014 27.155355 6.1898303 2.7089442e-014 27.155355 -6.1898303 1.5543122e-014 
		27.155355 -6.1898303 4.1300297e-014 -60.526798 -6.1898303 2.9753977e-014 -60.526798 
		-6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube30";
	setAttr ".t" -type "double3" 61.40289382626402 -4.1393506729612533 -170.82239863354653 ;
	setAttr ".s" -type "double3" 0.61465073608191723 0.61465073608191723 1.7331342741267022 ;
createNode transform -n "transform44" -p "pCube30";
	setAttr ".v" no;
createNode mesh -n "pCubeShape30" -p "transform44";
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
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
createNode transform -n "pCube31";
	setAttr ".t" -type "double3" 56.170188156311227 64.568234406580032 -170.82239863354656 ;
	setAttr ".s" -type "double3" 0.41170050429693589 0.41170050429693589 1.1608743190005255 ;
createNode transform -n "transform30" -p "pCube31";
	setAttr ".v" no;
createNode mesh -n "pCubeShape31" -p "transform30";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube32";
	setAttr ".t" -type "double3" 54.538666823275832 112.05072680362406 -184.06118486906672 ;
	setAttr ".s" -type "double3" 0.3107964140128216 0.3107964140128216 1.527513152145004 ;
createNode transform -n "transform14" -p "pCube32";
	setAttr ".v" no;
createNode mesh -n "pCubeShape32" -p "transform14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube43";
	setAttr ".t" -type "double3" 99.90289382626402 -4.1393506729612533 -170.82239863354653 ;
	setAttr ".s" -type "double3" 0.61465073608191723 0.61465073608191723 1.7331342741267022 ;
createNode transform -n "transform46" -p "pCube43";
	setAttr ".v" no;
createNode mesh -n "pCubeShape43" -p "transform46";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube44";
	setAttr ".t" -type "double3" 138.40289382626401 -4.1393506729612533 -170.82239863354647 ;
	setAttr ".s" -type "double3" 0.61465073608191712 0.61465073608191712 1.7331342741267022 ;
createNode transform -n "transform48" -p "pCube44";
	setAttr ".v" no;
createNode mesh -n "pCubeShape44" -p "transform48";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube45";
	setAttr ".t" -type "double3" 176.90289382626401 -4.1393506729612533 -170.82239863354641 ;
	setAttr ".s" -type "double3" 0.614650736081917 0.614650736081917 1.7331342741267022 ;
createNode transform -n "transform50" -p "pCube45";
	setAttr ".v" no;
createNode mesh -n "pCubeShape45" -p "transform50";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube46";
	setAttr ".t" -type "double3" 215.40289382626401 -4.1393506729612533 -170.82239863354636 ;
	setAttr ".s" -type "double3" 0.61465073608191689 0.61465073608191689 1.7331342741267022 ;
createNode transform -n "transform52" -p "pCube46";
	setAttr ".v" no;
createNode mesh -n "pCubeShape46" -p "transform52";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube49";
	setAttr ".t" -type "double3" 83.670188156311227 64.568234406580032 -170.82239863354656 ;
	setAttr ".s" -type "double3" 0.41170050429693589 0.41170050429693589 1.1608743190005255 ;
createNode transform -n "transform32" -p "pCube49";
	setAttr ".v" no;
createNode mesh -n "pCubeShape49" -p "transform32";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube50";
	setAttr ".t" -type "double3" 111.17018815631123 64.568234406580032 -170.82239863354656 ;
	setAttr ".s" -type "double3" 0.41170050429693589 0.41170050429693589 1.1608743190005255 ;
createNode transform -n "transform34" -p "pCube50";
	setAttr ".v" no;
createNode mesh -n "pCubeShape50" -p "transform34";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube51";
	setAttr ".t" -type "double3" 138.67018815631121 64.568234406580032 -170.82239863354656 ;
	setAttr ".s" -type "double3" 0.41170050429693589 0.41170050429693589 1.1608743190005255 ;
createNode transform -n "transform36" -p "pCube51";
	setAttr ".v" no;
createNode mesh -n "pCubeShape51" -p "transform36";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube52";
	setAttr ".t" -type "double3" 166.17018815631121 64.568234406580032 -170.82239863354656 ;
	setAttr ".s" -type "double3" 0.41170050429693589 0.41170050429693589 1.1608743190005255 ;
createNode transform -n "transform38" -p "pCube52";
	setAttr ".v" no;
createNode mesh -n "pCubeShape52" -p "transform38";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube53";
	setAttr ".t" -type "double3" 193.67018815631121 64.568234406580032 -170.82239863354656 ;
	setAttr ".s" -type "double3" 0.41170050429693589 0.41170050429693589 1.1608743190005255 ;
createNode transform -n "transform40" -p "pCube53";
	setAttr ".v" no;
createNode mesh -n "pCubeShape53" -p "transform40";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube54";
	setAttr ".t" -type "double3" 221.17018815631121 64.568234406580032 -170.82239863354656 ;
	setAttr ".s" -type "double3" 0.41170050429693589 0.41170050429693589 1.1608743190005255 ;
createNode transform -n "transform42" -p "pCube54";
	setAttr ".v" no;
createNode mesh -n "pCubeShape54" -p "transform42";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube55";
	setAttr ".t" -type "double3" 78.538666823275832 112.05072680362406 -184.06118486906672 ;
	setAttr ".s" -type "double3" 0.3107964140128216 0.3107964140128216 1.527513152145004 ;
createNode transform -n "transform16" -p "pCube55";
	setAttr ".v" no;
createNode mesh -n "pCubeShape55" -p "transform16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube56";
	setAttr ".t" -type "double3" 102.53866682327583 112.05072680362406 -184.06118486906672 ;
	setAttr ".s" -type "double3" 0.31079641401282154 0.31079641401282154 1.527513152145004 ;
createNode transform -n "transform18" -p "pCube56";
	setAttr ".v" no;
createNode mesh -n "pCubeShape56" -p "transform18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube57";
	setAttr ".t" -type "double3" 126.53866682327583 112.05072680362406 -184.06118486906672 ;
	setAttr ".s" -type "double3" 0.31079641401282149 0.31079641401282149 1.527513152145004 ;
createNode transform -n "transform20" -p "pCube57";
	setAttr ".v" no;
createNode mesh -n "pCubeShape57" -p "transform20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube58";
	setAttr ".t" -type "double3" 150.53866682327583 112.05072680362406 -184.06118486906672 ;
	setAttr ".s" -type "double3" 0.31079641401282143 0.31079641401282143 1.527513152145004 ;
createNode transform -n "transform22" -p "pCube58";
	setAttr ".v" no;
createNode mesh -n "pCubeShape58" -p "transform22";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube59";
	setAttr ".t" -type "double3" 174.5386668232758 112.05072680362406 -184.06118486906672 ;
	setAttr ".s" -type "double3" 0.31079641401282138 0.31079641401282138 1.527513152145004 ;
createNode transform -n "transform24" -p "pCube59";
	setAttr ".v" no;
createNode mesh -n "pCubeShape59" -p "transform24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube60";
	setAttr ".t" -type "double3" 198.53866682327578 112.05072680362406 -184.06118486906672 ;
	setAttr ".s" -type "double3" 0.31079641401282132 0.31079641401282132 1.527513152145004 ;
createNode transform -n "transform26" -p "pCube60";
	setAttr ".v" no;
createNode mesh -n "pCubeShape60" -p "transform26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube61";
	setAttr ".t" -type "double3" 222.53866682327575 112.05072680362406 -184.06118486906672 ;
	setAttr ".s" -type "double3" 0.31079641401282126 0.31079641401282126 1.527513152145004 ;
createNode transform -n "transform28" -p "pCube61";
	setAttr ".v" no;
createNode mesh -n "pCubeShape61" -p "transform28";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  10.224319 6.9710784 0 -10.224319 
		6.9710784 0 -10.224319 6.9710784 0 10.224319 6.9710784 0;
	setAttr -s 16 ".vt[0:15]"  -25.34937096 -25.34937096 25.34937286 25.34937096 -25.34937096 25.34937286
		 -25.34937096 53.88031006 25.34937286 25.34937096 53.88031006 25.34937286 -25.34937096 53.88031006 -25.34937286
		 25.34937096 53.88031006 -25.34937286 -25.34937096 -25.34937096 -25.34937286 25.34937096 -25.34937096 -25.34937286
		 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286 20.72239494 65.5464859 -25.34937286
		 -20.72239304 65.5464859 -25.34937286 -20.72239304 65.5464859 25.34937286 20.72239494 65.5464859 25.34937286
		 20.72239494 65.5464859 -25.34937286 -20.72239304 65.5464859 -25.34937286;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface21";
createNode transform -n "transform17" -p "polySurface21";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape23" -p "transform17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface22";
createNode transform -n "transform19" -p "polySurface22";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape24" -p "transform19";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface23";
createNode transform -n "transform21" -p "polySurface23";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape25" -p "transform21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface24";
createNode transform -n "transform23" -p "polySurface24";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape26" -p "transform23";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface25";
createNode transform -n "transform25" -p "polySurface25";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape27" -p "transform25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface26";
createNode transform -n "transform27" -p "polySurface26";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape28" -p "transform27";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface27";
createNode transform -n "transform29" -p "polySurface27";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape29" -p "transform29";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface28";
createNode transform -n "transform31" -p "polySurface28";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape30" -p "transform31";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface29";
createNode transform -n "transform33" -p "polySurface29";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape31" -p "transform33";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface30";
createNode transform -n "transform35" -p "polySurface30";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape32" -p "transform35";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface31";
createNode transform -n "transform37" -p "polySurface31";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape33" -p "transform37";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface32";
createNode transform -n "transform39" -p "polySurface32";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape34" -p "transform39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface33";
createNode transform -n "transform41" -p "polySurface33";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape35" -p "transform41";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface34";
createNode transform -n "transform43" -p "polySurface34";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape36" -p "transform43";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface35";
createNode transform -n "transform45" -p "polySurface35";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape37" -p "transform45";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface36";
createNode transform -n "transform47" -p "polySurface36";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape38" -p "transform47";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface37";
createNode transform -n "transform49" -p "polySurface37";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape39" -p "transform49";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface38";
createNode transform -n "transform51" -p "polySurface38";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape40" -p "transform51";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface39";
createNode transform -n "transform53" -p "polySurface39";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape41" -p "transform53";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface40";
	setAttr ".s" -type "double3" 1 1 1.770049941350855 ;
	setAttr ".rp" -type "double3" 140.72720336914063 60.299592018127441 -156.5325953855214 ;
	setAttr ".sp" -type "double3" 140.72720336914063 60.299592018127441 -163.34180385891679 ;
	setAttr ".spt" -type "double3" 0 0 6.8092084733955502 ;
createNode transform -n "polySurface41" -p "polySurface40";
	setAttr ".s" -type "double3" 1 1 1.2199164143863745 ;
	setAttr ".rp" -type "double3" 140.72720336914063 60.299592018127441 -163.3132479879788 ;
	setAttr ".sp" -type "double3" 140.72720336914063 60.299592018127441 -163.3132479879788 ;
createNode mesh -n "polySurfaceShape43" -p "polySurface41";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform54" -p "polySurface40";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape42" -p "transform54";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube62";
	setAttr ".t" -type "double3" 238.96435744483486 13.124283312422421 -151.6080298385281 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape62" -p "pCube62";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 105 ".uvst[0].uvsp[0:104]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.53571427 0.875 0.21428572 0.625 0.5714286 0.875
		 0.17857143 0.625 0.60714287 0.875 0.14285713 0.625 0.64285719 0.875 0.10714285 0.625
		 0.6785714 0.875 0.071428567 0.625 0.71428573 0.875 0.035714284 0.625 0.035714287
		 0.625 0.071428575 0.625 0.10714287 0.625 0.14285715 0.625 0.17857143 0.625 0.21428572
		 0.625 0.23214287 0.625 0.19642857 0.625 0.1607143 0.625 0.125 0.625 0.089285716 0.625
		 0.053571433 0.625 0.73214287 0.875 0.017857142 0.625 0.69642854 0.875 0.053571425
		 0.625 0.66071427 0.875 0.089285709 0.625 0.625 0.875 0.12499999 0.625 0.58928573
		 0.875 0.16071428 0.625 0.55357146 0.875 0.19642857 0.625 0.51785713 0.875 0.23214287
		 0.625 0.017857144 0.625 0 0.875 0 0.875 0.017857142 0.625 0.017857144 0.625 0.017857144
		 0.875 0.017857142 0.875 0.035714284 0.625 0.035714287 0.625 0.035714287 0.875 0.035714284
		 0.875 0.053571425 0.625 0.053571433 0.625 0.053571433 0.875 0.053571425 0.875 0.071428567
		 0.625 0.071428575 0.625 0.071428575 0.875 0.071428567 0.875 0.089285709 0.625 0.089285716
		 0.625 0.089285716 0.875 0.089285709 0.875 0.10714285 0.625 0.10714287 0.625 0.10714287
		 0.875 0.10714285 0.875 0.12499999 0.625 0.125 0.625 0.125 0.875 0.12499999 0.875
		 0.14285713 0.625 0.14285715 0.625 0.14285715 0.875 0.14285713 0.875 0.16071428 0.625
		 0.1607143 0.625 0.1607143 0.875 0.16071428 0.875 0.17857143 0.625 0.17857143 0.625
		 0.17857143 0.875 0.17857143 0.875 0.19642857 0.625 0.19642857 0.625 0.19642857 0.875
		 0.19642857 0.875 0.21428572 0.625 0.21428572 0.625 0.21428572 0.875 0.21428572 0.875
		 0.23214287 0.625 0.23214287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[82:85]" -type "float3"  6.8400698 0 0 6.8400698 0 
		0 6.8400698 0 0 6.8400698 0 0;
	setAttr -s 86 ".vt[0:85]"  -3.37161827 -63.89841461 9.56145477 3.37161636 -63.89841461 9.56145477
		 -3.37161827 30.52697372 9.56145477 3.37161636 30.52697372 9.56145477 -3.37161827 30.52697372 -9.56144714
		 3.37161636 30.52697372 -9.56144714 -3.37161827 -63.89841461 -9.56144714 3.37161636 -63.89841461 -9.56144714
		 3.37161636 17.037631989 -9.56144714 3.37161636 3.54829025 -9.56144714 3.37161636 -9.94105339 -9.56144714
		 3.37161636 -23.43039322 -9.56144714 3.37161636 -36.91973495 -9.56144714 3.37161636 -50.40907288 -9.56144714
		 3.37161636 -50.40907288 9.56145477 3.37161636 -36.91973495 9.56145477 3.37161636 -23.4303894 9.56145477
		 3.37161636 -9.94104576 9.56145477 3.37161636 3.54829407 9.56145477 3.37161636 17.037631989 9.56145477
		 3.37161636 23.78230286 9.56145477 3.37161636 10.29296112 9.56145477 3.37161636 -3.1963768 9.56145477
		 3.37161636 -16.68571854 9.56145477 3.37161636 -30.17506409 9.56145477 3.37161636 -43.66440582 9.56145477
		 3.37161636 -57.15374756 -9.56144714 3.37161636 -43.66440582 -9.56144714 3.37161636 -30.17506409 -9.56144714
		 3.37161636 -16.68572235 -9.56144714 3.37161636 -3.19638062 -9.56144714 3.37161636 10.29296112 -9.56144714
		 3.37161636 23.78230286 -9.56144714 3.37161636 -57.15374756 9.56145477 90.71177673 -63.89841461 -9.56144714
		 90.71177673 -63.89841461 9.56145477 90.71177673 -57.15374756 -9.56144714 90.71177673 -57.15374756 9.56145477
		 84.23608398 -57.15374756 -9.56144714 84.23608398 -57.15374756 9.56145477 84.23608398 -50.40907288 -9.56144714
		 84.23608398 -50.40907288 9.56145477 77.2755127 -50.40907288 -9.56144714 77.2755127 -50.40907288 9.56145477
		 77.2755127 -43.66440582 -9.56144714 77.2755127 -43.66440582 9.56145477 70.77796936 -43.66440582 -9.56144714
		 70.77796936 -43.66440582 9.56145477 70.77796936 -36.91973495 -9.56144714 70.77796936 -36.91973495 9.56145477
		 63.69255447 -36.91973495 -9.56144714 63.69255447 -36.91973495 9.56145477 63.69255447 -30.17506409 -9.56144714
		 63.69255447 -30.17506409 9.56145477 56.65391159 -30.17506409 -9.56144714 56.65391159 -30.17506409 9.56145477
		 56.65391159 -23.43039322 -9.56144714 56.65391159 -23.4303894 9.56145477 50.18192673 -23.43039322 -9.56144714
		 50.18192673 -23.4303894 9.56145477 50.18192673 -16.68572235 -9.56144714 50.18192673 -16.68571854 9.56145477
		 43.39910507 -16.68572235 -9.56144714 43.39910507 -16.68571854 9.56145477 43.39910507 -9.94105339 -9.56144714
		 43.39910507 -9.94104576 9.56145477 36.69479752 -9.94105339 -9.56144714 36.69479752 -9.94104576 9.56145477
		 36.69479752 -3.19638062 -9.56144714 36.69479752 -3.1963768 9.56145477 29.98714066 -3.19638062 -9.56144714
		 29.98714066 -3.1963768 9.56145477 29.98714066 3.54829025 -9.56144714 29.98714066 3.54829407 9.56145477
		 23.40120697 3.54829025 -9.56144714 23.40120697 3.54829407 9.56145477 23.40120697 10.29296112 -9.56144714
		 23.40120697 10.29296112 9.56145477 16.8266449 10.29296112 -9.56144714 16.8266449 10.29296112 9.56145477
		 16.8266449 17.037631989 -9.56144714 16.8266449 17.037631989 9.56145477 3.37161636 17.037631989 -9.56144714
		 3.37161636 17.037631989 9.56145477 3.37161636 23.78230286 -9.56144714 3.37161636 23.78230286 9.56145477;
	setAttr -s 155 ".ed[0:154]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 33 0 2 4 0
		 3 5 0 4 6 0 5 32 0 6 0 0 7 1 0 8 31 0 9 30 0 10 29 0 11 28 0 12 27 0 13 26 0 14 25 0
		 15 24 0 16 23 0 17 22 0 18 21 0 19 20 0 8 19 0 9 18 0 10 17 0 11 16 0 12 15 0 13 14 0
		 20 3 0 21 19 0 22 18 0 23 17 0 24 16 0 25 15 0 26 7 0 27 13 0 28 12 0 29 11 0 30 10 0
		 31 9 0 32 8 0 33 14 0 27 25 0 28 24 0 29 23 0 30 22 0 31 21 0 32 20 0 26 33 0 7 34 0
		 1 35 0 34 35 0 26 36 0 36 34 0 33 37 0 36 37 0 35 37 0 26 38 0 33 39 0 38 39 0 13 40 0
		 40 38 0 14 41 0 40 41 0 39 41 0 13 42 0 14 43 0 42 43 0 27 44 0 44 42 0 25 45 0 44 45 0
		 43 45 0 27 46 0 25 47 0 46 47 0 12 48 0 48 46 0 15 49 0 48 49 0 47 49 0 12 50 0 15 51 0
		 50 51 0 28 52 0 52 50 0 24 53 0 52 53 0 51 53 0 28 54 0 24 55 0 54 55 0 11 56 0 56 54 0
		 16 57 0 56 57 0 55 57 0 11 58 0 16 59 0 58 59 0 29 60 0 60 58 0 23 61 0 60 61 0 59 61 0
		 29 62 0 23 63 0 62 63 0 10 64 0 64 62 0 17 65 0 64 65 0 63 65 0 10 66 0 17 67 0 66 67 0
		 30 68 0 68 66 0 22 69 0 68 69 0 67 69 0 30 70 0 22 71 0 70 71 0 9 72 0 72 70 0 18 73 0
		 72 73 0 71 73 0 9 74 0 18 75 0 74 75 0 31 76 0 76 74 0 21 77 0 76 77 0 75 77 0 31 78 0
		 21 79 0 78 79 0 8 80 0 80 78 0 19 81 0 80 81 0 79 81 0 8 82 0 19 83 0 82 83 0 32 84 0
		 84 82 0 20 85 0 84 85 0 83 85 0;
	setAttr -s 71 -ch 310 ".fc[0:70]" -type "polyFaces" 
		f 17 0 5 43 18 35 19 34 20 33 21 32 22 31 23 30 -2 -5
		mu 0 17 0 1 52 26 37 27 36 28 35 29 34 30 33 31 32 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 17 2 9 42 12 41 13 40 14 39 15 38 16 37 17 36 -4 -9
		mu 0 17 4 5 50 14 48 16 46 18 44 20 42 22 40 24 38 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -54 -56 57 -59
		mu 0 4 53 54 55 56
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -150 -152 153 -155
		mu 0 4 101 102 103 104
		f 4 -134 -136 137 -139
		mu 0 4 93 94 95 96
		f 4 -118 -120 121 -123
		mu 0 4 85 86 87 88
		f 4 -102 -104 105 -107
		mu 0 4 77 78 79 80
		f 4 -86 -88 89 -91
		mu 0 4 69 70 71 72
		f 4 -70 -72 73 -75
		mu 0 4 61 62 63 64
		f 4 -78 -80 81 -83
		mu 0 4 65 66 67 68
		f 4 -94 -96 97 -99
		mu 0 4 73 74 75 76
		f 4 -110 -112 113 -115
		mu 0 4 81 82 83 84
		f 4 -126 -128 129 -131
		mu 0 4 89 90 91 92
		f 4 -142 -144 145 -147
		mu 0 4 97 98 99 100
		f 4 -50 -10 -8 -31
		mu 0 4 32 51 11 3
		f 4 -62 -64 65 -67
		mu 0 4 57 58 59 60
		f 4 -12 51 53 -53
		mu 0 4 1 10 54 53
		f 4 -37 54 55 -52
		mu 0 4 10 39 55 54
		f 4 50 56 -58 -55
		mu 0 4 39 52 56 55
		f 4 -6 52 58 -57
		mu 0 4 52 1 53 56
		f 4 -51 59 61 -61
		mu 0 4 52 39 58 57
		f 4 -18 62 63 -60
		mu 0 4 39 25 59 58
		f 4 29 64 -66 -63
		mu 0 4 25 26 60 59
		f 4 -44 60 66 -65
		mu 0 4 26 52 57 60
		f 4 -30 67 69 -69
		mu 0 4 26 25 62 61
		f 4 -38 70 71 -68
		mu 0 4 25 41 63 62
		f 4 44 72 -74 -71
		mu 0 4 41 37 64 63
		f 4 -19 68 74 -73
		mu 0 4 37 26 61 64
		f 4 -45 75 77 -77
		mu 0 4 37 41 66 65
		f 4 -17 78 79 -76
		mu 0 4 41 23 67 66
		f 4 28 80 -82 -79
		mu 0 4 23 27 68 67
		f 4 -36 76 82 -81
		mu 0 4 27 37 65 68
		f 4 -29 83 85 -85
		mu 0 4 27 23 70 69
		f 4 -39 86 87 -84
		mu 0 4 23 43 71 70
		f 4 45 88 -90 -87
		mu 0 4 43 36 72 71
		f 4 -20 84 90 -89
		mu 0 4 36 27 69 72
		f 4 -46 91 93 -93
		mu 0 4 36 43 74 73
		f 4 -16 94 95 -92
		mu 0 4 43 21 75 74
		f 4 27 96 -98 -95
		mu 0 4 21 28 76 75
		f 4 -35 92 98 -97
		mu 0 4 28 36 73 76
		f 4 -28 99 101 -101
		mu 0 4 28 21 78 77
		f 4 -40 102 103 -100
		mu 0 4 21 45 79 78
		f 4 46 104 -106 -103
		mu 0 4 45 35 80 79
		f 4 -21 100 106 -105
		mu 0 4 35 28 77 80
		f 4 -47 107 109 -109
		mu 0 4 35 45 82 81
		f 4 -15 110 111 -108
		mu 0 4 45 19 83 82
		f 4 26 112 -114 -111
		mu 0 4 19 29 84 83
		f 4 -34 108 114 -113
		mu 0 4 29 35 81 84
		f 4 -27 115 117 -117
		mu 0 4 29 19 86 85
		f 4 -41 118 119 -116
		mu 0 4 19 47 87 86
		f 4 47 120 -122 -119
		mu 0 4 47 34 88 87
		f 4 -22 116 122 -121
		mu 0 4 34 29 85 88
		f 4 -48 123 125 -125
		mu 0 4 34 47 90 89
		f 4 -14 126 127 -124
		mu 0 4 47 17 91 90
		f 4 25 128 -130 -127
		mu 0 4 17 30 92 91
		f 4 -33 124 130 -129
		mu 0 4 30 34 89 92
		f 4 -26 131 133 -133
		mu 0 4 30 17 94 93
		f 4 -42 134 135 -132
		mu 0 4 17 49 95 94
		f 4 48 136 -138 -135
		mu 0 4 49 33 96 95
		f 4 -23 132 138 -137
		mu 0 4 33 30 93 96
		f 4 -49 139 141 -141
		mu 0 4 33 49 98 97
		f 4 -13 142 143 -140
		mu 0 4 49 15 99 98
		f 4 24 144 -146 -143
		mu 0 4 15 31 100 99
		f 4 -32 140 146 -145
		mu 0 4 31 33 97 100
		f 4 -25 147 149 -149
		mu 0 4 31 15 102 101
		f 4 -43 150 151 -148
		mu 0 4 15 51 103 102
		f 4 49 152 -154 -151
		mu 0 4 51 32 104 103
		f 4 -24 148 154 -153
		mu 0 4 32 31 101 104;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape20" -p "pCube62";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.1300297e-014 -60.526798 
		6.1898303 2.9753977e-014 -60.526798 6.1898303 2.7089442e-014 27.155355 6.1898303 
		1.5543122e-014 27.155355 6.1898303 2.7089442e-014 27.155355 -6.1898303 1.5543122e-014 
		27.155355 -6.1898303 4.1300297e-014 -60.526798 -6.1898303 2.9753977e-014 -60.526798 
		-6.1898303;
	setAttr -s 8 ".vt[0:7]"  -3.37161779 -3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779
		 -3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 3.37161779 -3.37161779 3.37161779 -3.37161779
		 3.37161779 3.37161779 -3.37161779 -3.37161779 -3.37161779 -3.37161779 3.37161779 -3.37161779 -3.37161779;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "persp1";
	setAttr ".t" -type "double3" -740.42785426875957 52.861969841760185 45.80546992166731 ;
	setAttr ".r" -type "double3" -5.1383527296394886 -86.199999999964277 0 ;
createNode camera -n "perspShape2" -p "persp1";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 530.3507106215269;
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".tp" -type "double3" -213.3697509765625 5.3632254600524902 10.798309326171875 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "pCube63";
	setAttr ".t" -type "double3" 1.321404758925695 -39.023749756240257 -128.92033237997808 ;
createNode transform -n "transform56" -p "pCube63";
	setAttr ".v" no;
createNode mesh -n "pCubeShape63" -p "transform56";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -25.67115 1.9043097 0 -25.67115 
		1.9043097 0 152.28236 1.9043097 0 152.28236 1.9043097 0 152.28236 0 0 152.28236 0 
		0 -25.67115 0 0 -25.67115 0;
	setAttr -s 8 ".vt[0:7]"  -36.6561203 -39.023750305 81.86532593 36.6561203 -39.023750305 81.86532593
		 -36.6561203 39.023750305 81.86532593 36.6561203 39.023750305 81.86532593 -36.6561203 39.023750305 -81.86532593
		 36.6561203 39.023750305 -81.86532593 -36.6561203 -39.023750305 -81.86532593 36.6561203 -39.023750305 -81.86532593;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube64";
	setAttr ".t" -type "double3" -12.504366499543732 15.526540324893055 -44.228653177987688 ;
	setAttr ".s" -type "double3" 0.81092440569821611 0.71556938907699053 4.0337131517119955 ;
createNode transform -n "transform55" -p "pCube64";
	setAttr ".v" no;
createNode mesh -n "pCubeShape64" -p "transform55";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  3.8350661 3.8773987 0 -3.8350661 
		3.8773987 0 -3.8350661 3.8773987 0 3.8350661 3.8773987 0;
createNode transform -n "pCube65";
	setAttr ".t" -type "double3" 16.669072529701403 15.526540324893055 -44.228653177987688 ;
	setAttr ".s" -type "double3" 0.81092440569821611 0.71556938907699053 4.0337131517119955 ;
createNode transform -n "transform57" -p "pCube65";
	setAttr ".v" no;
createNode mesh -n "pCubeShape65" -p "transform57";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  3.8350661 3.8773987 0 -3.8350661 
		3.8773987 0 -3.8350661 3.8773987 0 3.8350661 3.8773987 0;
	setAttr -s 16 ".vt[0:15]"  -11.32830334 -18.043914795 5.072677612 11.32830429 -18.043914795 5.072677612
		 -11.32830334 18.043914795 5.072677612 11.32830429 18.043914795 5.072677612 -11.32830334 18.043914795 -5.072677612
		 11.32830429 18.043914795 -5.072677612 -11.32830334 -18.043914795 -5.072677612 11.32830429 -18.043914795 -5.072677612
		 -9.79869366 23.38470459 5.072677612 9.79869366 23.38470459 5.072677612 9.79869366 23.38470459 -5.072677612
		 -9.79869366 23.38470459 -5.072677612 -9.79869366 23.38470459 5.072677612 9.79869366 23.38470459 5.072677612
		 9.79869366 23.38470459 -5.072677612 -9.79869366 23.38470459 -5.072677612;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface42";
createNode transform -n "transform58" -p "polySurface42";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape44" -p "transform58";
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
createNode transform -n "pCube66";
	setAttr ".t" -type "double3" 2.48642496018735 63.186179122988413 -44.228653177987717 ;
	setAttr ".s" -type "double3" 1.2456618584894046 1.0193490201147519 4.0337131517119955 ;
createNode transform -n "transform59" -p "pCube66";
	setAttr ".v" no;
createNode mesh -n "pCubeShape66" -p "transform59";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  3.8350661 3.8773987 0 -3.8350661 
		3.8773987 0 -3.8350661 3.8773987 0 3.8350661 3.8773987 0;
	setAttr -s 16 ".vt[0:15]"  -11.32830334 -18.043914795 5.072677612 11.32830429 -18.043914795 5.072677612
		 -11.32830334 18.043914795 5.072677612 11.32830429 18.043914795 5.072677612 -11.32830334 18.043914795 -5.072677612
		 11.32830429 18.043914795 -5.072677612 -11.32830334 -18.043914795 -5.072677612 11.32830429 -18.043914795 -5.072677612
		 -9.79869366 23.38470459 5.072677612 9.79869366 23.38470459 5.072677612 9.79869366 23.38470459 -5.072677612
		 -9.79869366 23.38470459 -5.072677612 -9.79869366 23.38470459 5.072677612 9.79869366 23.38470459 5.072677612
		 9.79869366 23.38470459 -5.072677612 -9.79869366 23.38470459 -5.072677612;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 22 24 -27 -28
		mu 0 4 18 19 20 21
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
		mu 0 4 17 14 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface43";
createNode transform -n "transform60" -p "polySurface43";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape45" -p "transform60";
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
createNode transform -n "polySurface44";
createNode mesh -n "polySurfaceShape46" -p "polySurface44";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface45";
	setAttr ".t" -type "double3" 278.62573305035897 0 0 ;
createNode mesh -n "polySurfaceShape45" -p "polySurface45";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:38]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 122 ".uvst[0].uvsp[0:121]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.375 0.38063273
		 0.375 0.38063273 0.625 0.3806327 0.375 0.3806327 0.625 0.3806327 0.625 0.3806327
		 0.62500006 0.38063276 0.62500006 0.38063276 0.7556327 0 0.7556327 0.25 0.375 0.8693673
		 0.625 0.8693673 0.24436727 0.25 0.24436727 0 0.375 0.38063276 0.375 0.38063276 0.48417941
		 0.12905891 0.47994959 0.13279106 0.46934447 0.13550055 0.43636188 0.13550055 0.42575669
		 0.13279104 0.42152688 0.12905893 0.42152685 0.1038409 0.48417941 0.1038409 0.375
		 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.625 0.5
		 0.375 0.5 0.625 0.5 0.375 0.5 0.375 0.3806327 0.375 0.3806327 0.625 0.3806327 0.375
		 0.3806327 0.625 0.38063273 0.625 0.38063273 0.62500006 0.38063276 0.62500006 0.38063276
		 0.7556327 0 0.7556327 0.25 0.375 0.8693673 0.625 0.8693673 0.24436727 0.25 0.24436727
		 0 0.375 0.38063276 0.375 0.38063276 0.58366293 0.12905891 0.57943308 0.13279104 0.56882793
		 0.13550054 0.5358454 0.13550054 0.52524018 0.13279103 0.5210104 0.12905891 0.5210104
		 0.10384091 0.58366293 0.1038409 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.5 0.375 0.5 0.625 0.5 0.375 0.5 0.375 0.3806327
		 0.375 0.3806327 0.625 0.3806327 0.375 0.3806327 0.625 0.3806327 0.625 0.3806327 0.625
		 0.3806327 0.625 0.3806327 0.75563276 0 0.75563276 0.25 0.375 0.8693673 0.625 0.8693673
		 0.24436727 0.25 0.24436727 0 0.375 0.3806327 0.375 0.3806327 0.55209315 0.18095422
		 0.54559571 0.18627077 0.5293051 0.1901305 0.47864056 0.1901305 0.46234995 0.18627074
		 0.45585251 0.18095422 0.45585248 0.14503045 0.55209315 0.14503044;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt";
	setAttr ".pt[8]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[13]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[14]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[15]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[24]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[25]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[26]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[27]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[28]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[29]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[30]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[33]" -type "float3" 0 -3.9250648 0.58836818 ;
	setAttr ".pt[34]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[36]" -type "float3" 0 -3.9250648 0.58836818 ;
	setAttr ".pt[39]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[40]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[41]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[42]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[43]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[44]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[45]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[46]" -type "float3" 0 0 0.58836818 ;
	setAttr ".pt[47]" -type "float3" 0 0 0.58836818 ;
	setAttr -s 56 ".vt[0:55]"  -9.71943474 87.023353577 -64.69038391 14.69228363 87.023353577 -64.69038391
		 9.91508865 90.97577667 -64.69038391 -4.94223881 90.97577667 -64.69038391 16.59766197 81.57922363 -64.69038391
		 -11.62481117 81.57922363 -64.69038391 -11.62481117 44.7931366 -64.69038391 16.59766197 44.7931366 -64.69038391
		 -9.71943474 87.023353577 -45.1506958 -4.94223881 90.97577667 -45.1506958 9.91508865 90.97577667 -45.1506958
		 14.69228363 87.023353577 -45.1506958 16.59766197 81.57922363 -45.1506958 16.59766197 44.7931366 -45.1506958
		 -11.62481117 44.7931366 -45.1506958 -11.62481117 81.57922363 -45.1506958 -20.45036697 32.25991821 -64.69038391
		 -4.55836678 32.25991821 -64.69038391 -7.66831589 35.034469604 -64.69038391 -17.34041595 35.034469604 -64.69038391
		 -3.31796837 28.43821335 -64.69038391 -21.69076538 28.43821335 -64.69038391 -21.69076538 2.61486816 -64.69038391
		 -3.31796837 2.61486816 -64.69038391 -20.45036697 32.25991821 -45.1506958 -17.34041595 35.034469604 -45.1506958
		 -7.66831589 35.034469604 -45.1506958 -4.55836678 32.25991821 -45.1506958 -3.31796837 28.43821335 -45.1506958
		 -3.31796837 2.61486816 -45.1506958 -21.69076538 2.61486816 -45.1506958 -21.69076538 28.43821335 -45.1506958
		 -35.3347168 -103.71865845 -210.78564453 -35.3347168 -103.71865845 -45.1506958 -35.3347168 152.28237915 -45.1506958
		 -35.3347168 152.28237915 -210.78564453 37.9775238 -103.71865845 -45.1506958 37.9775238 -103.71865845 -210.78564453
		 37.9775238 152.28237915 -210.78564453 37.9775238 152.28237915 -45.1506958 25.85547256 2.61486816 -45.1506958
		 7.48267555 2.61486816 -45.1506958 7.48267555 28.43821335 -45.1506958 8.72307301 32.25991821 -45.1506958
		 11.83302116 35.034469604 -45.1506958 21.50512505 35.034469604 -45.1506958 24.61507416 32.25991821 -45.1506958
		 25.85547256 28.43821335 -45.1506958 7.48267555 28.43821335 -64.69038391 8.72307301 32.25991821 -64.69038391
		 7.48267555 2.61486816 -64.69038391 25.85547256 2.61486816 -64.69038391 25.85547256 28.43821335 -64.69038391
		 24.61507416 32.25991821 -64.69038391 21.50512505 35.034469604 -64.69038391 11.83302116 35.034469604 -64.69038391;
	setAttr -s 90 ".ed[0:89]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 4 1 0 0 5 0 8 0 0 3 9 0 9 8 0 2 10 0 10 9 0 1 11 0 11 10 0 4 12 0 12 11 0 7 13 0
		 13 12 0 6 14 0 14 13 0 5 15 0 15 14 0 8 15 0 16 17 0 17 18 0 18 19 0 19 16 0 20 21 0
		 21 22 0 22 23 0 23 20 0 20 17 0 16 21 0 24 16 0 19 25 0 25 24 0 18 26 0 26 25 0 17 27 0
		 27 26 0 20 28 0 28 27 0 23 29 0 29 28 0 22 30 0 30 29 0 21 31 0 31 30 0 24 31 0 32 33 0
		 33 34 0 34 35 0 35 32 0 36 37 0 37 38 0 38 39 0 39 36 0 32 37 0 36 33 0 35 38 0 34 39 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 42 48 0 48 49 0 49 43 0
		 41 50 0 50 48 0 40 51 0 51 50 0 47 52 0 52 51 0 46 53 0 53 52 0 45 54 0 54 53 0 44 55 0
		 55 54 0 49 55 0 48 52 0 53 49 0;
	setAttr -s 39 -ch 180 ".fc[0:38]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 95 94 96 97
		f 4 4 5 6 7
		mu 0 4 87 86 88 89
		f 4 -5 8 -1 9
		mu 0 4 86 87 94 95
		f 4 10 -4 11 12
		mu 0 4 99 95 97 98
		f 4 -12 -3 13 14
		mu 0 4 101 97 96 100
		f 4 -14 -2 15 16
		mu 0 4 103 96 94 102
		f 4 -16 -9 17 18
		mu 0 4 105 94 87 104
		f 4 -18 -8 19 20
		mu 0 4 107 91 90 106
		f 4 -20 -7 21 22
		mu 0 4 109 89 88 108
		f 4 -22 -6 23 24
		mu 0 4 111 92 93 110
		f 4 -24 -10 -11 25
		mu 0 4 113 86 95 112
		f 4 26 27 28 29
		mu 0 4 23 22 24 25
		f 4 30 31 32 33
		mu 0 4 15 14 16 17
		f 4 -31 34 -27 35
		mu 0 4 14 15 22 23
		f 4 36 -30 37 38
		mu 0 4 27 23 25 26
		f 4 -38 -29 39 40
		mu 0 4 29 25 24 28
		f 4 -40 -28 41 42
		mu 0 4 31 24 22 30
		f 4 -42 -35 43 44
		mu 0 4 33 22 15 32
		f 4 -44 -34 45 46
		mu 0 4 35 19 18 34
		f 4 -46 -33 47 48
		mu 0 4 37 17 16 36
		f 4 -48 -32 49 50
		mu 0 4 39 20 21 38
		f 4 -50 -36 -37 51
		mu 0 4 41 14 23 40
		f 4 52 53 54 55
		mu 0 4 12 0 2 13
		f 4 56 57 58 59
		mu 0 4 1 10 11 3
		f 4 60 -57 61 -53
		mu 0 4 6 7 9 8
		f 4 62 -58 -61 -56
		mu 0 4 4 5 7 6
		f 4 63 -59 -63 -55
		mu 0 4 2 3 5 4
		f 4 -62 -60 -64 -54
		mu 0 4 0 1 3 2
		h 8 -23 -25 -26 -13 -15 -17 -19 -21
		mu 0 8 121 120 119 118 117 116 115 114
		h 8 -49 -51 -52 -39 -41 -43 -45 -47
		mu 0 8 49 48 47 46 45 44 43 42
		h 8 64 65 66 67 68 69 70 71
		mu 0 8 85 84 83 82 81 80 79 78
		f 4 72 73 74 -67
		mu 0 4 77 50 59 76
		f 4 75 76 -73 -66
		mu 0 4 75 56 57 74
		f 4 77 78 -76 -65
		mu 0 4 73 53 52 72
		f 4 79 80 -78 -72
		mu 0 4 71 55 54 70
		f 4 81 82 -80 -71
		mu 0 4 69 58 51 68
		f 4 83 84 -82 -70
		mu 0 4 67 60 58 66
		f 4 85 86 -84 -69
		mu 0 4 65 61 60 64
		f 4 -75 87 -86 -68
		mu 0 4 63 59 61 62
		f 4 88 -83 89 -74
		mu 0 4 50 51 58 59
		f 4 -89 -77 -79 -81
		mu 0 4 51 50 52 53
		f 4 -90 -85 -87 -88
		mu 0 4 59 58 60 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane1";
	setAttr ".t" -type "double3" 137.88420771377736 45.689688099852276 -241.79066343061254 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 0.87613452599545072 1 0.37246789462480867 ;
	setAttr ".rpt" -type "double3" 0 -1.466032996799268e-015 6.0017731688422653e-016 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube67";
	setAttr ".t" -type "double3" 88.101043714109267 7.3399213964896628 3.3018881778227369 ;
	setAttr ".s" -type "double3" 0.64165749593796773 0.64165749593796773 0.64165749593796773 ;
createNode mesh -n "pCubeShape67" -p "pCube67";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0 22.211538 0 0 22.211538 
		0 0 22.211538 0 0 22.211538 0;
createNode transform -n "pCube68";
	setAttr ".t" -type "double3" 88.101043714109267 7.3399213964896628 18.733711938114428 ;
	setAttr ".s" -type "double3" 0.64165749593796773 0.64165749593796773 0.64165749593796773 ;
createNode mesh -n "polySurfaceShape47" -p "pCube68";
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
	setAttr -s 4 ".pt[2:5]" -type "float3"  0 22.211538 0 0 22.211538 
		0 0 22.211538 0 0 22.211538 0;
	setAttr -s 8 ".vt[0:7]"  -1.5388726 -1.5388726 1.5388726 1.5388726 -1.5388726 1.5388726
		 -1.5388726 1.5388726 1.5388726 1.5388726 1.5388726 1.5388726 -1.5388726 1.5388726 -1.5388726
		 1.5388726 1.5388726 -1.5388726 -1.5388726 -1.5388726 -1.5388726 1.5388726 -1.5388726 -1.5388726;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface46" -p "pCube68";
createNode mesh -n "polySurfaceShape48" -p "polySurface46";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "BoxWall" -p "pCube68";
createNode mesh -n "BoxWallShape" -p "BoxWall";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform61" -p "pCube68";
	setAttr ".v" no;
createNode mesh -n "pCubeShape68" -p "transform61";
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
createNode transform -n "pCube71";
	setAttr ".t" -type "double3" -287.52175079023584 232.74211014801085 234.41246808914582 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 0.69078057350673405 0.85948062473390008 20.827386539959782 ;
	setAttr ".rpt" -type "double3" -3.0870676089954759e-016 0 2.370043588313788e-016 ;
createNode mesh -n "pCubeShape71" -p "pCube71";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0 1.576313 0 ;
	setAttr ".pt[1]" -type "float3" 0 1.576313 0 ;
	setAttr ".pt[6]" -type "float3" 0 1.576313 0 ;
	setAttr ".pt[7]" -type "float3" 0 1.576313 0 ;
	setAttr ".pt[16]" -type "float3" 5.0300822 1.0893497 0 ;
	setAttr ".pt[17]" -type "float3" -5.0300822 1.0893497 0 ;
	setAttr ".pt[18]" -type "float3" -5.0300822 1.0893497 0 ;
	setAttr ".pt[19]" -type "float3" 5.0300822 1.0893497 0 ;
	setAttr -s 20 ".vt[0:19]"  -10.57129669 -8.15480518 9.93379211 10.57129669 -8.15480518 9.93379211
		 -10.57129669 14.56761837 9.93379211 10.57129669 14.56761837 9.93379211 -10.57129669 14.56761837 -9.93379211
		 10.57129669 14.56761837 -9.93379211 -10.57129669 -8.15480518 -9.93379211 10.57129669 -8.15480518 -9.93379211
		 -9.84508514 18.17800522 9.93379211 9.84508514 18.17800522 9.93379211 9.84508514 18.17800522 -9.93379211
		 -9.84508514 18.17800522 -9.93379211 -6.11808777 21.37366104 9.93379211 6.11808777 21.37366104 9.93379211
		 6.11808777 20.88776016 -9.93379211 -6.11808777 20.88776016 -9.93379211 -6.11808777 21.37366104 9.93379211
		 6.11808777 21.37366104 9.93379211 6.11808777 20.88776016 -9.93379211 -6.11808777 20.88776016 -9.93379211;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 17 18 0 15 19 0 19 18 0 16 19 0;
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
		f 4 22 29 -31 -29
		mu 0 4 18 19 23 22
		f 4 24 31 -33 -30
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -28 28 35 -34
		mu 0 4 21 18 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface47";
createNode mesh -n "polySurfaceShape49" -p "polySurface47";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[2]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[4]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[6]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[8]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[10]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[12]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[14]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[16]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[18]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[20]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[22]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[28]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[31]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[34]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[36]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[37]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[38]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".pt[39]" -type "float3" 0 0 1.9073486e-006 ;
createNode mesh -n "polySurfaceShape50" -p "polySurface47";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 86 ".uvst[0].uvsp[0:85]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.4791874 0.625 0.26444504 0.625 0.26444504 0.625
		 0.4791874 0.625 0.47918743 0.62500006 0.26444504 0.62499994 0.26444501 0.625 0.47918737
		 0.375 0.47918737 0.375 0.26444504 0.625 0.26444504 0.625 0.47918737 0.375 0.47918737
		 0.375 0.26444504 0.375 0.26444504 0.375 0.47918737 0.375 0.47918737 0.37500003 0.26444507
		 0.37500003 0.26444504 0.375 0.47918737 0.375 0.47918743 0.375 0.26444504 0.37499997
		 0.26444504 0.375 0.47918743 0.375 0.47918737 0.375 0.26444504 0.375 0.26444504 0.375
		 0.47918737 0.1458126 -6.5590884e-009 0.36055499 -6.5590884e-009 0.36055496 0.25 0.1458126
		 0.25 0.625 0.77081263 0.625 0.98555493 0.375 0.98555493 0.37500003 0.77081263 0.85418743
		 0.25 0.63944507 0.25 0.63944507 -6.5590884e-009 0.85418743 -6.5590884e-009 0.625
		 0.47918737 0.625 0.26444504 0.625 0.26444504 0.625 0.47918737 0.62500006 0.47918743
		 0.625 0.26444504 0.625 0.26444504 0.625 0.47918737 0.25715047 0.11041817 0.25715047
		 0.12788264 0.25608757 0.13086443 0.25563341 0.13108416 0.25063264 0.13313583 0.24327049
		 0.13403551 0.2400856 0.13403551 0.23272344 0.13313584 0.22772262 0.13108416 0.22726849
		 0.13086444 0.2262056 0.12788266 0.2262056 0.11041818 0.75672954 0.13438024 0.74936736
		 0.13348052 0.74905217 0.13335121 0.7439124 0.13086446 0.74284953 0.12788264 0.74284953
		 0.11041817 0.77379441 0.11041816 0.77379441 0.12788263 0.77273148 0.13086443 0.76759171
		 0.13335122 0.76727659 0.13348052 0.7599144 0.13438022;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[16]" -type "float3" 0 -0.24688186 0 ;
	setAttr ".pt[17]" -type "float3" 0 -0.24688186 0 ;
	setAttr ".pt[18]" -type "float3" 0 -0.24688186 0 ;
	setAttr ".pt[19]" -type "float3" 0 -0.24688186 0 ;
	setAttr -s 32 ".vt[0:31]"  -391.086181641 28.029163361 4.21184683 -35.65332031 30.38841248 6.42329597
		 -35.65332031 30.52298164 6.57205296 -391.086181641 30.16425705 6.57205296 -35.65332031 31.45925713 10.046735764
		 -391.086181641 31.10053253 10.046735764 -35.65335083 31.45925713 11.54988289 -391.086181641 31.10053253 11.54988289
		 -35.65335083 30.52298164 15.024565697 -391.086181641 30.16425705 15.024565697 -35.65335083 30.38841248 15.17332268
		 -391.086181641 28.029163361 17.38477135 -35.65332031 27.80050659 17.59910202 -391.086181641 27.80050659 17.59910202
		 -35.65332031 24.69745064 18.10075569 -391.086181641 24.69745064 18.10075569 -35.65332031 6.52277756 18.10075569
		 -391.086181641 6.52277756 18.10075569 -35.65335083 6.52277756 3.49586296 -391.086181641 6.52277756 3.49586296
		 -35.65335083 24.69745064 3.49586296 -391.086181641 24.69745064 3.49586296 -35.65335083 27.80050659 3.99751568
		 -391.086181641 27.80050659 3.99751568 -391.086181641 -108.38555908 -44.26960373 -391.086181641 -108.38555908 73.72157288
		 -391.086181641 151.7807312 73.72157288 -391.086181641 151.7807312 -44.26960373 -35.65335083 -108.38555908 73.72157288
		 -35.65335083 -108.38555908 -44.26960373 -35.65335083 151.7807312 -44.26960373 -35.65335083 151.7807312 73.72157288;
	setAttr -s 48 ".ed[0:47]"  0 1 1 1 2 0 2 3 0 3 0 0 2 4 0 4 5 0 5 3 0
		 4 6 0 6 7 0 7 5 0 6 8 0 8 9 0 9 7 0 8 10 0 10 11 1 11 9 0 10 12 0 12 13 0 13 11 0
		 12 14 0 14 15 0 15 13 0 14 16 0 16 17 0 17 15 0 16 18 0 18 19 0 19 17 0 18 20 0 20 21 0
		 21 19 0 20 22 0 22 23 0 23 21 0 22 1 0 0 23 0 24 25 0 25 26 0 26 27 0 27 24 0 28 29 0
		 29 30 0 30 31 0 31 28 0 24 29 0 28 25 0 27 30 0 26 31 0;
	setAttr -s 18 -ch 96 ".fc[0:17]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 17 16 15 14
		f 4 -3 4 5 6
		mu 0 4 21 20 19 18
		f 4 -6 7 8 9
		mu 0 4 25 24 23 22
		f 4 -9 10 11 12
		mu 0 4 29 28 27 26
		f 4 -12 13 14 15
		mu 0 4 33 32 31 30
		f 4 -15 16 17 18
		mu 0 4 37 36 35 34
		f 4 -18 19 20 21
		mu 0 4 41 40 39 38
		f 4 -21 22 23 24
		mu 0 4 45 44 43 42
		f 4 -24 25 26 27
		mu 0 4 49 48 47 46
		f 4 -27 28 29 30
		mu 0 4 53 52 51 50
		f 4 -30 31 32 33
		mu 0 4 57 56 55 54
		f 4 -33 34 -1 35
		mu 0 4 61 60 59 58
		f 4 36 37 38 39
		mu 0 4 12 0 2 13
		h 12 -31 -34 -36 -4 -7 -10 -13 -16 -19 -22 -25 -28
		mu 0 12 73 72 71 70 69 68 67 66 65 64 63 62
		f 4 40 41 42 43
		mu 0 4 1 10 11 3
		h 12 -5 -2 -35 -32 -29 -26 -23 -20 -17 -14 -11 -8
		mu 0 12 85 84 83 82 81 80 79 78 77 76 75 74
		f 4 44 -41 45 -37
		mu 0 4 6 7 9 8
		f 4 46 -42 -45 -40
		mu 0 4 4 5 7 6
		f 4 47 -43 -47 -39
		mu 0 4 2 3 5 4
		f 4 -46 -44 -48 -38
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 75.291452621426359;
	setAttr ".h" 11.52712893848191;
	setAttr ".d" 6.4902098477809851;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 36.982013115083333 5.7635644692409551 10.91713566390934 1;
	setAttr ".wt" 0.62040978670120239;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 36.982013115083333 5.7635644692409551 10.91713566390934 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0 5.472322 ;
	setAttr ".tk[3]" -type "float3" 0 0 5.472322 ;
	setAttr ".tk[4]" -type "float3" 0 0 -5.472322 ;
	setAttr ".tk[5]" -type "float3" 0 0 -5.472322 ;
	setAttr ".tk[8]" -type "float3" 0 -2.1140378 5.4723229 ;
	setAttr ".tk[9]" -type "float3" 0 -2.1140378 5.4723229 ;
	setAttr ".tk[10]" -type "float3" 0 -2.1140378 -5.4723229 ;
	setAttr ".tk[11]" -type "float3" 0 -2.1140378 -5.4723229 ;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n"
		+ "                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube3";
	setAttr ".w" 6.7432357781557926;
	setAttr ".h" 6.7432357781557926;
	setAttr ".d" 6.7432357781557926;
	setAttr ".cuv" 4;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".ics" -type "componentList" 2 "e[1]" "e[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 26.501566731589563 27.51019722426016 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 2;
	setAttr ".sv2" 0;
	setAttr ".sma" 99.3103;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 26.501566731589563 27.51019722426016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02295 6.8013144 27.510197 ;
	setAttr ".rs" 1405488137;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 119.85073233965824 6.8013141986305783 19.227112354875395 ;
	setAttr ".cbx" -type "double3" 182.19517661456055 6.8013141986305783 35.793282093644926 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 26.501566731589563 27.51019722426016 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02295 6.8013144 27.510197 ;
	setAttr ".rs" 265161030;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 128.86420394305179 6.8013141986305783 19.227112354875395 ;
	setAttr ".cbx" -type "double3" 173.18170501116705 6.8013141986305783 35.793282093644926 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[32:35]" -type "float3"  -9.013471603 0 0 -9.013471603
		 0 0 9.013471603 0 0 9.013471603 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02296 -33.435261 11.304897 ;
	setAttr ".rs" 1696475256;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 144.11547757510135 -33.435260316046126 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 157.9304537904639 -33.435260316046126 19.58798230787378 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[40:43]" -type "float3"  7.7497077 0 0 -7.7497077 0
		 0 -7.7497077 0 0 7.7497077 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02296 -33.435261 11.304897 ;
	setAttr ".rs" 1161909164;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 136.36576987627933 -33.435260316046126 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 165.68016196612308 -33.435260316046126 19.58798230787378 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[16:39]" -type "float3"  -1.47329974 0 0 1.47329974
		 0 0 1.47329974 0 0 -1.47329974 0 0 -1.47329974 0 0 1.47329974 0 0 1.47329974 0 0
		 -1.47329974 0 0 -2.10043001 0 0 2.10043097 0 0 2.10043097 0 0 -2.10043001 0 0 -2.10043001
		 -0.78769898 0 2.10043097 -0.78769898 0 2.10043097 -0.78769898 0 -2.10043001 -0.78769898
		 0 -3.81755066 -0.78769898 0 3.81755161 -0.78769898 0 3.81755161 -0.78769898 0 -3.81755066
		 -0.78769898 0 -3.81755066 -8.94279957 0 3.81755161 -8.94279957 0 3.81755161 -8.94279957
		 0 -3.81755066 -8.94279957 0;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02296 -24.492462 11.304897 ;
	setAttr ".rs" 1391485489;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 140.18331481341312 -24.492461701544173 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 161.86261702898929 -24.492461701544173 19.58798230787378 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[32:35]" -type "float3"  9.81810951 0 0 -9.81810951
		 0 0 -9.81810951 0 0 9.81810951 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02296 -24.492462 11.304897 ;
	setAttr ".rs" 1314644300;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 130.36519767168949 -24.492461701544173 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 171.68072272662113 -24.492461701544173 19.58798230787378 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[8:31]" -type "float3"  -2.90060163 -0.11863369 0
		 2.90060163 -0.11863369 0 2.90060163 -0.11863369 0 -2.90060163 -0.11863369 0 -2.90060163
		 2.04605937 0 2.90060163 2.04605937 0 2.90060163 2.04605937 0 -2.90060163 2.04605937
		 0 -6.079759598 2.04605937 0 6.079760075 2.04605937 0 6.079760075 2.04605937 0 -6.079759598
		 2.04605937 0 -6.079759598 4.21035051 0 6.079760075 4.21035051 0 6.079760075 4.21035051
		 0 -6.079759598 4.21035051 0 -3.33702898 4.21035051 0 3.33703232 4.21035051 0 3.33703232
		 4.21035051 0 -3.33702898 4.21035051 0 -3.33702898 -3.43928337 0 3.33703232 -3.43928337
		 0 3.33703232 -3.43928337 0 -3.33702898 -3.43928337 0;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02295 -21.053177 11.304897 ;
	setAttr ".rs" 42960542;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 133.70222426775882 -21.05317642322386 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 168.34368468645999 -21.05317642322386 19.58798230787378 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  6.29843712 -9.5367432e-007
		 0 -6.29843712 -9.5367432e-007 0 -6.29843712 -9.5367432e-007 0 6.29843712 -9.5367432e-007
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02295 -21.053177 11.304897 ;
	setAttr ".rs" 1157019742;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 127.40378714922856 -21.05317642322386 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 174.64212180499027 -21.05317642322386 19.58798230787378 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0 -10.52560902 0 0 -10.52560902
		 0 0 -10.52560902 0 0 -10.52560902 0;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02295 -10.527569 11.304897 ;
	setAttr ".rs" 2125798754;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 127.40378714922856 -10.527568360479718 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 174.64211417559574 -10.527568360479718 19.58798230787378 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  13.6742487 0 0 -13.6742487
		 0 0 -13.6742487 0 0 13.6742487 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02295 -10.527569 11.304897 ;
	setAttr ".rs" 1159572243;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 113.72953940752932 -10.527568360479718 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 188.31636191729496 -10.527568360479718 19.58798230787378 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 -10.52756977 0 0 -10.52756977
		 0 0 -10.52756977 0 0 -10.52756977 0;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02295 4.5665897e-007 11.304897 ;
	setAttr ".rs" 647143574;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 113.72953940752932 4.5665895420654579e-007 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 188.31636191729496 4.5665895420654579e-007 19.58798230787378 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  11.63717461 0 0 -11.63717461
		 0 0 -11.63717461 0 0 11.63717461 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02295 4.5665897e-007 11.304896 ;
	setAttr ".rs" 490337392;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 102.09236289385746 4.5665895420654579e-007 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 199.9535422456641 4.5665895420654579e-007 19.587981354199464 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -10.10852623 0 0 16.52772141
		 0 0 -10.10852623 0 0 16.52772141 0 0 -10.10852623 0 0 16.52772141 0 0 -10.10852623
		 0 0 16.52772141 0 0;
createNode polyCube -n "polyCube2";
	setAttr ".w" 71.224932379891911;
	setAttr ".h" 22.437485654528849;
	setAttr ".d" 16.566169843010297;
	setAttr ".cuv" 4;
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[9:20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 26.501566731589563 44.682593789187635 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 147.81335 26.501566 44.682594 ;
	setAttr ".rs" 2001175517;
	setAttr ".dup" no;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 2 "e[1]" "e[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 26.501566731589563 44.682593789187635 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 2;
	setAttr ".sv2" 0;
	setAttr ".sma" 99.3103;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode polyUnite -n "polyUnite1";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
	setAttr ".muv" 2;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:34]";
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02295 22.437485 11.304897 ;
	setAttr ".rs" 1593071785;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 102.09236289385746 22.43748519786989 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 199.95353843096683 22.43748519786989 19.58798230787378 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[44:47]" -type "float3"  0 -8.085112572 0 0 -8.085112572
		 0 0 -8.085112572 0 0 -8.085112572 0;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02295 22.437485 11.304897 ;
	setAttr ".rs" 506600526;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 117.50762893084476 22.43748519786989 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 184.53827048663089 22.43748519786989 19.58798230787378 ;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[48:51]" -type "float3"  15.41526604 0 0 -15.41526604
		 0 0 -15.41526604 0 0 15.41526604 0 0;
createNode polyCube -n "polyCube4";
	setAttr ".w" 34.560828237840141;
	setAttr ".h" 35.269812322778805;
	setAttr ".d" 39.613546341453059;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube5";
	setAttr ".w" 49.943043194136749;
	setAttr ".h" 49.943043194136749;
	setAttr ".d" 49.943043194136749;
	setAttr ".cuv" 4;
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".mth" 1;
	setAttr ".c" 0.42779999971389771;
	setAttr ".dv" 4;
	setAttr ".suv" yes;
	setAttr ".kb" no;
	setAttr ".ksb" no;
	setAttr ".bnr" 2;
	setAttr ".kt" no;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyBoolOp -n "polyBoolOp1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode polyBoolOp -n "polyBoolOp2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:48]";
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube6";
	setAttr ".w" 17.825472921144353;
	setAttr ".h" 134.67628857391989;
	setAttr ".d" 32.0305142088623;
	setAttr ".cuv" 4;
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode displayLayer -n "Foreground";
	setAttr ".do" 1;
createNode polyCube -n "polyCube7";
	setAttr ".w" 1.6427635257195945;
	setAttr ".h" 4.399376157253446;
	setAttr ".d" 1.841866556965897;
	setAttr ".cuv" 4;
createNode polyChipOff -n "polyChipOff2";
	setAttr ".ics" -type "componentList" 2 "f[3]" "f[10:45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02295 31.701832 11.304897 ;
	setAttr ".rs" 36845;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[52:55]" -type "float3"  20.0015640259 9.26434803 0
		 -20.0015640259 9.26434803 0 -20.0015640259 9.26434803 0 20.0015640259 9.26434803
		 0;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:53]";
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 37 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]";
createNode polyChipOff -n "polyChipOff3";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[13:16]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 147.81335 11.218742 11.304896 ;
	setAttr ".rs" 38158;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupId -n "groupId39";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode polySubdFace -n "polySubdFace1";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".dvv" 7;
	setAttr ".sbm" 1;
createNode polySubdFace -n "polySubdFace2";
	setAttr ".ics" -type "componentList" 2 "f[4]" "f[6:11]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1.2230492242527926 0 0 0 0 1.2230492242527926 0 0 0 0 1.2230492242527926 0
		 42.298739273122365 46.827258702732586 -151.6080298385281 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 46.422394 -27.199116 -151.60803 ;
	setAttr ".rs" 53115;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.422393800596062 -31.323647719232774 -163.30215151657737 ;
	setAttr ".cbx" -type "double3" 46.422393800596062 -23.074583246382907 -139.91390816047883 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 1 "f[18]";
	setAttr ".ix" -type "matrix" 1.2230492242527926 0 0 0 0 1.2230492242527926 0 0 0 0 1.2230492242527926 0
		 42.298739273122365 46.827258702732586 -151.6080298385281 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 46.422394 -18.950054 -151.60803 ;
	setAttr ".rs" 48744;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.422392051010114 -23.074587911945436 -163.30215035018674 ;
	setAttr ".cbx" -type "double3" 46.422392051010114 -14.825518773533041 -139.9138999957444 ;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[34]" -type "float3" 87.340157 0 -1.4210855e-014 ;
	setAttr ".tk[35]" -type "float3" 87.340157 0 -1.4210855e-014 ;
	setAttr ".tk[36]" -type "float3" 87.340157 0 -1.4210855e-014 ;
	setAttr ".tk[37]" -type "float3" 87.340157 0 -1.4210855e-014 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 1.2230492242527926 0 0 0 0 1.2230492242527926 0 0 0 0 1.2230492242527926 0
		 42.298739273122365 46.827258702732586 -151.6080298385281 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 46.422394 -10.700989 -151.60803 ;
	setAttr ".rs" 54962;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.422392051010114 -14.825518773533041 -163.30215035018674 ;
	setAttr ".cbx" -type "double3" 46.422392051010114 -6.5764589662457027 -139.9138999957444 ;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[38]" -type "float3" 80.864464 0 -1.4210855e-014 ;
	setAttr ".tk[39]" -type "float3" 80.864464 0 -1.4210855e-014 ;
	setAttr ".tk[40]" -type "float3" 80.864464 0 -1.4210855e-014 ;
	setAttr ".tk[41]" -type "float3" 80.864464 0 -1.4210855e-014 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 1.2230492242527926 0 0 0 0 1.2230492242527926 0 0 0 0 1.2230492242527926 0
		 42.298739273122365 46.827258702732586 -151.6080298385281 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 46.422394 -2.4519267 -151.60803 ;
	setAttr ".rs" 32933;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.422392051010114 -6.5764589662457027 -163.30215035018674 ;
	setAttr ".cbx" -type "double3" 46.422392051010114 1.672605506604171 -139.9138999957444 ;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[42]" -type "float3" 73.9039 0 0 ;
	setAttr ".tk[43]" -type "float3" 73.9039 0 0 ;
	setAttr ".tk[44]" -type "float3" 73.9039 0 0 ;
	setAttr ".tk[45]" -type "float3" 73.9039 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".ix" -type "matrix" 1.2230492242527926 0 0 0 0 1.2230492242527926 0 0 0 0 1.2230492242527926 0
		 42.298739273122365 46.827258702732586 -151.6080298385281 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 46.422394 5.7971377 -151.60803 ;
	setAttr ".rs" 41869;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.422392051010114 1.672605506604171 -163.30215035018674 ;
	setAttr ".cbx" -type "double3" 46.422392051010114 9.9216699794540375 -139.9138999957444 ;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[46]" -type "float3" 67.406357 0 0 ;
	setAttr ".tk[47]" -type "float3" 67.406357 0 0 ;
	setAttr ".tk[48]" -type "float3" 67.406357 0 0 ;
	setAttr ".tk[49]" -type "float3" 67.406357 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" 1.2230492242527926 0 0 0 0 1.2230492242527926 0 0 0 0 1.2230492242527926 0
		 42.298739273122365 46.827258702732586 -151.6080298385281 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 46.422394 14.046205 -151.60803 ;
	setAttr ".rs" 42575;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.422392051010114 9.9216699794540375 -163.30215035018674 ;
	setAttr ".cbx" -type "double3" 46.422392051010114 18.170739117866439 -139.9138999957444 ;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[50]" -type "float3" 60.320938 0 0 ;
	setAttr ".tk[51]" -type "float3" 60.320938 0 0 ;
	setAttr ".tk[52]" -type "float3" 60.320938 0 0 ;
	setAttr ".tk[53]" -type "float3" 60.320938 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1.2230492242527926 0 0 0 0 1.2230492242527926 0 0 0 0 1.2230492242527926 0
		 42.298739273122365 46.827258702732586 -151.6080298385281 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 46.422394 22.295269 -151.60803 ;
	setAttr ".rs" 62875;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.422392051010114 18.170734452303911 -163.30215035018674 ;
	setAttr ".cbx" -type "double3" 46.422392051010114 26.41980359071631 -139.9138999957444 ;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[54]" -type "float3" 53.282288 0 0 ;
	setAttr ".tk[55]" -type "float3" 53.282288 0 0 ;
	setAttr ".tk[56]" -type "float3" 53.282288 0 0 ;
	setAttr ".tk[57]" -type "float3" 53.282288 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	setAttr ".ics" -type "componentList" 1 "f[14]";
	setAttr ".ix" -type "matrix" 1.2230492242527926 0 0 0 0 1.2230492242527926 0 0 0 0 1.2230492242527926 0
		 42.298739273122365 46.827258702732586 -151.6080298385281 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 46.422394 30.544334 -151.60803 ;
	setAttr ".rs" 56804;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.422392051010114 26.419798925153778 -163.30215035018674 ;
	setAttr ".cbx" -type "double3" 46.422392051010114 34.668870396347444 -139.9138999957444 ;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[58]" -type "float3" 46.81031 -7.1054274e-015 0 ;
	setAttr ".tk[59]" -type "float3" 46.81031 -7.1054274e-015 0 ;
	setAttr ".tk[60]" -type "float3" 46.81031 -7.1054274e-015 0 ;
	setAttr ".tk[61]" -type "float3" 46.81031 -7.1054274e-015 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 1.2230492242527926 0 0 0 0 1.2230492242527926 0 0 0 0 1.2230492242527926 0
		 42.298739273122365 46.827258702732586 -151.6080298385281 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 46.422394 38.793396 -151.60803 ;
	setAttr ".rs" 55865;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.422392051010114 34.668861065222387 -163.30215035018674 ;
	setAttr ".cbx" -type "double3" 46.422392051010114 42.917932536416053 -139.9138999957444 ;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[62]" -type "float3" 40.027489 0 0 ;
	setAttr ".tk[63]" -type "float3" 40.027489 0 0 ;
	setAttr ".tk[64]" -type "float3" 40.027489 0 0 ;
	setAttr ".tk[65]" -type "float3" 40.027489 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	setAttr ".ics" -type "componentList" 1 "f[15]";
	setAttr ".ix" -type "matrix" 1.2230492242527926 0 0 0 0 1.2230492242527926 0 0 0 0 1.2230492242527926 0
		 42.298739273122365 46.827258702732586 -151.6080298385281 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 46.422394 47.042461 -151.60803 ;
	setAttr ".rs" 62900;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.422392051010114 42.917927870853518 -163.30215035018674 ;
	setAttr ".cbx" -type "double3" 46.422392051010114 51.16699700926592 -139.9138999957444 ;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[66]" -type "float3" 33.323181 1.4210855e-014 0 ;
	setAttr ".tk[67]" -type "float3" 33.323181 1.4210855e-014 0 ;
	setAttr ".tk[68]" -type "float3" 33.323181 1.4210855e-014 0 ;
	setAttr ".tk[69]" -type "float3" 33.323181 1.4210855e-014 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	setAttr ".ics" -type "componentList" 1 "f[7]";
	setAttr ".ix" -type "matrix" 1.2230492242527926 0 0 0 0 1.2230492242527926 0 0 0 0 1.2230492242527926 0
		 42.298739273122365 46.827258702732586 -151.6080298385281 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 46.422394 55.291523 -151.60803 ;
	setAttr ".rs" 46552;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.422392051010114 51.166992343703392 -163.30215035018674 ;
	setAttr ".cbx" -type "double3" 46.422392051010114 59.416056816553258 -139.9138999957444 ;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[70]" -type "float3" 26.615519 0 0 ;
	setAttr ".tk[71]" -type "float3" 26.615519 0 0 ;
	setAttr ".tk[72]" -type "float3" 26.615519 0 0 ;
	setAttr ".tk[73]" -type "float3" 26.615519 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	setAttr ".ics" -type "componentList" 1 "f[16]";
	setAttr ".ix" -type "matrix" 1.2230492242527926 0 0 0 0 1.2230492242527926 0 0 0 0 1.2230492242527926 0
		 42.298739273122365 46.827258702732586 -151.6080298385281 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 46.422394 63.540588 -151.60803 ;
	setAttr ".rs" 62646;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.422392051010114 59.416056816553258 -163.30215035018674 ;
	setAttr ".cbx" -type "double3" 46.422392051010114 67.665121289403132 -139.9138999957444 ;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[74]" -type "float3" 20.029589 0 0 ;
	setAttr ".tk[75]" -type "float3" 20.029589 0 0 ;
	setAttr ".tk[76]" -type "float3" 20.029589 0 0 ;
	setAttr ".tk[77]" -type "float3" 20.029589 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace27";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1.2230492242527926 0 0 0 0 1.2230492242527926 0 0 0 0 1.2230492242527926 0
		 42.298739273122365 46.827258702732586 -151.6080298385281 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 46.422394 71.78965 -151.60803 ;
	setAttr ".rs" 41096;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 46.422392051010114 67.665121289403132 -163.30215035018674 ;
	setAttr ".cbx" -type "double3" 46.422392051010114 75.914185762252998 -139.9138999957444 ;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[78]" -type "float3" 13.455029 0 0 ;
	setAttr ".tk[79]" -type "float3" 13.455029 0 0 ;
	setAttr ".tk[80]" -type "float3" 13.455029 0 0 ;
	setAttr ".tk[81]" -type "float3" 13.455029 0 0 ;
createNode polyChipOff -n "polyChipOff4";
	setAttr ".ics" -type "componentList" 1 "f[0:2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 53.32478764504053 67.338144286959945 -179.32819731211131 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 53.324787 67.338142 -179.3282 ;
	setAttr ".rs" 54493;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -6.24018335 -30.4322834 -5.2580162e-013
		 181.045013428 -30.4322834 -5.2580162e-013 -6.24018335 16.35518837 -4.9737992e-013
		 181.045013428 16.35518837 -4.9737992e-013 -6.24018335 16.35370636 -4.67465639 181.045013428
		 16.35370636 -4.67465639 -6.24018335 -30.4322834 -4.67465639 181.045013428 -30.4322834
		 -4.67465639;
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0]" "f[1]" "f[2]";
createNode groupId -n "groupId43";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0]" "f[1]" "f[2]";
createNode polyCube -n "polyCube8";
	setAttr ".w" 50.698742574887092;
	setAttr ".h" 50.698742574887092;
	setAttr ".d" 50.698742574887092;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 20.516763551444321 25.349371287443546 126.44863165674633 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.516764 79.229683 126.44863 ;
	setAttr ".rs" 35998;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.8326074049765779 79.229681346037296 101.09926070032543 ;
	setAttr ".cbx" -type "double3" 45.866134507865219 79.229681346037296 151.79800261316723 ;
createNode polyTweak -n "polyTweak32";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0 28.53093719 0 0 28.53093719
		 0 0 28.53093719 0 0 28.53093719 0;
createNode polyExtrudeFace -n "polyExtrudeFace29";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 20.516763551444321 25.349371287443546 126.44863165674633 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.516764 90.895859 126.44863 ;
	setAttr ".rs" 36129;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.20562948444435136 90.895857188322452 101.0992587929768 ;
	setAttr ".cbx" -type "double3" 41.239156587332992 90.895857188322452 151.79800452051586 ;
createNode polyTweak -n "polyTweak33";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  4.62697792 11.66617584 0 -4.62697792
		 11.66617584 0 -4.62697792 11.66617584 0 4.62697792 11.66617584 0;
createNode lambert -n "SkyholdWhiteGlow";
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".ic" -type "float3" 0.52205694 0.52205694 0.52205694 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 61 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 60 ".gn";
createNode materialInfo -n "materialInfo1";
createNode displayLayer -n "BackStairs";
	setAttr ".do" 2;
createNode polyBoolOp -n "polyBoolOp4";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId45";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[8:10]";
createNode groupId -n "groupId47";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode polyBoolOp -n "polyBoolOp5";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode groupId -n "groupId49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId50";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[8:10]";
createNode groupId -n "groupId51";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:7]" "f[11:18]";
createNode polyBoolOp -n "polyBoolOp6";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId53";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[16:18]";
createNode groupId -n "groupId55";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:15]" "f[19:26]";
createNode polyBoolOp -n "polyBoolOp7";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[16:18]";
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:15]" "f[19:34]";
createNode polyBoolOp -n "polyBoolOp8";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[24:26]";
createNode groupId -n "groupId63";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:23]" "f[27:42]";
createNode polyBoolOp -n "polyBoolOp9";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId65";
	setAttr ".ihi" 0;
createNode groupId -n "groupId66";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[24:26]";
createNode groupId -n "groupId67";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:23]" "f[27:50]";
createNode polyBoolOp -n "polyBoolOp10";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[32:34]";
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:31]" "f[35:58]";
createNode polyBoolOp -n "polyBoolOp11";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId72";
	setAttr ".ihi" 0;
createNode groupId -n "groupId73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId74";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[32:34]";
createNode groupId -n "groupId75";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:31]" "f[35:66]";
createNode polyBoolOp -n "polyBoolOp12";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId77";
	setAttr ".ihi" 0;
createNode groupId -n "groupId78";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[40:42]";
createNode groupId -n "groupId79";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:39]" "f[43:74]";
createNode polyBoolOp -n "polyBoolOp13";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId80";
	setAttr ".ihi" 0;
createNode groupId -n "groupId81";
	setAttr ".ihi" 0;
createNode groupId -n "groupId82";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[40:42]";
createNode groupId -n "groupId83";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:39]" "f[43:82]";
createNode polyBoolOp -n "polyBoolOp14";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId84";
	setAttr ".ihi" 0;
createNode groupId -n "groupId85";
	setAttr ".ihi" 0;
createNode groupId -n "groupId86";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[48:50]";
createNode groupId -n "groupId87";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:47]" "f[51:90]";
createNode polyBoolOp -n "polyBoolOp15";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId88";
	setAttr ".ihi" 0;
createNode groupId -n "groupId89";
	setAttr ".ihi" 0;
createNode groupId -n "groupId90";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[48:50]";
createNode groupId -n "groupId91";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:47]" "f[51:98]";
createNode polyBoolOp -n "polyBoolOp16";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId92";
	setAttr ".ihi" 0;
createNode groupId -n "groupId93";
	setAttr ".ihi" 0;
createNode groupId -n "groupId94";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[56:58]";
createNode groupId -n "groupId95";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:55]" "f[59:106]";
createNode polyBoolOp -n "polyBoolOp17";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId96";
	setAttr ".ihi" 0;
createNode groupId -n "groupId97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[56:58]";
createNode groupId -n "groupId99";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:55]" "f[59:114]";
createNode polyBoolOp -n "polyBoolOp18";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId100";
	setAttr ".ihi" 0;
createNode groupId -n "groupId101";
	setAttr ".ihi" 0;
createNode groupId -n "groupId102";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[64:66]";
createNode groupId -n "groupId103";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:63]" "f[67:122]";
createNode polyBoolOp -n "polyBoolOp19";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId104";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId105";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[64:66]";
createNode groupId -n "groupId107";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:63]" "f[67:130]";
createNode polyBoolOp -n "polyBoolOp20";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId108";
	setAttr ".ihi" 0;
createNode groupId -n "groupId109";
	setAttr ".ihi" 0;
createNode groupId -n "groupId110";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[72:74]";
createNode groupId -n "groupId111";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:71]" "f[75:138]";
createNode polyBoolOp -n "polyBoolOp21";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId112";
	setAttr ".ihi" 0;
createNode groupId -n "groupId113";
	setAttr ".ihi" 0;
createNode groupId -n "groupId114";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[72:74]";
createNode groupId -n "groupId115";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:71]" "f[75:146]";
createNode polyBoolOp -n "polyBoolOp22";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId116";
	setAttr ".ihi" 0;
createNode groupId -n "groupId117";
	setAttr ".ihi" 0;
createNode groupId -n "groupId118";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:82]";
createNode groupId -n "groupId119";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:79]" "f[83:154]";
createNode polyBoolOp -n "polyBoolOp23";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId120";
	setAttr ".ihi" 0;
createNode groupId -n "groupId121";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:82]";
	setAttr ".gi" 164;
createNode groupParts -n "groupParts60";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:79]" "f[83:162]";
	setAttr ".gi" 165;
createNode polyCloseBorder -n "polyCloseBorder1";
	setAttr ".ics" -type "componentList" 8 "e[123]" "e[126]" "e[129]" "e[132]" "e[135]" "e[138]" "e[141]" "e[143]";
createNode groupParts -n "groupParts62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:82]";
	setAttr ".gi" 168;
createNode groupParts -n "groupParts63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:79]" "f[83:162]";
	setAttr ".gi" 169;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	setAttr ".tp" 0.8793;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 0;
createNode groupParts -n "groupParts64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:82]";
	setAttr ".gi" 170;
createNode groupParts -n "groupParts65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:79]" "f[83:162]";
	setAttr ".gi" 171;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	setAttr ".tp" 0.8793;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 0;
createNode groupParts -n "groupParts66";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:82]";
	setAttr ".gi" 172;
createNode groupParts -n "groupParts67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:79]" "f[83:162]";
	setAttr ".gi" 173;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	setAttr ".tp" 0.8793;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 0;
createNode groupParts -n "groupParts68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:82]";
	setAttr ".gi" 174;
createNode groupParts -n "groupParts69";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:79]" "f[83:162]";
	setAttr ".gi" 175;
createNode polyBridgeEdge -n "polyBridgeEdge7";
	setAttr ".tp" 0.8793;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 0;
createNode groupParts -n "groupParts70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:82]";
	setAttr ".gi" 176;
createNode groupParts -n "groupParts71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:79]" "f[83:162]";
	setAttr ".gi" 177;
createNode polyBridgeEdge -n "polyBridgeEdge8";
	setAttr ".tp" 0.8793;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 0;
createNode groupParts -n "groupParts72";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[80:82]";
	setAttr ".gi" 178;
createNode groupParts -n "groupParts73";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:79]" "f[83:162]";
	setAttr ".gi" 179;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[135]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.770049941350855 0 0 0 132.59055495509728 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 94.106537 70.441338 -156.48151 ;
	setAttr ".rs" 60330;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 94.106536865234375 54.131889343261719 -156.48150934750612 ;
	setAttr ".cbx" -type "double3" 94.106536865234375 86.75079345703125 -156.48150934750612 ;
createNode groupParts -n "groupParts74";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[80:82]" "f[163]";
	setAttr ".gi" 180;
createNode groupParts -n "groupParts75";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:79]" "f[83:162]";
	setAttr ".gi" 181;
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[132]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.770049941350855 0 0 0 132.59055495509728 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 93.154076 89.152275 -156.48148 ;
	setAttr ".rs" 63206;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 92.201614379882813 86.75079345703125 -156.48148233868744 ;
	setAttr ".cbx" -type "double3" 94.106536865234375 91.553756713867188 -156.48148233868744 ;
createNode polyTweak -n "polyTweak35";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[328]" -type "float3" -20.84457 0 0 ;
	setAttr ".tk[329]" -type "float3" -20.84457 0 0 ;
createNode groupParts -n "groupParts76";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[80:82]" "f[163:164]";
	setAttr ".gi" 182;
createNode groupParts -n "groupParts77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:79]" "f[83:162]";
	setAttr ".gi" 183;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.770049941350855 0 0 0 132.59055495509728 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 90.096931 92.988754 -156.48148 ;
	setAttr ".rs" 55144;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 87.99224853515625 91.553756713867188 -156.48148233868744 ;
	setAttr ".cbx" -type "double3" 92.201614379882813 94.423751831054688 -156.48148233868744 ;
createNode polyTweak -n "polyTweak36";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[330]" -type "float3" -20.644524 0 0 ;
	setAttr ".tk[331]" -type "float3" -20.644524 0 0 ;
createNode groupId -n "groupId125";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts78";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[80:82]" "f[163:165]";
createNode groupId -n "groupId126";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts79";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:79]" "f[83:162]";
createNode polyChipOff -n "polyChipOff5";
	setAttr ".ics" -type "componentList" 1 "f[163:165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1.770049941350855 0 0 0 132.59055495509728 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 132.59056 ;
	setAttr ".rs" 42745;
	setAttr ".lt" -type "double3" 0 1.4210854715202004e-014 -1.7706443796420501 ;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak37";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[331:333]" -type "float3"  3.61632371 0 0 -16.72013092
		 0 0 -8.95293331 0 0;
createNode polySeparate -n "polySeparate4";
	setAttr ".ic" 2;
createNode polyCube -n "polyCube9";
	setAttr ".w" 22.656607908197817;
	setAttr ".h" 36.087831278083087;
	setAttr ".d" 10.145354600856066;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace30";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1.1332575401865967 0 0 0 0 1 0 0 0 0 1 0 2.2209458996464821 -10.265624969668998 100.94132268519908 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.2209458 7.7782898 100.94132 ;
	setAttr ".rs" 58578;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.61694035539848 7.7782898252528767 95.868645549731554 ;
	setAttr ".cbx" -type "double3" 15.058832154691444 7.7782898252528767 106.01399982066661 ;
createNode polyExtrudeFace -n "polyExtrudeFace31";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1.1332575401865967 0 0 0 0 1 0 0 0 0 1 0 2.2209458996464821 -10.265624969668998 100.94132268519908 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.2209466 13.11908 100.94132 ;
	setAttr ".rs" 39602;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.8834975710382569 13.119079620174752 95.868645072894395 ;
	setAttr ".cbx" -type "double3" 13.325390451089831 13.119079620174752 106.01400029750377 ;
createNode polyTweak -n "polyTweak38";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[8]" -type "float3" 1.5296097 5.3407888 0 ;
	setAttr ".tk[9]" -type "float3" -1.5296097 5.3407888 0 ;
	setAttr ".tk[10]" -type "float3" -1.5296097 5.3407888 0 ;
	setAttr ".tk[11]" -type "float3" 1.5296097 5.3407888 0 ;
createNode polyBoolOp -n "polyBoolOp24";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId129";
	setAttr ".ihi" 0;
createNode groupId -n "groupId130";
	setAttr ".ihi" 0;
createNode groupId -n "groupId131";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts82";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId132";
	setAttr ".ihi" 0;
createNode groupId -n "groupId133";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts83";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode polyBoolOp -n "polyBoolOp25";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId134";
	setAttr ".ihi" 0;
createNode groupId -n "groupId135";
	setAttr ".ihi" 0;
createNode groupId -n "groupId136";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts84";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:27]";
createNode polyBoolOp -n "polyBoolOp26";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId137";
	setAttr ".ihi" 0;
createNode groupId -n "groupId138";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts85";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:38]";
	setAttr ".gi" 223;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[94]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 274.24920942207228 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 243.05008 -31.083796 -122.33337 ;
	setAttr ".rs" 2016568827;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 243.05008222480663 -31.083795547485352 -200.693115234375 ;
	setAttr ".cbx" -type "double3" 243.05008222480663 -31.083795547485352 -43.973640441894531 ;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:54]";
	setAttr ".gi" 75;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[85:86]" -type "float3"  -205.3306427 0 0 -205.3306427
		 0 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[103]" "e[135]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 274.24920942207228 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 175.00998 -31.083796 -43.97364 ;
	setAttr ".rs" 1423367746;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 37.719439524611346 -31.083795547485352 -43.973640441894531 ;
	setAttr ".cbx" -type "double3" 312.30050947090041 -31.083795547485352 -43.973640441894531 ;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:56]";
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[87]" -type "float3" 0 -80.489212 0 ;
	setAttr ".tk[88]" -type "float3" 0 -80.489006 0 ;
	setAttr ".tk[89]" -type "float3" 0 -80.489006 0 ;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 2 "f[54]" "f[56]";
	setAttr ".unm" no;
createNode polyTweak -n "polyTweak39";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[61]" -type "float3" 0 60.11747 0 ;
	setAttr ".tk[62]" -type "float3" 0 60.11747 0 ;
	setAttr ".tk[65]" -type "float3" 0 60.11747 0 ;
	setAttr ".tk[66]" -type "float3" 0 60.11747 0 ;
	setAttr ".tk[90]" -type "float3" 0 3.8146973e-006 0 ;
	setAttr ".tk[91]" -type "float3" 0 3.8146973e-006 0 ;
	setAttr ".tk[92]" -type "float3" 0 3.8146973e-006 0 ;
	setAttr ".tk[93]" -type "float3" 0 3.8146973e-006 0 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[0:53]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode groupId -n "groupId140";
	setAttr ".ihi" 0;
createNode polyPlane -n "polyPlane1";
	setAttr ".w" 361.65855889695774;
	setAttr ".h" 606.29631468944035;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyNormal -n "polyNormal2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyCube -n "polyCube10";
	setAttr ".w" 3.0777451086732412;
	setAttr ".h" 3.0777451086732412;
	setAttr ".d" 3.0777451086732412;
	setAttr ".cuv" 4;
createNode polySubdFace -n "polySubdFace3";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace32";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.64165749593796773 0 0 0 0 0.64165749593796773 0 0
		 0 0 0.64165749593796773 0 88.101043714109267 7.3399213964896628 18.733711938114428 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 88.101044 18.522785 17.746283 ;
	setAttr ".rs" 60679;
	setAttr ".lt" -type "double3" 0 9.0079191387288958e-015 13.475084398387805 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 87.113614575281261 14.466021424498264 17.746282799286423 ;
	setAttr ".cbx" -type "double3" 89.088472852937272 22.579550055894131 17.746282799286423 ;
createNode polyChipOff -n "polyChipOff6";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[7:10]";
	setAttr ".ix" -type "matrix" 0.64165749593796773 0 0 0 0 0.64165749593796773 0 0
		 0 0 0.64165749593796773 0 88.101043714109267 7.3399213964896628 18.733711938114428 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 88.101044 7.3399215 18.733711 ;
	setAttr ".rs" 59111;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate5";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId141";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts86";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId142";
	setAttr ".ihi" 0;
createNode groupId -n "groupId143";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts87";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId144";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode polyExtrudeFace -n "polyExtrudeFace33";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 36.982013115083333 0.7592145190912456 10.91713566390934 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 102.37762 -2.4855971 10.917135 ;
	setAttr ".rs" 62420;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 102.37762773910677 -5.0043500675481587 2.199707456511879 ;
	setAttr ".cbx" -type "double3" 102.37762773910677 0.0331557975488872 19.634563871306803 ;
createNode polyTweak -n "polyTweak40";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  -27.74989319 0 1.811884e-013
		 27.74989319 0 1.811884e-013 -27.74989319 0 1.811884e-013 27.74989319 0 1.811884e-013
		 -27.74989319 0 1.811884e-013 27.74989319 0 1.811884e-013 -27.74989319 0 1.811884e-013
		 27.74989319 0 1.811884e-013 27.74989319 0 1.811884e-013 -27.74989319 0 1.811884e-013
		 -27.74989319 0 1.811884e-013 27.74989319 0 1.811884e-013;
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -35.334717 22.319328 -44.562328 ;
	setAttr ".rs" 35549;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -35.334716796875 -107.64372253417969 -44.562328338623047 ;
	setAttr ".cbx" -type "double3" -35.334716796875 152.28237915039062 -44.562328338623047 ;
createNode polyTweak -n "polyTweak41";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[12]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[25]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[26]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[33]" -type "float3" 0 -3.9250648 0.58836818 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[36]" -type "float3" 0 -3.9250648 0.58836818 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.58836818 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.58836818 ;
createNode groupId -n "groupId145";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts89";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
createNode polyTweak -n "polyTweak45";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[56]" -type "float3" 0 0 48.827267 ;
	setAttr ".tk[57]" -type "float3" 0 0 48.827267 ;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "f[39]";
createNode polyCut -n "polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[14]" "f[16]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pc" -type "double3" -213.36976623535065 31.170533975614351 11.556328996893241 ;
	setAttr ".ro" -type "double3" -1.2689042497582684e-014 0 -90 ;
	setAttr ".ps" -type "double2" 355.43283081054687 260.16629028320313 ;
createNode groupId -n "groupId146";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts90";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode polySplit -n "polySplit1";
	setAttr -s 2 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 12;
	setAttr ".sps[0].sp[0].t" 17;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 0 1 ;
	setAttr ".sps[0].sp[1].f" 19;
	setAttr ".sps[0].sp[1].bc" -type "double3" 1 0 0 ;
	setAttr ".c2v" yes;
select -ne :time1;
	setAttr ".o" 18;
	setAttr ".unw" 18;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr -s 97 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 69 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Foreground.di" "box.do";
connectAttr "polyExtrudeFace33.out" "boxShape.i";
connectAttr "Foreground.di" "pCube2.do";
connectAttr "groupParts15.og" "WallBoxLedgeShape.i";
connectAttr "groupId38.id" "WallBoxLedgeShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallBoxLedgeShape.iog.og[0].gco";
connectAttr "groupParts16.og" "MeshShape.i";
connectAttr "groupId39.id" "MeshShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "MeshShape.iog.og[0].gco";
connectAttr "polyChipOff3.out" "polySurfaceShape18.i";
connectAttr "groupId36.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupParts14.og" "polySurfaceShape19.i";
connectAttr "groupId37.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupParts12.og" "pCubeShape2.i";
connectAttr "groupId34.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId35.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "Foreground.di" "pCube4.do";
connectAttr "Foreground.di" "pCube5.do";
connectAttr "polyExtrudeFace12.out" "pCubeShape5.i";
connectAttr "groupId1.id" "pCubeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape6.i";
connectAttr "groupId2.id" "pCubeShape6.ciog.cog[0].cgid";
connectAttr "groupId5.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts2.og" "polySurfaceShape4.i";
connectAttr "groupId8.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupId7.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "Foreground.di" "polySurface6.do";
connectAttr "groupParts3.og" "polySurfaceShape7.i";
connectAttr "groupId9.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupId10.id" "pCubeShape7.iog.og[7].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[7].gco";
connectAttr "groupParts4.og" "pCubeShape7.i";
connectAttr "groupId11.id" "pCubeShape7.ciog.cog[7].cgid";
connectAttr "groupId12.id" "pCubeShape8.iog.og[7].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape8.iog.og[7].gco";
connectAttr "groupParts5.og" "pCubeShape8.i";
connectAttr "groupId13.id" "pCubeShape8.ciog.cog[7].cgid";
connectAttr "groupId18.id" "pCubeShape9.iog.og[7].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape9.iog.og[7].gco";
connectAttr "groupId19.id" "pCubeShape9.ciog.cog[7].cgid";
connectAttr "groupParts6.og" "polySurfaceShape8.i";
connectAttr "groupId14.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupId15.id" "pCubeShape10.iog.og[9].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape10.iog.og[9].gco";
connectAttr "groupId16.id" "pCubeShape10.ciog.cog[9].cgid";
connectAttr "groupParts7.og" "polySurfaceShape9.i";
connectAttr "groupId17.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupParts18.og" "polySurfaceShape21.i";
connectAttr "groupId42.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape22.i";
connectAttr "groupId43.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupParts17.og" "pCubeShape11.i";
connectAttr "groupId40.id" "pCubeShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape11.iog.og[0].gco";
connectAttr "groupId41.id" "pCubeShape11.ciog.cog[0].cgid";
connectAttr "groupId29.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupId30.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupId31.id" "|group2|polySurface11|polySurfaceShape13.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|polySurface11|polySurfaceShape13.iog.og[0].gco"
		;
connectAttr "groupId25.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupId26.id" "|group2|polySurface13|polySurfaceShape13.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|polySurface13|polySurfaceShape13.iog.og[0].gco"
		;
connectAttr "deleteComponent2.og" "polySurfaceShape16.i";
connectAttr "groupId32.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "polyCube7.out" "pCubeShape22.i";
connectAttr "BackStairs.di" "pCube23.do";
connectAttr "polyExtrudeFace27.out" "pCubeShape23.i";
connectAttr "polyCube3.out" "pCubeShape3.i";
connectAttr "BackStairs.di" "pCube28.do";
connectAttr "BackStairs.di" "pCube29.do";
connectAttr "groupId104.id" "pCubeShape30.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape30.iog.og[0].gco";
connectAttr "groupParts50.og" "pCubeShape30.i";
connectAttr "groupId105.id" "pCubeShape30.ciog.cog[0].cgid";
connectAttr "groupId76.id" "pCubeShape31.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape31.iog.og[0].gco";
connectAttr "groupId77.id" "pCubeShape31.ciog.cog[0].cgid";
connectAttr "groupId44.id" "pCubeShape32.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape32.iog.og[0].gco";
connectAttr "groupId45.id" "pCubeShape32.ciog.cog[0].cgid";
connectAttr "groupId108.id" "pCubeShape43.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape43.iog.og[0].gco";
connectAttr "groupId109.id" "pCubeShape43.ciog.cog[0].cgid";
connectAttr "groupId112.id" "pCubeShape44.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape44.iog.og[0].gco";
connectAttr "groupId113.id" "pCubeShape44.ciog.cog[0].cgid";
connectAttr "groupId116.id" "pCubeShape45.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape45.iog.og[0].gco";
connectAttr "groupId117.id" "pCubeShape45.ciog.cog[0].cgid";
connectAttr "groupId120.id" "pCubeShape46.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape46.iog.og[0].gco";
connectAttr "groupId121.id" "pCubeShape46.ciog.cog[0].cgid";
connectAttr "groupId80.id" "pCubeShape49.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape49.iog.og[0].gco";
connectAttr "groupId81.id" "pCubeShape49.ciog.cog[0].cgid";
connectAttr "groupId84.id" "pCubeShape50.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape50.iog.og[0].gco";
connectAttr "groupId85.id" "pCubeShape50.ciog.cog[0].cgid";
connectAttr "groupId88.id" "pCubeShape51.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape51.iog.og[0].gco";
connectAttr "groupId89.id" "pCubeShape51.ciog.cog[0].cgid";
connectAttr "groupId92.id" "pCubeShape52.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape52.iog.og[0].gco";
connectAttr "groupId93.id" "pCubeShape52.ciog.cog[0].cgid";
connectAttr "groupId96.id" "pCubeShape53.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape53.iog.og[0].gco";
connectAttr "groupId97.id" "pCubeShape53.ciog.cog[0].cgid";
connectAttr "groupId100.id" "pCubeShape54.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape54.iog.og[0].gco";
connectAttr "groupId101.id" "pCubeShape54.ciog.cog[0].cgid";
connectAttr "groupId48.id" "pCubeShape55.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape55.iog.og[0].gco";
connectAttr "groupId49.id" "pCubeShape55.ciog.cog[0].cgid";
connectAttr "groupId52.id" "pCubeShape56.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape56.iog.og[0].gco";
connectAttr "groupId53.id" "pCubeShape56.ciog.cog[0].cgid";
connectAttr "groupId56.id" "pCubeShape57.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape57.iog.og[0].gco";
connectAttr "groupId57.id" "pCubeShape57.ciog.cog[0].cgid";
connectAttr "groupId60.id" "pCubeShape58.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape58.iog.og[0].gco";
connectAttr "groupId61.id" "pCubeShape58.ciog.cog[0].cgid";
connectAttr "groupId64.id" "pCubeShape59.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape59.iog.og[0].gco";
connectAttr "groupId65.id" "pCubeShape59.ciog.cog[0].cgid";
connectAttr "groupId68.id" "pCubeShape60.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape60.iog.og[0].gco";
connectAttr "groupId69.id" "pCubeShape60.ciog.cog[0].cgid";
connectAttr "groupId72.id" "pCubeShape61.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape61.iog.og[0].gco";
connectAttr "groupId73.id" "pCubeShape61.ciog.cog[0].cgid";
connectAttr "groupParts21.og" "polySurfaceShape23.i";
connectAttr "groupId46.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "groupId47.id" "polySurfaceShape23.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape23.iog.og[1].gco";
connectAttr "groupParts23.og" "polySurfaceShape24.i";
connectAttr "groupId50.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupId51.id" "polySurfaceShape24.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape24.iog.og[1].gco";
connectAttr "groupParts25.og" "polySurfaceShape25.i";
connectAttr "groupId54.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "groupId55.id" "polySurfaceShape25.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape25.iog.og[1].gco";
connectAttr "groupParts27.og" "polySurfaceShape26.i";
connectAttr "groupId58.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupId59.id" "polySurfaceShape26.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape26.iog.og[1].gco";
connectAttr "groupParts29.og" "polySurfaceShape27.i";
connectAttr "groupId62.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupId63.id" "polySurfaceShape27.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape27.iog.og[1].gco";
connectAttr "groupParts31.og" "polySurfaceShape28.i";
connectAttr "groupId66.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupId67.id" "polySurfaceShape28.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape28.iog.og[1].gco";
connectAttr "groupParts33.og" "polySurfaceShape29.i";
connectAttr "groupId70.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupId71.id" "polySurfaceShape29.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape29.iog.og[1].gco";
connectAttr "groupParts35.og" "polySurfaceShape30.i";
connectAttr "groupId74.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupId75.id" "polySurfaceShape30.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape30.iog.og[1].gco";
connectAttr "groupParts37.og" "polySurfaceShape31.i";
connectAttr "groupId78.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupId79.id" "polySurfaceShape31.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape31.iog.og[1].gco";
connectAttr "groupParts39.og" "polySurfaceShape32.i";
connectAttr "groupId82.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape32.iog.og[0].gco";
connectAttr "groupId83.id" "polySurfaceShape32.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape32.iog.og[1].gco";
connectAttr "groupParts41.og" "polySurfaceShape33.i";
connectAttr "groupId86.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupId87.id" "polySurfaceShape33.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape33.iog.og[1].gco";
connectAttr "groupParts43.og" "polySurfaceShape34.i";
connectAttr "groupId90.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupId91.id" "polySurfaceShape34.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape34.iog.og[1].gco";
connectAttr "groupParts45.og" "polySurfaceShape35.i";
connectAttr "groupId94.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "groupId95.id" "polySurfaceShape35.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape35.iog.og[1].gco";
connectAttr "groupParts47.og" "polySurfaceShape36.i";
connectAttr "groupId98.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupId99.id" "polySurfaceShape36.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape36.iog.og[1].gco";
connectAttr "groupParts49.og" "polySurfaceShape37.i";
connectAttr "groupId102.id" "polySurfaceShape37.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape37.iog.og[0].gco";
connectAttr "groupId103.id" "polySurfaceShape37.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape37.iog.og[1].gco";
connectAttr "groupParts52.og" "polySurfaceShape38.i";
connectAttr "groupId106.id" "polySurfaceShape38.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape38.iog.og[0].gco";
connectAttr "groupId107.id" "polySurfaceShape38.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape38.iog.og[1].gco";
connectAttr "groupParts54.og" "polySurfaceShape39.i";
connectAttr "groupId110.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "groupId111.id" "polySurfaceShape39.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape39.iog.og[1].gco";
connectAttr "groupParts56.og" "polySurfaceShape40.i";
connectAttr "groupId114.id" "polySurfaceShape40.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape40.iog.og[0].gco";
connectAttr "groupId115.id" "polySurfaceShape40.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape40.iog.og[1].gco";
connectAttr "groupParts58.og" "polySurfaceShape41.i";
connectAttr "groupId118.id" "polySurfaceShape41.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape41.iog.og[0].gco";
connectAttr "groupId119.id" "polySurfaceShape41.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape41.iog.og[1].gco";
connectAttr "polySeparate4.out[0]" "polySurfaceShape43.i";
connectAttr "polyChipOff5.out" "polySurfaceShape42.i";
connectAttr "groupId125.id" "polySurfaceShape42.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape42.iog.og[0].gco";
connectAttr "groupId126.id" "polySurfaceShape42.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape42.iog.og[1].gco";
connectAttr "BackStairs.di" "pCube62.do";
connectAttr "groupId129.id" "pCubeShape63.iog.og[5].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape63.iog.og[5].gco";
connectAttr "groupId130.id" "pCubeShape63.ciog.cog[5].cgid";
connectAttr "groupId131.id" "pCubeShape64.iog.og[3].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape64.iog.og[3].gco";
connectAttr "groupParts82.og" "pCubeShape64.i";
connectAttr "groupId132.id" "pCubeShape64.ciog.cog[3].cgid";
connectAttr "groupId134.id" "pCubeShape65.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape65.iog.og[0].gco";
connectAttr "groupId135.id" "pCubeShape65.ciog.cog[0].cgid";
connectAttr "groupParts83.og" "polySurfaceShape44.i";
connectAttr "groupId133.id" "polySurfaceShape44.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape44.iog.og[0].gco";
connectAttr "groupId137.id" "pCubeShape66.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape66.iog.og[0].gco";
connectAttr "groupId138.id" "pCubeShape66.ciog.cog[0].cgid";
connectAttr "groupParts84.og" "|polySurface43|transform60|polySurfaceShape45.i";
connectAttr "groupId136.id" "|polySurface43|transform60|polySurfaceShape45.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface43|transform60|polySurfaceShape45.iog.og[0].gco"
		;
connectAttr "deleteComponent3.og" "polySurfaceShape46.i";
connectAttr "groupId145.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupId140.id" "|polySurface45|polySurfaceShape45.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|polySurface45|polySurfaceShape45.iog.og[0].gco"
		;
connectAttr "polyNormal2.out" "pPlaneShape1.i";
connectAttr "polyCube10.out" "pCubeShape67.i";
connectAttr "groupParts87.og" "polySurfaceShape48.i";
connectAttr "groupId143.id" "polySurfaceShape48.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape48.iog.og[0].gco";
connectAttr "groupParts88.og" "BoxWallShape.i";
connectAttr "groupId144.id" "BoxWallShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "BoxWallShape.iog.og[0].gco";
connectAttr "groupId141.id" "pCubeShape68.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape68.iog.og[0].gco";
connectAttr "groupParts86.og" "pCubeShape68.i";
connectAttr "groupId142.id" "pCubeShape68.ciog.cog[0].cgid";
connectAttr "polySplit1.out" "polySurfaceShape49.i";
connectAttr "groupId146.id" "polySurfaceShape49.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape49.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "boxShape.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polySoftEdge1.ip";
connectAttr "boxShape.wm" "polySoftEdge1.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "|pCube5|polySurfaceShape1.o" "polyBridgeEdge1.ip";
connectAttr "pCubeShape5.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape5.wm" "polyExtrudeFace11.mp";
connectAttr "polyTweak12.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape5.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak12.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak11.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak10.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak9.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak8.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak7.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak6.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak5.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak4.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak3.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube2.out" "polyTweak2.ip";
connectAttr "polySurfaceShape2.o" "polyChipOff1.ip";
connectAttr "pCubeShape6.wm" "polyChipOff1.mp";
connectAttr "polyChipOff1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySurfaceShape6.o" "polyBridgeEdge2.ip";
connectAttr "polySurfaceShape4.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "groupParts2.ig";
connectAttr "groupId8.id" "groupParts2.gi";
connectAttr "polySurfaceShape5.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape4.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape3.o" "polyUnite1.ip[2]";
connectAttr "polySurfaceShape5.wm" "polyUnite1.im[0]";
connectAttr "polySurfaceShape4.wm" "polyUnite1.im[1]";
connectAttr "polySurfaceShape3.wm" "polyUnite1.im[2]";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId9.id" "groupParts3.gi";
connectAttr "polyTweak13.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak14.ip";
connectAttr "polyCube5.out" "polySmoothFace1.ip";
connectAttr "pCubeShape7.o" "polyBoolOp1.ip[0]";
connectAttr "pCubeShape8.o" "polyBoolOp1.ip[1]";
connectAttr "pCubeShape7.wm" "polyBoolOp1.im[0]";
connectAttr "pCubeShape8.wm" "polyBoolOp1.im[1]";
connectAttr "polyCube4.out" "groupParts4.ig";
connectAttr "groupId10.id" "groupParts4.gi";
connectAttr "polySmoothFace1.out" "groupParts5.ig";
connectAttr "groupId12.id" "groupParts5.gi";
connectAttr "polyBoolOp1.out" "groupParts6.ig";
connectAttr "groupId14.id" "groupParts6.gi";
connectAttr "polySurfaceShape8.o" "polyBoolOp2.ip[0]";
connectAttr "pCubeShape10.o" "polyBoolOp2.ip[1]";
connectAttr "polySurfaceShape8.wm" "polyBoolOp2.im[0]";
connectAttr "pCubeShape10.wm" "polyBoolOp2.im[1]";
connectAttr "polyBoolOp2.out" "groupParts7.ig";
connectAttr "groupId17.id" "groupParts7.gi";
connectAttr "layerManager.dli[1]" "Foreground.id";
connectAttr "polyTweak17.out" "polyChipOff2.ip";
connectAttr "pCubeShape2.wm" "polyChipOff2.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak17.ip";
connectAttr "pCubeShape2.o" "polySeparate1.ip";
connectAttr "polyChipOff2.out" "groupParts12.ig";
connectAttr "groupId34.id" "groupParts12.gi";
connectAttr "polySeparate1.out[0]" "groupParts13.ig";
connectAttr "groupId36.id" "groupParts13.gi";
connectAttr "polySeparate1.out[1]" "groupParts14.ig";
connectAttr "groupId37.id" "groupParts14.gi";
connectAttr "groupParts13.og" "polyChipOff3.ip";
connectAttr "polySurfaceShape18.wm" "polyChipOff3.mp";
connectAttr "polySurfaceShape18.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts15.ig";
connectAttr "groupId38.id" "groupParts15.gi";
connectAttr "polySeparate2.out[1]" "groupParts16.ig";
connectAttr "groupId39.id" "groupParts16.gi";
connectAttr "|pCube23|polySurfaceShape20.o" "polySubdFace1.ip";
connectAttr "polySubdFace1.out" "polySubdFace2.ip";
connectAttr "polySubdFace2.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape23.wm" "polyExtrudeFace15.mp";
connectAttr "polyTweak18.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape23.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape23.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape23.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape23.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyExtrudeFace20.ip";
connectAttr "pCubeShape23.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace21.ip";
connectAttr "pCubeShape23.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace22.ip";
connectAttr "pCubeShape23.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace23.ip";
connectAttr "pCubeShape23.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyExtrudeFace24.ip";
connectAttr "pCubeShape23.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace25.ip";
connectAttr "pCubeShape23.wm" "polyExtrudeFace25.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyExtrudeFace26.ip";
connectAttr "pCubeShape23.wm" "polyExtrudeFace26.mp";
connectAttr "polyExtrudeFace25.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyExtrudeFace27.ip";
connectAttr "pCubeShape23.wm" "polyExtrudeFace27.mp";
connectAttr "polyExtrudeFace26.out" "polyTweak29.ip";
connectAttr "polyTweak31.out" "polyChipOff4.ip";
connectAttr "pCubeShape11.wm" "polyChipOff4.mp";
connectAttr "polyCube6.out" "polyTweak31.ip";
connectAttr "pCubeShape11.o" "polySeparate3.ip";
connectAttr "polyChipOff4.out" "groupParts17.ig";
connectAttr "groupId40.id" "groupParts17.gi";
connectAttr "polySeparate3.out[0]" "groupParts18.ig";
connectAttr "groupId42.id" "groupParts18.gi";
connectAttr "polySeparate3.out[1]" "groupParts19.ig";
connectAttr "groupId43.id" "groupParts19.gi";
connectAttr "polyTweak32.out" "polyExtrudeFace28.ip";
connectAttr "pCubeShape30.wm" "polyExtrudeFace28.mp";
connectAttr "polyCube8.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polyExtrudeFace29.ip";
connectAttr "pCubeShape30.wm" "polyExtrudeFace29.mp";
connectAttr "polyExtrudeFace28.out" "polyTweak33.ip";
connectAttr "SkyholdWhiteGlow.oc" "lambert2SG.ss";
connectAttr "pCubeShape32.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape32.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape55.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape55.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape56.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape56.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape57.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape57.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape58.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape58.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape59.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape59.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape60.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape60.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape61.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape61.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape31.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape31.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape49.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape49.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape32.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape50.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape50.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape51.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape51.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape52.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape52.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape53.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape53.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape54.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape54.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape37.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape30.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape30.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape38.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape43.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape43.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape44.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape44.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape40.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape45.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape45.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape41.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape46.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape46.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape42.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "pPlaneShape1.iog" "lambert2SG.dsm" -na;
connectAttr "groupId44.msg" "lambert2SG.gn" -na;
connectAttr "groupId45.msg" "lambert2SG.gn" -na;
connectAttr "groupId47.msg" "lambert2SG.gn" -na;
connectAttr "groupId48.msg" "lambert2SG.gn" -na;
connectAttr "groupId49.msg" "lambert2SG.gn" -na;
connectAttr "groupId51.msg" "lambert2SG.gn" -na;
connectAttr "groupId52.msg" "lambert2SG.gn" -na;
connectAttr "groupId53.msg" "lambert2SG.gn" -na;
connectAttr "groupId55.msg" "lambert2SG.gn" -na;
connectAttr "groupId56.msg" "lambert2SG.gn" -na;
connectAttr "groupId57.msg" "lambert2SG.gn" -na;
connectAttr "groupId59.msg" "lambert2SG.gn" -na;
connectAttr "groupId60.msg" "lambert2SG.gn" -na;
connectAttr "groupId61.msg" "lambert2SG.gn" -na;
connectAttr "groupId63.msg" "lambert2SG.gn" -na;
connectAttr "groupId64.msg" "lambert2SG.gn" -na;
connectAttr "groupId65.msg" "lambert2SG.gn" -na;
connectAttr "groupId67.msg" "lambert2SG.gn" -na;
connectAttr "groupId68.msg" "lambert2SG.gn" -na;
connectAttr "groupId69.msg" "lambert2SG.gn" -na;
connectAttr "groupId71.msg" "lambert2SG.gn" -na;
connectAttr "groupId72.msg" "lambert2SG.gn" -na;
connectAttr "groupId73.msg" "lambert2SG.gn" -na;
connectAttr "groupId75.msg" "lambert2SG.gn" -na;
connectAttr "groupId76.msg" "lambert2SG.gn" -na;
connectAttr "groupId77.msg" "lambert2SG.gn" -na;
connectAttr "groupId79.msg" "lambert2SG.gn" -na;
connectAttr "groupId80.msg" "lambert2SG.gn" -na;
connectAttr "groupId81.msg" "lambert2SG.gn" -na;
connectAttr "groupId83.msg" "lambert2SG.gn" -na;
connectAttr "groupId84.msg" "lambert2SG.gn" -na;
connectAttr "groupId85.msg" "lambert2SG.gn" -na;
connectAttr "groupId87.msg" "lambert2SG.gn" -na;
connectAttr "groupId88.msg" "lambert2SG.gn" -na;
connectAttr "groupId89.msg" "lambert2SG.gn" -na;
connectAttr "groupId91.msg" "lambert2SG.gn" -na;
connectAttr "groupId92.msg" "lambert2SG.gn" -na;
connectAttr "groupId93.msg" "lambert2SG.gn" -na;
connectAttr "groupId95.msg" "lambert2SG.gn" -na;
connectAttr "groupId96.msg" "lambert2SG.gn" -na;
connectAttr "groupId97.msg" "lambert2SG.gn" -na;
connectAttr "groupId99.msg" "lambert2SG.gn" -na;
connectAttr "groupId100.msg" "lambert2SG.gn" -na;
connectAttr "groupId101.msg" "lambert2SG.gn" -na;
connectAttr "groupId103.msg" "lambert2SG.gn" -na;
connectAttr "groupId104.msg" "lambert2SG.gn" -na;
connectAttr "groupId105.msg" "lambert2SG.gn" -na;
connectAttr "groupId107.msg" "lambert2SG.gn" -na;
connectAttr "groupId108.msg" "lambert2SG.gn" -na;
connectAttr "groupId109.msg" "lambert2SG.gn" -na;
connectAttr "groupId111.msg" "lambert2SG.gn" -na;
connectAttr "groupId112.msg" "lambert2SG.gn" -na;
connectAttr "groupId113.msg" "lambert2SG.gn" -na;
connectAttr "groupId115.msg" "lambert2SG.gn" -na;
connectAttr "groupId116.msg" "lambert2SG.gn" -na;
connectAttr "groupId117.msg" "lambert2SG.gn" -na;
connectAttr "groupId119.msg" "lambert2SG.gn" -na;
connectAttr "groupId120.msg" "lambert2SG.gn" -na;
connectAttr "groupId121.msg" "lambert2SG.gn" -na;
connectAttr "groupId126.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "SkyholdWhiteGlow.msg" "materialInfo1.m";
connectAttr "layerManager.dli[2]" "BackStairs.id";
connectAttr "polySurfaceShape21.o" "polyBoolOp4.ip[0]";
connectAttr "pCubeShape32.o" "polyBoolOp4.ip[1]";
connectAttr "polySurfaceShape21.wm" "polyBoolOp4.im[0]";
connectAttr "pCubeShape32.wm" "polyBoolOp4.im[1]";
connectAttr "polyBoolOp4.out" "groupParts20.ig";
connectAttr "groupId46.id" "groupParts20.gi";
connectAttr "groupParts20.og" "groupParts21.ig";
connectAttr "groupId47.id" "groupParts21.gi";
connectAttr "polySurfaceShape23.o" "polyBoolOp5.ip[0]";
connectAttr "pCubeShape55.o" "polyBoolOp5.ip[1]";
connectAttr "polySurfaceShape23.wm" "polyBoolOp5.im[0]";
connectAttr "pCubeShape55.wm" "polyBoolOp5.im[1]";
connectAttr "polyBoolOp5.out" "groupParts22.ig";
connectAttr "groupId50.id" "groupParts22.gi";
connectAttr "groupParts22.og" "groupParts23.ig";
connectAttr "groupId51.id" "groupParts23.gi";
connectAttr "polySurfaceShape24.o" "polyBoolOp6.ip[0]";
connectAttr "pCubeShape56.o" "polyBoolOp6.ip[1]";
connectAttr "polySurfaceShape24.wm" "polyBoolOp6.im[0]";
connectAttr "pCubeShape56.wm" "polyBoolOp6.im[1]";
connectAttr "polyBoolOp6.out" "groupParts24.ig";
connectAttr "groupId54.id" "groupParts24.gi";
connectAttr "groupParts24.og" "groupParts25.ig";
connectAttr "groupId55.id" "groupParts25.gi";
connectAttr "polySurfaceShape25.o" "polyBoolOp7.ip[0]";
connectAttr "pCubeShape57.o" "polyBoolOp7.ip[1]";
connectAttr "polySurfaceShape25.wm" "polyBoolOp7.im[0]";
connectAttr "pCubeShape57.wm" "polyBoolOp7.im[1]";
connectAttr "polyBoolOp7.out" "groupParts26.ig";
connectAttr "groupId58.id" "groupParts26.gi";
connectAttr "groupParts26.og" "groupParts27.ig";
connectAttr "groupId59.id" "groupParts27.gi";
connectAttr "polySurfaceShape26.o" "polyBoolOp8.ip[0]";
connectAttr "pCubeShape58.o" "polyBoolOp8.ip[1]";
connectAttr "polySurfaceShape26.wm" "polyBoolOp8.im[0]";
connectAttr "pCubeShape58.wm" "polyBoolOp8.im[1]";
connectAttr "polyBoolOp8.out" "groupParts28.ig";
connectAttr "groupId62.id" "groupParts28.gi";
connectAttr "groupParts28.og" "groupParts29.ig";
connectAttr "groupId63.id" "groupParts29.gi";
connectAttr "polySurfaceShape27.o" "polyBoolOp9.ip[0]";
connectAttr "pCubeShape59.o" "polyBoolOp9.ip[1]";
connectAttr "polySurfaceShape27.wm" "polyBoolOp9.im[0]";
connectAttr "pCubeShape59.wm" "polyBoolOp9.im[1]";
connectAttr "polyBoolOp9.out" "groupParts30.ig";
connectAttr "groupId66.id" "groupParts30.gi";
connectAttr "groupParts30.og" "groupParts31.ig";
connectAttr "groupId67.id" "groupParts31.gi";
connectAttr "polySurfaceShape28.o" "polyBoolOp10.ip[0]";
connectAttr "pCubeShape60.o" "polyBoolOp10.ip[1]";
connectAttr "polySurfaceShape28.wm" "polyBoolOp10.im[0]";
connectAttr "pCubeShape60.wm" "polyBoolOp10.im[1]";
connectAttr "polyBoolOp10.out" "groupParts32.ig";
connectAttr "groupId70.id" "groupParts32.gi";
connectAttr "groupParts32.og" "groupParts33.ig";
connectAttr "groupId71.id" "groupParts33.gi";
connectAttr "polySurfaceShape29.o" "polyBoolOp11.ip[0]";
connectAttr "pCubeShape61.o" "polyBoolOp11.ip[1]";
connectAttr "polySurfaceShape29.wm" "polyBoolOp11.im[0]";
connectAttr "pCubeShape61.wm" "polyBoolOp11.im[1]";
connectAttr "polyBoolOp11.out" "groupParts34.ig";
connectAttr "groupId74.id" "groupParts34.gi";
connectAttr "groupParts34.og" "groupParts35.ig";
connectAttr "groupId75.id" "groupParts35.gi";
connectAttr "polySurfaceShape30.o" "polyBoolOp12.ip[0]";
connectAttr "pCubeShape31.o" "polyBoolOp12.ip[1]";
connectAttr "polySurfaceShape30.wm" "polyBoolOp12.im[0]";
connectAttr "pCubeShape31.wm" "polyBoolOp12.im[1]";
connectAttr "polyBoolOp12.out" "groupParts36.ig";
connectAttr "groupId78.id" "groupParts36.gi";
connectAttr "groupParts36.og" "groupParts37.ig";
connectAttr "groupId79.id" "groupParts37.gi";
connectAttr "polySurfaceShape31.o" "polyBoolOp13.ip[0]";
connectAttr "pCubeShape49.o" "polyBoolOp13.ip[1]";
connectAttr "polySurfaceShape31.wm" "polyBoolOp13.im[0]";
connectAttr "pCubeShape49.wm" "polyBoolOp13.im[1]";
connectAttr "polyBoolOp13.out" "groupParts38.ig";
connectAttr "groupId82.id" "groupParts38.gi";
connectAttr "groupParts38.og" "groupParts39.ig";
connectAttr "groupId83.id" "groupParts39.gi";
connectAttr "polySurfaceShape32.o" "polyBoolOp14.ip[0]";
connectAttr "pCubeShape50.o" "polyBoolOp14.ip[1]";
connectAttr "polySurfaceShape32.wm" "polyBoolOp14.im[0]";
connectAttr "pCubeShape50.wm" "polyBoolOp14.im[1]";
connectAttr "polyBoolOp14.out" "groupParts40.ig";
connectAttr "groupId86.id" "groupParts40.gi";
connectAttr "groupParts40.og" "groupParts41.ig";
connectAttr "groupId87.id" "groupParts41.gi";
connectAttr "polySurfaceShape33.o" "polyBoolOp15.ip[0]";
connectAttr "pCubeShape51.o" "polyBoolOp15.ip[1]";
connectAttr "polySurfaceShape33.wm" "polyBoolOp15.im[0]";
connectAttr "pCubeShape51.wm" "polyBoolOp15.im[1]";
connectAttr "polyBoolOp15.out" "groupParts42.ig";
connectAttr "groupId90.id" "groupParts42.gi";
connectAttr "groupParts42.og" "groupParts43.ig";
connectAttr "groupId91.id" "groupParts43.gi";
connectAttr "polySurfaceShape34.o" "polyBoolOp16.ip[0]";
connectAttr "pCubeShape52.o" "polyBoolOp16.ip[1]";
connectAttr "polySurfaceShape34.wm" "polyBoolOp16.im[0]";
connectAttr "pCubeShape52.wm" "polyBoolOp16.im[1]";
connectAttr "polyBoolOp16.out" "groupParts44.ig";
connectAttr "groupId94.id" "groupParts44.gi";
connectAttr "groupParts44.og" "groupParts45.ig";
connectAttr "groupId95.id" "groupParts45.gi";
connectAttr "polySurfaceShape35.o" "polyBoolOp17.ip[0]";
connectAttr "pCubeShape53.o" "polyBoolOp17.ip[1]";
connectAttr "polySurfaceShape35.wm" "polyBoolOp17.im[0]";
connectAttr "pCubeShape53.wm" "polyBoolOp17.im[1]";
connectAttr "polyBoolOp17.out" "groupParts46.ig";
connectAttr "groupId98.id" "groupParts46.gi";
connectAttr "groupParts46.og" "groupParts47.ig";
connectAttr "groupId99.id" "groupParts47.gi";
connectAttr "polySurfaceShape36.o" "polyBoolOp18.ip[0]";
connectAttr "pCubeShape54.o" "polyBoolOp18.ip[1]";
connectAttr "polySurfaceShape36.wm" "polyBoolOp18.im[0]";
connectAttr "pCubeShape54.wm" "polyBoolOp18.im[1]";
connectAttr "polyBoolOp18.out" "groupParts48.ig";
connectAttr "groupId102.id" "groupParts48.gi";
connectAttr "groupParts48.og" "groupParts49.ig";
connectAttr "groupId103.id" "groupParts49.gi";
connectAttr "polySurfaceShape37.o" "polyBoolOp19.ip[0]";
connectAttr "pCubeShape30.o" "polyBoolOp19.ip[1]";
connectAttr "polySurfaceShape37.wm" "polyBoolOp19.im[0]";
connectAttr "pCubeShape30.wm" "polyBoolOp19.im[1]";
connectAttr "polyExtrudeFace29.out" "groupParts50.ig";
connectAttr "groupId104.id" "groupParts50.gi";
connectAttr "polyBoolOp19.out" "groupParts51.ig";
connectAttr "groupId106.id" "groupParts51.gi";
connectAttr "groupParts51.og" "groupParts52.ig";
connectAttr "groupId107.id" "groupParts52.gi";
connectAttr "polySurfaceShape38.o" "polyBoolOp20.ip[0]";
connectAttr "pCubeShape43.o" "polyBoolOp20.ip[1]";
connectAttr "polySurfaceShape38.wm" "polyBoolOp20.im[0]";
connectAttr "pCubeShape43.wm" "polyBoolOp20.im[1]";
connectAttr "polyBoolOp20.out" "groupParts53.ig";
connectAttr "groupId110.id" "groupParts53.gi";
connectAttr "groupParts53.og" "groupParts54.ig";
connectAttr "groupId111.id" "groupParts54.gi";
connectAttr "polySurfaceShape39.o" "polyBoolOp21.ip[0]";
connectAttr "pCubeShape44.o" "polyBoolOp21.ip[1]";
connectAttr "polySurfaceShape39.wm" "polyBoolOp21.im[0]";
connectAttr "pCubeShape44.wm" "polyBoolOp21.im[1]";
connectAttr "polyBoolOp21.out" "groupParts55.ig";
connectAttr "groupId114.id" "groupParts55.gi";
connectAttr "groupParts55.og" "groupParts56.ig";
connectAttr "groupId115.id" "groupParts56.gi";
connectAttr "polySurfaceShape40.o" "polyBoolOp22.ip[0]";
connectAttr "pCubeShape45.o" "polyBoolOp22.ip[1]";
connectAttr "polySurfaceShape40.wm" "polyBoolOp22.im[0]";
connectAttr "pCubeShape45.wm" "polyBoolOp22.im[1]";
connectAttr "polyBoolOp22.out" "groupParts57.ig";
connectAttr "groupId118.id" "groupParts57.gi";
connectAttr "groupParts57.og" "groupParts58.ig";
connectAttr "groupId119.id" "groupParts58.gi";
connectAttr "polySurfaceShape41.o" "polyBoolOp23.ip[0]";
connectAttr "pCubeShape46.o" "polyBoolOp23.ip[1]";
connectAttr "polySurfaceShape41.wm" "polyBoolOp23.im[0]";
connectAttr "pCubeShape46.wm" "polyBoolOp23.im[1]";
connectAttr "polyBoolOp23.out" "groupParts59.ig";
connectAttr "groupParts59.og" "groupParts60.ig";
connectAttr "groupParts60.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "groupParts62.ig";
connectAttr "groupParts62.og" "groupParts63.ig";
connectAttr "groupParts63.og" "groupParts64.ig";
connectAttr "groupParts64.og" "groupParts65.ig";
connectAttr "groupParts65.og" "groupParts66.ig";
connectAttr "groupParts66.og" "groupParts67.ig";
connectAttr "groupParts67.og" "groupParts68.ig";
connectAttr "groupParts68.og" "groupParts69.ig";
connectAttr "groupParts69.og" "groupParts70.ig";
connectAttr "groupParts70.og" "groupParts71.ig";
connectAttr "groupParts71.og" "groupParts72.ig";
connectAttr "groupParts72.og" "groupParts73.ig";
connectAttr "groupParts73.og" "polyExtrudeEdge4.ip";
connectAttr "polySurfaceShape42.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge4.out" "groupParts74.ig";
connectAttr "groupParts74.og" "groupParts75.ig";
connectAttr "polyTweak35.out" "polyExtrudeEdge5.ip";
connectAttr "polySurfaceShape42.wm" "polyExtrudeEdge5.mp";
connectAttr "groupParts75.og" "polyTweak35.ip";
connectAttr "polyExtrudeEdge5.out" "groupParts76.ig";
connectAttr "groupParts76.og" "groupParts77.ig";
connectAttr "polyTweak36.out" "polyExtrudeEdge6.ip";
connectAttr "polySurfaceShape42.wm" "polyExtrudeEdge6.mp";
connectAttr "groupParts77.og" "polyTweak36.ip";
connectAttr "polyExtrudeEdge6.out" "groupParts78.ig";
connectAttr "groupId125.id" "groupParts78.gi";
connectAttr "groupParts78.og" "groupParts79.ig";
connectAttr "groupId126.id" "groupParts79.gi";
connectAttr "polyTweak37.out" "polyChipOff5.ip";
connectAttr "polySurfaceShape42.wm" "polyChipOff5.mp";
connectAttr "groupParts79.og" "polyTweak37.ip";
connectAttr "polySurfaceShape42.o" "polySeparate4.ip";
connectAttr "polyCube9.out" "polyExtrudeFace30.ip";
connectAttr "pCubeShape64.wm" "polyExtrudeFace30.mp";
connectAttr "polyTweak38.out" "polyExtrudeFace31.ip";
connectAttr "pCubeShape64.wm" "polyExtrudeFace31.mp";
connectAttr "polyExtrudeFace30.out" "polyTweak38.ip";
connectAttr "pCubeShape63.o" "polyBoolOp24.ip[0]";
connectAttr "pCubeShape64.o" "polyBoolOp24.ip[1]";
connectAttr "pCubeShape63.wm" "polyBoolOp24.im[0]";
connectAttr "pCubeShape64.wm" "polyBoolOp24.im[1]";
connectAttr "polyExtrudeFace31.out" "groupParts82.ig";
connectAttr "groupId131.id" "groupParts82.gi";
connectAttr "polyBoolOp24.out" "groupParts83.ig";
connectAttr "groupId133.id" "groupParts83.gi";
connectAttr "polySurfaceShape44.o" "polyBoolOp25.ip[0]";
connectAttr "pCubeShape65.o" "polyBoolOp25.ip[1]";
connectAttr "polySurfaceShape44.wm" "polyBoolOp25.im[0]";
connectAttr "pCubeShape65.wm" "polyBoolOp25.im[1]";
connectAttr "polyBoolOp25.out" "groupParts84.ig";
connectAttr "groupId136.id" "groupParts84.gi";
connectAttr "|polySurface43|transform60|polySurfaceShape45.o" "polyBoolOp26.ip[0]"
		;
connectAttr "pCubeShape66.o" "polyBoolOp26.ip[1]";
connectAttr "|polySurface43|transform60|polySurfaceShape45.wm" "polyBoolOp26.im[0]"
		;
connectAttr "pCubeShape66.wm" "polyBoolOp26.im[1]";
connectAttr "polyBoolOp26.out" "groupParts85.ig";
connectAttr "polySurfaceShape17.o" "polyExtrudeEdge1.ip";
connectAttr "polySurfaceShape16.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "groupParts9.ig";
connectAttr "groupParts9.og" "polyTweak15.ip";
connectAttr "polyTweak15.out" "polyExtrudeEdge2.ip";
connectAttr "polySurfaceShape16.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "groupParts10.ig";
connectAttr "groupId32.id" "groupParts10.gi";
connectAttr "groupParts10.og" "polyTweak30.ip";
connectAttr "polyTweak30.out" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polyTweak39.ip";
connectAttr "polyTweak39.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polyPlane1.out" "polyNormal2.ip";
connectAttr "polySurfaceShape47.o" "polySubdFace3.ip";
connectAttr "polySubdFace3.out" "polyExtrudeFace32.ip";
connectAttr "pCubeShape68.wm" "polyExtrudeFace32.mp";
connectAttr "polyExtrudeFace32.out" "polyChipOff6.ip";
connectAttr "pCubeShape68.wm" "polyChipOff6.mp";
connectAttr "pCubeShape68.o" "polySeparate5.ip";
connectAttr "polyChipOff6.out" "groupParts86.ig";
connectAttr "groupId141.id" "groupParts86.gi";
connectAttr "polySeparate5.out[0]" "groupParts87.ig";
connectAttr "groupId143.id" "groupParts87.gi";
connectAttr "polySeparate5.out[1]" "groupParts88.ig";
connectAttr "groupId144.id" "groupParts88.gi";
connectAttr "polyTweak40.out" "polyExtrudeFace33.ip";
connectAttr "boxShape.wm" "polyExtrudeFace33.mp";
connectAttr "polySoftEdge1.out" "polyTweak40.ip";
connectAttr "polyTweak41.out" "polyExtrudeEdge7.ip";
connectAttr "polySurfaceShape46.wm" "polyExtrudeEdge7.mp";
connectAttr "groupParts85.og" "polyTweak41.ip";
connectAttr "polyExtrudeEdge7.out" "groupParts89.ig";
connectAttr "groupId145.id" "groupParts89.gi";
connectAttr "groupParts89.og" "polyTweak45.ip";
connectAttr "polyTweak45.out" "deleteComponent3.ig";
connectAttr "groupParts90.og" "polyCut1.ip";
connectAttr "polySurfaceShape49.wm" "polyCut1.mp";
connectAttr "polySurfaceShape50.o" "groupParts90.ig";
connectAttr "groupId146.id" "groupParts90.gi";
connectAttr "polyCut1.out" "polySplit1.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "boxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog.og[7]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.ciog.cog[7]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog.og[7]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.ciog.cog[7]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog.og[9]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.ciog.cog[9]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog.og[7]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.ciog.cog[7]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group2|polySurface13|polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group2|polySurface11|polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallBoxLedgeShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "MeshShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape32.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape37.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape38.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape40.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape41.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape62.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape42.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape63.iog.og[5]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape63.ciog.cog[5]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape64.iog.og[3]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape64.ciog.cog[3]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape44.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape65.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape65.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface43|transform60|polySurfaceShape45.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape66.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape66.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface45|polySurfaceShape45.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape43.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape67.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape68.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape68.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape48.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "BoxWallShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape71.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape49.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
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
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
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
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId74.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId78.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId82.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId86.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId90.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId94.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId98.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId102.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId106.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId110.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId114.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId118.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId125.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId129.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId130.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId131.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId132.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId133.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId134.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId135.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId136.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId137.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId138.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId140.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId141.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId142.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId143.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId144.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId145.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId146.msg" ":initialShadingGroup.gn" -na;
connectAttr "SkyholdWhiteGlow.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Skyhold.ma
