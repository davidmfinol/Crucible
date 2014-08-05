//Maya ASCII 2014 scene
//Name: Skyhold.ma
//Last modified: Mon, Aug 04, 2014 03:46:33 PM
//Codeset: UTF-8
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010035-864206";
fileInfo "osv" "Mac OS X 10.9.3";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 155.59414097912483 131.41678378586769 359.8153630435707 ;
	setAttr ".r" -type "double3" -11.738352729668263 0.59999999999118625 1.2424722979911164e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 463.81924173707989;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 150.83870149721025 37.056134071589454 -94.279057299150111 ;
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
	setAttr ".t" -type "double3" 63.763917626267251 15.306535172685138 208.24091192166856 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 113.433171623699;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
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
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 36.982013115083333 5.7635644692409551 10.91713566390934 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -27.749893 0 1.811884e-13 
		27.749893 0 1.811884e-13 -27.749893 0 1.811884e-13 27.749893 0 1.811884e-13 -27.749893 
		0 1.811884e-13 27.749893 0 1.811884e-13 -27.749893 0 1.811884e-13 27.749893 0 1.811884e-13 
		27.749893 0 1.811884e-13 -27.749893 0 1.811884e-13 -27.749893 0 1.811884e-13 27.749893 
		0 1.811884e-13;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 147.81335593584964 11.218742827264425 11.3048964848147 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[52:55]" -type "float3"  20.001564 9.264348 0 -20.001564 
		9.264348 0 -20.001564 9.264348 0 20.001564 9.264348 0;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 42.298739273122365 55.057312872566087 -151.6080298385281 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-15 0 6.1898303 
		-5.7731597e-15 0 6.1898303 5.7731597e-15 0 6.1898303 -5.7731597e-15 0 6.1898303 5.7731597e-15 
		0 -6.1898303 -5.7731597e-15 0 -6.1898303 5.7731597e-15 0 -6.1898303 -5.7731597e-15 
		0 -6.1898303;
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
		7.6293945e-06 0 1.1184242 7.6293945e-06 0 1.1184242 7.6293945e-06 0 -1.1184261 7.6293945e-06 
		0 -1.1184261 7.6293945e-06 0 1.1184242 7.6293945e-06 0 1.1184242 7.6293945e-06 0 
		-1.1184261 7.6293945e-06 0 -1.1184261 7.6293945e-06 0 1.1184242 7.6293945e-06 0 1.1184242 
		7.6293945e-06 0 -1.1184261 7.6293945e-06 0 -1.1184261 7.6293945e-06 0 1.1184242 7.6293945e-06 
		0 1.1184242 7.6293945e-06 0 -1.1184261 7.6293945e-06 0 -1.1184261 7.6293945e-06 0 
		1.1184242 7.6293945e-06 0 1.1184242 7.6293945e-06 0 -1.1184261 7.6293945e-06 0 -1.1184261 
		7.6293945e-06 0 1.1184242 7.6293945e-06 0 1.1184242 7.6293945e-06 0 -1.1184261 7.6293945e-06 
		0 -1.1184261 0.72734231 0 1.1184253 0.72734231 0 -1.1184253 -0.72734231 0 1.1184253 
		-0.72734231 0 -1.1184253 0.72734231 8.0902519 1.1184253 0.72734231 8.0902519 -1.1184253 
		-0.72734231 8.0902519 1.1184253 -0.72734231 8.0902519 -1.1184253;
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
	setAttr -s 7 ".pt[1:7]" -type "float3"  34.68961 0 0 3.5527137e-15 
		55.642719 0 34.68961 55.642719 0 3.5527137e-15 55.642719 -60.903622 34.68961 55.642719 
		-60.903622 0 0 -60.903622 34.68961 0 -60.903622;
createNode transform -n "pCube8";
	setAttr ".t" -type "double3" 1.7872302176109509 111.03670977070786 -47.340551923008285 ;
	setAttr ".s" -type "double3" 0.4214759862593313 0.4214759862593313 0.4214759862593313 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 -57.769815887362057 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 -57.769815887362057 0 ;
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
	setAttr ".pt[8]" -type "float3" 6.2228441 -47.961189 2.9032983e-12 ;
	setAttr ".pt[9]" -type "float3" -6.2228436 -47.961189 2.9032983e-12 ;
	setAttr ".pt[11]" -type "float3" -2.3841858e-07 -2.0194839e-27 0 ;
	setAttr ".pt[15]" -type "float3" -2.3841858e-07 2.0194839e-27 0 ;
	setAttr ".pt[16]" -type "float3" 0 -47.961189 -6.2228441 ;
	setAttr ".pt[19]" -type "float3" 0 -47.961189 6.2228441 ;
	setAttr ".pt[20]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[22]" -type "float3" 0 -41.247688 2.9032983e-12 ;
createNode transform -n "pCube9";
	setAttr ".t" -type "double3" -15.263419337520444 69.713392905285929 -43.958825668944058 ;
	setAttr ".s" -type "double3" 0.26626662712444493 0.26626662712444493 0.26626662712444493 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 -57.769815887362057 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 -57.769815887362057 0 ;
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
		8.472435 -57.056717 4.6414132 -2.9249353 28.931953 -6.625811e-13 2.9249353 28.931953 
		3.6592951e-13 -2.9249353 28.931953 -6.625811e-13 2.9249353 28.931953 3.6592951e-13 
		-8.472435 -57.056717 -4.6414132 8.472435 -57.056717 -4.6414132 11.359175 -52.049011 
		2.7255036e-12 -11.359175 -52.049011 9.2602466e-13 3.9215233 22.973619 3.6948222e-13 
		-3.9215233 22.973619 -9.9831254e-13 3.9215233 30.962086 5.9519268e-13 -3.9215233 
		30.962086 -7.7868614e-13 3.9215233 22.973619 3.6948222e-13 -3.9215233 22.973619 -9.9831254e-13 
		-2.9071651e-13 -52.049011 -6.2228441 3.2008758e-14 30.962086 -5.6843419e-14 1.2114212e-13 
		30.962086 -5.6843419e-14 -1.7397139e-13 -52.049011 6.2228441 -5.250164 22.973619 
		-1.2361031e-12 5.250164 22.973619 6.0325437e-13 -2.3266781e-13 -45.372253 1.8247335e-12 
		-5.3498628e-14 22.973619 -3.1619152e-13 1.0043012e-13 33.668625 -1.5624605e-14 6.5833616e-14 
		22.973619 -3.1619152e-13;
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
	setAttr ".pt[0]" -type "float3" -1.1943766e-07 0 0 ;
	setAttr ".pt[1]" -type "float3" -1.1943766e-07 0 0 ;
	setAttr ".pt[2]" -type "float3" -3.229466 0 0 ;
	setAttr ".pt[3]" -type "float3" 3.2294657 0 0 ;
	setAttr ".pt[4]" -type "float3" 4.3298159 0 0 ;
	setAttr ".pt[5]" -type "float3" -4.3298159 0 0 ;
	setAttr ".pt[6]" -type "float3" -1.1943766e-07 0 0 ;
	setAttr ".pt[7]" -type "float3" 5.7967834 0 0 ;
	setAttr ".pt[8]" -type "float3" -1.1943766e-07 0 0 ;
	setAttr ".pt[9]" -type "float3" 4.2298908 0 0 ;
	setAttr ".pt[10]" -type "float3" -4.2298908 0 0 ;
	setAttr ".pt[11]" -type "float3" -5.7967834 0 0 ;
	setAttr ".pt[12]" -type "float3" -4.3298159 0 0 ;
	setAttr ".pt[13]" -type "float3" 4.3298159 0 0 ;
	setAttr ".pt[14]" -type "float3" 5.6711078 0 0 ;
	setAttr ".pt[15]" -type "float3" -1.1943766e-07 0 0 ;
	setAttr ".pt[16]" -type "float3" -5.6711073 0 0 ;
	setAttr ".pt[17]" -type "float3" -5.2134123 0 0 ;
	setAttr ".pt[18]" -type "float3" -4.4279757 0 0 ;
	setAttr ".pt[19]" -type "float3" -3.7431457 0 0 ;
	setAttr ".pt[20]" -type "float3" -1.721843 0 0 ;
	setAttr ".pt[21]" -type "float3" -1.1943766e-07 0 0 ;
	setAttr ".pt[22]" -type "float3" 1.7218426 0 0 ;
	setAttr ".pt[23]" -type "float3" 3.7431457 0 0 ;
	setAttr ".pt[24]" -type "float3" 4.4279757 0 0 ;
	setAttr ".pt[25]" -type "float3" 5.2134123 0 0 ;
	setAttr ".pt[26]" -type "float3" 5.0844378 0 0 ;
	setAttr ".pt[27]" -type "float3" -1.1943766e-07 0 0 ;
	setAttr ".pt[28]" -type "float3" -5.0844369 0 0 ;
	setAttr ".pt[29]" -type "float3" 0 -31.083794 0 ;
	setAttr ".pt[30]" -type "float3" 0 -31.083794 0 ;
	setAttr ".pt[33]" -type "float3" 0 -31.083794 0 ;
	setAttr ".pt[34]" -type "float3" 0 -31.083794 0 ;
createNode transform -n "pCube10";
	setAttr ".t" -type "double3" 15.510228261391299 69.713392905285929 -43.958825668944058 ;
	setAttr ".s" -type "double3" 0.26626662712444493 0.26626662712444493 0.26626662712444493 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 -57.769815887362057 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 -57.769815887362057 0 ;
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
		8.472435 -57.056717 4.6414132 -2.9249353 28.931953 -6.625811e-13 2.9249353 28.931953 
		3.6592951e-13 -2.9249353 28.931953 -6.625811e-13 2.9249353 28.931953 3.6592951e-13 
		-8.472435 -57.056717 -4.6414132 8.472435 -57.056717 -4.6414132 11.359175 -52.049011 
		2.7255036e-12 -11.359175 -52.049011 9.2602466e-13 3.9215233 22.973619 3.6948222e-13 
		-3.9215233 22.973619 -9.9831254e-13 3.9215233 30.962086 5.9519268e-13 -3.9215233 
		30.962086 -7.7868614e-13 3.9215233 22.973619 3.6948222e-13 -3.9215233 22.973619 -9.9831254e-13 
		-2.9071651e-13 -52.049011 -6.2228441 3.2008758e-14 30.962086 -5.6843419e-14 1.2114212e-13 
		30.962086 -5.6843419e-14 -1.7397139e-13 -52.049011 6.2228441 -5.250164 22.973619 
		-1.2361031e-12 5.250164 22.973619 6.0325437e-13 -2.3266781e-13 -45.372253 1.8247335e-12 
		-5.3498628e-14 22.973619 -3.1619152e-13 1.0043012e-13 33.668625 -1.5624605e-14 6.5833616e-14 
		22.973619 -3.1619152e-13;
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
createNode transform -n "polySurface9";
createNode mesh -n "polySurfaceShape10" -p "polySurface9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[61]" -type "float3" 0 35.098209 0 ;
	setAttr ".pt[62]" -type "float3" 0 35.098209 0 ;
	setAttr ".pt[65]" -type "float3" 0 35.098209 0 ;
	setAttr ".pt[66]" -type "float3" 0 35.098209 0 ;
	setAttr ".pt[85]" -type "float3" 0 -80.489006 0 ;
	setAttr ".pt[86]" -type "float3" 0 -80.489006 0 ;
createNode transform -n "pCube11";
	setAttr ".t" -type "double3" 53.32478764504053 67.338144286959945 -179.32819731211131 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -6.2401834 -30.432283 -5.2580162e-13 
		181.04501 -30.432283 -5.2580162e-13 -6.2401834 -7.4762945 -4.9737992e-13 181.04501 
		-7.4762945 -4.9737992e-13 -6.2401834 -43.685356 -4.6746564 181.04501 -43.685356 -4.6746564 
		-6.2401834 -30.432283 -4.6746564 181.04501 -30.432283 -4.6746564;
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
	setAttr -s 26 ".pt[0:25]" -type "float3"  -2.8421709e-14 10.319048 
		0 -1.4210855e-14 10.319048 2.8421709e-14 0 10.319048 2.8421709e-14 1.4210855e-14 
		10.319048 2.8421709e-14 2.8421709e-14 10.319048 2.8421709e-14 2.8421709e-14 10.319048 
		2.191776e-14 2.8421709e-14 10.319048 0 1.4210855e-14 10.319048 -2.8421709e-14 0 10.319048 
		-2.8421709e-14 -1.4210855e-14 10.319048 -2.8421709e-14 -2.8421709e-14 10.319048 -2.8421709e-14 
		-2.8421709e-14 10.319048 -2.191776e-14 -2.8421709e-14 -7.6050005 0 -1.4210855e-14 
		-7.6050005 2.8421709e-14 0 -7.6050005 2.8421709e-14 1.4210855e-14 -7.6050005 2.8421709e-14 
		2.8421709e-14 -7.6050005 2.8421709e-14 2.8421709e-14 -7.6050005 2.191776e-14 2.8421709e-14 
		-7.6050005 0 1.4210855e-14 -7.6050005 -2.8421709e-14 0 -7.6050005 -2.8421709e-14 
		-1.4210855e-14 -7.6050005 -2.8421709e-14 -2.8421709e-14 -7.6050005 -2.8421709e-14 
		-2.8421709e-14 -7.6050005 -2.191776e-14 0 10.319048 0 0 -7.6050005 0;
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
	setAttr -s 26 ".pt[0:25]" -type "float3"  -2.8421709e-14 8.9598808 
		0 -1.4210855e-14 8.9598808 2.8421709e-14 0 8.9598808 2.8421709e-14 1.4210855e-14 
		8.9598808 2.8421709e-14 2.8421709e-14 8.9598808 2.8421709e-14 2.8421709e-14 8.9598808 
		2.191776e-14 2.8421709e-14 8.9598808 0 1.4210855e-14 8.9598808 -2.8421709e-14 0 8.9598808 
		-2.8421709e-14 -1.4210855e-14 8.9598808 -2.8421709e-14 -2.8421709e-14 8.9598808 -2.8421709e-14 
		-2.8421709e-14 8.9598808 -2.191776e-14 -2.8421709e-14 -8.9641685 0 -1.4210855e-14 
		-8.9641685 2.8421709e-14 0 -8.9641685 2.8421709e-14 1.4210855e-14 -8.9641685 2.8421709e-14 
		2.8421709e-14 -8.9641685 2.8421709e-14 2.8421709e-14 -8.9641685 2.191776e-14 2.8421709e-14 
		-8.9641685 0 1.4210855e-14 -8.9641685 -2.8421709e-14 0 -8.9641685 -2.8421709e-14 
		-1.4210855e-14 -8.9641685 -2.8421709e-14 -2.8421709e-14 -8.9641685 -2.8421709e-14 
		-2.8421709e-14 -8.9641685 -2.191776e-14 0 8.9598808 0 0 -8.9641685 0;
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
		 -57.04132843 -10.08706665 -6.1035156e-05 -49.39927673 -10.08706665 28.52058411 -28.52064514 -10.08706665 49.39917755
		 0 -10.08706665 57.041267395 28.52069092 -10.08706665 49.39917755 49.39929199 -10.08706665 28.52058411
		 57.041427612 -10.08706665 -6.1035156e-05 49.39929199 7.37302399 -28.52069092 28.52069092 7.37302399 -49.39930725
		 0 7.37302399 -57.041412354 -28.52064514 7.37302399 -49.39930725 -49.39927673 7.37302399 -28.52069092
		 -57.04132843 7.37302399 -6.1035156e-05 -49.39927673 7.37302399 28.52058411 -28.52064514 7.37302399 49.39917755
		 0 7.37302399 57.041267395 28.52069092 7.37302399 49.39917755 49.39929199 7.37302399 28.52058411
		 57.041427612 7.37302399 -6.1035156e-05 0 -10.08706665 -6.1035156e-05 49.39929199 6.63308716 -28.52069092
		 57.041427612 6.63308716 -6.1035156e-05 49.39929199 6.63308716 28.52058411 28.52069092 6.63308716 49.39917755
		 0 6.63308716 57.041267395 -28.52064514 6.63308716 49.39917755 -49.39927673 6.63308716 28.52058411
		 -57.04132843 6.63308716 -6.1035156e-05 -49.39927673 6.63308716 -28.52069092 -28.52064514 6.63308716 -49.39930725
		 0 6.63308716 -57.041412354 28.52069092 6.63308716 -49.39930725 27.31207275 9.71113586 -47.30589294
		 0 9.71113586 -54.62409973 -27.3119812 9.71113586 -47.30589294 -47.30580139 9.71113586 -27.31207275
		 -54.62397766 9.71113586 -6.1035156e-05 -47.30580139 9.71113586 27.3119278 -27.3119812 9.71113586 47.30570984
		 0 9.71113586 54.62393951 27.31207275 9.71113586 47.30570984 47.30583191 9.71113586 27.3119278
		 54.62411499 9.71113586 -6.1035156e-05 47.30583191 9.71113586 -27.31207275;
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
		 -54.62397766 14.43854523 -6.1035156e-05 -47.30580139 14.43854523 27.3119278 -27.3119812 14.43854523 47.30570984
		 0 14.43854523 54.62393951 27.31207275 14.43854523 47.30570984 47.30583191 14.43854523 27.3119278
		 54.62411499 14.43854523 -6.1035156e-05 43.90701294 18.27500153 -25.34976196 25.3497467 18.27500153 -43.90705872
		 0 18.27500153 -7.6293945e-05 0 18.27500153 -50.69949341 -25.34967041 18.27500153 -43.90705872
		 -43.90696716 18.27500153 -25.34976196 -50.69935608 18.27500153 -7.6293945e-05 -43.90696716 18.27500153 25.34960175
		 -25.34967041 18.27500153 43.90689087 0 18.27500153 50.6993103 25.3497467 18.27500153 43.90689087
		 43.90701294 18.27500153 25.34960175 50.69949341 18.27500153 -7.6293945e-05 47.30583191 9.71113586 -27.31207275
		 27.31207275 9.71113586 -47.30589294 0 9.71113586 -54.62409973 -27.3119812 9.71113586 -47.30589294
		 -47.30580139 9.71113586 -27.31207275 -54.62397766 9.71113586 -6.1035156e-05 -47.30580139 9.71113586 27.3119278
		 -27.3119812 9.71113586 47.30570984 0 9.71113586 54.62393951 27.31207275 9.71113586 47.30570984
		 47.30583191 9.71113586 27.3119278 54.62411499 9.71113586 -6.1035156e-05;
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
		0.90063405 0.011914931 -1.5599436 -7.5885612e-07 0.011914931 -1.8012681 -0.90063405 
		0.011914931 -1.5599436 -1.5599444 0.011914931 -0.90063357 -1.8012681 0.011914931 
		0 -1.5599444 0.011914931 0.90063393 -0.90063405 0.011914931 1.5599444 -7.5885612e-07 
		0.011914931 1.8012681 0.90063405 0.011914931 1.5599444 1.5599439 0.011914931 0.90063393 
		1.8012681 0.011914931 0 1.5599439 -0.011914931 -0.90063357 0.90063405 -0.011914931 
		-1.5599436 -7.5885612e-07 -0.011914931 -1.8012681 -0.90063405 -0.011914931 -1.5599436 
		-1.5599444 -0.011914931 -0.90063357 -1.8012681 -0.011914931 0 -1.5599444 -0.011914931 
		0.90063393 -0.90063405 -0.011914931 1.5599444 -7.5885612e-07 -0.011914931 1.8012681 
		0.90063405 -0.011914931 1.5599444 1.5599439 -0.011914931 0.90063393 1.8012681 -0.011914931 
		0;
	setAttr -s 48 ".vt[0:47]"  47.05015564 -10.83740234 -27.16444397 27.16442871 -10.83740234 -47.050170898
		 0 -10.83740234 -54.32887268 -27.16438293 -10.83740234 -47.050170898 -47.050125122 -10.83740234 -27.16444397
		 -54.32878113 -10.83740234 -6.1035156e-05 -47.050125122 -10.83740234 27.16433716 -27.16438293 -10.83740234 47.050086975
		 0 -10.83740234 54.32875061 27.16442871 -10.83740234 47.050086975 47.05015564 -10.83740234 27.16433716
		 54.3288269 -10.83740234 -6.1035156e-05 47.05015564 -11.55614471 -27.16444397 27.16442871 -11.55614471 -47.050170898
		 0 -11.55614471 -54.32887268 -27.16438293 -11.55614471 -47.050170898 -47.050125122 -11.55614471 -27.16444397
		 -54.32878113 -11.55614471 -6.1035156e-05 -47.050125122 -11.55614471 27.16433716 -27.16438293 -11.55614471 47.050086975
		 0 -11.55614471 54.32875061 27.16442871 -11.55614471 47.050086975 47.05015564 -11.55614471 27.16433716
		 54.3288269 -11.55614471 -6.1035156e-05 49.34677124 -12.044296265 -28.49040222 28.49038696 -12.044296265 -49.34680176
		 0 -12.044296265 -56.98078918 -28.49032593 -12.044296265 -49.34680176 -49.34674072 -12.044296265 -28.49040222
		 -56.98069763 -12.044296265 -6.1035156e-05 -49.34674072 -12.044296265 28.49029541
		 -28.49032593 -12.044296265 49.34671021 0 -12.044296265 56.98065186 28.49038696 -12.044296265 49.34671021
		 49.34677124 -12.044296265 28.49029541 56.98074341 -12.044296265 -6.1035156e-05 49.39929199 -10.08706665 -28.52069092
		 28.52069092 -10.08706665 -49.39930725 0 -10.08706665 -57.041412354 -28.52064514 -10.08706665 -49.39930725
		 -49.39927673 -10.08706665 -28.52069092 -57.04133606 -10.08706665 -6.1035156e-05 -49.39927673 -10.08706665 28.52062988
		 -28.52064514 -10.08706665 49.39923096 0 -10.08706665 57.041305542 28.52069092 -10.08706665 49.39923096
		 49.39929199 -10.08706665 28.52062988 57.041427612 -10.08706665 -6.1035156e-05;
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
		0.90063405 0.011914931 -1.5599436 -7.5885612e-07 0.011914931 -1.8012681 -0.90063405 
		0.011914931 -1.5599436 -1.5599444 0.011914931 -0.90063357 -1.8012681 0.011914931 
		0 -1.5599444 0.011914931 0.90063393 -0.90063405 0.011914931 1.5599444 -7.5885612e-07 
		0.011914931 1.8012681 0.90063405 0.011914931 1.5599444 1.5599439 0.011914931 0.90063393 
		1.8012681 0.011914931 0 1.5599439 -0.011914931 -0.90063357 0.90063405 -0.011914931 
		-1.5599436 -7.5885612e-07 -0.011914931 -1.8012681 -0.90063405 -0.011914931 -1.5599436 
		-1.5599444 -0.011914931 -0.90063357 -1.8012681 -0.011914931 0 -1.5599444 -0.011914931 
		0.90063393 -0.90063405 -0.011914931 1.5599444 -7.5885612e-07 -0.011914931 1.8012681 
		0.90063405 -0.011914931 1.5599444 1.5599439 -0.011914931 0.90063393 1.8012681 -0.011914931 
		0;
	setAttr -s 48 ".vt[0:47]"  47.05015564 -10.83740234 -27.16444397 27.16442871 -10.83740234 -47.050170898
		 0 -10.83740234 -54.32887268 -27.16438293 -10.83740234 -47.050170898 -47.050125122 -10.83740234 -27.16444397
		 -54.32878113 -10.83740234 -6.1035156e-05 -47.050125122 -10.83740234 27.16433716 -27.16438293 -10.83740234 47.050086975
		 0 -10.83740234 54.32875061 27.16442871 -10.83740234 47.050086975 47.05015564 -10.83740234 27.16433716
		 54.3288269 -10.83740234 -6.1035156e-05 47.05015564 -11.55614471 -27.16444397 27.16442871 -11.55614471 -47.050170898
		 0 -11.55614471 -54.32887268 -27.16438293 -11.55614471 -47.050170898 -47.050125122 -11.55614471 -27.16444397
		 -54.32878113 -11.55614471 -6.1035156e-05 -47.050125122 -11.55614471 27.16433716 -27.16438293 -11.55614471 47.050086975
		 0 -11.55614471 54.32875061 27.16442871 -11.55614471 47.050086975 47.05015564 -11.55614471 27.16433716
		 54.3288269 -11.55614471 -6.1035156e-05 49.34677124 -12.044296265 -28.49040222 28.49038696 -12.044296265 -49.34680176
		 0 -12.044296265 -56.98078918 -28.49032593 -12.044296265 -49.34680176 -49.34674072 -12.044296265 -28.49040222
		 -56.98069763 -12.044296265 -6.1035156e-05 -49.34674072 -12.044296265 28.49029541
		 -28.49032593 -12.044296265 49.34671021 0 -12.044296265 56.98065186 28.49038696 -12.044296265 49.34671021
		 49.34677124 -12.044296265 28.49029541 56.98074341 -12.044296265 -6.1035156e-05 49.39929199 -10.08706665 -28.52069092
		 28.52069092 -10.08706665 -49.39930725 0 -10.08706665 -57.041412354 -28.52064514 -10.08706665 -49.39930725
		 -49.39927673 -10.08706665 -28.52069092 -57.04133606 -10.08706665 -6.1035156e-05 -49.39927673 -10.08706665 28.52062988
		 -28.52064514 -10.08706665 49.39923096 0 -10.08706665 57.041305542 28.52069092 -10.08706665 49.39923096
		 49.39929199 -10.08706665 28.52062988 57.041427612 -10.08706665 -6.1035156e-05;
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
		1.2303824 0.011914931 -2.131084 -1.0366954e-06 0.011914931 -2.4607649 -1.2303824 
		0.011914931 -2.131084 -2.1310856 0.011914931 -1.2303817 -2.4607649 0.011914931 0 
		-2.1310856 0.011914931 1.2303823 -1.2303824 0.011914931 2.1310856 -1.0366954e-06 
		0.011914931 2.4607649 1.2303824 0.011914931 2.1310856 2.1310852 0.011914931 1.2303823 
		2.4607649 0.011914931 0 1.5599439 -0.011914931 -0.90063357 0.90063405 -0.011914931 
		-1.5599436 -7.5885612e-07 -0.011914931 -1.8012681 -0.90063405 -0.011914931 -1.5599436 
		-1.5599444 -0.011914931 -0.90063357 -1.8012681 -0.011914931 0 -1.5599444 -0.011914931 
		0.90063393 -0.90063405 -0.011914931 1.5599444 -7.5885612e-07 -0.011914931 1.8012681 
		0.90063405 -0.011914931 1.5599444 1.5599439 -0.011914931 0.90063393 1.8012681 -0.011914931 
		0 -48.829659 3.7303494e-14 28.19179 -28.19182 3.7303494e-14 48.829643 2.2648346e-05 
		3.7303494e-14 56.383633 28.191805 3.7303494e-14 48.829643 48.829674 3.7303494e-14 
		28.19179 56.383633 3.7303494e-14 -7.5494481e-06 48.829674 3.7303494e-14 -28.19182 
		28.191805 3.7303494e-14 -48.829689 2.2648346e-05 3.7303494e-14 -56.383633 -28.19182 
		3.7303494e-14 -48.829689 -48.829659 3.7303494e-14 -28.19182 -56.383633 3.7303494e-14 
		-7.5494481e-06;
	setAttr -s 48 ".vt[0:47]"  47.05015564 -10.83740234 -27.16444397 27.16442871 -10.83740234 -47.050170898
		 0 -10.83740234 -54.32887268 -27.16438293 -10.83740234 -47.050170898 -47.050125122 -10.83740234 -27.16444397
		 -54.32878113 -10.83740234 -6.1035156e-05 -47.050125122 -10.83740234 27.16433716 -27.16438293 -10.83740234 47.050086975
		 0 -10.83740234 54.32875061 27.16442871 -10.83740234 47.050086975 47.05015564 -10.83740234 27.16433716
		 54.3288269 -10.83740234 -6.1035156e-05 47.05015564 -11.55614471 -27.16444397 27.16442871 -11.55614471 -47.050170898
		 0 -11.55614471 -54.32887268 -27.16438293 -11.55614471 -47.050170898 -47.050125122 -11.55614471 -27.16444397
		 -54.32878113 -11.55614471 -6.1035156e-05 -47.050125122 -11.55614471 27.16433716 -27.16438293 -11.55614471 47.050086975
		 0 -11.55614471 54.32875061 27.16442871 -11.55614471 47.050086975 47.05015564 -11.55614471 27.16433716
		 54.3288269 -11.55614471 -6.1035156e-05 49.34677124 -12.044296265 -28.49040222 28.49038696 -12.044296265 -49.34680176
		 0 -12.044296265 -56.98078918 -28.49032593 -12.044296265 -49.34680176 -49.34674072 -12.044296265 -28.49040222
		 -56.98069763 -12.044296265 -6.1035156e-05 -49.34674072 -12.044296265 28.49029541
		 -28.49032593 -12.044296265 49.34671021 0 -12.044296265 56.98065186 28.49038696 -12.044296265 49.34671021
		 49.34677124 -12.044296265 28.49029541 56.98074341 -12.044296265 -6.1035156e-05 49.39929199 -10.08706665 -28.52069092
		 28.52069092 -10.08706665 -49.39930725 0 -10.08706665 -57.041412354 -28.52064514 -10.08706665 -49.39930725
		 -49.39927673 -10.08706665 -28.52069092 -57.04133606 -10.08706665 -6.1035156e-05 -49.39927673 -10.08706665 28.52062988
		 -28.52064514 -10.08706665 49.39923096 0 -10.08706665 57.041305542 28.52069092 -10.08706665 49.39923096
		 49.39929199 -10.08706665 28.52062988 57.041427612 -10.08706665 -6.1035156e-05;
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
	setAttr -s 9 ".pt";
	setAttr ".pt[87]" -type "float3" 0 -80.489212 0 ;
	setAttr ".pt[88]" -type "float3" 0 -80.489006 0 ;
	setAttr ".pt[89]" -type "float3" 0 -80.489006 0 ;
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
		 0.19164585 0.69911683 -2.4733067e-09 0.7002911 0.125 0.5 0.91295207 0.65025324 0.95113647
		 0.375 0.92588317 0.5 0.91295207 0.2997089 0.125 0.30259547 -7.5913966e-05 0.53088605
		 0.21343449 0.52534157 0.22269315 0.52050722 0.23356207 0.5062384 0.2372445 0.49408355
		 0.24146795 0.48192871 0.23724452 0.46765995 0.23356205 0.46282557 0.22269315 0.45728102
		 0.2134345 0.45819145 0.13459741 0.49408355 0.13448997 0.52997565 0.13459739 0.375
		 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.625 0.625
		 0.875 0.125 0.125 0.125 0.375 0.625 0.5 0.75 0.5 0.5 0.5 0.625 0.24953575 0.12546426
		 0.24965374 0.125 0.24953575 0.24999997 0.49953577 0.37546423 0.37499997 0.37546423
		 0.5 0.37534624 0.50046426 0.37546426 0.5 0.37534624 0.62500006 0.37546423 0.75046426
		 0.12546426 0.7504642 0.24999997 0.75034618 0.125 0.75035447 4.5446704e-09 0.7503463
		 0.125 0.50035441 0.87464553 0.62500006 0.87464553 0.5 0.87473565 0.49964556 0.87464547
		 0.5 0.87473565 0.375 0.87464553 0.24964559 0.12464557 0.24964558 4.5464841e-09 0.24965374
		 0.125 0.54947585 0.06586621 0.54951811 0.065866329 0.56944096 0.065920711 0.56241155
		 0.11286372 0.56237537 0.11289497 0.55272007 0.12517013 0.5299508 0.12532064 0.52990323
		 0.12533648 0.5298661 0.12532055 0.51603961 0.12105703 0.51500702 0.10852932 0.51499927
		 0.10849454 0.5150404 0.10837403 0.52240926 0.065931171 0.54943359 0.065866426 0.375
		 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.625 0.625
		 0.875 0.125 0.125 0.125 0.375 0.625 0.5 0.75 0.5 0.5 0.5 0.625 0.24953575 0.12546426
		 0.24965374 0.125 0.24953575 0.24999997 0.49953577 0.37546423 0.37499997 0.37546423
		 0.5 0.37534624 0.50046426 0.37546426 0.5 0.37534624 0.62500006 0.37546423 0.75046426
		 0.12546426 0.7504642 0.24999997 0.75034618 0.125 0.75035447 4.5446704e-09 0.7503463
		 0.125 0.50035441 0.87464553 0.625 0.87464553 0.5 0.87473565 0.49964556 0.87464547
		 0.5 0.87473565 0.375 0.87464553 0.24964559 0.12464557 0.24964558 4.5464841e-09 0.24965374
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
createNode transform -n "pCube12";
	setAttr ".t" -type "double3" 50.499284814747419 46.85676733094104 -151.6080298385281 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-15 0 6.1898303 
		-5.7731597e-15 0 6.1898303 5.7731597e-15 0 6.1898303 -5.7731597e-15 0 6.1898303 5.7731597e-15 
		0 -6.1898303 -5.7731597e-15 0 -6.1898303 5.7731597e-15 0 -6.1898303 -5.7731597e-15 
		0 -6.1898303;
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
createNode transform -n "pCube13";
	setAttr ".t" -type "double3" 58.699284814747422 38.656767330941037 -151.6080298385281 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-15 0 6.1898303 
		-5.7731597e-15 0 6.1898303 5.7731597e-15 0 6.1898303 -5.7731597e-15 0 6.1898303 5.7731597e-15 
		0 -6.1898303 -5.7731597e-15 0 -6.1898303 5.7731597e-15 0 -6.1898303 -5.7731597e-15 
		0 -6.1898303;
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
createNode transform -n "pCube14";
	setAttr ".t" -type "double3" 66.899284814747432 30.456767330941041 -151.60802983852807 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-15 0 6.1898303 
		-5.7731597e-15 0 6.1898303 5.7731597e-15 0 6.1898303 -5.7731597e-15 0 6.1898303 5.7731597e-15 
		0 -6.1898303 -5.7731597e-15 0 -6.1898303 5.7731597e-15 0 -6.1898303 -5.7731597e-15 
		0 -6.1898303;
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
createNode transform -n "pCube15";
	setAttr ".t" -type "double3" 75.099284814747421 22.256767330941045 -151.60802983852804 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-15 0 6.1898303 
		-5.7731597e-15 0 6.1898303 5.7731597e-15 0 6.1898303 -5.7731597e-15 0 6.1898303 5.7731597e-15 
		0 -6.1898303 -5.7731597e-15 0 -6.1898303 5.7731597e-15 0 -6.1898303 -5.7731597e-15 
		0 -6.1898303;
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
createNode transform -n "pCube16";
	setAttr ".t" -type "double3" 83.299284814747409 14.056767330941042 -151.60802983852801 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-15 0 6.1898303 
		-5.7731597e-15 0 6.1898303 5.7731597e-15 0 6.1898303 -5.7731597e-15 0 6.1898303 5.7731597e-15 
		0 -6.1898303 -5.7731597e-15 0 -6.1898303 5.7731597e-15 0 -6.1898303 -5.7731597e-15 
		0 -6.1898303;
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
createNode transform -n "pCube17";
	setAttr ".t" -type "double3" 91.499284814747398 5.8567673309410466 -151.60802983852798 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-15 0 6.1898303 
		-5.7731597e-15 0 6.1898303 5.7731597e-15 0 6.1898303 -5.7731597e-15 0 6.1898303 5.7731597e-15 
		0 -6.1898303 -5.7731597e-15 0 -6.1898303 5.7731597e-15 0 -6.1898303 -5.7731597e-15 
		0 -6.1898303;
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
createNode transform -n "pCube18";
	setAttr ".t" -type "double3" 99.699284814747386 -2.3432326690589491 -151.60802983852795 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-15 0 6.1898303 
		-5.7731597e-15 0 6.1898303 5.7731597e-15 0 6.1898303 -5.7731597e-15 0 6.1898303 5.7731597e-15 
		0 -6.1898303 -5.7731597e-15 0 -6.1898303 5.7731597e-15 0 -6.1898303 -5.7731597e-15 
		0 -6.1898303;
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
createNode transform -n "pCube19";
	setAttr ".t" -type "double3" 107.89928481474738 -10.543232669058952 -151.60802983852793 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-15 0 6.1898303 
		-5.7731597e-15 0 6.1898303 5.7731597e-15 0 6.1898303 -5.7731597e-15 0 6.1898303 5.7731597e-15 
		0 -6.1898303 -5.7731597e-15 0 -6.1898303 5.7731597e-15 0 -6.1898303 -5.7731597e-15 
		0 -6.1898303;
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
createNode transform -n "pCube20";
	setAttr ".t" -type "double3" 116.09928481474736 -18.743232669058955 -151.6080298385279 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-15 0 6.1898303 
		-5.7731597e-15 0 6.1898303 5.7731597e-15 0 6.1898303 -5.7731597e-15 0 6.1898303 5.7731597e-15 
		0 -6.1898303 -5.7731597e-15 0 -6.1898303 5.7731597e-15 0 -6.1898303 -5.7731597e-15 
		0 -6.1898303;
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
createNode transform -n "pCube21";
	setAttr ".t" -type "double3" 124.29928481474737 -26.943232669058965 -151.60802983852787 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.7731597e-15 0 6.1898303 
		-5.7731597e-15 0 6.1898303 5.7731597e-15 0 6.1898303 -5.7731597e-15 0 6.1898303 5.7731597e-15 
		0 -6.1898303 -5.7731597e-15 0 -6.1898303 5.7731597e-15 0 -6.1898303 -5.7731597e-15 
		0 -6.1898303;
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
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
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
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n"
		+ "            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
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
	setAttr -s 4 ".tk[24:27]" -type "float3"  6.29843712 -9.5367432e-07
		 0 -6.29843712 -9.5367432e-07 0 -6.29843712 -9.5367432e-07 0 6.29843712 -9.5367432e-07
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
	setAttr ".pvt" -type "float3" 151.02295 4.5665897e-07 11.304897 ;
	setAttr ".rs" 647143574;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 113.72953940752932 4.5665895420654579e-07 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 188.31636191729496 4.5665895420654579e-07 19.58798230787378 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  11.63717461 0 0 -11.63717461
		 0 0 -11.63717461 0 0 11.63717461 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.02295 4.5665897e-07 11.304896 ;
	setAttr ".rs" 490337392;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 102.09236289385746 4.5665895420654579e-07 3.0218116154299346 ;
	setAttr ".cbx" -type "double3" 199.9535422456641 4.5665895420654579e-07 19.587981354199464 ;
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
createNode polyBoolOp -n "polyBoolOp3";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:67]";
	setAttr ".gi" 61;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 2 "e[39]" "e[128]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 4 "e[13]" "e[17]" "e[21]" "e[25]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 4 "e[134]" "e[136]" "e[138]" "e[140]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 4 "e[27]" "e[31]" "e[126]" "e[129]";
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
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[85:86]" -type "float3"  -205.3306427 0 0 -205.3306427
		 0 0;
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:56]";
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.4260921 -31.083796 -43.97364 ;
	setAttr ".rs" 1149149328;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -31.199127197265625 -31.083795547485352 -43.973640441894531 ;
	setAttr ".cbx" -type "double3" 38.051311492919922 -31.083795547485352 -43.973640441894531 ;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 52 ".tk";
	setAttr ".tk[0]" -type "float3" 3.253607 -1.7850585 0 ;
	setAttr ".tk[1]" -type "float3" 2.4988501 -1.759027 0 ;
	setAttr ".tk[2]" -type "float3" 2.2416878 -1.7850585 0 ;
	setAttr ".tk[3]" -type "float3" 3.253607 -1.759027 0 ;
	setAttr ".tk[4]" -type "float3" 4.0083637 -1.759027 0 ;
	setAttr ".tk[5]" -type "float3" 4.2655272 -1.7850585 0 ;
	setAttr ".tk[6]" -type "float3" 3.253607 -1.759027 0 ;
	setAttr ".tk[7]" -type "float3" 4.2421732 -1.759027 0 ;
	setAttr ".tk[8]" -type "float3" 2.2650404 -1.759027 0 ;
	setAttr ".tk[9]" -type "float3" 2.0054162 -1.7850585 0 ;
	setAttr ".tk[10]" -type "float3" 1.9975036 -1.8057683 0 ;
	setAttr ".tk[11]" -type "float3" 2.2426429 -1.759027 0 ;
	setAttr ".tk[12]" -type "float3" 3.2508039 -1.759027 0 ;
	setAttr ".tk[13]" -type "float3" 3.253607 -1.759027 0 ;
	setAttr ".tk[14]" -type "float3" 3.2564096 -1.759027 0 ;
	setAttr ".tk[15]" -type "float3" 4.2645717 -1.759027 0 ;
	setAttr ".tk[16]" -type "float3" 4.501524 -1.8057683 0 ;
	setAttr ".tk[17]" -type "float3" 4.4928288 -1.7850585 0 ;
	setAttr ".tk[18]" -type "float3" 4.692637 -1.759027 0 ;
	setAttr ".tk[19]" -type "float3" 3.2564096 -1.759027 0 ;
	setAttr ".tk[20]" -type "float3" 3.253607 -1.759027 0 ;
	setAttr ".tk[21]" -type "float3" 3.2508042 -1.759027 0 ;
	setAttr ".tk[22]" -type "float3" 1.8235469 -1.759027 0 ;
	setAttr ".tk[23]" -type "float3" 2.0048671 -1.7122865 0 ;
	setAttr ".tk[43]" -type "float3" 1.0951828 -1.759027 0 ;
	setAttr ".tk[44]" -type "float3" 1.0951828 -1.7850585 0 ;
	setAttr ".tk[45]" -type "float3" 1.8499398 -1.759027 0 ;
	setAttr ".tk[46]" -type "float3" 2.1071022 -1.7850585 0 ;
	setAttr ".tk[47]" -type "float3" 0.34042579 -1.759027 0 ;
	setAttr ".tk[48]" -type "float3" 0.083263598 -1.7850585 0 ;
	setAttr ".tk[59]" -type "float3" 0 0 -56.202297 ;
	setAttr ".tk[62]" -type "float3" 0 0 -56.202297 ;
	setAttr ".tk[64]" -type "float3" 0 0 -56.202297 ;
	setAttr ".tk[65]" -type "float3" 0 0 -56.202297 ;
	setAttr ".tk[67]" -type "float3" 1.0923798 -1.759027 0 ;
	setAttr ".tk[68]" -type "float3" -0.35019371 -1.7590294 0 ;
	setAttr ".tk[69]" -type "float3" -0.13833122 -1.712286 0 ;
	setAttr ".tk[70]" -type "float3" -0.13768363 -1.785059 0 ;
	setAttr ".tk[71]" -type "float3" -0.14693652 -1.805769 0 ;
	setAttr ".tk[72]" -type "float3" 0.084218614 -1.759027 0 ;
	setAttr ".tk[73]" -type "float3" 1.0923798 -1.759027 0 ;
	setAttr ".tk[74]" -type "float3" 1.0951828 -1.759027 0 ;
	setAttr ".tk[75]" -type "float3" 1.097986 -1.759027 0 ;
	setAttr ".tk[76]" -type "float3" 2.1061475 -1.759027 0 ;
	setAttr ".tk[77]" -type "float3" 2.3464942 -1.8057683 0 ;
	setAttr ".tk[78]" -type "float3" 2.3381166 -1.7850585 0 ;
	setAttr ".tk[79]" -type "float3" 2.5305014 -1.759027 0 ;
	setAttr ".tk[80]" -type "float3" 1.097986 -1.759027 0 ;
	setAttr ".tk[81]" -type "float3" 1.0951828 -1.759027 0 ;
	setAttr ".tk[82]" -type "float3" 0.106617 -1.759027 0 ;
	setAttr ".tk[83]" -type "float3" 1.0951828 -1.759027 0 ;
	setAttr ".tk[84]" -type "float3" 2.0837486 -1.759027 0 ;
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:54]";
createNode displayLayer -n "Foreground";
	setAttr ".do" 1;
createNode polyCube -n "polyCube7";
	setAttr ".w" 1.6427635257195945;
	setAttr ".h" 4.399376157253446;
	setAttr ".d" 1.841866556965897;
	setAttr ".cuv" 4;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 42 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 23 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
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
connectAttr "Foreground.di" "pCube1.do";
connectAttr "polySoftEdge1.out" "pCubeShape1.i";
connectAttr "Foreground.di" "pCube2.do";
connectAttr "polyExtrudeFace14.out" "pCubeShape2.i";
connectAttr "polyCube3.out" "pCubeShape3.i";
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
connectAttr "groupParts11.og" "polySurfaceShape10.i";
connectAttr "groupId33.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "polyCube6.out" "pCubeShape11.i";
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
connectAttr "groupParts10.og" "polySurfaceShape16.i";
connectAttr "groupId32.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "polyCube7.out" "pCubeShape22.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polySoftEdge1.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge1.mp";
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
connectAttr "polySurfaceShape9.o" "polyBoolOp3.ip[0]";
connectAttr "pCubeShape9.o" "polyBoolOp3.ip[1]";
connectAttr "polySurfaceShape9.wm" "polyBoolOp3.im[0]";
connectAttr "pCubeShape9.wm" "polyBoolOp3.im[1]";
connectAttr "polyBoolOp3.out" "groupParts8.ig";
connectAttr "groupParts8.og" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "polySurfaceShape17.o" "polyExtrudeEdge1.ip";
connectAttr "polySurfaceShape16.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "groupParts9.ig";
connectAttr "polyTweak15.out" "polyExtrudeEdge2.ip";
connectAttr "polySurfaceShape16.wm" "polyExtrudeEdge2.mp";
connectAttr "groupParts9.og" "polyTweak15.ip";
connectAttr "polyExtrudeEdge2.out" "groupParts10.ig";
connectAttr "groupId32.id" "groupParts10.gi";
connectAttr "polyTweak16.out" "polyExtrudeEdge3.ip";
connectAttr "polySurfaceShape10.wm" "polyExtrudeEdge3.mp";
connectAttr "deleteComponent4.og" "polyTweak16.ip";
connectAttr "polyExtrudeEdge3.out" "groupParts11.ig";
connectAttr "groupId33.id" "groupParts11.gi";
connectAttr "layerManager.dli[1]" "Foreground.id";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
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
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group2|polySurface11|polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
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
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Skyhold.ma
