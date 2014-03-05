//Maya ASCII 2014 scene
//Name: CommercialZoneFrozenTransformations.ma
//Last modified: Wed, Mar 05, 2014 05:21:22 PM
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
	setAttr ".t" -type "double3" 67.395520735589244 42.392173829701541 15.306088788825722 ;
	setAttr ".r" -type "double3" -2.9999999999982867 94.399999999994463 0 ;
	setAttr ".rpt" -type "double3" 5.8541916972959969e-17 -1.1998575666381107e-16 -4.3892264882142993e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v";
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 67.687502549903428;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 38.849683658057671 20.491891485202792 ;
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
	setAttr ".t" -type "double3" 268.03416921322389 50.310451424089742 15.25776396368796 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 10.869360669497041;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Ledge1";
	setAttr ".t" -type "double3" 0 8.179591637882524 5.2000479194003839 ;
	setAttr ".s" -type "double3" 1 1 1.1338391007631563 ;
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
createNode transform -n "Wall6";
	setAttr ".rp" -type "double3" 0 12.107545345226502 15.285929735276024 ;
	setAttr ".sp" -type "double3" 0 12.107545345226502 15.285929735276024 ;
createNode mesh -n "Wall6Shape" -p "Wall6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Wall7";
	setAttr ".rp" -type "double3" 0 12.107545345226502 19.771790158261162 ;
	setAttr ".sp" -type "double3" 0 12.107545345226502 19.771790158261162 ;
createNode mesh -n "Wall7Shape" -p "Wall7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedge163";
	setAttr ".rp" -type "double3" 0 23.123253257543357 23.570721273526097 ;
	setAttr ".sp" -type "double3" 0 23.123253257543357 23.570721273526097 ;
createNode mesh -n "WallLedge163Shape" -p "WallLedge163";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	setAttr ".t" -type "double3" 0 0 11.333183200246568 ;
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
	setAttr ".t" -type "double3" 0 0 46.789657267259329 ;
	setAttr ".rp" -type "double3" 0 38.039157867431641 29.537490844726562 ;
	setAttr ".sp" -type "double3" 0 38.039157867431641 29.537490844726562 ;
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
	setAttr ".t" -type "double3" 0 0 46.789657267259329 ;
	setAttr ".rp" -type "double3" 0 38.146574020385742 21.827966690063477 ;
	setAttr ".sp" -type "double3" 0 38.146574020385742 21.827966690063477 ;
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
	setAttr ".t" -type "double3" 0 0 46.789657267259329 ;
	setAttr ".rp" -type "double3" 0 36.234340667724609 14.64315938949585 ;
	setAttr ".sp" -type "double3" 0 36.234340667724609 14.64315938949585 ;
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
	setAttr ".t" -type "double3" 0 0 5.5845069116649331 ;
	setAttr ".rp" -type "double3" 0 1.815948486328125 -0.095475494861602783 ;
	setAttr ".sp" -type "double3" 0 1.815948486328125 -0.095475494861602783 ;
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
	setAttr ".t" -type "double3" 0 0 11.92200119836698 ;
	setAttr ".rp" -type "double3" 0 10.660652160644531 0.202262282371521 ;
	setAttr ".sp" -type "double3" 0 10.660652160644531 0.202262282371521 ;
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
	setAttr ".t" -type "double3" 0 0 46.789657267259329 ;
	setAttr ".rp" -type "double3" 0 38.207096099853516 3.0856368541717529 ;
	setAttr ".sp" -type "double3" 0 38.207096099853516 3.0856368541717529 ;
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
	setAttr ".t" -type "double3" 0 0 46.789657267259329 ;
	setAttr ".rp" -type "double3" 0 40.298768997192383 14.659518241882324 ;
	setAttr ".sp" -type "double3" 0 40.298768997192383 14.659518241882324 ;
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
	setAttr ".t" -type "double3" 0 0 46.789657267259329 ;
	setAttr ".rp" -type "double3" 0 38.207096099853516 0.085193097591400146 ;
	setAttr ".sp" -type "double3" 0 38.207096099853516 0.085193097591400146 ;
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
createNode transform -n "Ledge30";
	setAttr ".t" -type "double3" 0 -4.7300451594548107 -1.6083846579172949 ;
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
createNode transform -n "Ledge33";
	setAttr ".t" -type "double3" 0 -0.70523581449931783 5.1826160366431893 ;
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
createNode transform -n "Ledge42";
	setAttr ".t" -type "double3" 0 -5.0384294802235416 1.4009898491391812 ;
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
createNode transform -n "Ledge45";
	setAttr ".t" -type "double3" 0 -0.81560264082704492 7.1082276022236677 ;
	setAttr ".s" -type "double3" 1 1 1.7285689276977914 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 5.7670364 -9.0667963 
		0.5 5.7670364 -9.0667963 -0.5 4.6931796 -9.0667963 0.5 4.6931796 -9.0667963 -0.5 
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
	setAttr ".t" -type "double3" 0 0 0.70425175164193377 ;
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
createNode transform -n "WallLedge148";
	setAttr ".t" -type "double3" 0 0 -0.87816579037725973 ;
	setAttr ".s" -type "double3" 1 5.2098528061431084 1 ;
	setAttr ".rp" -type "double3" 0 28.502822699556894 -25.018403328799295 ;
	setAttr ".sp" -type "double3" 0 28.502822699556894 -25.018403328799295 ;
createNode mesh -n "WallLedge148Shape" -p "WallLedge148";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge55";
	setAttr ".t" -type "double3" 0 -0.59589673921308872 1.5247399074851664 ;
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
createNode transform -n "Ledge64";
	setAttr ".t" -type "double3" 0 3.5614158582980835 3.8203416501977121 ;
	setAttr ".s" -type "double3" 1 1 2.0795968130370603 ;
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
	setAttr ".t" -type "double3" 0 1.0556537975027851 -8.8101463712601991 ;
	setAttr ".r" -type "double3" -90 0 0 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 58.817783 -17.643101 
		0.5 58.817783 -17.643101 -0.5 58.066105 -17.643101 0.5 58.066105 -17.643101 -0.5 
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
createNode transform -n "Ledge70";
	setAttr ".t" -type "double3" 0 -2.4342990996032512 1.2070569766197361 ;
	setAttr ".s" -type "double3" 1 1 1.2535573097247217 ;
	setAttr ".rp" -type "double3" 0 63.489107551363198 -29.817377742681717 ;
	setAttr ".sp" -type "double3" 0 63.489107551363198 -29.817377742681717 ;
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
	setAttr ".s" -type "double3" 1 1 3.8311006147262017 ;
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
createNode transform -n "WallLedge140";
	setAttr ".t" -type "double3" 0 1.1823443732206442 -4.0065742684538002 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 1 5.194444587072498 1.4143209400769592 ;
	setAttr ".rp" -type "double3" 0 76.503683085758041 -5.2929911224915216 ;
	setAttr ".sp" -type "double3" 0 76.503683085758041 -5.2929911224915207 ;
createNode mesh -n "WallLedge140Shape" -p "WallLedge140";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 77.076088 -3.5606899 
		0.5 77.076088 -3.5606899 -0.5 75.931282 -3.5606899 0.5 75.931282 -3.5606899 -0.5 
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
createNode transform -n "Ledge84";
	setAttr ".t" -type "double3" 0 -0.69419898494451004 0 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 5.7670364 -38.131268 
		0.5 5.7670364 -38.131268 -0.5 4.6931796 -38.131268 0.5 4.6931796 -38.131268 -0.5 
		4.6931796 -54.843681 0.5 4.6931796 -54.843681 -0.5 5.7670364 -54.843681 0.5 5.7670364 
		-54.843681;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 20.057682 -44.475117 
		0.5 20.057682 -44.475117 -0.5 19.86171 -46.276901 0.5 19.86171 -46.276901 -0.5 13.651532 
		-51.061665 0.5 13.651532 -51.061665 -0.5 13.847505 -49.25988 0.5 13.847505 -49.25988;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 13.786986 -41.756237 
		0.5 13.786986 -41.756237 -0.5 13.623291 -39.985039 0.5 13.623291 -39.985039 -0.5 
		19.72802 -44.873306 0.5 19.72802 -44.873306 -0.5 19.891716 -46.644489 0.5 19.891716 
		-46.644489;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 0 0 -1.1223995418841 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -9.2323513 51.858231 -44.989716 
		0.5 51.858231 -44.989716 -9.2323513 49.858238 -45.908737 0.5 49.858238 -45.908737 
		-9.2323513 31.084118 -45.152485 0.5 31.084118 -45.152485 -9.2323513 33.084114 -43.989716 
		0.5 33.084114 -43.989716;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 0 0 -1.2398498859502212 ;
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
	setAttr ".t" -type "double3" 0 0 -1.1223995418841 ;
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
	setAttr ".t" -type "double3" 0 0 -1.1223995418841 ;
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
	setAttr ".t" -type "double3" 0 0 -0.78849394712194965 ;
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
		47.127487 -37.508247 0.5 47.127487 -37.508247 -0.5 48.137325 -37.508247 0.5 48.137325 
		-37.508247;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 0 0.72992427303432805 0 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -8.5439348 41.711426 -59.19614 
		0.5 41.711426 -59.19614 -8.5439348 38.787132 -58.49065 0.5 38.787132 -58.49065 -8.5439348 
		49.11517 -44.540489 0.5 49.11517 -44.540489 -8.5439348 51.858238 -44.908737 0.5 51.858238 
		-44.908737;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".s" -type "double3" 1 1 2.8619312045462095 ;
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
createNode transform -n "WallLedge143";
	setAttr ".rp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
	setAttr ".sp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
createNode mesh -n "WallLedge143Shape" -p "WallLedge143";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -8.7271423 35.113277 -50.767445 
		0.5 35.113277 -50.767445 -8.7271423 36.829445 -50.767445 0.5 36.829445 -50.767445 
		-8.7271423 36.829445 -54.646046 0.5 36.829445 -54.646046 -8.7271423 35.113277 -54.646046 
		0.5 35.113277 -54.646046;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -3.6780126 45.00824 -64.563698 
		0.28883401 44.959858 -64.573044 -3.6725805 43.00811 -63.400936 0.29426625 42.959728 
		-63.410282 -3.2607996 59.999054 -62.400936 0.70604682 59.998882 -62.410282 -3.2662318 
		61.999054 -63.563694 0.70061463 61.998882 -63.57304;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 0.69869523246837928 0 0 ;
	setAttr ".s" -type "double3" 2.3099416725805093 1 1 ;
	setAttr ".rp" -type "double3" 1.4390037655921983 60.88845199203648 -66.451454385761451 ;
	setAttr ".sp" -type "double3" 1.4390037655921983 60.88845199203648 -66.451454385761451 ;
createNode mesh -n "Ledge105Shape" -p "Ledge105";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0 0.026558936 0 0 0.026558936 
		0 0 0.026558936 0 0 0.026558936 0;
createNode mesh -n "polySurfaceShape58" -p "Ledge105";
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
	setAttr ".t" -type "double3" 0.14432304051369815 -0.67887240798967241 -13.672435707202638 ;
	setAttr ".s" -type "double3" 5.9485955076822634 1 1 ;
	setAttr ".rp" -type "double3" 1.0863297493801714 69.048954796867662 -67.261351072631783 ;
	setAttr ".sp" -type "double3" 1.0863297493801714 69.048954796867662 -67.261351072631783 ;
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
		0.5 67.625877 -64.369049 -0.5 68.804733 -67.507698 0.5 68.804733 -67.507698 -0.5 
		67.833412 -67.404465 0.5 67.833412 -67.404465 -0.5 67.018707 -64.338272 0.5 67.018707 
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
	setAttr ".t" -type "double3" 0.14432304051369815 -0.67887240798967241 -13.672435707202638 ;
	setAttr ".s" -type "double3" 5.9485955076822634 1 1 ;
	setAttr ".rp" -type "double3" 1.0863297493801714 69.048954796867662 -66.758073012734769 ;
	setAttr ".sp" -type "double3" 1.0863297493801714 69.048954796867662 -66.758073012734769 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 66.974892 -69.724968 
		0.5 66.974892 -69.724968 -0.50000012 67.837479 -66.626663 0.49999985 67.837479 -66.626663 
		-0.50000012 68.804604 -66.50769 0.49999985 68.804604 -66.50769 -0.5 67.582062 -69.694191 
		0.5 67.582062 -69.694191;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 0 1.3047475624759317 -1.2485244115269865 ;
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
	setAttr ".t" -type "double3" 0 -0.38933447462221699 -0.21629693034567765 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -11.725458 42.467255 -45.338284 
		0.5 42.467255 -45.338284 -11.725458 41.037132 -45.338284 0.5 41.037132 -45.338284 
		-11.725458 41.037132 -49.694843 0.5 41.037132 -49.694843 -11.725458 42.467255 -49.694843 
		0.5 42.467255 -49.694843;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 0 -0.69419898494451004 0 ;
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
	setAttr ".t" -type "double3" 6.1915946675285509 0 0 ;
	setAttr ".s" -type "double3" 4.937828415963863 1 1 ;
	setAttr ".rp" -type "double3" 2.5839851661357889 12.902650356292725 -92.627120971679673 ;
	setAttr ".sp" -type "double3" 2.5839851661357889 12.902650356292725 -92.627120971679673 ;
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
	setAttr ".t" -type "double3" 6.1915946675285509 0 0 ;
	setAttr ".s" -type "double3" 4.937828415963863 1 1 ;
	setAttr ".rp" -type "double3" 2.5839851661357889 12.902650356292725 -87.612346649169922 ;
	setAttr ".sp" -type "double3" 2.5839851661357889 12.902650356292725 -87.612346649169922 ;
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
	setAttr ".t" -type "double3" 6.1915946675285509 0 0 ;
	setAttr ".s" -type "double3" 4.937828415963863 1 1 ;
	setAttr ".rp" -type "double3" 2.5839851661357889 20.890673637390137 -89.964145660400391 ;
	setAttr ".sp" -type "double3" 2.5839851661357889 20.890673637390137 -89.964145660400391 ;
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
	setAttr ".t" -type "double3" 6.1915946675285509 0 0 ;
	setAttr ".s" -type "double3" 4.937828415963863 1 1 ;
	setAttr ".rp" -type "double3" 2.5839851661357889 4.9265971183776855 -89.964145660400391 ;
	setAttr ".sp" -type "double3" 2.5839851661357889 4.9265971183776855 -89.964145660400391 ;
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
	setAttr ".t" -type "double3" 0 -0.69419898494451004 0 ;
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
	setAttr ".t" -type "double3" 0 -0.69419898494451004 0 ;
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
	setAttr ".t" -type "double3" 0 31.584331184924626 7.0461878926358281 ;
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
	setAttr ".s" -type "double3" 2.9169326854977062 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.97773608911478804 0 0 ;
	setAttr ".sp" -type "double3" 0.97773608911478804 0 0 ;
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
	setAttr ".s" -type "double3" 2.9169326854977062 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.97773608911478804 0 0 ;
	setAttr ".sp" -type "double3" 0.97773608911478804 0 0 ;
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
	setAttr ".s" -type "double3" 2.9169326854977062 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.97773608911478804 0 0 ;
	setAttr ".sp" -type "double3" 0.97773608911478804 0 0 ;
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
	setAttr ".s" -type "double3" 2.9169326854977062 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.97773608911478804 0 0 ;
	setAttr ".sp" -type "double3" 0.97773608911478804 0 0 ;
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
	setAttr ".s" -type "double3" 2.9169326854977062 1 1 ;
	setAttr ".rp" -type "double3" 0.97773608911478804 41.988863478697631 -47.51656426450252 ;
	setAttr ".sp" -type "double3" 0.97773608911478804 41.988863478697631 -47.51656426450252 ;
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
	setAttr ".s" -type "double3" 2.9169326854977062 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.97773608911478804 0 0 ;
	setAttr ".sp" -type "double3" 0.97773608911478804 0 0 ;
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
	setAttr ".s" -type "double3" 2.9169326854977062 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.97773608911478804 0 0 ;
	setAttr ".sp" -type "double3" 0.97773608911478804 0 0 ;
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
	setAttr ".s" -type "double3" 2.4853688650713659 1 1 ;
	setAttr ".rp" -type "double3" 1.2250228264801868 50.599288940429688 -73.836193084716797 ;
	setAttr ".sp" -type "double3" 1.2250228264801868 50.599288940429688 -73.836193084716797 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -3.7777095 51.104206 -66.513535 
		0.66027015 51.104206 -66.513535 -3.7777095 50.094372 -66.513535 0.66027015 50.094372 
		-66.513535 -3.7777095 50.094372 -80.738815 0.66027015 50.094372 -80.738815 -3.7777095 
		51.104206 -80.738815 0.66027015 51.104206 -80.738815;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -24.097147 0 0 ;
	setAttr ".pt[3]" -type "float3" -24.097147 0 0 ;
	setAttr ".pt[6]" -type "float3" -24.097147 0 0 ;
	setAttr ".pt[7]" -type "float3" -24.097147 0 0 ;
createNode transform -n "transform9";
	setAttr ".t" -type "double3" 0 -29.782339473899953 50.439387328082915 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "WallLedge128Shape" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 126 ".uvst[0].uvsp[0:125]" -type "float2" 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
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
		mu 0 4 0 1 2 3
		f 4 64 63 -3 -62
		mu 0 4 4 5 55 56
		f 4 40 39 -4 -38
		mu 0 4 6 7 57 58
		f 4 3 11 52 -11
		mu 0 4 59 60 8 9
		f 4 -12 -40 41 50
		mu 0 4 10 61 11 12
		f 4 10 54 53 37
		mu 0 4 62 13 14 15
		f 4 -15 12 -2 -14
		mu 0 4 63 64 65 66
		f 4 -60 62 61 8
		mu 0 4 16 17 18 67
		f 4 2 9 -19 -9
		mu 0 4 68 69 70 71
		f 4 65 -20 -10 -64
		mu 0 4 19 20 72 73
		f 4 -23 20 14 -22
		mu 0 4 21 74 75 76
		f 4 -58 60 59 15
		mu 0 4 22 23 24 16
		f 4 18 17 -25 -16
		mu 0 4 77 78 79 22
		f 4 -26 -18 19 44
		mu 0 4 25 80 81 26
		f 4 -69 26 69 -28
		mu 0 4 27 28 29 30
		f 4 -37 34 28 -36
		mu 0 4 31 32 82 83
		f 4 -54 56 55 29
		mu 0 4 33 34 35 84
		f 4 32 31 -41 -30
		mu 0 4 85 86 36 87
		f 4 -42 -32 33 48
		mu 0 4 37 88 89 38
		f 4 -44 -45 42 -21
		mu 0 4 90 39 91 92
		f 4 -71 -47 71 -27
		mu 0 4 40 41 42 43
		f 4 -48 -49 45 -35
		mu 0 4 32 93 94 95
		f 4 -50 -51 47 -6
		mu 0 4 1 96 97 32
		f 4 -53 49 -1 -52
		mu 0 4 44 98 99 100
		f 4 -55 51 4 38
		mu 0 4 45 44 0 101
		f 4 -57 -39 35 30
		mu 0 4 46 102 103 104
		f 4 -59 -73 27 73
		mu 0 4 47 48 49 50
		f 4 -61 -24 21 16
		mu 0 4 105 106 21 107
		f 4 -63 -17 13 6
		mu 0 4 108 109 110 111
		f 4 1 7 -65 -7
		mu 0 4 112 113 114 115
		f 4 -43 -66 -8 -13
		mu 0 4 116 117 118 119
		f 4 46 74 58 -76
		mu 0 4 51 52 53 54
		f 4 25 67 57 24
		mu 0 4 120 39 121 22
		f 4 -34 -33 -56 -67
		mu 0 4 122 123 124 125;
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
	setAttr -s 6 ".pt[21:26]" -type "float3"  0 -12.400217 0 0 -12.400217 
		0 0 -12.400217 0 0 -12.400217 0 0 -12.400217 0 0 -12.400217 0;
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
	setAttr -s 15 ".pt";
	setAttr ".pt[0]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[1]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[2]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[3]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[4]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[5]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[6]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[7]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[9]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[10]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[12]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".pt[14]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[15]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[16]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[17]" -type "float3" 9.5367432e-07 0 0 ;
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
createNode transform -n "Ledge148";
	setAttr ".t" -type "double3" 0 12.747513600853718 -64.99686564276837 ;
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
	setAttr ".spt" -type "double3" 0 28.91942476726873 -61.17754633476958 ;
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
	setAttr ".t" -type "double3" -0.028530798647636857 38.762245791245441 -2.1939789482319658 ;
	setAttr ".s" -type "double3" 1.1602785408107394 1 1 ;
	setAttr ".rp" -type "double3" 0.75230069805300348 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0.75230069805300348 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "Ledge151Shape" -p "Ledge151";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape57" -p "Ledge151";
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
	setAttr ".t" -type "double3" -9.4894969086914891 24.526366776838664 -15.958631091978084 ;
	setAttr ".r" -type "double3" 34.057260741030916 0 0 ;
	setAttr ".s" -type "double3" 0.53988932001208634 0.94219629331696098 1.2586186495605278 ;
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
createNode transform -n "Ledge178";
	setAttr ".t" -type "double3" 0 3.7603647129281792 80.835014203788006 ;
	setAttr ".s" -type "double3" 3.1843889069612485 1.7239242361205167 1.7239242361205167 ;
	setAttr ".rp" -type "double3" 1.0351582050972954 82.516188860379998 -145.68576319267976 ;
	setAttr ".sp" -type "double3" 1.0351582050972954 47.865322113037109 -84.508216857910156 ;
	setAttr ".spt" -type "double3" 0 34.650866747342953 -61.177546334769758 ;
createNode mesh -n "LedgeShape178" -p "Ledge178";
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
	setAttr ".t" -type "double3" 0 3.7603647129281792 80.835014203788006 ;
	setAttr ".s" -type "double3" 3.1843889069612485 1.7239242361205167 1.7239242361205167 ;
	setAttr ".rp" -type "double3" 1.0351582050972954 81.207015500585655 -138.89197838003042 ;
	setAttr ".sp" -type "double3" 1.0351582050972954 47.105907440185547 -80.567333221435547 ;
	setAttr ".spt" -type "double3" 0 34.101108060400264 -58.324645158595125 ;
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
	setAttr ".t" -type "double3" 0 3.7603647129281792 80.835014203788006 ;
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
createNode transform -n "pPlane1";
	setAttr ".s" -type "double3" -0.78501225796279794 1 1 ;
	setAttr ".rp" -type "double3" -11.497882842330608 64.073423087596893 -68.757925033569336 ;
	setAttr ".sp" -type "double3" -11.497892379760742 64.073423087596893 -68.757925033569336 ;
	setAttr ".spt" -type "double3" 9.5374301345430013e-06 0 0 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape61" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.019230785 0.98076922
		 0.019230785 0.019230751 0.98076934 0.019230751 0.98076934 0.98076922;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -5.9625168 129.08984 -43.655014 
		-128.41792 -0.94299757 -43.655014 -5.9625168 129.08984 -93.86084 -128.41792 -0.94299757 
		-93.86084;
	setAttr -s 4 ".vt[0:3]"  -5.53537369 -8.4791047e-15 42.11978531 116.92002869 -1.3736774e-15 42.11978531
		 -5.53537369 8.4791047e-15 -42.11978531 116.92002869 1.5584532e-14 -42.11978531;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge154";
	setAttr ".t" -type "double3" -4.9979196010017244 22.112159733798535 -10.068822530899196 ;
	setAttr ".r" -type "double3" -40.81382696375244 0 0 ;
	setAttr ".s" -type "double3" 0.7974507360659413 0.7974507360659413 0.7974507360659413 ;
	setAttr ".rp" -type "double3" 0 21.739081092482859 -37.681008737088519 ;
	setAttr ".rpt" -type "double3" 0 0.15160004180689768 0.43557912734707038 ;
	setAttr ".sp" -type "double3" 0 21.571138381958008 -37.684576034545898 ;
	setAttr ".spt" -type "double3" 0 0.16794271052485055 0.0035672974573834892 ;
createNode mesh -n "Ledge154Shape" -p "Ledge154";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 22.335997 -33.850269 
		0.5 22.335997 -33.850269 -0.5 20.80628 -33.885502 0.5 20.80628 -33.885502 -0.5 20.806282 
		-41.518883 0.5 20.806282 -41.518883 -0.5 22.335995 -41.483658 0.5 22.335995 -41.483658;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge155";
	setAttr ".t" -type "double3" -4.9979196010017244 23.254953155604145 -9.1233075817320497 ;
	setAttr ".r" -type "double3" -114.1591329794994 0 0 ;
	setAttr ".s" -type "double3" 0.7974507360659413 0.7974507360659413 0.7974507360659413 ;
	setAttr ".rp" -type "double3" 0 21.739081092482859 -37.681008737088519 ;
	setAttr ".rpt" -type "double3" 0 0.15160004180689768 0.43557912734707038 ;
	setAttr ".sp" -type "double3" 0 21.571138381958008 -37.684576034545898 ;
	setAttr ".spt" -type "double3" 0 0.16794271052485055 0.0035672974573834892 ;
createNode mesh -n "Ledge155Shape" -p "Ledge155";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 22.335997 -33.850269 
		0.5 22.335997 -33.850269 -0.5 20.80628 -33.885502 0.5 20.80628 -33.885502 -0.5 20.806282 
		-41.518883 0.5 20.806282 -41.518883 -0.5 22.335995 -41.483658 0.5 22.335995 -41.483658;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge156";
	setAttr ".t" -type "double3" -4.9979196010017244 22.19157694713623 -10.449685541638154 ;
	setAttr ".r" -type "double3" -139.37547762941088 -0.41711736695649032 -0.96853565388400398 ;
	setAttr ".s" -type "double3" 0.7974507360659413 0.7974507360659413 0.7974507360659413 ;
	setAttr ".rp" -type "double3" 0 21.739081092482859 -37.681008737088519 ;
	setAttr ".rpt" -type "double3" 0 0.15160004180689768 0.43557912734707038 ;
	setAttr ".sp" -type "double3" 0 21.571138381958008 -37.684576034545898 ;
	setAttr ".spt" -type "double3" 0 0.16794271052485055 0.0035672974573834892 ;
createNode mesh -n "Ledge156Shape" -p "Ledge156";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 22.335997 -33.850269 
		0.5 22.335997 -33.850269 -0.5 20.80628 -33.885502 0.5 20.80628 -33.885502 -0.5 20.806282 
		-41.518883 0.5 20.806282 -41.518883 -0.5 22.335995 -41.483658 0.5 22.335995 -41.483658;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge134";
	setAttr ".t" -type "double3" -1.6826956597179066 22.201342532781112 -3.2121416604477706 ;
	setAttr ".s" -type "double3" 0.54823889913369139 0.22341582297422036 0.79544900640634142 ;
	setAttr ".rp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
	setAttr ".sp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
createNode mesh -n "WallLedge134Shape" -p "WallLedge134";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 35.113277 -35.202507 
		0.5 35.113277 -35.202507 -0.5 37.648632 -35.202507 0.5 37.648632 -35.202507 -0.5 
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
createNode transform -n "WallLedge135";
	setAttr ".t" -type "double3" -1.6826956597179066 19.80842909072588 -3.2121416604477706 ;
	setAttr ".s" -type "double3" 0.54823889913369139 0.22341582297422036 0.79544900640634142 ;
	setAttr ".rp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
	setAttr ".sp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
createNode mesh -n "WallLedge135Shape" -p "WallLedge135";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 35.113277 -35.202507 
		0.5 35.113277 -35.202507 -0.5 37.648632 -35.202507 0.5 37.648632 -35.202507 -0.5 
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
createNode transform -n "polySurface31";
	setAttr ".t" -type "double3" -3.7427259843890841 32.526412118467142 -71.305411593777393 ;
	setAttr ".s" -type "double3" 9.2855246170102497 0.25020103167842483 129.45678893207631 ;
	setAttr ".rp" -type "double3" 0 1.3683658616594103 3.8809251433633145 ;
	setAttr ".sp" -type "double3" 0 13.8941650390625 0.15658867359161377 ;
	setAttr ".spt" -type "double3" 0 -12.525799177403089 3.7243364697716999 ;
createNode mesh -n "polySurfaceShape59" -p "polySurface31";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
createNode transform -n "Ledge157";
	setAttr ".t" -type "double3" 0.57359635344850801 3.3224004571584267 -10.685733749956521 ;
	setAttr ".s" -type "double3" 0.26661785275270022 1 0.36922278082232701 ;
	setAttr ".rp" -type "double3" 0 31.273520463341452 -52.828887766451111 ;
	setAttr ".sp" -type "double3" 0 31.273520463341452 -52.828887766451111 ;
createNode mesh -n "Ledge157Shape" -p "Ledge157";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  0.43342453 -0.015505043 0.87989539 
		0.43342453 -0.015505043 0.87989539 0.43342453 -0.015505043 0.87989539 0.43342453 
		-0.015505043 0.87989539;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape60" -p "Ledge157";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 29.267857 -52.478554 
		0.5 29.267857 -52.478554 -0.5 31.420208 -52.478554 0.5 31.420208 -52.478554 -0.5 
		31.420208 -53.179218 0.5 31.420208 -53.179218 -0.5 29.267857 -53.179218 0.5 29.267857 
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
createNode transform -n "Ledge159";
	setAttr ".t" -type "double3" 0.57359635344850801 3.0305400837123342 -54.008992667527934 ;
	setAttr ".s" -type "double3" 0.26661785275270022 1 0.36922278082232696 ;
	setAttr ".rp" -type "double3" 0 31.273520463341452 -19.505628848879699 ;
	setAttr ".sp" -type "double3" 0 31.273520463341452 -52.828887766451111 ;
	setAttr ".spt" -type "double3" 0 0 33.323258917571415 ;
createNode mesh -n "Ledge159Shape" -p "Ledge159";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.24997561 1.6672053 1.0652493 ;
	setAttr ".pt[1]" -type "float3" 0.21124926 1.6417789 0.79093099 ;
	setAttr ".pt[6]" -type "float3" -0.21124943 1.5172756 1.1483711 ;
	setAttr ".pt[7]" -type "float3" -0.24997626 1.4918491 0.87405288 ;
	setAttr ".pt[8]" -type "float3" 0 0 1.5407032 ;
	setAttr ".pt[9]" -type "float3" 0 0 1.5407032 ;
	setAttr ".pt[10]" -type "float3" 0 0 -1.5407032 ;
	setAttr ".pt[11]" -type "float3" 0 0 -1.5407032 ;
	setAttr -s 12 ".vt[0:11]"  -1 28.2678566 -51.97855377 1.000003814697 28.2678566 -51.97855377
		 -1 32.42020798 -51.97855377 1.000003814697 32.42020798 -51.97855377 -1 32.42020798 -53.67922211
		 1.000003814697 32.42020798 -53.67922211 -1 28.2678566 -53.67922211 1.000003814697 28.2678566 -53.67922211
		 -1 32.97507858 -51.97855377 1.000003814697 32.97507858 -51.97855377 1.000003814697 32.97507858 -53.67922211
		 -1 32.97507858 -53.67922211;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 1
		 3 5 1 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
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
		mu 0 4 4 2 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape60" -p "Ledge159";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 29.267857 -52.478554 
		0.5 29.267857 -52.478554 -0.5 31.420208 -52.478554 0.5 31.420208 -52.478554 -0.5 
		31.420208 -53.179218 0.5 31.420208 -53.179218 -0.5 29.267857 -53.179218 0.5 29.267857 
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
createNode transform -n "Ledge160";
	setAttr ".t" -type "double3" 0.57359635344850801 3.0305400837123342 -59.008992667527934 ;
	setAttr ".s" -type "double3" 0.26661785275270022 1 0.3692227808223269 ;
	setAttr ".rp" -type "double3" 0 31.273520463341452 -19.505628848879692 ;
	setAttr ".sp" -type "double3" 0 31.273520463341452 -52.828887766451111 ;
	setAttr ".spt" -type "double3" 0 0 33.323258917571422 ;
createNode mesh -n "Ledge160Shape" -p "Ledge160";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0 0 1.5407032 0 0 1.5407032 
		0 0 -1.5407032 0 0 -1.5407032;
	setAttr -s 12 ".vt[0:11]"  -1 28.2678566 -51.97855377 1.000003814697 28.2678566 -51.97855377
		 -1 32.42020798 -51.97855377 1.000003814697 32.42020798 -51.97855377 -1 32.42020798 -53.67922211
		 1.000003814697 32.42020798 -53.67922211 -1 28.2678566 -53.67922211 1.000003814697 28.2678566 -53.67922211
		 -1 32.97507858 -51.97855377 1.000003814697 32.97507858 -51.97855377 1.000003814697 32.97507858 -53.67922211
		 -1 32.97507858 -53.67922211;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 2 4 1
		 3 5 1 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
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
		mu 0 4 4 2 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape60" -p "Ledge160";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 29.267857 -52.478554 
		0.5 29.267857 -52.478554 -0.5 31.420208 -52.478554 0.5 31.420208 -52.478554 -0.5 
		31.420208 -53.179218 0.5 31.420208 -53.179218 -0.5 29.267857 -53.179218 0.5 29.267857 
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
createNode transform -n "Ledge161";
	setAttr ".t" -type "double3" -3.7427259843890841 30.418443553042817 -87.695953316717407 ;
	setAttr ".s" -type "double3" 9.2855246170102497 0.25020103167842483 129.45678893207631 ;
	setAttr ".rp" -type "double3" 3.2222042261947168 5.8163627115106875 11.665895755719424 ;
	setAttr ".sp" -type "double3" 0.3470136970281601 23.246757507324219 0.090114206075668335 ;
	setAttr ".spt" -type "double3" 2.8751905291665567 -17.43039479581353 11.575781549643755 ;
createNode mesh -n "Ledge161Shape" -p "Ledge161";
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
	setAttr ".pt[0]" -type "float3" -9.3132257e-10 0 2.0372681e-10 ;
	setAttr ".pt[5]" -type "float3" -9.3132257e-10 0 2.0372681e-10 ;
	setAttr ".pt[6]" -type "float3" -9.3132257e-10 0 2.0372681e-10 ;
	setAttr ".pt[8]" -type "float3" -9.3132257e-10 0 2.0372681e-10 ;
createNode transform -n "Ledge162";
	setAttr ".t" -type "double3" -3.7427259843890841 30.418443553042817 -87.695953316717407 ;
	setAttr ".s" -type "double3" 9.2855246170102497 0.25020103167842483 129.45678893207631 ;
createNode mesh -n "Ledge162Shape" -p "Ledge162";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge163";
	setAttr ".t" -type "double3" -3.7427259843890841 30.418443553042817 -87.695953316717407 ;
	setAttr ".s" -type "double3" 9.2855246170102497 0.25020103167842483 129.45678893207631 ;
createNode mesh -n "Ledge163Shape" -p "Ledge163";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface35";
	setAttr ".t" -type "double3" -3.7427259843890841 30.418443553042817 -87.695953316717407 ;
	setAttr ".s" -type "double3" 9.2855246170102497 0.25020103167842483 129.45678893207631 ;
createNode mesh -n "polySurfaceShape65" -p "polySurface35";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface38";
	setAttr ".t" -type "double3" -3.7427259843890841 30.418443553042817 -87.695953316717407 ;
	setAttr ".s" -type "double3" 9.2855246170102497 0.25020103167842483 129.45678893207631 ;
createNode mesh -n "polySurfaceShape68" -p "polySurface38";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[80]" -type "float3"  -0.035941601 0 0;
createNode transform -n "Ledge164";
	setAttr ".t" -type "double3" -9.4894969086914891 26.911268387222513 -15.958631091978084 ;
	setAttr ".r" -type "double3" 34.057260741030916 0 0 ;
	setAttr ".s" -type "double3" 0.53988932001208634 0.94219629331696098 1.2586186495605278 ;
	setAttr ".rp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "Ledge164Shape" -p "Ledge164";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge166";
	setAttr ".t" -type "double3" -9.4894969086914891 22.487660561510516 -16.843352657120484 ;
	setAttr ".r" -type "double3" 34.057260741030916 0 0 ;
	setAttr ".s" -type "double3" 0.53988932001208634 0.94219629331696098 1.6540338339014715 ;
	setAttr ".rp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "Ledge166Shape" -p "Ledge166";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
		41.095131 -49.694843 0.5 41.095131 -49.694843 -0.5 41.941692 -49.609608 0.5 41.941692 
		-49.609608;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge167";
	setAttr ".t" -type "double3" -5.1941385529139108 37.517567505013055 -16.935317326828233 ;
	setAttr ".r" -type "double3" 45.000000000001279 -90 -6.9433664931143225e-14 ;
	setAttr ".s" -type "double3" 0.41656518042692992 0.94219629331696098 1.2586186495605278 ;
	setAttr ".rp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "Ledge167Shape" -p "Ledge167";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge168";
	setAttr ".t" -type "double3" -5.1941385529139108 37.517567505013055 -22.565515098449744 ;
	setAttr ".r" -type "double3" 45.000000000001279 -90 -6.9433664931143225e-14 ;
	setAttr ".s" -type "double3" 0.41656518042692992 0.94219629331696098 1.2586186495605278 ;
	setAttr ".rp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "Ledge168Shape" -p "Ledge168";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge169";
	setAttr ".t" -type "double3" -5.1941385529139108 37.517567505013055 -11.897673535761257 ;
	setAttr ".r" -type "double3" 45.000000000001279 -90 -6.9433664931143225e-14 ;
	setAttr ".s" -type "double3" 0.41656518042692992 0.94219629331696098 1.2586186495605278 ;
	setAttr ".rp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "Ledge169Shape" -p "Ledge169";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedge136";
	setAttr ".t" -type "double3" 0 6.2758164447816398 97.939443565234825 ;
	setAttr ".s" -type "double3" 3.1843889069612485 1.7239242361205167 1.7239242361205167 ;
	setAttr ".rp" -type "double3" 1.0351582050972954 82.516188860379998 -145.68576319267976 ;
	setAttr ".sp" -type "double3" 1.0351582050972954 47.865322113037109 -84.508216857910156 ;
	setAttr ".spt" -type "double3" 0 34.650866747342953 -61.177546334769758 ;
createNode mesh -n "WallLedgeShape136" -p "WallLedge136";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.25 0.625
		 0.25 0.625 0.5 0.375 0.5 0.125 0.17389631 0.375 0.17389631 0.375 0.21194816 0.125
		 0.25 0.625 0.57610369 0.375 0.57610369 0.625 0.17389631 0.875 0.17389631 0.875 0.25
		 0.625 0.21194816;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" -4.9115577 -0.15541163 0 ;
	setAttr ".pt[1]" -type "float3" 0 -0.15541163 0 ;
	setAttr ".pt[2]" -type "float3" -4.9115577 -0.15541163 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.15541163 0 ;
	setAttr ".pt[5]" -type "float3" -4.9115577 0 0 ;
	setAttr ".pt[6]" -type "float3" -4.9115577 0 0 ;
	setAttr ".pt[8]" -type "float3" -4.9115577 -2.7030272 0 ;
	setAttr ".pt[9]" -type "float3" 0 -2.7030272 0 ;
	setAttr -s 10 ".vt[0:9]"  -1 49.97376633 -82.19953918 1 49.97376633 -82.19953918
		 -1 49.97376633 -86.81689453 1 49.97376633 -86.81689453 1 45.7568779 -82.19953918
		 -1 45.7568779 -82.19953918 -1 45.7568779 -86.81689453 1 45.7568779 -86.81689453 -1 48.45493698 -82.19953918
		 1 48.45493698 -82.19953918;
	setAttr -s 15 ".ed[0:14]"  0 1 0 2 3 0 0 2 0 1 3 0 2 6 0 3 7 0 4 9 0
		 5 8 0 4 5 0 5 6 0 6 7 0 7 4 0 8 0 0 9 1 0 9 8 0;
	setAttr -s 6 -ch 26 ".fc[0:5]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 2 3
		f 5 -10 7 12 2 4
		mu 0 5 4 5 6 0 7
		f 4 1 5 -11 -5
		mu 0 4 3 2 8 9
		f 5 -12 -6 -4 -14 -7
		mu 0 5 10 11 12 1 13
		f 4 9 10 11 8
		mu 0 4 5 9 11 10
		f 4 -15 13 -1 -13
		mu 0 4 6 13 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Nothing5";
	setAttr ".t" -type "double3" -2.2281876212698646 26.46411960287843 8.2281330918117561 ;
	setAttr ".s" -type "double3" 0.16970341928177149 2.5949932393864223 0.1227893348710942 ;
	setAttr ".rp" -type "double3" 0 43.047551612511313 -84.50821484224069 ;
	setAttr ".sp" -type "double3" 0 43.047551612511313 -84.50821484224069 ;
createNode mesh -n "Nothing5Shape" -p "Nothing5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape71" -p "Nothing5";
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
createNode transform -n "Nothing4";
	setAttr ".t" -type "double3" -2.2281876212698646 26.46411960287843 5.7661615058719491 ;
	setAttr ".s" -type "double3" 0.16970341928177149 2.5949932393864223 0.1227893348710942 ;
	setAttr ".rp" -type "double3" 0 43.047551612511313 -84.50821484224069 ;
	setAttr ".sp" -type "double3" 0 43.047551612511313 -84.50821484224069 ;
createNode mesh -n "Nothing4Shape" -p "Nothing4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape72" -p "Nothing4";
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
createNode transform -n "Ledge170";
	setAttr ".t" -type "double3" -0.028530798647636857 38.762245791245441 18.283861637830562 ;
	setAttr ".s" -type "double3" 1.1602785408107394 1 1 ;
	setAttr ".rp" -type "double3" 0.75230069805300348 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0.75230069805300348 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "Ledge170Shape" -p "Ledge170";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.25 0 0.375 0.875 0.25 0.25 0.375 0.375 0.125 0 0.25
		 0 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 0 11.120935 0 0 11.120935 
		0 0 11.120935 0 0 11.120935;
	setAttr -s 14 ".vt[0:13]"  -0.99999988 40.84055328 -38.5125351 1 40.84055328 -38.5125351
		 -0.99999988 42.09513092 -38.5125351 1 42.09513092 -38.5125351 -0.99999988 42.09513092 -50.19484329
		 1 42.09513092 -50.19484329 -0.99999988 40.84055328 -50.19484329 1 40.84055328 -50.19484329
		 -0.99999988 40.84055328 -47.14586258 -0.99999988 42.09513092 -47.14586258 -12.0729599 40.84055328 -50.19484329
		 -12.0729599 40.84055328 -47.14586258 -12.0729599 42.09513092 -47.14586258 -12.0729599 42.09513092 -50.19484329;
	setAttr -s 23 ".ed[0:22]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 5 0 4 6 1 5 7 0 6 8 1 7 1 0 8 0 0 9 4 1 8 9 0 6 10 0 8 11 0 10 11 0 9 12 0 11 12 0
		 4 13 0 12 13 0 13 10 0;
	setAttr -s 11 -ch 46 ".fc[0:10]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 5 1 7 -3 -14 -7
		mu 0 5 2 3 5 4 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 5 3 11 -1 -13 -11
		mu 0 5 6 7 9 8 15
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 17 19 21 22
		mu 0 4 18 19 20 21
		f 4 -15 12 4 6
		mu 0 4 16 14 0 2
		f 4 10 16 -18 -16
		mu 0 4 12 14 19 18
		f 4 14 18 -20 -17
		mu 0 4 14 16 20 19
		f 4 13 20 -22 -19
		mu 0 4 16 13 21 20
		f 4 8 15 -23 -21
		mu 0 4 13 12 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape57" -p "Ledge170";
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
createNode transform -n "Ledge171";
	setAttr ".t" -type "double3" 0 1.8251646648443725 10.687049207140625 ;
	setAttr ".r" -type "double3" -25.443649327061813 0 0 ;
	setAttr ".s" -type "double3" 1 1 2.7259501740213374 ;
	setAttr ".rp" -type "double3" 0 63.489107551363198 -29.817377742681717 ;
	setAttr ".sp" -type "double3" 0 63.489107551363198 -29.817377742681717 ;
createNode mesh -n "Ledge171Shape" -p "Ledge171";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedge139";
	setAttr ".t" -type "double3" 0 6.3125278455126264 26.713346280955808 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 1 1 2.7259501740213374 ;
	setAttr ".rp" -type "double3" 0 63.489107551363198 -29.817377742681717 ;
	setAttr ".sp" -type "double3" 0 63.489107551363198 -29.817377742681717 ;
createNode mesh -n "polySurfaceShape96" -p "WallLedge139";
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
createNode transform -n "Ledge173";
	setAttr ".t" -type "double3" 0 16.411098279323461 26.849309706643599 ;
	setAttr ".s" -type "double3" 1 1 1.2535573097247217 ;
	setAttr ".rp" -type "double3" 0 63.489107551363198 -29.817377742681717 ;
	setAttr ".sp" -type "double3" 0 63.489107551363198 -29.817377742681717 ;
createNode mesh -n "Ledge173Shape" -p "Ledge173";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge174";
	setAttr ".t" -type "double3" 0 26.191219764178555 18.559341157398045 ;
	setAttr ".s" -type "double3" 1 1 3.0833333729776662 ;
	setAttr ".rp" -type "double3" 0 34.731870435044939 -25.470846730050884 ;
	setAttr ".sp" -type "double3" 0 34.731870435044939 -25.470846730050884 ;
createNode mesh -n "Ledge174Shape" -p "Ledge174";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedge142";
	setAttr ".t" -type "double3" 0 -9.0591855944967179 -7.2787676163875412 ;
	setAttr ".s" -type "double3" 1 9.0275410709084181 1 ;
	setAttr ".rp" -type "double3" 0 70.904735340488813 0.56489135157668813 ;
	setAttr ".sp" -type "double3" 0 70.904735340488813 0.56489135157668813 ;
createNode mesh -n "WallLedge142Shape" -p "WallLedge142";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedge141";
	setAttr ".t" -type "double3" 0 0.39913326619032574 -17.558371075781643 ;
	setAttr ".rp" -type "double3" 0 50.655538659444765 3.8396042755852631 ;
	setAttr ".sp" -type "double3" 0 50.655538659444765 3.8396042755852631 ;
createNode mesh -n "WallLedge141Shape" -p "WallLedge141";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge177";
	setAttr ".t" -type "double3" 0 9.8768931042485093 11.417325973718468 ;
	setAttr ".s" -type "double3" 1 1 3.3132697630876673 ;
	setAttr ".rp" -type "double3" 0 34.731870435044939 -25.470846730050884 ;
	setAttr ".sp" -type "double3" 0 34.731870435044939 -25.470846730050884 ;
createNode mesh -n "Ledge177Shape" -p "Ledge177";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge179";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 10.287297701276458 -64.668214802523707 ;
	setAttr ".rp" -type "double3" 0 28.502822699556894 -25.018403328799295 ;
	setAttr ".sp" -type "double3" 0 28.502822699556894 -25.018403328799295 ;
createNode mesh -n "Ledge179Shape" -p "Ledge179";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Wall5";
	setAttr ".t" -type "double3" 0 29.246229640552563 -41.308402379196089 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr ".rp" -type "double3" 0 -2.774384145594599 -3.8334315359856177 ;
	setAttr ".sp" -type "double3" 0 -28.170646667480469 -0.15467238798737526 ;
	setAttr ".spt" -type "double3" 0 25.39626252188587 -3.6787591479982424 ;
createNode mesh -n "WallShape5" -p "Wall5";
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
createNode transform -n "Ledge37";
	setAttr ".t" -type "double3" 0 0 32.515949410173874 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 69.305743199202269 -13.322708029643117 ;
	setAttr ".sp" -type "double3" 0 69.305743199202269 13.322708029643117 ;
	setAttr ".spt" -type "double3" 0 0 -26.645416059286234 ;
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
createNode mesh -n "polySurfaceShape86" -p "Ledge37";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
createNode transform -n "Ledge40";
	setAttr ".t" -type "double3" 0 0 32.515949410173874 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 73.895995197406052 -8.0984920708998871 ;
	setAttr ".sp" -type "double3" 0 73.895995197406052 8.0984920708998871 ;
	setAttr ".spt" -type "double3" 0 0 -16.196984141799774 ;
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
createNode mesh -n "polySurfaceShape76" -p "Ledge40";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
createNode transform -n "WallLedge159";
	setAttr ".t" -type "double3" 0 0 5.1826160366431893 ;
	setAttr ".rp" -type "double3" 0 69.305744171142578 11.39529275894165 ;
	setAttr ".sp" -type "double3" 0 69.305744171142578 11.39529275894165 ;
createNode mesh -n "WallLedgeShape159" -p "WallLedge159";
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
	setAttr ".pt[0]" -type "float3" 0 -1.5811894 0 ;
	setAttr ".pt[1]" -type "float3" 0 -1.5811894 0 ;
	setAttr ".pt[6]" -type "float3" 0 -1.5811894 0 ;
	setAttr ".pt[7]" -type "float3" 0 -1.5811894 0 ;
createNode transform -n "WallLedge144";
	setAttr ".t" -type "double3" 0 0 5.1826160366431893 ;
	setAttr ".rp" -type "double3" 0 79.10858154296875 13.738189697265625 ;
	setAttr ".sp" -type "double3" 0 79.10858154296875 13.738189697265625 ;
createNode mesh -n "WallLedgeShape144" -p "WallLedge144";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform18";
	setAttr ".v" no;
createNode mesh -n "Ledge32Shape" -p "transform18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.375 0.25
		 0.625 0.25 0.625 0.375 0.375 0.375 0.375 0.25 0.625 0.25 0.625 0.375 0.375 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -1 68.48421478 14.54788113 1 68.48421478 14.54788113
		 -1 70.12727356 14.54788113 1 70.12727356 14.54788113 -1 70.12727356 8.24270439 1 70.12727356 8.24270439
		 -1 68.48421478 8.24270439 1 68.48421478 8.24270439 1 70.12727356 12.92849827 -1 70.12727356 12.92849827
		 -1 88.089889526 14.54788113 1 88.089889526 14.54788113 1 88.089889526 12.92849827
		 -1 88.089889526 12.92849827 -1 70.12727356 14.54788113 1 70.12727356 14.54788113
		 1 70.12727356 12.92849827 -1 70.12727356 12.92849827;
	setAttr -s 27 ".ed[0:26]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 0 9 4 0 8 9 0 14 10 0 15 11 0 10 11 0 16 12 0 11 12 0
		 17 13 0 12 13 0 10 13 0 14 15 0 15 16 0 16 17 0 14 17 0;
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
		f 4 23 16 -18 -16
		mu 0 4 22 23 19 18
		f 4 24 18 -20 -17
		mu 0 4 23 24 20 19
		f 4 25 20 -22 -19
		mu 0 4 24 25 21 20
		f 4 -27 15 22 -21
		mu 0 4 25 22 18 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform14";
	setAttr ".v" no;
createNode mesh -n "Ledge35Shape" -p "transform14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.375 0.375
		 0.625 0.375 0.625 0.5 0.375 0.5 0.375 0.375 0.625 0.375 0.625 0.5 0.375 0.5 0.375
		 0.375 0.625 0.375 0.625 0.375 0.375 0.375 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".vt[0:25]"  -1 72.97196198 10.7305069 1 72.97196198 10.7305069
		 -1 74.81999969 10.7305069 1 74.81999969 10.7305069 -1 74.81999969 5.46647739 1 74.81999969 5.46647739
		 -1 72.97196198 6.56695223 1 72.97196198 6.56695223 1 74.81999969 8.098491669 -1 74.81999969 8.098491669
		 1 79.70342255 4.98721933 -1 79.70342255 4.98721933 1 79.70342255 2.35520482 -1 79.70342255 2.35520482
		 1 87.94521332 4.98721933 -1 87.94521332 4.98721933 1 87.94521332 2.35520482 -1 87.94521332 2.35520482
		 -1 74.81999969 8.098491669 1 74.81999969 8.098491669 1 79.70342255 4.98721933 -1 79.70342255 4.98721933
		 1 74.81999969 5.46647739 1 79.70342255 2.35520482 -1 74.81999969 5.46647739 -1 79.70342255 2.35520482;
	setAttr -s 39 ".ed[0:38]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 0 9 4 0 8 9 0 19 20 0 18 21 0 10 11 0 22 23 0 10 12 0
		 24 25 0 13 12 0 11 13 0 10 14 0 11 15 0 14 15 0 12 16 0 14 16 0 13 17 0 17 16 0 15 17 0
		 19 18 0 20 21 0 19 22 0 20 23 0 24 22 0 25 23 0 18 24 0 21 25 0;
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
		f 4 -32 15 32 -17
		mu 0 4 26 27 28 29
		f 4 33 18 -35 -16
		mu 0 4 27 30 31 28
		f 4 -36 20 36 -19
		mu 0 4 30 32 33 31
		f 4 -38 16 38 -21
		mu 0 4 32 26 29 33
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
createNode transform -n "transform19";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 32.515949410173874 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode mesh -n "Ledge37Shape" -p "transform19";
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
createNode transform -n "transform15";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 32.515949410173874 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode mesh -n "Ledge40Shape" -p "transform15";
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
createNode transform -n "Ledge183";
createNode mesh -n "LedgeShape183" -p "Ledge183";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[0]" -type "float3" -1.1920929e-07 0 0 ;
	setAttr ".pt[2]" -type "float3" -1.1920929e-07 0 0 ;
createNode transform -n "transform17";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape75" -p "transform17";
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
createNode transform -n "transform13";
	setAttr ".t" -type "double3" -3.7427259843890841 30.418443553042817 -87.695953316717407 ;
	setAttr ".s" -type "double3" 9.2855246170102497 0.25020103167842483 129.45678893207631 ;
createNode mesh -n "polySurfaceShape31" -p "transform13";
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
createNode transform -n "transform16";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 32.515949410173874 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode mesh -n "polySurfaceShape78" -p "transform16";
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
createNode transform -n "Ledge186";
	setAttr ".t" -type "double3" 0 6.7677504916818592 -7.0554053406163284 ;
	setAttr ".r" -type "double3" 29.399681736030825 0 0 ;
	setAttr ".s" -type "double3" 1 1 1.0846439333295554 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "Ledge186Shape" -p "Ledge186";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge187";
	setAttr ".t" -type "double3" 0 9.5837492930626453 9.6578096942163576 ;
	setAttr ".r" -type "double3" -31.900916471239515 0 0 ;
	setAttr ".s" -type "double3" 1 1 1.2059282970086738 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "Ledge187Shape" -p "Ledge187";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 31.277706 -10.525095 
		0.5 31.277706 -10.525095 -0.5 30.267868 -10.525095 0.5 30.267868 -10.525095 -0.5 
		29.69022 -19.566338 0.5 29.69022 -19.566338 -0.5 30.700058 -19.566338 0.5 30.700058 
		-19.566338;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge147";
	setAttr ".t" -type "double3" 0 15.938273289232072 24.413943982159765 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 1 1 3.0833333729776662 ;
	setAttr ".rp" -type "double3" 0 34.731870435044939 -25.470846730050884 ;
	setAttr ".sp" -type "double3" 0 34.731870435044939 -25.470846730050884 ;
createNode mesh -n "WallLedge147Shape" -p "WallLedge147";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 34.825573 -24.278603 
		0.5 34.825573 -24.278603 -0.5 33.815735 -24.278603 0.5 33.815735 -24.278603 -0.5 
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
createNode transform -n "Ledge189";
	setAttr ".t" -type "double3" 0 19.396753562976386 10.988146033399849 ;
	setAttr ".s" -type "double3" 1 1 0.56111110694597277 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "Ledge189Shape" -p "Ledge189";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge192";
	setAttr ".t" -type "double3" 0 0 5.2981722910317277 ;
createNode mesh -n "LedgeShape192" -p "Ledge192";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0 -3.5466316 ;
	setAttr ".pt[5]" -type "float3" 0 0 -3.5466316 ;
	setAttr ".pt[6]" -type "float3" 0 0 -14.071344 ;
	setAttr ".pt[7]" -type "float3" 0 0 -14.071344 ;
	setAttr ".pt[8]" -type "float3" 0 0 -3.5466316 ;
	setAttr ".pt[9]" -type "float3" 0 0 -3.5466316 ;
createNode transform -n "transform20";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 2.0698914991091133 ;
createNode mesh -n "Ledge31Shape" -p "transform20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 54 ".uvst[0].uvsp[0:53]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.125 0 0.625 0.3125 0.625 0.375 0.625 0.4375 0.375 0.3125 0.375 0.375 0.375 0.4375
		 0.375 0.4375 0.625 0.4375 0.625 0.5 0.375 0.5 0.375 0.375 0.625 0.375 0.625 0.4375
		 0.375 0.4375 0.375 0.3125 0.625 0.3125 0.625 0.375 0.375 0.375 0.375 0.4375 0.625
		 0.4375 0.625 0.4375 0.375 0.4375 0.375 0.4375 0.625 0.4375 0.375 0.375 0.625 0.375
		 0.625 0.4375 0.375 0.4375 0.625 0.4375 0.375 0.4375 0.625 0.3125 0.375 0.3125 0.375
		 0.5 0.625 0.5 0.875 0.25 0.8125 0.25 0.75 0.25 0.6875 0.25 0.3125 0.25 0.25 0.25
		 0.1875 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 46 ".vt[0:45]"  -1 51.71819687 12.30826759 1 51.71819687 12.30826759
		 -1 54.47581863 12.30826759 1 54.47581863 12.30826759 -1 54.47581863 -2.29401708 1 54.47581863 -2.29401708
		 -1 51.71819687 -2.29401708 1 51.71819687 -2.29401708 1 54.47581863 8.2329464 1 54.47581863 4.59854889
		 1 54.47581863 2.92073202 -1 54.47581863 8.2329464 -1 54.47581863 4.59854889 -1 54.47581863 2.92073202
		 1 55.88706207 2.92073202 -1 55.88706207 2.92073202 1 55.88706207 -2.29401708 -1 55.88706207 -2.29401708
		 1 68.70568848 4.59854889 -1 68.70568848 4.59854889 1 68.70568848 2.92073202 -1 68.70568848 2.92073202
		 1 60.91730499 8.2329464 -1 60.91730499 8.2329464 1 60.91730499 4.59854889 -1 60.91730499 4.59854889
		 -1 65.068786621 2.92073202 1 65.068786621 2.92073202 -1 65.068778992 0.55689383 1 65.068778992 0.55689383
		 -1 68.70568848 0.55708909 1 68.70568848 0.55708909 0.99999952 70.02784729 4.59653664
		 -0.99999952 70.02784729 4.59653664 1 71.49203491 2.88442564 -1 71.49203491 2.88442564
		 1 73.50317383 0.55707812 -1 73.50317383 0.55707812 1 54.47581863 8.2329464 -1 54.47581863 8.2329464
		 -1 54.47581863 -2.29401708 1 54.47581863 -2.29401708 1 54.47581863 2.92073202 1 54.47581863 4.59854889
		 -1 54.47581863 4.59854889 -1 54.47581863 2.92073202;
	setAttr -s 76 ".ed[0:75]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 39 0
		 3 38 0 40 6 0 41 7 0 6 0 0 7 1 0 8 9 0 9 10 0 10 5 0 11 12 0 12 13 0 13 4 0 10 13 0
		 9 12 0 8 11 0 10 14 0 13 15 0 14 15 0 5 16 0 14 16 0 4 17 0 17 16 0 15 17 0 9 18 0
		 12 19 0 18 19 1 10 27 0 18 20 1 13 26 0 19 21 1 8 22 0 11 23 0 22 23 0 9 24 0 22 24 0
		 12 25 0 24 25 0 23 25 0 26 21 1 27 20 1 26 27 0 26 28 0 27 29 0 28 29 0 21 30 1 28 30 0
		 20 31 1 31 30 1 29 31 0 18 32 0 19 33 0 32 33 0 20 34 1 32 34 0 21 35 1 34 35 1 33 35 0
		 31 36 0 34 36 0 30 37 0 36 37 0 35 37 0 38 39 0 40 41 0 42 41 0 43 42 0 38 43 0 39 44 0
		 44 45 0 45 40 0;
	setAttr -s 32 -ch 136 ".fc[0:31]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 68 -7
		mu 0 4 2 3 42 43
		f 4 69 9 -4 -9
		mu 0 4 44 45 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 7 -12 -10 -71 -72 -73 -8 -6
		mu 0 7 1 10 46 47 48 49 3
		f 7 10 4 6 73 74 75 8
		mu 0 7 11 0 2 50 51 52 53
		f 4 -24 25 -28 -29
		mu 0 4 18 19 20 21
		f 4 -58 59 61 -63
		mu 0 4 36 37 38 39
		f 4 -39 40 42 -44
		mu 0 4 26 27 28 29
		f 4 -19 21 23 -23
		mu 0 4 17 14 19 18
		f 4 14 24 -26 -22
		mu 0 4 14 5 20 19
		f 4 -3 26 27 -25
		mu 0 4 5 4 21 20
		f 4 -18 22 28 -27
		mu 0 4 4 17 18 21
		f 4 -20 29 31 -31
		mu 0 4 16 13 23 22
		f 5 13 32 45 -34 -30
		mu 0 5 13 14 31 24 23
		f 4 18 34 46 -33
		mu 0 4 14 17 30 31
		f 5 -17 30 35 -45 -35
		mu 0 5 17 16 22 25 30
		f 4 -21 36 38 -38
		mu 0 4 15 12 27 26
		f 4 12 39 -41 -37
		mu 0 4 12 13 28 27
		f 4 19 41 -43 -40
		mu 0 4 13 16 29 28
		f 4 -16 37 43 -42
		mu 0 4 16 15 26 29
		f 4 -50 51 -54 -55
		mu 0 4 32 33 34 35
		f 4 -47 47 49 -49
		mu 0 4 31 30 33 32
		f 4 44 50 -52 -48
		mu 0 4 30 25 34 33
		f 4 -62 64 66 -68
		mu 0 4 39 38 40 41
		f 4 -46 48 54 -53
		mu 0 4 24 31 32 35
		f 4 -32 55 57 -57
		mu 0 4 22 23 37 36
		f 4 33 58 -60 -56
		mu 0 4 23 24 38 37
		f 4 -36 56 62 -61
		mu 0 4 25 22 36 39
		f 4 52 63 -65 -59
		mu 0 4 24 35 40 38
		f 4 53 65 -67 -64
		mu 0 4 35 34 41 40
		f 4 -51 60 67 -66
		mu 0 4 34 25 39 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge150";
	setAttr ".t" -type "double3" 0 -0.82637753522507751 3.3226501392560213 ;
	setAttr ".rp" -type "double3" 0 63.854000091552734 3.7596404552459717 ;
	setAttr ".sp" -type "double3" 0 63.854000091552734 3.7596404552459717 ;
createNode mesh -n "WallLedgeShape150" -p "WallLedge150";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -0.38551456 0 0 -0.38551456 
		0 0 -4.4250422 0 0 -4.4250422 0 0 -4.4250422 0 0 -0.38551456 0 0 -0.38551456 0 0 
		-4.4250422 0;
createNode transform -n "transform21";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 2.0698914991091133 ;
createNode mesh -n "polySurfaceShape89" -p "transform21";
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
	setAttr ".t" -type "double3" 0 12.747513600853718 -64.99686564276837 ;
	setAttr ".r" -type "double3" 35.946967344119528 0 0 ;
	setAttr ".s" -type "double3" 2 0.078442847501337523 26.736987705471847 ;
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
createNode transform -n "Ledge193";
	setAttr ".t" -type "double3" 0 0 5.2981722910317277 ;
createNode mesh -n "LedgeShape193" -p "Ledge193";
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
	setAttr ".pt[0]" -type "float3" 0 0 -3.4811029 ;
	setAttr ".pt[1]" -type "float3" 0 0 -3.4811029 ;
	setAttr ".pt[6]" -type "float3" 0 0 -3.4811029 ;
	setAttr ".pt[7]" -type "float3" 0 0 -3.4811029 ;
createNode transform -n "WallLedge146";
	setAttr ".t" -type "double3" 0 3.836926571470606 3.3226501392560213 ;
	setAttr ".rp" -type "double3" 0 57.503805160522461 6.4157476425170898 ;
	setAttr ".sp" -type "double3" 0 57.503805160522461 6.4157476425170898 ;
createNode mesh -n "WallLedgeShape146" -p "WallLedge146";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 -0.38551456 0 0 -0.38551456 
		0 0 -0.38551456 0 0 -0.38551456 0;
createNode transform -n "transform22";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 2.0698914991091133 ;
createNode mesh -n "polySurfaceShape91" -p "transform22";
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
createNode transform -n "WallLedge152";
	setAttr ".t" -type "double3" 0 0 3.3226501392560213 ;
	setAttr ".rp" -type "double3" -0.00018656253814697266 69.285976409912109 1.7388129234313965 ;
	setAttr ".sp" -type "double3" -0.00018656253814697266 69.285976409912109 1.7388129234313965 ;
createNode mesh -n "WallLedgeShape152" -p "WallLedge152";
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
	setAttr ".pt[8]" -type "float3" 0 -0.33264959 0 ;
	setAttr ".pt[9]" -type "float3" 0 -0.33264959 0 ;
	setAttr ".pt[10]" -type "float3" 0 -2.3376539 0 ;
	setAttr ".pt[11]" -type "float3" 0 -2.3376539 0 ;
createNode transform -n "transform23";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 2.0698914991091133 ;
createNode mesh -n "polySurfaceShape93" -p "transform23";
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
createNode transform -n "Ground";
createNode mesh -n "GroundShape" -p "Ground";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform6";
createNode mesh -n "GroundShape" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -1 -4.36348248 82.057189941 1 -4.36348248 82.057189941
		 -1 0.36348236 82.057189941 1 0.36348236 82.057189941 -1 0.36348236 -107.29646301
		 1 0.36348236 -107.29646301 -1 -4.36348248 -107.29646301 1 -4.36348248 -107.29646301
		 1 0.36348236 -35.24111938 -1 0.36348236 -35.24111938 -1 -4.36348248 -35.24111938
		 1 -4.36348248 -35.24111938 1 0.36348236 -35.24111938 -1 0.36348236 -35.24111938 -1 -4.36348248 -35.24111938
		 1 -4.36348248 -35.24111938;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 13 0
		 3 12 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 0 14 0 0 9 10 0 15 1 0 10 11 0 11 8 0
		 12 13 0 14 15 0 15 12 0 13 14 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 20 -7
		mu 0 4 2 3 22 23
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 21 17 -1 -16
		mu 0 4 24 25 9 8
		f 4 -18 22 -8 -6
		mu 0 4 1 26 27 3
		f 4 15 4 6 23
		mu 0 4 28 0 2 29
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface39";
	setAttr ".rp" -type "double3" -11.593265533447266 41.232309818267822 -64.801919937133789 ;
	setAttr ".sp" -type "double3" -11.593265533447266 41.232309818267822 -64.801919937133789 ;
createNode mesh -n "polySurfaceShape39" -p "polySurface39";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape69" -p "polySurface39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:20]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.375 0.4048667 0.625 0.4048667 0.125 0 0.22013327 0 0.22013327
		 0.25 0.125 0.25 0.625 0.8451333 0.375 0.8451333 0.7798667 0.25 0.7798667 0 0.875
		 0 0.875 0.25 0.125 0 0.22013327 0 0.22013327 0.25 0.125 0.25 0.20110662 0.25 0.18207997
		 0.25 0.1630533 0.25 0.14402665 0.25 0.20110662 0.25 0.375 0.42389336 0.18207997 0.25
		 0.375 0.44292003 0.1630533 0.25 0.375 0.46194667 0.14402665 0.25 0.375 0.48097333
		 0.22013327 0.25 0.20110662 0.25 0.20110662 0.25 0.22013327 0.25 0.21061996 0.25 0.21061996
		 0.25 0.21061996 0.25 0.21061996 0.25 0.20110662 0.25 0.20110662 0.25 0.2058633 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 31 ".vt[0:30]"  -1 0.36348236 -103.49184418 1 0.36348236 -103.49184418
		 -1 -4.36348248 -103.49184418 1 -4.36348248 -103.49184418 1 0.36348236 -33.99150848
		 -1 0.36348236 -33.99150848 -1 -4.36348248 -33.99150848 1 -4.36348248 -33.99150848
		 -19.70366096 -4.36348248 -103.49184418 -19.70366096 -4.36348248 -33.99150848 -19.70366096 0.36348236 -33.99150848
		 -19.70366096 0.36348236 -103.49184418 -19.70366096 0.36348236 -61.23766327 -19.70366096 0.36348236 -67.18913269
		 -19.70366096 0.36348236 -85.29191589 -19.70366096 0.36348236 -89.73162842 -1 0.36348236 -61.23766327
		 -1 0.36348236 -67.18913269 -1 0.36348236 -85.29191589 -1 0.36348236 -89.73162842
		 -1 12.56773186 -33.99150848 -1 12.56773186 -61.23766327 -19.70366096 12.56773186 -61.23766327
		 -19.70366096 12.56773186 -33.99150848 -19.70366096 18.88365555 -43.55310059 -1 18.88365555 -43.55310059
		 -1 27.74294281 -45.24787903 -19.70366096 27.74294281 -45.24787903 -1 27.74325562 -61.23766327
		 -19.70366096 27.74325562 -61.23766327 -19.70366096 27.74309921 -58.58123398;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 0 0 2 1 1 3 0 2 6 1 3 7 0 4 1 0
		 5 16 0 4 5 0 5 6 0 6 7 0 7 4 0 2 8 0 6 9 0 8 9 0 5 10 1 10 9 0 0 11 0 10 12 1 11 8 0
		 12 13 0 13 14 0 14 15 0 15 11 0 16 17 1 17 18 1 18 19 1 19 0 1 19 15 1 18 14 1 17 13 1
		 16 12 0 5 20 0 16 21 0 20 25 0 12 22 0 21 22 0 10 23 0 23 24 0 20 23 0 24 22 0 25 21 0
		 25 24 0 25 26 0 24 27 0 26 27 0 21 28 0 26 28 0 22 29 0 28 29 0 27 30 0 30 29 0;
	setAttr -s 21 -ch 95 ".fc[0:20]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 2 3
		f 8 -9 6 -1 -28 -27 -26 -25 -8
		mu 0 8 4 5 1 0 31 29 27 25
		f 8 14 -17 18 20 21 22 23 19
		mu 0 8 16 17 18 20 21 22 23 19
		f 4 1 5 -11 -5
		mu 0 4 3 2 10 11
		f 4 -12 -6 -4 -7
		mu 0 4 12 13 14 15
		f 4 4 13 -15 -13
		mu 0 4 6 7 17 16
		f 4 -10 15 16 -14
		mu 0 4 7 8 18 17
		f 4 34 42 -39 -40
		mu 0 4 32 37 36 35
		f 4 2 12 -20 -18
		mu 0 4 9 6 16 19
		f 4 -29 27 17 -24
		mu 0 4 23 30 9 19
		f 4 -30 26 28 -23
		mu 0 4 22 28 30 23
		f 4 -31 25 29 -22
		mu 0 4 21 26 28 22
		f 4 -32 24 30 -21
		mu 0 4 20 24 26 21
		f 5 7 33 -42 -35 -33
		mu 0 5 8 24 33 37 32
		f 4 31 35 -37 -34
		mu 0 4 24 20 34 33
		f 5 -19 37 38 40 -36
		mu 0 5 20 18 35 36 34
		f 4 -16 32 39 -38
		mu 0 4 18 8 32 35
		f 4 -43 43 45 -45
		mu 0 4 36 37 39 38
		f 4 41 46 -48 -44
		mu 0 4 37 33 40 39
		f 4 36 48 -50 -47
		mu 0 4 33 34 41 40
		f 5 -41 44 50 51 -49
		mu 0 5 34 36 38 42 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape70" -p "polySurface39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:182]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 232 ".uvst[0].uvsp[0:231]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.375 0.4048667 0.625 0.4048667 0.125 0 0.22013327 0 0.22013327
		 0.25 0.125 0.25 0.625 0.8451333 0.375 0.8451333 0.7798667 0.25 0.7798667 0 0.875
		 0 0.875 0.25 0.125 0 0.22013327 0 0.22013327 0.25 0.125 0.25 0.20110662 0.25 0.18207997
		 0.25 0.1630533 0.25 0.14402665 0.25 0.20110662 0.25 0.375 0.42389336 0.18207997 0.25
		 0.375 0.44292003 0.1630533 0.25 0.375 0.46194667 0.14402665 0.25 0.375 0.48097333
		 0.22013327 0.25 0.20110662 0.25 0.20110662 0.25 0.22013327 0.25 0.21061996 0.25 0.21061996
		 0.25 0.21061996 0.25 0.21061996 0.25 0.20110662 0.25 0.20110662 0.25 0.2058633 0.25
		 0.21061996 0.25 0.21061996 0.25 0.20110662 0.25 0.20110662 0.25 0.21061996 0.25 0.21061996
		 0.25 0.20110662 0.25 0.20110662 0.25 0.18207997 0.25 0.18207997 0.25 0.1630533 0.25
		 0.1630533 0.25 0.18207997 0.25 0.18207997 0.25 0.1630533 0.25 0.1630533 0.25 0.18207997
		 0.25 0.18207997 0.25 0.1630533 0.25 0.1630533 0.25 0.18207997 0.25 0.18207997 0.25
		 0.1630533 0.25 0.1630533 0.25 0.18207997 0.25 0.18207997 0.25 0.1630533 0.25 0.1630533
		 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25
		 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997
		 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.1630533 0.25 0.1630533 0.25
		 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.1630533 0.25 0.1630533
		 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533
		 0.25 0.1630533 0.25 0.1630533 0.25 0.21537662 0.25 0.21537662 0.25 0.22013327 0.25
		 0.21537662 0.25 0.21537662 0.25 0.22013327 0.25 0.20110662 0.25 0.22013327 0.25 0.21061996
		 0.25 0.20110662 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.21537662 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.21537663 0.25 0.2199531 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0 0 1 0 1 1 0 1 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013326 0.25 0.22013327
		 0.25 0.22013326 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013326 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013326 0.25 0.22013327
		 0.25 0.22013326 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[197]" -type "float3"  -0.089245141 0 -7.1054274e-15;
	setAttr -s 214 ".vt";
	setAttr ".vt[0:165]"  -1 0.36348236 -103.49184418 1 0.36348236 -103.49184418
		 -1 -4.36348248 -103.49184418 1 -4.36348248 -103.49184418 1 0.36348236 -33.99150848
		 -1 0.36348236 -33.99150848 -1 -4.36348248 -33.99150848 1 -4.36348248 -33.99150848
		 -19.70366096 -4.36348248 -103.49184418 -19.70366096 -4.36348248 -33.99150848 -19.70366096 0.36348236 -33.99150848
		 -19.70366096 0.36348236 -103.49184418 -19.70366096 0.36348236 -61.23766327 -19.70366096 0.36348236 -67.18913269
		 -19.70366096 0.36348236 -85.29191589 -19.70366096 0.36348236 -89.73162842 -1 0.36348236 -61.23766327
		 -1 0.36348236 -67.18913269 -1 0.36348236 -85.29191589 -1 0.36348236 -89.73162842
		 -1 8.77541924 -33.99150848 -1 12.56773186 -61.23766327 -19.70366096 12.56773186 -61.23766327
		 -19.70366096 8.77541924 -33.99150848 -19.70366096 18.88365555 -43.55310059 -1 18.88365555 -43.55310059
		 -1 27.74294281 -45.24787903 -19.70366096 27.74294281 -45.24787903 -1 27.74325562 -61.23766327
		 -19.70366096 27.74325562 -61.23766327 -19.70366096 27.74309921 -58.58123398 -6.28837967 27.74296761 -44.9588623
		 -18.24658585 27.74296761 -44.9588623 -6.28837967 27.74323082 -58.45733643 -18.24658585 27.74323082 -58.45733643
		 -6.28837967 50.96836853 -44.63911819 -18.24658585 50.96836853 -44.63911819 -6.28837967 40.057861328 -58.45733643
		 -18.24658585 40.057861328 -58.45733643 -1 25.94944763 -67.18913269 -19.70366096 25.94944763 -67.18913269
		 -1 25.94944763 -85.29191589 -19.70366096 25.94944763 -85.29191589 -5.70819092 25.94944763 -67.29399872
		 -18.68509865 25.94944763 -67.29399872 -5.70819092 25.94944763 -83.42510223 -18.68509865 25.94944763 -83.42510223
		 -5.70819092 36.56855011 -67.29399872 -18.68509865 36.56855011 -67.29399872 -5.70819092 36.56855011 -83.42510223
		 -18.68509865 36.56855011 -83.42510223 -0.20675945 36.56855011 -67.30506134 -24.18653107 36.56855011 -67.30506134
		 -0.20675945 36.56855011 -88.2716217 -24.18653107 36.56855011 -88.2716217 -0.20675945 60.93210602 -67.30506134
		 -24.18653107 60.93210602 -67.30506134 -0.20675945 60.93210602 -88.2716217 -24.18653107 60.93210602 -88.2716217
		 -24.18653107 44.133255 -67.30506134 -0.20675945 44.133255 -67.30506134 -12.19664574 44.133255 -67.30506134
		 -12.19664574 60.93210602 -67.30506134 -3.68376637 44.133255 -67.30506134 -3.68376637 60.93210602 -67.30506134
		 -12.19664574 44.133255 -63.018039703 -12.19664574 60.93210602 -63.018039703 -3.68376637 44.133255 -63.018039703
		 -3.68376637 60.93210602 -63.018039703 -10.94519234 60.93210602 -74.7181015 -20.96292114 60.93210602 -74.27970123
		 -3.83255458 60.93210602 -74.7181015 -0.92746305 60.93210602 -74.7181015 -0.92746305 60.93210602 -86.65988922
		 -20.96292114 60.93210602 -86.65988922 -10.94519234 65.91910553 -74.7181015 -20.96292114 65.91910553 -74.27970123
		 -3.83255458 65.91910553 -74.7181015 -0.92746305 65.91910553 -74.7181015 -0.92746305 65.91910553 -86.65988922
		 -20.96292114 65.91910553 -86.65988922 -19.70366096 3.23414898 -85.29191589 -19.70366096 23.078783035 -85.29191589
		 -1 3.23414898 -85.29191589 -1 23.078783035 -85.29191589 -19.70366096 3.23414898 -93.17697144
		 -1 3.23414898 -93.17697144 -19.70366096 23.078783035 -93.17697144 -1 23.078783035 -93.17697144
		 -19.70366096 15.6740303 -40.84392548 -1 15.6740303 -40.84392548 -1 42.044136047 -33.99150848
		 -1 42.044136047 -40.84392548 -19.70366096 42.044136047 -40.84392548 -19.70366096 42.044136047 -33.99150848
		 -19.70366096 42.044139862 -33.99150848 -19.70366096 42.044139862 -61.23766327 -19.70366096 42.044136047 -43.55310059
		 -19.70366096 42.044136047 -61.23766327 -1 0.36348236 -28.10439491 -19.70366096 0.36348236 -28.10439491
		 -1 8.77541924 -27.8548317 -19.70366096 8.77541924 -27.8548317 -1 42.044136047 -27.8548317
		 -19.70366096 42.044136047 -27.8548317 -1 48.97618866 -42.18863297 -19.70366096 48.70832062 -58.95368958
		 -19.70366096 48.97618866 -42.18863297 -19.70366096 48.97618866 -27.85409546 -1 48.97618866 -27.85409546
		 -1 43.57246399 -44.99710846 -1 48.70832062 -44.99711227 -1 73.85704803 -42.18863297
		 -19.70366096 73.85704803 -42.18863297 -19.70366096 73.85704803 -27.85409546 -1 73.85704803 -27.85409546
		 -1 76.89528656 -42.18863297 -19.70366096 76.89528656 -42.18863297 -19.70366096 76.89528656 -27.85409546
		 -1 76.89528656 -27.85409546 -1 82.47684479 -42.18863297 -19.70366096 78.39564514 -42.18863297
		 -19.70366096 82.47684479 -27.85409546 -1 82.47684479 -27.85409546 -3.62578654 82.47684479 -42.11809158
		 -17.07787323 82.47684479 -42.11809158 -17.07787323 82.47684479 -30.18364525 -3.62578654 82.47684479 -30.18364525
		 -3.62578654 86.82810211 -42.11809158 -17.07787323 86.82810211 -42.11809158 -17.07787323 86.82810211 -30.18364525
		 -3.62578654 86.82810211 -30.18364525 -1 73.85704803 -26.1119957 -19.70366096 73.85704803 -26.1119957
		 -1 76.89528656 -26.1119957 -19.70366096 76.89528656 -26.1119957 -5.077461243 78.39564514 -42.18863297
		 -5.077461243 76.89528656 -42.18863297 -5.077461243 73.85704803 -42.18863297 -5.077461243 48.97618866 -42.18863297
		 -5.077461243 76.89528656 -51.70427322 -5.077461243 78.39564514 -51.70427322 -19.70366096 78.39564514 -51.70427322
		 -5.077461243 73.85704803 -51.70427322 -19.70366096 73.85704803 -51.70427322 -5.52322674 47.3218956 -44.27946472
		 -20.14942741 47.3218956 -44.27946472 -6.79290581 48.97618866 -42.18863297 -6.79290581 48.70832062 -44.99711227
		 -19.92654419 60.58946991 -47.39971161 -5.30034399 60.58946991 -47.39971161 -5.30034399 60.50130081 -47.39971161
		 -19.92654419 60.58946991 -47.39971161 -5.52322674 47.3218956 -44.27946472 -20.14942741 47.3218956 -44.27946472
		 -12.8363266 47.3218956 -44.27946472 -12.61344433 60.50130081 -47.39971161 -12.72488594 50.25303268 -45.57449341
		 -5.41178513 50.25303268 -45.57449341 -12.72488594 46.69865417 -50.59839249 -5.41178513 46.69865417 -50.59839249
		 -12.61344433 60.50127411 -51.010860443 -5.30034399 60.50127411 -51.010860443 -5.3746376 51.24227142 -51.0020942688
		 -5.33749104 54.19171906 -51.0064811707 -12.6505909 54.19171906 -51.006477356;
	setAttr ".vt[166:213]" -12.68773842 51.24227142 -51.0020980835 -12.72488213 43.87169266 -54.45358658
		 -5.41178131 43.87169266 -54.45358658 -12.6877346 51.23847198 -54.45796585 -5.37463379 51.23847198 -54.45796204
		 -12.72488022 47.89554596 -57.8598938 -5.4117794 47.89554596 -57.8598938 -12.6877327 51.23616028 -57.86427307
		 -5.37463188 51.23616028 -57.86426926 -12.6505909 54.18677521 -57.64985657 -5.33749104 54.18677521 -57.64986038
		 -12.61344433 60.49633026 -57.65423965 -5.30034399 60.49633026 -57.65423965 -5.30034399 60.58946991 -57.84555817
		 -5.077461243 73.85704803 -57.85002136 -19.92654419 60.58946991 -57.84555817 -19.70366096 73.85704803 -57.85002136
		 -5.077461243 73.85704803 -57.85002136 -19.70366096 73.85704803 -57.85002136 -5.077461243 73.85704803 -69.42563629
		 -19.70366096 73.85704803 -69.42563629 -5.077461243 73.85704803 -57.85002136 -19.70366096 73.85704803 -57.85002136
		 -19.70366096 92.16420746 -57.85002136 -19.70366096 92.16420746 -57.85002136 -19.70366096 92.16420746 -51.70427322
		 -5.077461243 92.16420746 -51.70427322 -5.077461243 92.16420746 -69.42563629 -19.70366096 92.16420746 -69.42563629
		 -19.70366096 92.16420746 -57.85002136 -5.077461243 68.43838501 -69.42563629 -5.077461243 68.43838501 -57.85002136
		 -11.6374445 68.43838501 -69.42563629 -11.6374445 68.43838501 -57.85002136 -16.76671982 92.16420746 -58.94033813
		 -16.76671982 92.16420746 -58.94033813 -16.76671982 92.16420746 -55.26272202 -8.014401436 92.16420746 -55.26272202
		 -8.014401436 92.16420746 -65.8671875 -16.76671982 92.16420746 -65.8671875 -16.76671982 92.16420746 -58.94033813
		 -16.76671982 94.26941681 -58.94033813 -16.76671982 94.26941681 -58.94033813 -16.76671982 94.26941681 -55.26272202
		 -8.014401436 94.26941681 -55.26272202 -8.014401436 94.26941681 -65.8671875 -16.76671982 94.26941681 -65.8671875
		 -16.76671982 94.26941681 -58.94033813;
	setAttr -s 401 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 0 2 0 1 3 0 2 6 0 3 7 0 4 1 0 5 16 0 4 5 0
		 5 6 0 6 7 0 7 4 0 2 8 0 6 9 0 8 9 0 5 10 0 10 9 0 0 11 0 10 12 0 11 8 0 12 13 0 13 14 0
		 14 15 0 15 11 0 16 17 0 17 18 0 18 19 0 19 0 0 19 15 0 18 14 0 17 13 0 16 12 0 5 20 0
		 16 21 0 20 90 0 12 22 0 21 22 0 10 23 0 24 22 0 25 21 0 25 24 0 25 26 0 24 27 0 26 27 0
		 21 28 0 26 28 0 22 29 0 28 29 0 27 30 0 30 29 0 27 29 0 26 31 0 27 32 0 31 32 0 28 33 0
		 31 33 0 29 34 0 33 34 0 32 34 0 31 35 0 32 36 0 35 36 0 33 37 0 35 37 0 34 38 0 37 38 0
		 36 38 0 17 39 0 13 40 0 39 40 0 18 83 0 39 41 0 14 81 0 41 42 0 40 42 0 39 43 0 40 44 0
		 43 44 0 41 45 0 43 45 0 42 46 0 45 46 0 44 46 0 43 47 0 44 48 0 47 48 0 45 49 0 47 49 0
		 46 50 0 49 50 0 48 50 0 47 51 0 48 52 0 51 52 0 49 53 0 51 53 0 50 54 0 53 54 0 52 54 0
		 51 60 0 52 59 0 55 64 0 53 57 0 55 57 0 54 58 0 57 58 0 56 58 0 59 56 0 60 55 0 60 63 0
		 61 59 0 62 56 0 61 62 0 63 61 0 64 62 0 63 64 0 61 65 0 62 66 0 65 66 0 63 67 0 67 65 0
		 64 68 0 67 68 0 68 66 0 62 69 0 56 70 0 69 70 0 64 71 0 71 69 0 55 72 0 72 71 0 57 73 0
		 72 73 0 58 74 0 73 74 0 70 74 0 69 75 0 70 76 0 75 76 0 71 77 0 77 75 0 72 78 0 78 77 0
		 73 79 0 78 79 0 74 80 0 79 80 0 76 80 0 81 82 0 82 42 0 83 84 0 84 41 0 82 84 0 81 83 0
		 81 85 0 83 86 0 85 86 0 82 87 0 85 87 0 84 88 0 87 88 0 86 88 0 89 24 0 90 25 0 90 89 0
		 20 91 0;
	setAttr ".ed[166:331]" 90 92 0 91 92 0 89 93 0 92 93 0 23 94 0 94 93 0 10 95 0
		 12 96 0 95 96 0 95 94 0 24 97 0 93 97 0 22 98 0 97 98 0 96 98 0 5 99 0 10 100 0 99 100 0
		 20 101 0 99 101 0 23 102 0 101 102 0 100 102 0 91 103 0 101 103 0 94 104 0 103 104 0
		 102 104 0 91 105 0 92 110 0 105 111 0 93 106 0 94 107 0 107 106 0 105 139 0 104 108 0
		 107 108 0 103 109 0 109 108 0 105 109 0 110 111 0 105 112 0 107 113 0 112 138 0 108 114 0
		 113 114 0 109 115 0 115 114 0 112 115 0 112 116 0 113 117 0 116 137 0 114 118 0 117 118 0
		 115 119 0 119 118 0 116 119 0 116 120 0 117 121 0 120 136 0 118 122 0 121 122 0 119 123 0
		 123 122 0 120 123 0 120 124 0 121 125 0 124 125 0 122 126 0 125 126 0 123 127 0 127 126 0
		 124 127 0 124 128 0 125 129 0 128 129 0 126 130 0 129 130 0 127 131 0 131 130 0 128 131 0
		 115 132 0 114 133 0 132 133 0 119 134 0 132 134 0 118 135 0 134 135 0 133 135 0 136 121 0
		 139 107 0 137 136 0 138 137 0 139 138 0 137 140 0 136 141 0 140 141 0 121 142 0 141 142 0
		 138 143 0 143 140 0 113 144 0 143 144 0 139 145 0 145 150 0 107 146 0 145 146 0 146 149 0
		 105 147 0 111 148 0 147 148 0 149 144 0 150 143 0 150 149 0 150 151 0 149 152 0 151 156 0
		 145 153 0 153 158 0 146 154 0 153 155 0 154 152 0 155 154 0 156 152 0 156 157 0 157 155 0
		 158 151 0 157 158 0 157 159 0 158 160 0 159 160 0 156 161 0 161 165 0 151 162 0 162 161 0
		 160 163 0 163 164 0 164 162 0 165 166 0 166 159 0 165 164 0 166 163 0 159 167 0 160 168 0
		 167 168 0 166 169 0 169 167 0 163 170 0 169 170 0 168 170 0 167 171 0 168 172 0 171 172 0
		 169 173 0 173 171 0 170 174 0 173 174 0 172 174 0 165 175 0 164 176 0 175 176 0 161 177 0
		 177 175 0 162 178 0 178 177 0 176 178 0;
	setAttr ".ed[332:400]" 150 179 0 143 180 0 179 180 0 149 181 0 179 181 0 144 182 0
		 181 182 0 180 182 0 143 185 0 180 183 0 182 184 0 183 184 0 185 186 0 183 187 0 185 187 0
		 184 188 0 187 188 0 186 188 0 182 189 0 184 190 0 189 190 0 144 191 0 191 189 0 143 192 0
		 192 191 0 185 193 0 192 193 0 186 194 0 193 194 0 188 195 0 194 195 0 190 195 0 143 185 0
		 185 196 0 187 197 0 196 197 0 196 198 0 197 199 0 198 199 0 185 196 0 186 198 0 189 200 0
		 190 201 0 200 201 0 191 202 0 202 200 0 192 203 0 203 202 0 193 204 0 203 204 0 194 205 0
		 204 205 0 195 206 0 205 206 0 201 206 0 200 207 0 201 208 0 207 208 0 202 209 0 209 207 0
		 203 210 0 210 209 0 204 211 0 210 211 0 205 212 0 211 212 0 206 213 0 212 213 0 208 213 0;
	setAttr -s 183 -ch 775 ".fc[0:182]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 2 3
		f 8 -9 6 -1 -28 -27 -26 -25 -8
		mu 0 8 4 5 1 0 31 29 27 25
		f 8 14 -17 18 20 21 22 23 19
		mu 0 8 16 17 18 20 21 22 23 19
		f 4 1 5 -11 -5
		mu 0 4 3 2 10 11
		f 4 -12 -6 -4 -7
		mu 0 4 12 13 14 15
		f 4 4 13 -15 -13
		mu 0 4 6 7 17 16
		f 4 -10 15 16 -14
		mu 0 4 7 8 18 17
		f 4 2 12 -20 -18
		mu 0 4 9 6 16 19
		f 4 -29 27 17 -24
		mu 0 4 23 30 9 19
		f 4 -30 26 28 -23
		mu 0 4 22 28 30 23
		f 6 -139 -141 -143 144 146 -148
		mu 0 6 87 88 89 90 91 92
		f 4 -32 24 30 -21
		mu 0 4 20 24 26 21
		f 6 7 33 -40 -164 -35 -33
		mu 0 6 8 24 33 37 102 32
		f 4 31 35 -37 -34
		mu 0 4 24 20 34 33
		f 6 -175 175 171 177 179 -181
		mu 0 6 107 108 106 105 109 110
		f 4 -184 185 187 -189
		mu 0 4 111 112 113 114
		f 4 -41 41 43 -43
		mu 0 4 36 37 39 38
		f 4 39 44 -46 -42
		mu 0 4 37 33 40 39
		f 4 36 46 -48 -45
		mu 0 4 33 34 41 40
		f 5 -39 42 48 49 -47
		mu 0 5 34 36 38 42 41
		f 4 -62 63 65 -67
		mu 0 4 47 48 49 50
		f 4 -44 51 53 -53
		mu 0 4 38 39 44 43
		f 4 45 54 -56 -52
		mu 0 4 39 40 45 44
		f 4 47 56 -58 -55
		mu 0 4 40 41 46 45
		f 4 -51 52 58 -57
		mu 0 4 41 38 43 46
		f 4 -54 59 61 -61
		mu 0 4 43 44 48 47
		f 4 55 62 -64 -60
		mu 0 4 44 45 49 48
		f 4 57 64 -66 -63
		mu 0 4 45 46 50 49
		f 4 -59 60 66 -65
		mu 0 4 46 43 47 50
		f 4 -31 67 69 -69
		mu 0 4 21 26 52 51
		f 6 25 70 150 151 -72 -68
		mu 0 6 26 28 95 96 53 52
		f 4 29 72 153 -71
		mu 0 4 28 22 93 95
		f 6 -22 68 74 -150 -149 -73
		mu 0 6 22 21 51 54 94 93
		f 4 -70 75 77 -77
		mu 0 4 51 52 56 55
		f 4 71 78 -80 -76
		mu 0 4 52 53 57 56
		f 4 73 80 -82 -79
		mu 0 4 53 54 58 57
		f 4 -75 76 82 -81
		mu 0 4 54 51 55 58
		f 4 -78 83 85 -85
		mu 0 4 55 56 60 59
		f 4 79 86 -88 -84
		mu 0 4 56 57 61 60
		f 4 81 88 -90 -87
		mu 0 4 57 58 62 61
		f 4 -83 84 90 -89
		mu 0 4 58 55 59 62
		f 4 -86 91 93 -93
		mu 0 4 59 60 64 63
		f 4 87 94 -96 -92
		mu 0 4 60 61 65 64
		f 4 89 96 -98 -95
		mu 0 4 61 62 66 65
		f 4 -91 92 98 -97
		mu 0 4 62 59 63 66
		f 6 -94 99 109 113 110 -101
		mu 0 6 63 64 72 75 73 71
		f 5 95 102 -104 -109 -100
		mu 0 5 64 65 69 68 72
		f 4 97 104 -106 -103
		mu 0 4 65 66 70 69
		f 5 -99 100 107 106 -105
		mu 0 5 66 63 71 67 70
		f 4 -111 112 111 -108
		mu 0 4 71 73 74 67
		f 4 -119 -121 122 123
		mu 0 4 77 78 79 80
		f 4 -116 -110 108 101
		mu 0 4 76 75 72 68
		f 4 -113 116 118 -118
		mu 0 4 74 73 78 77
		f 4 -114 119 120 -117
		mu 0 4 73 75 79 78
		f 4 115 121 -123 -120
		mu 0 4 75 76 80 79
		f 4 114 117 -124 -122
		mu 0 4 76 74 77 80
		f 4 -112 124 126 -126
		mu 0 4 67 74 82 81
		f 4 -115 127 128 -125
		mu 0 4 74 76 83 82
		f 4 -102 129 130 -128
		mu 0 4 76 68 84 83
		f 4 103 131 -133 -130
		mu 0 4 68 69 85 84
		f 4 105 133 -135 -132
		mu 0 4 69 70 86 85
		f 4 -107 125 135 -134
		mu 0 4 70 67 81 86
		f 4 -127 136 138 -138
		mu 0 4 81 82 88 87
		f 4 -129 139 140 -137
		mu 0 4 82 83 89 88
		f 4 -131 141 142 -140
		mu 0 4 83 84 90 89
		f 4 132 143 -145 -142
		mu 0 4 84 85 91 90
		f 4 134 145 -147 -144
		mu 0 4 85 86 92 91
		f 4 -136 137 147 -146
		mu 0 4 86 81 87 92
		f 4 -153 149 -74 -152
		mu 0 4 96 94 54 53
		f 4 -157 158 160 -162
		mu 0 4 97 98 99 100
		f 4 -154 154 156 -156
		mu 0 4 95 93 98 97
		f 4 148 157 -159 -155
		mu 0 4 93 94 99 98
		f 4 152 159 -161 -158
		mu 0 4 94 96 100 99
		f 4 -151 155 161 -160
		mu 0 4 96 95 97 100
		f 4 -165 163 40 -163
		mu 0 4 101 102 37 36
		f 4 34 166 -168 -166
		mu 0 4 32 102 104 103
		f 4 164 168 -170 -167
		mu 0 4 102 101 105 104
		f 4 -188 190 192 -194
		mu 0 4 114 113 115 116
		f 4 -19 172 174 -174
		mu 0 4 20 18 108 107
		f 4 37 170 -176 -173
		mu 0 4 18 35 106 108
		f 4 162 176 -178 -169
		mu 0 4 101 36 109 105
		f 4 38 178 -180 -177
		mu 0 4 36 34 110 109
		f 4 -36 173 180 -179
		mu 0 4 34 20 107 110
		f 4 -16 181 183 -183
		mu 0 4 18 8 112 111
		f 4 32 184 -186 -182
		mu 0 4 8 32 113 112
		f 4 -38 182 188 -187
		mu 0 4 35 18 111 114
		f 4 165 189 -191 -185
		mu 0 4 32 103 115 113
		f 4 241 243 -246 -247
		mu 0 4 140 141 142 143
		f 4 -171 186 193 -192
		mu 0 4 106 35 114 116
		f 5 167 195 206 -197 -195
		mu 0 5 103 104 122 123 117
		f 4 -172 198 199 -198
		mu 0 4 105 106 119 118
		f 4 191 201 -203 -199
		mu 0 4 106 116 120 119
		f 4 -193 203 204 -202
		mu 0 4 116 115 121 120
		f 4 -190 194 205 -204
		mu 0 4 115 103 117 121
		f 4 200 259 -210 -208
		mu 0 4 117 151 150 124
		f 4 202 210 -212 -209
		mu 0 4 119 120 126 125
		f 4 -205 212 213 -211
		mu 0 4 120 121 127 126
		f 4 -206 207 214 -213
		mu 0 4 121 117 124 127
		f 4 209 258 -218 -216
		mu 0 4 124 150 149 128
		f 4 211 218 -220 -217
		mu 0 4 125 126 130 129
		f 4 -250 251 253 -255
		mu 0 4 144 145 146 147
		f 4 -215 215 222 -221
		mu 0 4 127 124 128 131
		f 4 217 257 -226 -224
		mu 0 4 128 149 148 132
		f 4 219 226 -228 -225
		mu 0 4 129 130 134 133
		f 4 -222 228 229 -227
		mu 0 4 130 131 135 134
		f 4 -223 223 230 -229
		mu 0 4 131 128 132 135
		f 5 225 255 232 -234 -232
		mu 0 5 132 148 133 137 136
		f 4 227 234 -236 -233
		mu 0 4 133 134 138 137
		f 4 -230 236 237 -235
		mu 0 4 134 135 139 138
		f 4 -231 231 238 -237
		mu 0 4 135 132 136 139
		f 4 233 240 -242 -240
		mu 0 4 136 137 141 140
		f 4 235 242 -244 -241
		mu 0 4 137 138 142 141
		f 4 -238 244 245 -243
		mu 0 4 138 139 143 142
		f 4 -239 239 246 -245
		mu 0 4 139 136 140 143
		f 4 -214 247 249 -249
		mu 0 4 126 127 145 144
		f 4 220 250 -252 -248
		mu 0 4 127 131 146 145
		f 4 221 252 -254 -251
		mu 0 4 131 130 147 146
		f 4 -219 248 254 -253
		mu 0 4 130 126 144 147
		f 8 -265 -263 -267 268 -268 216 224 263
		mu 0 8 154 152 153 155 156 125 129 133
		f 4 -335 336 338 -340
		mu 0 4 193 194 195 196
		f 4 -258 260 262 -262
		mu 0 4 148 149 153 152
		f 4 -256 261 264 -264
		mu 0 4 133 148 152 154
		f 4 -259 265 266 -261
		mu 0 4 149 150 155 153
		f 5 -260 269 270 278 -266
		mu 0 5 150 151 157 164 155
		f 4 256 271 -273 -270
		mu 0 4 151 119 158 157
		f 5 208 267 -278 -274 -272
		mu 0 5 119 125 156 163 158
		f 4 196 275 -277 -275
		mu 0 4 159 160 161 162
		f 5 -290 290 291 288 287
		mu 0 5 165 170 171 169 168
		f 5 -280 280 282 289 -282
		mu 0 5 163 164 166 170 165
		f 5 -271 283 284 292 -281
		mu 0 5 164 157 167 172 166
		f 5 272 285 -289 -287 -284
		mu 0 5 157 158 168 169 167
		f 4 273 281 -288 -286
		mu 0 4 158 163 165 168
		f 4 -292 293 -285 286
		mu 0 4 169 171 172 167
		f 4 -319 -321 322 -324
		mu 0 4 185 186 187 188
		f 4 -294 294 296 -296
		mu 0 4 172 171 174 173
		f 6 -291 297 298 304 305 -295
		mu 0 6 171 170 175 179 180 174
		f 4 -283 299 300 -298
		mu 0 4 170 166 176 175
		f 6 -293 295 301 302 303 -300
		mu 0 6 166 172 173 177 178 176
		f 4 -327 -329 -331 -332
		mu 0 4 189 190 191 192
		f 4 -308 -305 306 -303
		mu 0 4 177 180 179 178
		f 4 -297 308 310 -310
		mu 0 4 173 174 182 181
		f 4 -306 311 312 -309
		mu 0 4 174 180 183 182
		f 4 307 313 -315 -312
		mu 0 4 180 177 184 183
		f 4 -302 309 315 -314
		mu 0 4 177 173 181 184
		f 4 -311 316 318 -318
		mu 0 4 181 182 186 185
		f 4 -313 319 320 -317
		mu 0 4 182 183 187 186
		f 4 314 321 -323 -320
		mu 0 4 183 184 188 187
		f 4 -316 317 323 -322
		mu 0 4 184 181 185 188
		f 4 -307 324 326 -326
		mu 0 4 178 179 190 189
		f 4 -299 327 328 -325
		mu 0 4 179 175 191 190
		f 4 -301 329 330 -328
		mu 0 4 175 176 192 191
		f 4 -304 325 331 -330
		mu 0 4 176 178 189 192
		f 4 -279 332 334 -334
		mu 0 4 155 164 194 193
		f 4 279 335 -337 -333
		mu 0 4 164 163 195 194
		f 4 277 337 -339 -336
		mu 0 4 163 156 196 195
		f 4 339 342 -344 -342
		mu 0 4 193 196 198 197
		f 7 -390 -392 -394 395 397 399 -401
		mu 0 7 225 226 227 228 229 230 231
		f 5 345 -347 -341 333 341
		mu 0 5 197 201 200 155 193
		f 4 343 347 -349 -346
		mu 0 4 197 198 202 201
		f 4 -343 350 352 -352
		mu 0 4 198 196 204 203
		f 4 -338 353 354 -351
		mu 0 4 196 156 205 204
		f 4 -269 355 356 -354
		mu 0 4 156 155 206 205
		f 4 344 359 -361 -358
		mu 0 4 200 199 208 207
		f 4 349 361 -363 -360
		mu 0 4 199 202 209 208
		f 4 -348 351 363 -362
		mu 0 4 202 198 203 209
		f 4 -356 364 357 -359
		mu 0 4 206 155 200 207
		f 4 346 366 -368 -366
		mu 0 4 210 211 212 213
		f 4 367 369 -371 -369
		mu 0 4 214 215 216 217
		f 4 -345 371 368 -373
		mu 0 4 199 200 214 217
		f 4 -353 373 375 -375
		mu 0 4 203 204 219 218
		f 4 -355 376 377 -374
		mu 0 4 204 205 220 219
		f 4 -357 378 379 -377
		mu 0 4 205 206 221 220
		f 4 358 380 -382 -379
		mu 0 4 206 207 222 221
		f 4 360 382 -384 -381
		mu 0 4 207 208 223 222
		f 4 362 384 -386 -383
		mu 0 4 208 209 224 223
		f 4 -364 374 386 -385
		mu 0 4 209 203 218 224
		f 4 -376 387 389 -389
		mu 0 4 218 219 226 225
		f 4 -378 390 391 -388
		mu 0 4 219 220 227 226
		f 4 -380 392 393 -391
		mu 0 4 220 221 228 227
		f 4 381 394 -396 -393
		mu 0 4 221 222 229 228
		f 4 383 396 -398 -395
		mu 0 4 222 223 230 229
		f 4 385 398 -400 -397
		mu 0 4 223 224 231 230
		f 4 -387 388 400 -399
		mu 0 4 224 218 225 231;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "Ground1";
createNode mesh -n "GroundShape1" -p "Ground1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface44";
createNode mesh -n "polySurfaceShape95" -p "polySurface44";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform24";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape53" -p "transform24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 232 ".uvst[0].uvsp[0:231]" -type "float2" 0.625 0.5 0.625 0.75
		 0.625 0.4048667 0.125 0 0.22013327 0 0.22013327 0.25 0.125 0.25 0.625 0.8451333 0.7798667
		 0.25 0.7798667 0 0.875 0 0.875 0.25 0.125 0 0.22013327 0 0.22013327 0.25 0.125 0.25
		 0.20110662 0.25 0.18207997 0.25 0.1630533 0.25 0.14402665 0.25 0.20110662 0.25 0.18207997
		 0.25 0.1630533 0.25 0.14402665 0.25 0.22013327 0.25 0.20110662 0.25 0.20110662 0.25
		 0.22013327 0.25 0.21061996 0.25 0.21061996 0.25 0.21061996 0.25 0.21061996 0.25 0.20110662
		 0.25 0.20110662 0.25 0.2058633 0.25 0.21061996 0.25 0.21061996 0.25 0.20110662 0.25
		 0.20110662 0.25 0.21061996 0.25 0.21061996 0.25 0.20110662 0.25 0.20110662 0.25 0.18207997
		 0.25 0.18207997 0.25 0.1630533 0.25 0.1630533 0.25 0.18207997 0.25 0.18207997 0.25
		 0.1630533 0.25 0.1630533 0.25 0.18207997 0.25 0.18207997 0.25 0.1630533 0.25 0.1630533
		 0.25 0.18207997 0.25 0.18207997 0.25 0.1630533 0.25 0.1630533 0.25 0.18207997 0.25
		 0.18207997 0.25 0.1630533 0.25 0.1630533 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997
		 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25
		 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997
		 0.25 0.1630533 0.25 0.1630533 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25
		 0.18207997 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533
		 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533 0.25 0.21537662
		 0.25 0.21537662 0.25 0.22013327 0.25 0.21537662 0.25 0.21537662 0.25 0.22013327 0.25
		 0.20110662 0.25 0.22013327 0.25 0.21061996 0.25 0.20110662 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.21537662 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.21537663 0.25 0.2199531
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0 0 1 0 1 1 0 1 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013326 0.25 0.22013327 0.25 0.22013326 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013326 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013326 0.25 0.22013327 0.25 0.22013326 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.375 0.5 0.375 0.75 0.375 0.4048667 0.375 0.48097333 0.375 0.46194667 0.375
		 0.44292003 0.375 0.42389336 0.375 0.8451333;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[138]" -type "float3" -2.3841858e-07 0 5.9604645e-08 ;
	setAttr ".pt[143]" -type "float3" -2.3841858e-07 0 5.9604645e-08 ;
	setAttr ".pt[180]" -type "float3" -2.9802322e-07 5.5879354e-09 -2.9802322e-08 ;
	setAttr ".pt[183]" -type "float3" -2.9802322e-07 5.5879354e-09 -2.9802322e-08 ;
	setAttr ".pt[185]" -type "float3" -2.3841858e-07 0 5.9604645e-08 ;
	setAttr ".pt[187]" -type "float3" -2.9802322e-07 5.5879354e-09 -2.9802322e-08 ;
	setAttr -s 222 ".vt";
	setAttr ".vt[0:165]"  -1 0.36348236 -103.49184418 1 0.36348236 -103.49184418
		 -1 -4.36348248 -103.49184418 1 -4.36348248 -103.49184418 1 0.36348236 -33.99150848
		 -1 0.36348236 -33.99150848 -1 -4.36348248 -33.99150848 1 -4.36348248 -33.99150848
		 -19.70366096 -4.36348248 -103.49184418 -19.70366096 -4.36348248 -33.99150848 -19.70366096 0.36348236 -33.99150848
		 -19.70366096 0.36348236 -103.49184418 -19.70366096 0.36348236 -61.23766327 -19.70366096 0.36348236 -67.18913269
		 -19.70366096 0.36348236 -85.29191589 -19.70366096 0.36348236 -89.73162842 -1 0.36348236 -61.23766327
		 -1 0.36348236 -67.18913269 -1 0.36348236 -85.29191589 -1 0.36348236 -89.73162842
		 -1 8.77541924 -33.99150848 -1 12.56773186 -61.23766327 -19.70366096 12.56773186 -61.23766327
		 -19.70366096 8.77541924 -33.99150848 -19.70366096 18.88365555 -43.55310059 -1 18.88365555 -43.55310059
		 -1 27.74294281 -45.24787903 -19.70366096 27.74294281 -45.24787903 -1 27.74325562 -61.23766327
		 -19.70366096 27.74325562 -61.23766327 -19.70366096 27.74309921 -58.58123398 -6.28837967 27.74296761 -44.9588623
		 -18.24658585 27.74296761 -44.9588623 -6.28837967 27.74323082 -58.45733643 -18.24658585 27.74323082 -58.45733643
		 -6.28837967 50.96836853 -44.63911819 -18.24658585 50.96836853 -44.63911819 -6.28837967 40.057861328 -58.45733643
		 -18.24658585 40.057861328 -58.45733643 -1 25.94944763 -67.18913269 -19.70366096 25.94944763 -67.18913269
		 -1 25.94944763 -85.29191589 -19.70366096 25.94944763 -85.29191589 -5.70819092 25.94944763 -67.29399872
		 -18.68509865 25.94944763 -67.29399872 -5.70819092 25.94944763 -83.42510223 -18.68509865 25.94944763 -83.42510223
		 -5.70819092 36.56855011 -67.29399872 -18.68509865 36.56855011 -67.29399872 -5.70819092 36.56855011 -83.42510223
		 -18.68509865 36.56855011 -83.42510223 -0.20675945 36.56855011 -67.30506134 -24.18653107 36.56855011 -67.30506134
		 -0.20675945 36.56855011 -88.2716217 -24.18653107 36.56855011 -88.2716217 -0.20675945 60.93210602 -67.30506134
		 -24.18653107 60.93210602 -67.30506134 -0.20675945 60.93210602 -88.2716217 -24.18653107 60.93210602 -88.2716217
		 -24.18653107 44.133255 -67.30506134 -0.20675945 44.133255 -67.30506134 -12.19664574 44.133255 -67.30506134
		 -12.19664574 60.93210602 -67.30506134 -3.68376637 44.133255 -67.30506134 -3.68376637 60.93210602 -67.30506134
		 -12.19664574 44.133255 -63.018039703 -12.19664574 60.93210602 -63.018039703 -3.68376637 44.133255 -63.018039703
		 -3.68376637 60.93210602 -63.018039703 -10.94519234 60.93210602 -74.7181015 -20.96292114 60.93210602 -74.27970123
		 -3.83255458 60.93210602 -74.7181015 -0.92746305 60.93210602 -74.7181015 -0.92746305 60.93210602 -86.65988922
		 -20.96292114 60.93210602 -86.65988922 -10.94519234 65.91910553 -74.7181015 -20.96292114 65.91910553 -74.27970123
		 -3.83255458 65.91910553 -74.7181015 -0.92746305 65.91910553 -74.7181015 -0.92746305 65.91910553 -86.65988922
		 -20.96292114 65.91910553 -86.65988922 -19.70366096 3.23414898 -85.29191589 -19.70366096 23.078783035 -85.29191589
		 -1 3.23414898 -85.29191589 -1 23.078783035 -85.29191589 -19.70366096 3.23414898 -93.17697144
		 -1 3.23414898 -93.17697144 -19.70366096 23.078783035 -93.17697144 -1 23.078783035 -93.17697144
		 -19.70366096 15.6740303 -40.84392548 -1 15.6740303 -40.84392548 -1 42.044136047 -33.99150848
		 -1 42.044136047 -40.84392548 -19.70366096 42.044136047 -40.84392548 -19.70366096 42.044136047 -33.99150848
		 -19.70366096 42.044139862 -33.99150848 -19.70366096 42.044139862 -61.23766327 -19.70366096 42.044136047 -43.55310059
		 -19.70366096 42.044136047 -61.23766327 -1 0.36348236 -28.10439491 -19.70366096 0.36348236 -28.10439491
		 -1 8.77541924 -27.8548317 -19.70366096 8.77541924 -27.8548317 -1 42.044136047 -27.8548317
		 -19.70366096 42.044136047 -27.8548317 -1 48.97618866 -42.18863297 -19.70366096 48.70832062 -58.95368958
		 -19.70366096 48.97618866 -42.18863297 -19.70366096 48.97618866 -27.85409546 -1 48.97618866 -27.85409546
		 -1 43.57246399 -44.99710846 -1 48.70832062 -44.99711227 -1 73.85704803 -42.18863297
		 -19.70366096 73.85704803 -42.18863297 -19.70366096 73.85704803 -27.85409546 -1 73.85704803 -27.85409546
		 -1 76.89528656 -42.18863297 -19.70366096 76.89528656 -42.18863297 -19.70366096 76.89528656 -27.85409546
		 -1 76.89528656 -27.85409546 -1 82.47684479 -42.18863297 -19.70366096 78.39564514 -42.18863297
		 -19.70366096 82.47684479 -27.85409546 -1 82.47684479 -27.85409546 -3.62578654 82.47684479 -42.11809158
		 -17.07787323 82.47684479 -42.11809158 -17.07787323 82.47684479 -30.18364525 -3.62578654 82.47684479 -30.18364525
		 -3.62578654 86.82810211 -42.11809158 -17.07787323 86.82810211 -42.11809158 -17.07787323 86.82810211 -30.18364525
		 -3.62578654 86.82810211 -30.18364525 -1 73.85704803 -26.1119957 -19.70366096 73.85704803 -26.1119957
		 -1 76.89528656 -26.1119957 -19.70366096 76.89528656 -26.1119957 -5.077461243 78.39564514 -42.18863297
		 -5.077461243 76.89528656 -42.18863297 -5.077461243 73.85704803 -42.18863297 -5.077461243 48.97618866 -42.18863297
		 -5.077461243 76.89528656 -51.70427322 -5.077461243 78.39564514 -51.70427322 -19.70366096 78.39564514 -51.70427322
		 -5.077461243 73.85704803 -51.70427322 -19.70366096 73.85704803 -51.70427322 -5.52322674 47.3218956 -44.27946472
		 -20.14942741 47.3218956 -44.27946472 -6.79290581 48.97618866 -42.18863297 -6.79290581 48.70832062 -44.99711227
		 -19.92654419 60.58946991 -47.39971161 -5.30034399 60.58946991 -47.39971161 -5.30034399 60.50130081 -47.39971161
		 -19.92654419 60.58946991 -47.39971161 -5.52322674 47.3218956 -44.27946472 -20.14942741 47.3218956 -44.27946472
		 -12.8363266 47.3218956 -44.27946472 -12.61344433 60.50130081 -47.39971161 -12.72488594 50.25303268 -45.57449341
		 -5.41178513 50.25303268 -45.57449341 -12.72488594 46.69865417 -50.59839249 -5.41178513 46.69865417 -50.59839249
		 -12.61344433 60.50127411 -51.010860443 -5.30034399 60.50127411 -51.010860443 -5.3746376 51.24227142 -51.0020942688
		 -5.33749104 54.19171906 -51.0064811707 -12.6505909 54.19171906 -51.006477356;
	setAttr ".vt[166:221]" -12.68773842 51.24227142 -51.0020980835 -12.72488213 43.87169266 -54.45358658
		 -5.41178131 43.87169266 -54.45358658 -12.6877346 51.23847198 -54.45796585 -5.37463379 51.23847198 -54.45796204
		 -12.72488022 47.89554596 -57.8598938 -5.4117794 47.89554596 -57.8598938 -12.6877327 51.23616028 -57.86427307
		 -5.37463188 51.23616028 -57.86426926 -12.6505909 54.18677521 -57.64985657 -5.33749104 54.18677521 -57.64986038
		 -12.61344433 60.49633026 -57.65423965 -5.30034399 60.49633026 -57.65423965 -5.30034399 60.58946991 -57.84555817
		 -5.07746172 73.85704803 -57.85002136 -19.92654419 60.58946991 -57.84555817 -19.70366096 73.85704803 -57.85002136
		 -5.07746172 73.85704803 -57.85002136 -19.70366096 73.85704803 -57.85002136 -5.077461243 73.85704803 -69.42563629
		 -19.70366096 73.85704803 -69.42563629 -5.07746172 73.85704803 -57.85002136 -19.70366096 73.85704803 -57.85002136
		 -19.70366096 92.16420746 -57.85002136 -19.70366096 92.16420746 -57.85002136 -19.70366096 92.16420746 -51.70427322
		 -5.077461243 92.16420746 -51.70427322 -5.077461243 92.16420746 -69.42563629 -19.70366096 92.16420746 -69.42563629
		 -19.70366096 92.16420746 -57.85002136 -5.077461243 68.43838501 -69.42563629 -5.16675568 68.43838501 -57.85002136
		 -11.6374445 68.43838501 -69.42563629 -11.6374445 68.43838501 -57.85002136 -16.76671982 92.16420746 -58.94033813
		 -16.76671982 92.16420746 -58.94033813 -16.76671982 92.16420746 -55.26272202 -8.014401436 92.16420746 -55.26272202
		 -8.014401436 92.16420746 -65.8671875 -16.76671982 92.16420746 -65.8671875 -16.76671982 92.16420746 -58.94033813
		 -16.76671982 94.26941681 -58.94033813 -16.76671982 94.26941681 -58.94033813 -16.76671982 94.26941681 -55.26272202
		 -8.014401436 94.26941681 -55.26272202 -8.014401436 94.26941681 -65.8671875 -16.76671982 94.26941681 -65.8671875
		 -16.76671982 94.26941681 -58.94033813 -1 -4.36348248 -103.49184418 -1 0.36348236 -103.49184418
		 -1 0.36348236 -89.73162842 -1 0.36348236 -85.29191589 -1 0.36348236 -67.18913269
		 -1 0.36348236 -61.23766327 -1 0.36348236 -33.99150848 -1 -4.36348248 -33.99150848;
	setAttr -s 407 ".ed";
	setAttr ".ed[0:165]"  215 1 0 214 3 0 0 2 0 1 3 0 2 6 0 3 7 0 4 1 0 5 16 0
		 4 220 0 5 6 0 221 7 0 7 4 0 2 8 0 6 9 0 8 9 0 5 10 0 10 9 0 0 11 0 10 12 0 11 8 0
		 12 13 0 13 14 0 14 15 0 15 11 0 16 17 0 17 18 0 18 19 0 19 0 0 19 15 0 18 14 0 17 13 0
		 16 12 0 5 20 0 16 21 0 20 90 0 12 22 0 21 22 0 10 23 0 24 22 0 25 21 0 25 24 0 25 26 0
		 24 27 0 26 27 0 21 28 0 26 28 0 22 29 0 28 29 0 27 30 0 30 29 0 27 29 0 26 31 0 27 32 0
		 31 32 0 28 33 0 31 33 0 29 34 0 33 34 0 32 34 0 31 35 0 32 36 0 35 36 0 33 37 0 35 37 0
		 34 38 0 37 38 0 36 38 0 17 39 0 13 40 0 39 40 0 18 83 0 39 41 0 14 81 0 41 42 0 40 42 0
		 39 43 0 40 44 0 43 44 0 41 45 0 43 45 0 42 46 0 45 46 0 44 46 0 43 47 0 44 48 0 47 48 0
		 45 49 0 47 49 0 46 50 0 49 50 0 48 50 0 47 51 0 48 52 0 51 52 0 49 53 0 51 53 0 50 54 0
		 53 54 0 52 54 0 51 60 0 52 59 0 55 64 0 53 57 0 55 57 0 54 58 0 57 58 0 56 58 0 59 56 0
		 60 55 0 60 63 0 61 59 0 62 56 0 61 62 0 63 61 0 64 62 0 63 64 0 61 65 0 62 66 0 65 66 0
		 63 67 0 67 65 0 64 68 0 67 68 0 68 66 0 62 69 0 56 70 0 69 70 0 64 71 0 71 69 0 55 72 0
		 72 71 0 57 73 0 72 73 0 58 74 0 73 74 0 70 74 0 69 75 0 70 76 0 75 76 0 71 77 0 77 75 0
		 72 78 0 78 77 0 73 79 0 78 79 0 74 80 0 79 80 0 76 80 0 81 82 0 82 42 0 83 84 0 84 41 0
		 82 84 0 81 83 0 81 85 0 83 86 0 85 86 0 82 87 0 85 87 0 84 88 0 87 88 0 86 88 0 89 24 0
		 90 25 0 90 89 0 20 91 0;
	setAttr ".ed[166:331]" 90 92 0 91 92 0 89 93 0 92 93 0 23 94 0 94 93 0 10 95 0
		 12 96 0 95 96 0 95 94 0 24 97 0 93 97 0 22 98 0 97 98 0 96 98 0 5 99 0 10 100 0 99 100 0
		 20 101 0 99 101 0 23 102 0 101 102 0 100 102 0 91 103 0 101 103 0 94 104 0 103 104 0
		 102 104 0 91 105 0 92 110 0 105 111 0 93 106 0 94 107 0 107 106 0 105 139 0 104 108 0
		 107 108 0 103 109 0 109 108 0 105 109 0 110 111 0 105 112 0 107 113 0 112 138 0 108 114 0
		 113 114 0 109 115 0 115 114 0 112 115 0 112 116 0 113 117 0 116 137 0 114 118 0 117 118 0
		 115 119 0 119 118 0 116 119 0 116 120 0 117 121 0 120 136 0 118 122 0 121 122 0 119 123 0
		 123 122 0 120 123 0 120 124 0 121 125 0 124 125 0 122 126 0 125 126 0 123 127 0 127 126 0
		 124 127 0 124 128 0 125 129 0 128 129 0 126 130 0 129 130 0 127 131 0 131 130 0 128 131 0
		 115 132 0 114 133 0 132 133 0 119 134 0 132 134 0 118 135 0 134 135 0 133 135 0 136 121 0
		 139 107 0 137 136 0 138 137 0 139 138 0 137 140 0 136 141 0 140 141 0 121 142 0 141 142 0
		 138 143 0 143 140 0 113 144 0 139 145 0 145 150 0 107 146 0 145 146 0 146 149 0 105 147 0
		 111 148 0 147 148 0 149 144 0 150 143 0 150 149 0 150 151 0 149 152 0 151 156 0 145 153 0
		 153 158 0 146 154 0 153 155 0 154 152 0 155 154 0 156 152 0 156 157 0 157 155 0 158 151 0
		 157 158 0 157 159 0 158 160 0 159 160 0 156 161 0 161 165 0 151 162 0 162 161 0 160 163 0
		 163 164 0 164 162 0 165 166 0 166 159 0 165 164 0 166 163 0 159 167 0 160 168 0 167 168 0
		 166 169 0 169 167 0 163 170 0 169 170 0 168 170 0 167 171 0 168 172 0 171 172 0 169 173 0
		 173 171 0 170 174 0 173 174 0 172 174 0 165 175 0 164 176 0 175 176 0 161 177 0 177 175 0
		 162 178 0 178 177 0 176 178 0 150 179 0;
	setAttr ".ed[332:406]" 143 180 0 179 180 0 149 181 0 179 181 0 144 182 0 181 182 0
		 180 182 0 143 185 0 180 183 0 182 184 0 183 184 0 185 186 0 183 187 0 185 187 0 184 188 0
		 187 188 0 186 188 0 182 189 0 184 190 0 189 190 0 144 191 0 191 189 0 143 192 0 192 191 0
		 185 193 0 192 193 0 186 194 0 193 194 0 188 195 0 194 195 0 190 195 0 143 185 0 185 196 0
		 187 197 0 196 197 0 196 198 0 197 199 0 198 199 0 185 196 0 186 198 0 189 200 0 190 201 0
		 200 201 0 191 202 0 202 200 0 192 203 0 203 202 0 193 204 0 203 204 0 194 205 0 204 205 0
		 195 206 0 205 206 0 201 206 0 200 207 0 201 208 0 207 208 0 202 209 0 209 207 0 203 210 0
		 210 209 0 204 211 0 210 211 0 205 212 0 211 212 0 206 213 0 212 213 0 208 213 0 215 214 0
		 216 215 0 217 216 0 218 217 0 219 218 0 220 219 0 214 221 0;
	setAttr -s 180 -ch 759 ".fc[0:179]" -type "polyFaces" 
		f 4 0 3 -2 -401
		mu 0 4 224 0 1 225
		f 8 -9 6 -1 -402 -403 -404 -405 -406
		mu 0 8 226 2 0 224 227 228 229 230
		f 8 14 -17 18 20 21 22 23 19
		mu 0 8 12 13 14 16 17 18 19 15
		f 4 1 5 -11 -407
		mu 0 4 225 1 7 231
		f 4 -12 -6 -4 -7
		mu 0 4 8 9 10 11
		f 4 4 13 -15 -13
		mu 0 4 3 4 13 12
		f 4 -10 15 16 -14
		mu 0 4 4 5 14 13
		f 4 2 12 -20 -18
		mu 0 4 6 3 12 15
		f 4 -29 27 17 -24
		mu 0 4 19 23 6 15
		f 4 -30 26 28 -23
		mu 0 4 18 22 23 19
		f 6 -139 -141 -143 144 146 -148
		mu 0 6 79 80 81 82 83 84
		f 4 -32 24 30 -21
		mu 0 4 16 20 21 17
		f 6 7 33 -40 -164 -35 -33
		mu 0 6 5 20 25 29 94 24
		f 4 31 35 -37 -34
		mu 0 4 20 16 26 25
		f 6 -175 175 171 177 179 -181
		mu 0 6 99 100 98 97 101 102
		f 4 -184 185 187 -189
		mu 0 4 103 104 105 106
		f 4 -41 41 43 -43
		mu 0 4 28 29 31 30
		f 4 39 44 -46 -42
		mu 0 4 29 25 32 31
		f 4 36 46 -48 -45
		mu 0 4 25 26 33 32
		f 5 -39 42 48 49 -47
		mu 0 5 26 28 30 34 33
		f 4 -62 63 65 -67
		mu 0 4 39 40 41 42
		f 4 -44 51 53 -53
		mu 0 4 30 31 36 35
		f 4 45 54 -56 -52
		mu 0 4 31 32 37 36
		f 4 47 56 -58 -55
		mu 0 4 32 33 38 37
		f 4 -51 52 58 -57
		mu 0 4 33 30 35 38
		f 4 -54 59 61 -61
		mu 0 4 35 36 40 39
		f 4 55 62 -64 -60
		mu 0 4 36 37 41 40
		f 4 57 64 -66 -63
		mu 0 4 37 38 42 41
		f 4 -59 60 66 -65
		mu 0 4 38 35 39 42
		f 4 -31 67 69 -69
		mu 0 4 17 21 44 43
		f 6 25 70 150 151 -72 -68
		mu 0 6 21 22 87 88 45 44
		f 4 29 72 153 -71
		mu 0 4 22 18 85 87
		f 6 -22 68 74 -150 -149 -73
		mu 0 6 18 17 43 46 86 85
		f 4 -70 75 77 -77
		mu 0 4 43 44 48 47
		f 4 71 78 -80 -76
		mu 0 4 44 45 49 48
		f 4 73 80 -82 -79
		mu 0 4 45 46 50 49
		f 4 -75 76 82 -81
		mu 0 4 46 43 47 50
		f 4 -78 83 85 -85
		mu 0 4 47 48 52 51
		f 4 79 86 -88 -84
		mu 0 4 48 49 53 52
		f 4 81 88 -90 -87
		mu 0 4 49 50 54 53
		f 4 -83 84 90 -89
		mu 0 4 50 47 51 54
		f 4 -86 91 93 -93
		mu 0 4 51 52 56 55
		f 4 87 94 -96 -92
		mu 0 4 52 53 57 56
		f 4 89 96 -98 -95
		mu 0 4 53 54 58 57
		f 4 -91 92 98 -97
		mu 0 4 54 51 55 58
		f 6 -94 99 109 113 110 -101
		mu 0 6 55 56 64 67 65 63
		f 5 95 102 -104 -109 -100
		mu 0 5 56 57 61 60 64
		f 4 97 104 -106 -103
		mu 0 4 57 58 62 61
		f 5 -99 100 107 106 -105
		mu 0 5 58 55 63 59 62
		f 4 -111 112 111 -108
		mu 0 4 63 65 66 59
		f 4 -119 -121 122 123
		mu 0 4 69 70 71 72
		f 4 -116 -110 108 101
		mu 0 4 68 67 64 60
		f 4 -113 116 118 -118
		mu 0 4 66 65 70 69
		f 4 -114 119 120 -117
		mu 0 4 65 67 71 70
		f 4 115 121 -123 -120
		mu 0 4 67 68 72 71
		f 4 114 117 -124 -122
		mu 0 4 68 66 69 72
		f 4 -112 124 126 -126
		mu 0 4 59 66 74 73
		f 4 -115 127 128 -125
		mu 0 4 66 68 75 74
		f 4 -102 129 130 -128
		mu 0 4 68 60 76 75
		f 4 103 131 -133 -130
		mu 0 4 60 61 77 76
		f 4 105 133 -135 -132
		mu 0 4 61 62 78 77
		f 4 -107 125 135 -134
		mu 0 4 62 59 73 78
		f 4 -127 136 138 -138
		mu 0 4 73 74 80 79
		f 4 -129 139 140 -137
		mu 0 4 74 75 81 80
		f 4 -131 141 142 -140
		mu 0 4 75 76 82 81
		f 4 132 143 -145 -142
		mu 0 4 76 77 83 82
		f 4 134 145 -147 -144
		mu 0 4 77 78 84 83
		f 4 -136 137 147 -146
		mu 0 4 78 73 79 84
		f 4 -153 149 -74 -152
		mu 0 4 88 86 46 45
		f 4 -157 158 160 -162
		mu 0 4 89 90 91 92
		f 4 -154 154 156 -156
		mu 0 4 87 85 90 89
		f 4 148 157 -159 -155
		mu 0 4 85 86 91 90
		f 4 152 159 -161 -158
		mu 0 4 86 88 92 91
		f 4 -151 155 161 -160
		mu 0 4 88 87 89 92
		f 4 -165 163 40 -163
		mu 0 4 93 94 29 28
		f 4 34 166 -168 -166
		mu 0 4 24 94 96 95
		f 4 164 168 -170 -167
		mu 0 4 94 93 97 96
		f 4 -188 190 192 -194
		mu 0 4 106 105 107 108
		f 4 -19 172 174 -174
		mu 0 4 16 14 100 99
		f 4 37 170 -176 -173
		mu 0 4 14 27 98 100
		f 4 162 176 -178 -169
		mu 0 4 93 28 101 97
		f 4 38 178 -180 -177
		mu 0 4 28 26 102 101
		f 4 -36 173 180 -179
		mu 0 4 26 16 99 102
		f 4 -16 181 183 -183
		mu 0 4 14 5 104 103
		f 4 32 184 -186 -182
		mu 0 4 5 24 105 104
		f 4 -38 182 188 -187
		mu 0 4 27 14 103 106
		f 4 165 189 -191 -185
		mu 0 4 24 95 107 105
		f 4 241 243 -246 -247
		mu 0 4 132 133 134 135
		f 4 -171 186 193 -192
		mu 0 4 98 27 106 108
		f 5 167 195 206 -197 -195
		mu 0 5 95 96 114 115 109
		f 4 -172 198 199 -198
		mu 0 4 97 98 111 110
		f 4 191 201 -203 -199
		mu 0 4 98 108 112 111
		f 4 -193 203 204 -202
		mu 0 4 108 107 113 112
		f 4 -190 194 205 -204
		mu 0 4 107 95 109 113
		f 4 200 259 -210 -208
		mu 0 4 109 143 142 116
		f 4 202 210 -212 -209
		mu 0 4 111 112 118 117
		f 4 -205 212 213 -211
		mu 0 4 112 113 119 118
		f 4 -206 207 214 -213
		mu 0 4 113 109 116 119
		f 4 209 258 -218 -216
		mu 0 4 116 142 141 120
		f 4 211 218 -220 -217
		mu 0 4 117 118 122 121
		f 4 -250 251 253 -255
		mu 0 4 136 137 138 139
		f 4 -215 215 222 -221
		mu 0 4 119 116 120 123
		f 4 217 257 -226 -224
		mu 0 4 120 141 140 124
		f 4 219 226 -228 -225
		mu 0 4 121 122 126 125
		f 4 -222 228 229 -227
		mu 0 4 122 123 127 126
		f 4 -223 223 230 -229
		mu 0 4 123 120 124 127
		f 5 225 255 232 -234 -232
		mu 0 5 124 140 125 129 128
		f 4 227 234 -236 -233
		mu 0 4 125 126 130 129
		f 4 -230 236 237 -235
		mu 0 4 126 127 131 130
		f 4 -231 231 238 -237
		mu 0 4 127 124 128 131
		f 4 233 240 -242 -240
		mu 0 4 128 129 133 132
		f 4 235 242 -244 -241
		mu 0 4 129 130 134 133
		f 4 -238 244 245 -243
		mu 0 4 130 131 135 134
		f 4 -239 239 246 -245
		mu 0 4 131 128 132 135
		f 4 -214 247 249 -249
		mu 0 4 118 119 137 136
		f 4 220 250 -252 -248
		mu 0 4 119 123 138 137
		f 4 221 252 -254 -251
		mu 0 4 123 122 139 138
		f 4 -219 248 254 -253
		mu 0 4 122 118 136 139
		f 4 -258 260 262 -262
		mu 0 4 140 141 145 144
		f 4 -256 261 264 -264
		mu 0 4 125 140 144 146
		f 4 -259 265 266 -261
		mu 0 4 141 142 147 145
		f 5 -260 268 269 277 -266
		mu 0 5 142 143 149 156 147
		f 4 256 270 -272 -269
		mu 0 4 143 111 150 149
		f 5 208 267 -277 -273 -271
		mu 0 5 111 117 148 155 150
		f 4 196 274 -276 -274
		mu 0 4 151 152 153 154
		f 5 -289 289 290 287 286
		mu 0 5 157 162 163 161 160
		f 5 -279 279 281 288 -281
		mu 0 5 155 156 158 162 157
		f 5 -270 282 283 291 -280
		mu 0 5 156 149 159 164 158
		f 5 271 284 -288 -286 -283
		mu 0 5 149 150 160 161 159
		f 4 272 280 -287 -285
		mu 0 4 150 155 157 160
		f 4 -291 292 -284 285
		mu 0 4 161 163 164 159
		f 4 -318 -320 321 -323
		mu 0 4 177 178 179 180
		f 4 -293 293 295 -295
		mu 0 4 164 163 166 165
		f 6 -290 296 297 303 304 -294
		mu 0 6 163 162 167 171 172 166
		f 4 -282 298 299 -297
		mu 0 4 162 158 168 167
		f 6 -292 294 300 301 302 -299
		mu 0 6 158 164 165 169 170 168
		f 4 -326 -328 -330 -331
		mu 0 4 181 182 183 184
		f 4 -307 -304 305 -302
		mu 0 4 169 172 171 170
		f 4 -296 307 309 -309
		mu 0 4 165 166 174 173
		f 4 -305 310 311 -308
		mu 0 4 166 172 175 174
		f 4 306 312 -314 -311
		mu 0 4 172 169 176 175
		f 4 -301 308 314 -313
		mu 0 4 169 165 173 176
		f 4 -310 315 317 -317
		mu 0 4 173 174 178 177
		f 4 -312 318 319 -316
		mu 0 4 174 175 179 178
		f 4 313 320 -322 -319
		mu 0 4 175 176 180 179
		f 4 -315 316 322 -321
		mu 0 4 176 173 177 180
		f 4 -306 323 325 -325
		mu 0 4 170 171 182 181
		f 4 -298 326 327 -324
		mu 0 4 171 167 183 182
		f 4 -300 328 329 -327
		mu 0 4 167 168 184 183
		f 4 -303 324 330 -329
		mu 0 4 168 170 181 184
		f 4 -278 331 333 -333
		mu 0 4 147 156 186 185
		f 4 278 334 -336 -332
		mu 0 4 156 155 187 186
		f 4 276 336 -338 -335
		mu 0 4 155 148 188 187
		f 4 338 341 -343 -341
		mu 0 4 185 188 190 189
		f 7 -389 -391 -393 394 396 398 -400
		mu 0 7 217 218 219 220 221 222 223
		f 5 344 -346 -340 332 340
		mu 0 5 189 193 192 147 185
		f 4 342 346 -348 -345
		mu 0 4 189 190 194 193
		f 4 -342 349 351 -351
		mu 0 4 190 188 196 195
		f 4 -337 352 353 -350
		mu 0 4 188 148 197 196
		f 4 343 358 -360 -357
		mu 0 4 192 191 200 199
		f 4 348 360 -362 -359
		mu 0 4 191 194 201 200
		f 4 -347 350 362 -361
		mu 0 4 194 190 195 201
		f 4 -355 363 356 -358
		mu 0 4 198 147 192 199
		f 4 345 365 -367 -365
		mu 0 4 202 203 204 205
		f 4 366 368 -370 -368
		mu 0 4 206 207 208 209
		f 4 -344 370 367 -372
		mu 0 4 191 192 206 209
		f 4 -352 372 374 -374
		mu 0 4 195 196 211 210
		f 4 -354 375 376 -373
		mu 0 4 196 197 212 211
		f 4 -356 377 378 -376
		mu 0 4 197 198 213 212
		f 4 357 379 -381 -378
		mu 0 4 198 199 214 213
		f 4 359 381 -383 -380
		mu 0 4 199 200 215 214
		f 4 361 383 -385 -382
		mu 0 4 200 201 216 215
		f 4 -363 373 385 -384
		mu 0 4 201 195 210 216
		f 4 -375 386 388 -388
		mu 0 4 210 211 218 217
		f 4 -377 389 390 -387
		mu 0 4 211 212 219 218
		f 4 -379 391 392 -390
		mu 0 4 212 213 220 219
		f 4 380 393 -395 -392
		mu 0 4 213 214 221 220
		f 4 382 395 -397 -394
		mu 0 4 214 215 222 221
		f 4 384 397 -399 -396
		mu 0 4 215 216 223 222
		f 4 -386 387 399 -398
		mu 0 4 216 210 217 223;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "Ledge194";
	setAttr ".t" -type "double3" 0 -9.6811271717790675 2.8699330418100928 ;
	setAttr ".s" -type "double3" 1 0.43796873183217278 1.6698865956480564 ;
	setAttr ".rp" -type "double3" 0 84.19074546447321 8.0984920708998871 ;
	setAttr ".sp" -type "double3" 0 84.19074546447321 8.0984920708998871 ;
createNode mesh -n "Ledge194Shape" -p "Ledge194";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
		4.4141879 0.5 84.114769 4.4141879 -0.5 84.266724 4.4141879 0.5 84.266724 4.4141879;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge151";
	setAttr ".t" -type "double3" 0 151.082321443399 60.385076089637309 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1 2.7259501740213374 ;
createNode mesh -n "WallLedgeShape151" -p "WallLedge151";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge";
	setAttr ".t" -type "double3" 0 151.082321443399 60.385076089637309 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1 2.7259501740213374 ;
createNode mesh -n "LedgeShape" -p "|Ledge";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform25";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 151.082321443399 60.385076089637309 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1 2.7259501740213374 ;
createNode mesh -n "WallLedge139Shape" -p "transform25";
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
createNode transform -n "Ledge199";
	setAttr ".t" -type "double3" 0 -0.59589673921308872 18.636484814252718 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "Ledge199Shape" -p "Ledge199";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge200";
	setAttr ".t" -type "double3" 0 2.8034315644076671 18.636484814252718 ;
	setAttr ".s" -type "double3" 1 1 0.46073970815999404 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "Ledge200Shape" -p "Ledge200";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge201";
	setAttr ".t" -type "double3" 0 4.3777289598167428 21.024214882490874 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.46073970815999404 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "Ledge201Shape" -p "Ledge201";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge202";
	setAttr ".t" -type "double3" 0 6.8054510372160593 25.680314395979664 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "Ledge202Shape" -p "Ledge202";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedge158";
	setAttr ".t" -type "double3" 0 1.5071439954135641 6.0028143142316424 ;
	setAttr ".s" -type "double3" 1 0.39999971722830185 1 ;
	setAttr ".rp" -type "double3" 0 34.918500079473439 -33.173344250161968 ;
	setAttr ".sp" -type "double3" 0 34.918500079473439 -33.173344250161968 ;
createNode mesh -n "WallLedge158Shape" -p "WallLedge158";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge203";
	setAttr ".t" -type "double3" 0 -0.68570217506534448 2.8699330418100928 ;
	setAttr ".s" -type "double3" 1 0.43796873183217278 1.6698865956480564 ;
	setAttr ".rp" -type "double3" 0 84.19074546447321 8.0984920708998871 ;
	setAttr ".sp" -type "double3" 0 84.19074546447321 8.0984920708998871 ;
createNode mesh -n "Ledge203Shape" -p "Ledge203";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedge162";
	setAttr ".t" -type "double3" 0 2.679257631640187 -8.0305032400627123 ;
	setAttr ".s" -type "double3" 1 2.4968479308717066 4.7400835378847308 ;
	setAttr ".rp" -type "double3" 0 9.7909314526443865 -0.14428357931896674 ;
	setAttr ".sp" -type "double3" 0 9.7909314526443865 -0.14428357931896674 ;
createNode mesh -n "WallLedge162Shape" -p "WallLedge162";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 9.0111485 1.8102696 
		0.5 9.0111485 1.8102696 -0.5 10.570715 1.8102696 0.5 10.570715 1.8102696 -0.5 10.570715 
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
createNode transform -n "WallLedge161";
	setAttr ".t" -type "double3" 0 0.89138890855752884 -25.557571108017704 ;
	setAttr ".s" -type "double3" 1 5.9067747015293506 2.6204754740538361 ;
	setAttr ".rp" -type "double3" 0 9.7909314526443865 -0.14428357931896674 ;
	setAttr ".sp" -type "double3" 0 9.7909314526443865 -0.14428357931896674 ;
createNode mesh -n "WallLedge161Shape" -p "WallLedge161";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedge153";
	setAttr ".t" -type "double3" 0 0 37.285667984557577 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 79.10858154296875 -13.738189697265625 ;
	setAttr ".sp" -type "double3" 0 79.10858154296875 13.738189697265625 ;
	setAttr ".spt" -type "double3" 0 0 -27.47637939453125 ;
createNode mesh -n "WallLedgeShape153" -p "WallLedge153";
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
	setAttr -s 8 ".vt[0:7]"  -1 88.089889526 14.54788113 1 88.089889526 14.54788113
		 1 88.089889526 12.92849827 -1 88.089889526 12.92849827 -1 70.12727356 14.54788113
		 1 70.12727356 14.54788113 1 70.12727356 12.92849827 -1 70.12727356 12.92849827;
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
createNode transform -n "WallLedge160";
	setAttr ".t" -type "double3" 0 0 37.285667984557577 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 69.305744171142578 -11.39529275894165 ;
	setAttr ".sp" -type "double3" 0 69.305744171142578 11.39529275894165 ;
	setAttr ".spt" -type "double3" 0 0 -22.790585517883301 ;
createNode mesh -n "WallLedgeShape160" -p "WallLedge160";
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
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -1.5811894 0 ;
	setAttr ".pt[1]" -type "float3" 0 -1.5811894 0 ;
	setAttr ".pt[6]" -type "float3" 0 -1.5811894 0 ;
	setAttr ".pt[7]" -type "float3" 0 -1.5811894 0 ;
	setAttr -s 10 ".vt[0:9]"  -1 68.48421478 14.54788113 1 68.48421478 14.54788113
		 -1 70.12727356 14.54788113 1 70.12727356 14.54788113 -1 70.12727356 8.24270439 1 70.12727356 8.24270439
		 -1 68.48421478 8.24270439 1 68.48421478 8.24270439 1 70.12727356 12.92849827 -1 70.12727356 12.92849827;
	setAttr -s 15 ".ed[0:14]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 0 9 4 0 8 9 0;
	setAttr -s 6 -ch 26 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 2 9 -4 -9
		mu 0 4 4 5 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 5 -12 -10 -13 -8 -6
		mu 0 5 1 10 11 12 2
		f 5 10 4 6 13 8
		mu 0 5 13 0 3 14 15
		f 4 -15 12 -3 -14
		mu 0 4 16 17 5 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge196";
	setAttr ".t" -type "double3" 0 -0.70523581449931783 37.285667984557577 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 79.167709111542649 -11.417072883532867 ;
	setAttr ".sp" -type "double3" 0 79.167709111542649 11.417072883532867 ;
	setAttr ".spt" -type "double3" 0 0 -22.834145767065735 ;
createNode mesh -n "Ledge196Shape" -p "Ledge196";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge197";
	setAttr ".t" -type "double3" 0 -9.6811271717790675 37.285667984557577 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 84.19074546447321 -8.0984920708998871 ;
	setAttr ".sp" -type "double3" 0 84.19074546447321 8.0984920708998871 ;
	setAttr ".spt" -type "double3" 0 0 -16.196984141799774 ;
createNode mesh -n "Ledge197Shape" -p "Ledge197";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge198";
	setAttr ".t" -type "double3" 0 -0.58769651208277196 37.285667984557577 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 84.19074546447321 -8.0984920708998871 ;
	setAttr ".sp" -type "double3" 0 84.19074546447321 8.0984920708998871 ;
	setAttr ".spt" -type "double3" 0 0 -16.196984141799774 ;
createNode mesh -n "Ledge198Shape" -p "Ledge198";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
		5.1024594 0.5 84.114769 5.1024594 -0.5 84.266724 5.1024594 0.5 84.266724 5.1024594;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge154";
	setAttr ".t" -type "double3" 0 0 37.191298637224172 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" -0.00018656253814697266 69.285976409912109 -1.7388129234313965 ;
	setAttr ".sp" -type "double3" -0.00018656253814697266 69.285976409912109 1.7388129234313965 ;
	setAttr ".spt" -type "double3" 0 0 -3.477625846862793 ;
createNode mesh -n "WallLedgeShape154" -p "WallLedge154";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 9 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7:8]" "f[9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.625 0.4375 0.375
		 0.4375 0.375 0.4375 0.625 0.4375 0.625 0.4375 0.375 0.4375 0.375 0.4375 0.375 0.4375
		 0.625 0.4375 0.625 0.4375 0.375 0.4375 0.625 0.4375 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".vt[0:14]"  1 68.70568848 2.92073202 -1 68.70568848 2.92073202
		 -1 65.068786621 2.92073202 1 65.068786621 2.92073202 -1 65.068778992 0.55689383 1 65.068778992 0.55689383
		 -1 68.70568848 0.55708933 1 68.70568848 0.55708933 1 71.49203491 2.88442564 -1 71.49203491 2.88442564
		 1 73.50317383 0.55707788 -1 73.50317383 0.55707788 -1.00037312508 65.068786621 2.92073202
		 -1.00037312508 68.70568848 2.92073202 -1.00037312508 71.49203491 2.88442564;
	setAttr -s 24 ".ed[0:23]"  2 1 0 3 0 0 2 3 0 2 4 0 3 5 0 4 5 0 1 6 1
		 4 6 0 0 7 1 7 6 1 5 7 0 0 8 0 1 9 0 8 9 0 7 10 0 8 10 0 6 11 0 10 11 0 9 11 0 3 12 0
		 0 13 1 12 13 0 8 14 0 13 14 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 -6 7 -10 -11
		mu 0 4 0 1 2 3
		f 4 -3 3 5 -5
		mu 0 4 4 5 1 0
		f 4 0 6 -8 -4
		mu 0 4 5 6 2 1
		f 4 -14 15 17 -19
		mu 0 4 7 8 9 10
		f 4 -2 4 10 -9
		mu 0 4 11 4 0 3
		f 4 8 14 -16 -12
		mu 0 4 11 3 9 8
		f 4 9 16 -18 -15
		mu 0 4 3 2 10 9
		f 4 -7 12 18 -17
		mu 0 4 2 6 7 10
		f 4 1 20 -22 -20
		mu 0 4 12 13 14 15
		f 4 11 22 -24 -21
		mu 0 4 16 17 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge155";
	setAttr ".t" -type "double3" 0 3.836926571470606 37.191298637224172 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 57.503805160522461 -6.4157476425170898 ;
	setAttr ".sp" -type "double3" 0 57.503805160522461 6.4157476425170898 ;
	setAttr ".spt" -type "double3" 0 0 -12.83149528503418 ;
createNode mesh -n "WallLedgeShape155" -p "WallLedge155";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 11 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.3125 0.625
		 0.3125 0.625 0.375 0.375 0.375 0.375 0.3125 0.625 0.3125 0.625 0.375 0.625 0.375
		 0.375 0.375 0.375 0.375 0.625 0.375 0.375 0.375 0.375 0.3125 0.625 0.3125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 -0.38551456 0 0 -0.38551456 
		0 0 -0.38551456 0 0 -0.38551456 0;
	setAttr -s 14 ".vt[0:13]"  1 54.47581863 8.2329464 1 54.47581863 4.59854889
		 -1 54.47581863 8.2329464 -1 54.47581863 4.59854889 1 60.91730499 4.59854889 -1 60.91730499 4.59854889
		 1 60.91730499 8.2329464 -1 60.91730499 8.2329464 1 60.91730499 4.59854889 -1 60.91730499 4.59854889
		 1 54.47581863 8.2329464 -1 54.47581863 8.2329464 1 54.47581863 4.59854889 -1 54.47581863 4.59854889;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 1 3 0 0 2 0 1 4 0 3 5 0 4 5 0
		 6 7 0 4 8 0 6 8 0 5 9 0 8 9 0 7 9 0 0 10 0 2 11 0 10 11 0 10 6 0 11 7 0 1 12 0 10 12 0
		 12 8 0 3 13 0 11 13 0 13 9 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 -8 9 11 -13
		mu 0 4 0 1 2 3
		f 4 -16 16 7 -18
		mu 0 4 4 5 1 0
		f 4 19 20 -10 -17
		mu 0 4 5 6 2 1
		f 4 2 5 -7 -5
		mu 0 4 7 8 9 10
		f 4 -23 17 12 -24
		mu 0 4 11 4 0 3
		f 4 6 10 -12 -9
		mu 0 4 10 9 3 2
		f 4 -4 13 15 -15
		mu 0 4 12 13 5 4
		f 4 0 18 -20 -14
		mu 0 4 13 7 6 5
		f 4 4 8 -21 -19
		mu 0 4 7 10 2 6
		f 4 -2 14 22 -22
		mu 0 4 8 12 4 11
		f 4 -6 21 23 -11
		mu 0 4 9 8 11 3
		f 4 -1 3 1 -3
		mu 0 4 7 13 12 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge156";
	setAttr ".t" -type "double3" 0 -0.82637753522507751 37.191298637224172 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 63.854000091552734 -3.7596404552459717 ;
	setAttr ".sp" -type "double3" 0 63.854000091552734 3.7596404552459717 ;
	setAttr ".spt" -type "double3" 0 0 -7.5192809104919434 ;
createNode mesh -n "WallLedgeShape156" -p "WallLedge156";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.375 0.625
		 0.375 0.625 0.375 0.375 0.375 0.625 0.4375 0.625 0.4375 0.375 0.4375 0.375 0.4375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -0.38551456 0 0 -0.38551456 
		0 0 -4.4250422 0 0 -4.4250422 0 0 -4.4250422 0 0 -0.38551456 0 0 -0.38551456 0 0 
		-4.4250422 0;
	setAttr -s 8 ".vt[0:7]"  -1 59.14176178 4.59854889 1 59.14176178 4.59854889
		 1 73.37679291 4.59854889 -1 73.37679291 4.59854889 1 73.37679291 2.92073202 1 59.14176178 2.92073202
		 -1 59.14176178 2.92073202 -1 73.37679291 2.92073202;
	setAttr -s 12 ".ed[0:11]"  1 5 0 0 6 0 1 2 0 0 3 0 5 4 0 6 7 0 1 0 0
		 2 3 0 2 4 0 5 6 0 7 4 0 3 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 2 7 -4
		mu 0 4 0 1 2 3
		f 4 0 4 -9 -3
		mu 0 4 1 4 5 2
		f 4 9 5 10 -5
		mu 0 4 4 6 7 5
		f 4 -2 3 11 -6
		mu 0 4 6 0 3 7
		f 4 -1 6 1 -10
		mu 0 4 4 1 0 6
		f 4 -8 8 -11 -12
		mu 0 4 3 2 5 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge157";
	setAttr ".t" -type "double3" 0 12.289525158868933 26.016106685322725 ;
	setAttr ".s" -type "double3" 1 1 -1.2828039198979588 ;
	setAttr ".rp" -type "double3" 0 50.655538659444765 -4.9254594155777367 ;
	setAttr ".sp" -type "double3" 0 50.655538659444765 3.8396042755852631 ;
	setAttr ".spt" -type "double3" 0 0 -8.7650636911630002 ;
createNode mesh -n "WallLedge157Shape" -p "WallLedge157";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge204";
	setAttr ".t" -type "double3" 0 19.791660225359273 4.7382072028999342 ;
	setAttr ".rp" -type "double3" 0 30.518790881471375 15.753686617852145 ;
	setAttr ".sp" -type "double3" 0 30.518790881471375 15.753686617852145 ;
createNode mesh -n "Ledge204Shape" -p "Ledge204";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape97" -p "Ledge204";
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
createNode transform -n "Ledge205";
	setAttr ".t" -type "double3" 0 6.1608319823951874 4.7382072028999342 ;
	setAttr ".s" -type "double3" 1 -1 1 ;
	setAttr ".rp" -type "double3" 0 30.518790881471375 15.753686617852145 ;
	setAttr ".sp" -type "double3" 0 30.518790881471375 15.753686617852145 ;
createNode mesh -n "Ledge205Shape" -p "Ledge205";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 46 ".uvst[0].uvsp[0:45]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.83169782 0.79330206 0 0.625 0.91680992 0.70819008
		 0 0.20669788 0 0.375 0.83169782 0.29180992 0 0.375 0.91680992 0.625 0.33319005 0.70819008
		 0.25 0.625 0.41830215 0.79330218 0.25 0.29180992 0.25 0.375 0.33319005 0.20669788
		 0.25 0.375 0.41830215 0.875 0.25 0.625 0.75 0.125 0 0.375 0.5 0.625 0 0.625 0.25
		 0.375 0.25 0.375 1 0.875 0.25 0.625 0.75 0.125 0 0.375 0.5 0.625 0 0.625 0.25 0.375
		 0.25 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -1 25.48274231 31.51024818 1 25.48274231 31.51024818
		 -1 26.87459564 31.51024818 1 26.87459564 31.51024818 -1 26.87459564 -0.0028748512
		 1 26.87459564 -0.0028748512 -1 25.48274231 -0.0028748512 1 25.48274231 -0.0028748512
		 1 29.82286453 10.50073433 1 29.82286835 21.023929596 -1 29.82286453 10.50073433 -1 29.82286835 21.023929596
		 1 31.21471405 21.023929596 1 31.21471786 10.50073433 -1 31.21471405 21.023929596
		 -1 31.21471786 10.50073433 1 26.87459564 -1.96719217 1 25.48274231 -1.96719217 -1 25.48274231 -1.96719217
		 -1 26.87459564 -1.96719217 1 25.48274231 33.4745636 1 26.87459564 33.4745636 -1 26.87459564 33.4745636
		 -1 25.48274231 33.4745636 1 26.87459564 -3.21524954 1 25.48274231 -3.21524954 -1 25.48274231 -3.21524954
		 -1 26.87459564 -3.21524954 1 25.48274231 34.7226181 1 26.87459564 34.7226181 -1 26.87459564 34.7226181
		 -1 25.48274231 34.7226181;
	setAttr -s 60 ".ed[0:59]"  0 1 1 2 3 1 4 5 1 6 7 1 1 3 1 2 14 0 3 12 0
		 5 7 1 6 10 0 7 8 0 8 9 0 10 11 0 4 6 1 12 13 0 14 15 0 0 2 1 9 11 1 8 10 1 13 15 1
		 12 14 1 9 1 0 9 12 1 11 0 0 11 14 1 13 5 0 15 4 0 10 15 1 8 13 1 5 16 0 7 17 0 16 17 1
		 6 18 0 18 17 0 4 19 0 19 18 1 19 16 1 1 20 0 3 21 0 20 21 1 2 22 0 22 21 1 0 23 0
		 23 22 1 23 20 0 16 24 0 17 25 0 24 25 0 18 26 0 26 25 0 19 27 0 27 26 0 27 24 0 20 28 0
		 21 29 0 28 29 0 22 30 0 30 29 0 23 31 0 31 30 0 31 28 0;
	setAttr -s 28 -ch 112 ".fc[0:27]" -type "polyFaces" 
		f 4 1 6 19 -6
		mu 0 4 2 3 22 27
		f 4 3 9 17 -9
		mu 0 4 6 7 14 19
		f 4 -21 21 -7 -5
		mu 0 4 1 17 23 3
		f 4 8 26 25 12
		mu 0 4 12 18 28 13
		f 4 -17 20 -1 -23
		mu 0 4 21 16 9 8
		f 4 -18 10 16 -12
		mu 0 4 19 14 16 21
		f 4 -19 24 -3 -26
		mu 0 4 29 24 5 4
		f 4 -20 13 18 -15
		mu 0 4 27 22 24 29
		f 4 -22 -11 27 -14
		mu 0 4 23 17 15 25
		f 4 -24 22 15 5
		mu 0 4 26 20 0 2
		f 4 -27 11 23 14
		mu 0 4 28 18 20 26
		f 4 -28 -10 -8 -25
		mu 0 4 25 15 10 11
		f 4 46 -49 -51 51
		mu 0 4 38 39 40 41
		f 4 54 -57 -59 59
		mu 0 4 42 43 44 45
		f 4 7 29 -31 -29
		mu 0 4 11 7 31 30
		f 4 -4 31 32 -30
		mu 0 4 7 12 32 31
		f 4 -13 33 34 -32
		mu 0 4 12 4 33 32
		f 4 2 28 -36 -34
		mu 0 4 4 11 30 33
		f 4 4 37 -39 -37
		mu 0 4 1 3 35 34
		f 4 -2 39 40 -38
		mu 0 4 3 2 36 35
		f 4 -16 41 42 -40
		mu 0 4 2 8 37 36
		f 4 0 36 -44 -42
		mu 0 4 8 1 34 37
		f 4 30 45 -47 -45
		mu 0 4 30 31 39 38
		f 4 -35 49 50 -48
		mu 0 4 32 33 41 40
		f 4 35 44 -52 -50
		mu 0 4 33 30 38 41
		f 4 38 53 -55 -53
		mu 0 4 34 35 43 42
		f 4 -41 55 56 -54
		mu 0 4 35 36 44 43
		f 4 -43 57 58 -56
		mu 0 4 36 37 45 44;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape97" -p "Ledge205";
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
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 4 ".dli[1:3]"  1 0 2;
	setAttr -s 3 ".dli";
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
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n"
		+ "                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n"
		+ "                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n"
		+ "                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
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
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
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
createNode groupId -n "groupId47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:31]";
createNode polyChipOff -n "polyChipOff2";
	setAttr ".ics" -type "componentList" 3 "f[0:2]" "f[4:16]" "f[18:21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 654998630;
	setAttr ".dup" no;
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
createNode polySeparate -n "polySeparate6";
	setAttr ".ic" 2;
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
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
createNode groupParts -n "groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
	setAttr ".gi" 49;
createNode groupId -n "groupId86";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polySubdFace -n "polySubdFace2";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.7239242361205167 0 0 0 0 1.7239242361205167 0
		 0 3.7603647129281792 80.835014203788006 1;
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
		 0 3.7603647129281792 80.835014203788006 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 84.967377 -56.452785 ;
	setAttr ".rs" 2050018405;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
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
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId88";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode lambert -n "lambert3";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "/Users/nathanwaters/Documents/RunnerFiles/CommercialZone/ForConceptArtofIndividualTestBuilding.jpg";
createNode place2dTexture -n "place2dTexture2";
createNode displayLayer -n "layer1";
	setAttr ".do" 2;
createNode polySubdFace -n "polySubdFace9";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[11]";
	setAttr ".duv" 2;
	setAttr ".sbm" 1;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[0]" -type "float3" -14.879371 0 0 ;
	setAttr ".tk[2]" -type "float3" -14.879371 0 0 ;
	setAttr ".tk[5]" -type "float3" -14.879371 0 0 ;
	setAttr ".tk[6]" -type "float3" -14.879371 0 0 ;
	setAttr ".tk[9]" -type "float3" -14.879371 0 0 ;
	setAttr ".tk[10]" -type "float3" -14.879371 0 0 ;
	setAttr ".tk[15]" -type "float3" -14.879371 0 0 ;
	setAttr ".tk[16]" -type "float3" -14.879371 0 0 ;
	setAttr ".tk[17]" -type "float3" -14.879371 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.7239242361205167 0 0 0 0 1.7239242361205167 0
		 0 -29.782339473899953 50.439387328082915 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -10.76516 31.029097 -95.246353 ;
	setAttr ".rs" 278721590;
	setAttr ".lt" -type "double3" 1.7763568394002505e-15 1.1380172961776245e-14 12.748257289932727 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -15.87937068939209 31.029097161999971 -99.226361259057711 ;
	setAttr ".cbx" -type "double3" -5.6509494781494141 31.029097161999971 -91.266351012641536 ;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[18:20]" -type "float3"  1.78873599 0 0 1.78873599
		 0 0 1.78873599 0 0;
createNode polySubdFace -n "polySubdFace17";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".duv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace36";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1.1602785408107394 0 0 0 0 1 0 0 0 0 1 0 -0.14910845678247298 38.762245791245448 -2.1939789482319658 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.309387 80.230087 -50.86433 ;
	setAttr ".rs" 1222252534;
	setAttr ".lt" -type "double3" 1.7478291799619058e-13 -1.2789769243681803e-13 12.847715641628485 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3093869975932124 79.60280288963412 -52.388822240468294 ;
	setAttr ".cbx" -type "double3" -1.3093869975932124 80.857376711655604 -49.339841527577669 ;
createNode polyTweak -n "polyTweak34";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[8:9]" -type "float3"  0 0 -2.79217291 0 0 -2.79217291;
createNode polyExtrudeFace -n "polyExtrudeFace37";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.3099416725805093 0 0 0 0 1 0 0 0 0 1 0 -1.186315767081116 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1863158 60.972317 -69.690361 ;
	setAttr ".rs" 1403224084;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.4962574396616253 60.972316741943359 -75.459976196289062 ;
	setAttr ".cbx" -type "double3" 1.1236259054993931 60.972316741943359 -63.920745849609375 ;
createNode polyCloseBorder -n "polyCloseBorder5";
	setAttr ".ics" -type "componentList" 1 "e[8:11]";
createNode groupParts -n "groupParts42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
	setAttr ".gi" 66;
createNode polyTweak -n "polyTweak35";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0 -0.12583151 ;
	setAttr ".tk[3]" -type "float3" 0 0 -0.12583151 ;
	setAttr ".tk[6]" -type "float3" 0 0 -0.12583151 ;
	setAttr ".tk[7]" -type "float3" 0 0 -0.12583151 ;
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 2 "f[1]" "f[3]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode polyExtrudeFace -n "polyExtrudeFace38";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 12.319892419931788 30.418443553042817 -87.695953316717407 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.319893 30.668644 -75.569359 ;
	setAttr ".rs" 921396413;
	setAttr ".lt" -type "double3" 0 2.6082901538249589e-16 -1.1746694564840221 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.6771301114266643 30.668644584721243 -92.605621969521195 ;
	setAttr ".cbx" -type "double3" 16.962654728436913 30.668644584721243 -58.533094757486374 ;
createNode polyExtrudeFace -n "polyExtrudeFace39";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 12.319892419931788 30.418443553042817 -87.695953316717407 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.319892 37.120911 -75.569351 ;
	setAttr ".rs" 950978365;
	setAttr ".lt" -type "double3" 1.7763568394002505e-15 1.4019031128712136e-14 -0.86389663263666017 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.677130664887061 37.120909466649486 -92.605618111408234 ;
	setAttr ".cbx" -type "double3" 16.962653621516122 37.120909466649486 -58.53309089937342 ;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 2 "e[1]" "e[4]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 12.319892419931788 30.418443553042817 -87.695953316717407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 0;
	setAttr ".sv2" 3;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
	setAttr ".gi" 67;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 12.319892419931788 30.418443553042817 -87.695953316717407 1;
	setAttr ".a" 0;
createNode polyExtrudeFace -n "polyExtrudeFace40";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.26661785275270022 0 0 0 0 1 0 0 0 0 0.36922278082232701 0
		 16.63621475776938 3.3224004571584267 -41.911116584376785 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 16.636215 35.742607 -61.416744 ;
	setAttr ".rs" 1126890589;
	setAttr ".lt" -type "double3" 0 1.2320525606879288e-16 0.55486714532150216 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 16.369596905016682 35.742608434453345 -61.730706834605002 ;
	setAttr ".cbx" -type "double3" 16.902832610522079 35.742608434453345 -61.102782751187384 ;
createNode polyExtrudeFace -n "polyExtrudeFace41";
	setAttr ".ics" -type "componentList" 1 "f[6:7]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 12.319892419931788 30.418443553042817 -87.695953316717407 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.319893 33.894775 -65.088104 ;
	setAttr ".rs" 2028417303;
	setAttr ".lt" -type "double3" 1.7763568394002505e-15 7.6692439428056241e-15 -4.6039118021389811 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.6771317718078524 30.668644584721243 -65.088103908080313 ;
	setAttr ".cbx" -type "double3" 16.962653621516122 37.120909466649486 -65.088103908080313 ;
createNode polyTweak -n "polyTweak36";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.050634876 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.050634876 ;
	setAttr ".tk[4]" -type "float3" 0 0 -0.050634876 ;
	setAttr ".tk[5]" -type "float3" 0 0 -0.050634876 ;
	setAttr ".tk[8]" -type "float3" 0 0 -0.050634876 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.050634876 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.050634876 ;
	setAttr ".tk[13]" -type "float3" 0 0 -0.050634876 ;
createNode polyExtrudeFace -n "polyExtrudeFace42";
	setAttr ".ics" -type "componentList" 1 "f[6:7]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 12.319892419931788 30.418443553042817 -87.695953316717407 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 12.319893 33.894775 -60.484184 ;
	setAttr ".rs" 878710679;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.67713232526825 30.668644584721243 -60.484184920110174 ;
	setAttr ".cbx" -type "double3" 16.962653621516122 37.120909466649486 -60.484184920110174 ;
createNode polyExtrudeFace -n "polyExtrudeFace43";
	setAttr ".ics" -type "componentList" 4 "f[13]" "f[19]" "f[21]" "f[27]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 12.319892419931788 30.418443553042817 -87.695953316717407 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.6771336 33.894775 -62.321812 ;
	setAttr ".rs" 765686307;
	setAttr ".lt" -type "double3" 1.1137714025723435e-14 1.8577785958381886e-15 -13.840195263992786 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.6771334321890414 30.668644584721243 -65.088090404684948 ;
	setAttr ".cbx" -type "double3" 7.6771334321890414 37.120909466649486 -59.555535201815275 ;
createNode polyTweak -n "polyTweak37";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[24:31]" -type "float3"  0 0 0.0071733748 0 0 0.0071733748
		 0 0 0.0071733748 0 0 0.0071733748 0 0 0.0071733748 0 0 0.0071733748 0 0 0.0071733748
		 0 0 0.0071733748;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 12.319892419931788 30.418443553042817 -87.695953316717407 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.677134 33.894775 -65.088081 ;
	setAttr ".rs" 1731840684;
	setAttr ".lt" -type "double3" 4.0496029002350439e-15 -1.1155030257836044e-14 13.762209887502976 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.6771339856494381 30.668644584721243 -65.088082688459025 ;
	setAttr ".cbx" -type "double3" 7.6771339856494381 37.120909466649486 -65.088082688459025 ;
createNode groupParts -n "groupParts44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:40]";
	setAttr ".gi" 68;
createNode polyExtrudeFace -n "polyExtrudeFace44";
	setAttr ".ics" -type "componentList" 2 "f[22]" "f[31]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 12.319892419931788 30.418443553042817 -87.695953316717407 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.399796 31.843315 -60.019844 ;
	setAttr ".rs" 1662177380;
	setAttr ".lt" -type "double3" -1.7763568394002505e-15 2.9432820348443785e-14 -4.5536387537141749 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.1630614158808807 31.843315445507557 -60.484161771432419 ;
	setAttr ".cbx" -type "double3" 16.962653621516122 31.843315445507557 -59.555525556532885 ;
createNode polyCut -n "polyCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:46]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".pc" -type "double3" 6.5933832565832189 33.689197066167466 -73.310542767838299 ;
	setAttr ".ro" -type "double3" 174.15063904788741 12.101731483965485 -82.969854799833783 ;
	setAttr ".ps" -type "double2" 23.125714540481567 6.4522666931152344 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[7]" "e[27]" "e[100]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.9000352 30.668644 -76.544884 ;
	setAttr ".rs" 1516095440;
	setAttr ".lt" -type "double3" -1.4701667338188628e-15 -2.7418698461426131e-15 6.6210423545991297 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.90003521719524837 30.668644584721243 -92.605618111408234 ;
	setAttr ".cbx" -type "double3" 0.90003521719524837 30.668644584721243 -60.484154055206503 ;
createNode polyTweak -n "polyTweak38";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[1]" -type "float3" 0.30330655 0 0 ;
	setAttr ".tk[3]" -type "float3" 0.30330655 0 0 ;
	setAttr ".tk[4]" -type "float3" 0.30330655 0 0 ;
	setAttr ".tk[7]" -type "float3" 0.30330655 0 0 ;
	setAttr ".tk[53]" -type "float3" 0.3033064 9.5367432e-07 9.3132257e-10 ;
	setAttr ".tk[55]" -type "float3" 0.3033064 9.5367432e-07 9.3132257e-10 ;
createNode groupParts -n "groupParts45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:57]";
	setAttr ".gi" 54;
createNode polyTweak -n "polyTweak39";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[61:64]" -type "float3"  -0.12703227 -9.69095135 0
		 -0.023176471 -0.3349126 0 -0.23088805 -19.047002792 0 -0.023176471 -0.3349126 0;
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 4 "f[1]" "f[5]" "f[49:50]" "f[57]";
createNode polyCut -n "polyCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:52]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".pc" -type "double3" 7.797966439037431 37.632930397154936 -81.254342981630842 ;
	setAttr ".ro" -type "double3" 178.85188585763942 -5.316823419365428 -86.583646209684531 ;
	setAttr ".ps" -type "double2" 23.125710725784305 6.5360622406005859 ;
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 2 "f[8]" "f[54:56]";
createNode polyCut -n "polyCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[0]" "f[6]" "f[8]" "f[45]" "f[48]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".pc" -type "double3" 0.44628304324490053 37.210491606116925 -66.994939275296232 ;
	setAttr ".ro" -type "double3" 176.55611115876022 -0.27400205577219289 -76.802793655051062 ;
	setAttr ".ps" -type "double2" 9.2855188846588135 6.4522666931152344 ;
createNode polyCut -n "polyCut5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[0]" "f[6]" "f[8]" "f[45]" "f[48]" "f[53:57]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".pc" -type "double3" 0.59199533438082852 36.697140038074963 -68.20180160462958 ;
	setAttr ".ro" -type "double3" -178.7016116912979 10.02868068757755 -76.590572571496082 ;
	setAttr ".ps" -type "double2" 9.2855188846588135 6.4522666931152344 ;
createNode polyCut -n "polyCut6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[0]" "f[6]" "f[8]" "f[45]" "f[48]" "f[53:62]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".pc" -type "double3" 0.48515925369371182 36.860830557860723 -69.716317208417891 ;
	setAttr ".ro" -type "double3" -174.65124553029341 0.066992353420169889 -92.399065369610767 ;
	setAttr ".ps" -type "double2" 9.2855188846588135 6.4522666931152344 ;
createNode polyCut -n "polyCut7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:9]";
	setAttr ".ix" -type "matrix" 0.26661785275270022 0 0 0 0 1 0 0 0 0 0.36922278082232701 0
		 0.57359635344850801 3.3224004571584267 -44.008992667527934 1;
	setAttr ".pc" -type "double3" 0.59864796458443759 34.117945963283219 -63.147425440593359 ;
	setAttr ".ro" -type "double3" 7.8560538916043212 96.398565948795337 97.752465247474731 ;
	setAttr ".ps" -type "double2" 1 4.7072200775146484 ;
createNode polyTweak -n "polyTweak40";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0 1.54070318 0 0 1.54070318
		 0 0 -1.54070318 0 0 -1.54070318;
createNode polyTweak -n "polyTweak41";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[69]" -type "float3" -0.26083016 -0.82998252 0.0094501777 ;
	setAttr ".tk[72]" -type "float3" -0.26083016 -0.82998252 0.0094501777 ;
	setAttr ".tk[75]" -type "float3" -0.19073668 -3.6777439 0.0061314804 ;
	setAttr ".tk[78]" -type "float3" -0.19073668 -3.6777439 0.0061314804 ;
	setAttr ".tk[81]" -type "float3" -0.21690884 0 -0.010224333 ;
	setAttr ".tk[84]" -type "float3" -0.21690884 0 -0.010224333 ;
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode polyCut -n "polyCut8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[8]" "f[10:11]" "f[16]" "f[26]" "f[29]" "f[37]" "f[50]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".pc" -type "double3" 9.5414599665890005 35.962478424766445 -61.831791300358432 ;
	setAttr ".ro" -type "double3" 178.90884563858032 24.906387124389425 -63.679573810313379 ;
	setAttr ".ps" -type "double2" 23.125708818435669 5.8121089935302734 ;
createNode polyCut -n "polyCut9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "f[8]" "f[10:11]" "f[16]" "f[26]" "f[29]" "f[37]" "f[50]" "f[67:73]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".pc" -type "double3" 7.1394810403645268 33.293820644254239 -64.644154003054538 ;
	setAttr ".ro" -type "double3" 149.29134089927086 -9.0246350121873196 -79.636171226297478 ;
	setAttr ".ps" -type "double2" 23.125708818435669 5.8121089935302734 ;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 6 "f[0:1]" "f[3:5]" "f[7:28]" "f[30:69]" "f[72:75]" "f[77:78]";
	setAttr ".unm" no;
createNode polyTweak -n "polyTweak42";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[12]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[13]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.38417298 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[23]" -type "float3" -0.38417298 0 0 ;
	setAttr ".tk[59]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[83]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[84]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[85]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[87]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[89]" -type "float3" -0.38417298 0 0 ;
	setAttr ".tk[90]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[91]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[92]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[93]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[94]" -type "float3" -0.38417298 0 0 ;
	setAttr ".tk[96]" -type "float3" -0.26378205 0 0 ;
	setAttr ".tk[97]" -type "float3" -0.38417298 0 0 ;
createNode polyNormal -n "polyNormal3";
	setAttr ".ics" -type "componentList" 1 "f[70:71]";
	setAttr ".unm" no;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	setAttr ".ics" -type "componentList" 2 "e[112]" "e[114]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 62;
	setAttr ".sv2" 64;
	setAttr ".sma" 98.6897;
createNode polyTweak -n "polyTweak43";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[48]" -type "float3" 0 -3.6303205 0.0078366911 ;
	setAttr ".tk[54]" -type "float3" 0 -3.6303205 0.007670938 ;
	setAttr ".tk[60]" -type "float3" 0 -3.6303205 -0.0010123323 ;
	setAttr ".tk[62]" -type "float3" 0 -3.6303205 -0.00093433016 ;
createNode groupParts -n "groupParts46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
	setAttr ".gi" 69;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	setAttr ".ics" -type "componentList" 2 "e[100]" "e[107]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 52;
	setAttr ".sv2" 50;
	setAttr ".sma" 98.6897;
createNode groupId -n "groupId90";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:80]";
createNode polySplit -n "polySplit1";
	setAttr -s 4 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 80;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.81818187236785889 0 0.18181812763214111 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.19427020847797391 0.80572980642318714 
		0 ;
	setAttr ".sps[0].sp[2].f" 10;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.72727119922637939 0.27272877097129822 
		2.9802322387695312e-08 ;
	setAttr ".sps[0].sp[3].f" 11;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.45454061031341553 0.54545938968658447 
		0 ;
	setAttr ".de" yes;
	setAttr ".c2v" yes;
createNode polyTweak -n "polyTweak44";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[5]" -type "float3" 0 0 0.020165635 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.020165635 ;
	setAttr ".tk[12]" -type "float3" -0.24224332 -2.0653653 -0.0014218949 ;
	setAttr ".tk[15]" -type "float3" -0.13079029 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.25470367 -1.8147143 -0.0026801501 ;
	setAttr ".tk[67]" -type "float3" -0.13079029 0 0 ;
	setAttr ".tk[83]" -type "float3" -0.34683895 -1.0695659 -0.0025332747 ;
	setAttr ".tk[85]" -type "float3" -0.13079029 0 0 ;
	setAttr ".tk[91]" -type "float3" -0.13079029 0 0 ;
	setAttr ".tk[92]" -type "float3" -0.24025564 -2.0718381 -0.0013038482 ;
	setAttr ".tk[93]" -type "float3" -0.24297161 -2.0786278 -0.0014265797 ;
	setAttr ".tk[96]" -type "float3" -0.13079029 0 0 ;
createNode polySplit -n "polySplit2";
	setAttr -s 6 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 11;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.63636928796768188 0.36363071203231806 
		0 ;
	setAttr ".sps[0].sp[1].f" 10;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.81817877292633057 0.18182118237018585 
		4.4703483581542969e-08 ;
	setAttr ".sps[0].sp[2].f" 1;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.25684958696365356 0.74315047264099121 
		-5.9604644775390625e-08 ;
	setAttr ".sps[0].sp[3].f" 80;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.72727280855178833 0 0.27272719144821167 ;
	setAttr ".sps[0].sp[4].f" 80;
	setAttr ".sps[0].sp[4].t" 1;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.36843082308769226 0.63156920671463013 
		-5.9604644775390625e-08 ;
	setAttr ".sps[0].sp[5].f" 80;
	setAttr ".sps[0].sp[5].t" 1;
	setAttr ".sps[0].sp[5].bc" -type "double3" 0 0.45454543828964233 0.54545456171035767 ;
	setAttr ".de" yes;
	setAttr ".c2v" yes;
createNode polyCut -n "polyCut10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[1]" "f[8]" "f[10:11]" "f[49:50]" "f[80]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".pc" -type "double3" -0.54923287144428812 32.962359133528352 -55.341947677792405 ;
	setAttr ".ro" -type "double3" -97.718635375119931 -1.1894571269576713 -90.158730471954811 ;
	setAttr ".ps" -type "double2" 11.734872102737429 1.4422760009765625 ;
createNode polyChipOff -n "polyChipOff12";
	setAttr ".ics" -type "componentList" 7 "f[8]" "f[11]" "f[45]" "f[49:50]" "f[81]" "f[83]" "f[87]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.7427261 30.418444 -87.695953 ;
	setAttr ".rs" 351083230;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate13";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 2 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId91";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId92";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:79]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 1 "f[20]";
createNode polyCut -n "polyCut11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "f[0]" "f[4:5]" "f[7]" "f[10]" "f[12]" "f[18]" "f[34]" "f[36]" "f[69]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".mp" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".pc" -type "double3" -1.9444813829900456 38.049252064273112 -57.920658408728769 ;
	setAttr ".ro" -type "double3" -88.149746424871012 -26.860756422294894 -87.153542319032951 ;
	setAttr ".ps" -type "double2" 9.627490758895874 5.2775955200195312 ;
createNode polyTweak -n "polyTweak45";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[13]" -type "float3" 0.036828533 0 5.5511151e-17 ;
	setAttr ".tk[21]" -type "float3" 0.036828533 0 5.5511151e-17 ;
	setAttr ".tk[40]" -type "float3" 0.036828533 0 5.5511151e-17 ;
	setAttr ".tk[42]" -type "float3" 0.036828533 0 5.5511151e-17 ;
	setAttr ".tk[85]" -type "float3" 0.036828533 0 5.5511151e-17 ;
createNode polyChipOff -n "polyChipOff13";
	setAttr ".ics" -type "componentList" 9 "f[5]" "f[7]" "f[11:12]" "f[16]" "f[19]" "f[69]" "f[79:80]" "f[82]" "f[84]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".pvt" -type "float3" -3.7427261 30.418444 -87.695953 ;
	setAttr ".rs" 1652882992;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate14";
	setAttr ".ic" 4;
	setAttr ".rs" -type "Int32Array" 2 1 3 ;
	setAttr -s 3 ".out";
createNode groupId -n "groupId93";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupParts -n "groupParts51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1]";
	setAttr ".gi" 56;
createNode groupId -n "groupId95";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:76]";
createNode polyCut -n "polyCut12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[5]" "f[34]" "f[36]" "f[38]" "f[52:54]" "f[66]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".mp" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".pc" -type "double3" -0.7031091808496337 33.05150548032443 -62.07594442639769 ;
	setAttr ".ro" -type "double3" -93.921707814446478 11.893038791478361 -91.610272765727657 ;
	setAttr ".ps" -type "double2" 9.2855188846588135 1.7722091674804688 ;
createNode polyChipOff -n "polyChipOff14";
	setAttr ".ics" -type "componentList" 6 "f[36]" "f[38]" "f[53:54]" "f[66]" "f[78]" "f[80]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".pvt" -type "float3" -3.7427261 30.418444 -87.695953 ;
	setAttr ".rs" 888880633;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate15";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 2 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId96";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:6]";
createNode groupParts -n "groupParts54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:75]";
	setAttr ".gi" 59;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode polySoftEdge -n "polySoftEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[2]" "e[4]" "e[7:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.7239242361205167 0 0 0 0 1.7239242361205167 0
		 0 3.9090163084356959 79.05601443677773 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[2]" "e[4]" "e[7:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.7239242361205167 0 0 0 0 1.7239242361205167 0
		 0 3.9090163084356959 79.05601443677773 1;
	setAttr ".a" 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[2]" "e[4]" "e[7:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.7239242361205167 0 0 0 0 1.7239242361205167 0
		 0 3.9090163084356959 79.05601443677773 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1 72.776581 -66.629745 ;
	setAttr ".rs" 1560314639;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 66.17943325793712 -70.609734150362897 ;
	setAttr ".cbx" -type "double3" -1 79.373723460122108 -62.649763361441131 ;
createNode groupParts -n "groupParts60";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
	setAttr ".gi" 83;
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[14]" "e[16]" "e[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.7239242361205167 0 0 0 0 1.7239242361205167 0
		 0 3.9090163084356959 79.05601443677773 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1 72.776581 -66.629745 ;
	setAttr ".rs" 739299325;
	setAttr ".lt" -type "double3" -1.143309286230327e-15 1.5354164001432332e-14 5.1490072754361265 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 70.981765446062553 -67.7125413177219 ;
	setAttr ".cbx" -type "double3" -1 74.571391271996674 -65.5469561940821 ;
createNode polyTweak -n "polyTweak49";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 2.78569841 -1.68058109 0
		 -2.78569841 -1.68058109 0 2.78569841 1.68058109 0 -2.78569841 1.68058109;
createNode groupId -n "groupId99";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId101";
	setAttr ".ihi" 0;
createNode polyExtrudeFace -n "polyExtrudeFace49";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -65.903374258806664 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2281876 73.659386 -77.51107 ;
	setAttr ".rs" 117077840;
	setAttr ".lt" -type "double3" 1.2037079520135501 1.454672015855739e-14 1.512603485541959 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3978910405516363 73.65938625901191 -76.563562993872793 ;
	setAttr ".cbx" -type "double3" -2.0584842019880929 73.65938625901191 -75.996601001990499 ;
createNode polyExtrudeFace -n "polyExtrudeFace50";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -68.365345844746471 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2281876 73.659386 -77.51107 ;
	setAttr ".rs" 1153574193;
	setAttr ".lt" -type "double3" 1.2037079520135501 1.454672015855739e-14 1.512603485541959 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.3978910405516363 73.65938625901191 -79.0255345798126 ;
	setAttr ".cbx" -type "double3" -2.0584842019880929 73.65938625901191 -78.458572587930306 ;
createNode polyCut -n "polyCut13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -65.903374258806664 1;
	setAttr ".pc" -type "double3" -1.0244792699813845 71.90345602307832 -76.104681687724721 ;
	setAttr ".ro" -type "double3" -90 90 0 ;
createNode polyCut -n "polyCut14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -68.365345844746471 1;
	setAttr ".pc" -type "double3" -1.0244792699813845 71.90345602307832 -76.104681687724721 ;
	setAttr ".ro" -type "double3" -90 90 0 ;
createNode polyCut -n "polyCut15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -65.903374258806664 1;
	setAttr ".pc" -type "double3" -1.0244792103767395 71.90345602307832 -78.448650719617092 ;
	setAttr ".ro" -type "double3" -90 90 0 ;
createNode polyCut -n "polyCut16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -68.365345844746471 1;
	setAttr ".pc" -type "double3" -1.0244792103767395 71.90345602307832 -78.448650719617092 ;
	setAttr ".ro" -type "double3" -90 90 0 ;
createNode polyCut -n "polyCut17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:9]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -68.365345844746471 1;
	setAttr ".pc" -type "double3" -1.6263330578804016 72.059720625204477 -76.000505286307302 ;
	setAttr ".ro" -type "double3" -90 90 0 ;
	setAttr ".ps" -type "double2" 1.5431145429611206 9.80804443359375 ;
createNode polyCut -n "polyCut18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:9]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -65.903374258806664 1;
	setAttr ".pc" -type "double3" -1.6263330578804016 72.059720625204477 -76.000505286307302 ;
	setAttr ".ro" -type "double3" -90 90 0 ;
	setAttr ".ps" -type "double2" 1.5431145429611206 9.80804443359375 ;
createNode polyCut -n "polyCut19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:13]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -68.365345844746471 1;
	setAttr ".pc" -type "double3" -1.6263329386711121 71.434662216699849 -75.974461185952919 ;
	setAttr ".ro" -type "double3" -90 90 0 ;
	setAttr ".ps" -type "double2" 1.5431143045425415 9.80804443359375 ;
createNode polyCut -n "polyCut20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:13]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -65.903374258806664 1;
	setAttr ".pc" -type "double3" -1.6263329386711121 71.434662216699849 -75.974461185952919 ;
	setAttr ".ro" -type "double3" -90 90 0 ;
	setAttr ".ps" -type "double2" 1.5431143045425415 9.80804443359375 ;
createNode polyExtrudeFace -n "polyExtrudeFace51";
	setAttr ".ics" -type "componentList" 1 "f[15]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -68.365345844746471 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.0584841 71.747192 -77.511047 ;
	setAttr ".rs" 1176585042;
	setAttr ".lt" -type "double3" 2.0949440765975375e-16 1.4326397561138931e-14 0.94347893627266988 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.0584840401463005 71.434659465266094 -79.0255345798126 ;
	setAttr ".cbx" -type "double3" -2.0584840401463005 72.059729095346583 -78.458570714313737 ;
createNode polyExtrudeFace -n "polyExtrudeFace52";
	setAttr ".ics" -type "componentList" 1 "f[15]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -65.903374258806664 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.0584841 71.747192 -77.511047 ;
	setAttr ".rs" 1391167923;
	setAttr ".lt" -type "double3" 2.0949440765975375e-16 1.4326397561138931e-14 0.94347893627266988 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.0584840401463005 71.434659465266094 -76.563525521541607 ;
	setAttr ".cbx" -type "double3" -2.0584840401463005 72.059729095346583 -75.996561656042729 ;
createNode polyExtrudeFace -n "polyExtrudeFace53";
	setAttr ".ics" -type "componentList" 1 "f[15]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -68.365345844746471 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.115005 71.747192 -77.511047 ;
	setAttr ".rs" 1174758349;
	setAttr ".lt" -type "double3" 1.1462157262501602e-13 -1.1442568808061535 1.202763360754963 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1150049773268695 71.434659465266094 -79.0255345798126 ;
	setAttr ".cbx" -type "double3" -1.1150049773268695 72.059729095346583 -78.458570714313737 ;
createNode polyExtrudeFace -n "polyExtrudeFace54";
	setAttr ".ics" -type "componentList" 1 "f[15]";
	setAttr ".ix" -type "matrix" 0.16970341928177149 0 0 0 0 2.5949932393864223 0 0 0 0 0.1227893348710942 0
		 -2.2281876212698646 -42.196434191215197 -65.903374258806664 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.115005 71.747192 -77.511047 ;
	setAttr ".rs" 754714492;
	setAttr ".lt" -type "double3" 1.1462157262501602e-13 -1.1442568808061535 1.202763360754963 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1150049773268695 71.434659465266094 -76.563518027075347 ;
	setAttr ".cbx" -type "double3" -1.1150049773268695 72.059729095346583 -75.996554161576498 ;
createNode polyTweak -n "polyTweak52";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[14]" -type "float3" 0 -2.8665233 0 ;
	setAttr ".tk[79]" -type "float3" -0.15469597 1.1022372 0.00059479417 ;
	setAttr ".tk[80]" -type "float3" 0.024555916 -8.3820086 -0.0054615568 ;
createNode deleteComponent -n "deleteComponent22";
	setAttr ".dc" -type "componentList" 1 "f[64]";
createNode deleteComponent -n "deleteComponent23";
	setAttr ".dc" -type "componentList" 1 "f[53]";
createNode deleteComponent -n "deleteComponent24";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode deleteComponent -n "deleteComponent25";
	setAttr ".dc" -type "componentList" 1 "f[56]";
createNode deleteComponent -n "deleteComponent26";
	setAttr ".dc" -type "componentList" 1 "f[57]";
createNode deleteComponent -n "deleteComponent27";
	setAttr ".dc" -type "componentList" 1 "f[50]";
createNode polyTweak -n "polyTweak53";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[14]" -type "float3" 0.25256634 3.3506794 0 ;
	setAttr ".tk[79]" -type "float3" 0 5.8817711 0 ;
createNode deleteComponent -n "deleteComponent28";
	setAttr ".dc" -type "componentList" 1 "vtx[14]";
createNode deleteComponent -n "deleteComponent29";
	setAttr ".dc" -type "componentList" 1 "vtx[77]";
createNode deleteComponent -n "deleteComponent30";
	setAttr ".dc" -type "componentList" 1 "vtx[46]";
createNode deleteComponent -n "deleteComponent31";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent32";
	setAttr ".dc" -type "componentList" 0;
createNode polyBridgeEdge -n "polyBridgeEdge8";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:69]";
	setAttr ".gi" 84;
createNode polyBridgeEdge -n "polyBridgeEdge9";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:69]";
	setAttr ".gi" 85;
createNode polyBridgeEdge -n "polyBridgeEdge10";
	setAttr ".ics" -type "componentList" 2 "e[22]" "e[111]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 16;
	setAttr ".sv2" 67;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:70]";
	setAttr ".gi" 86;
createNode polyBridgeEdge -n "polyBridgeEdge11";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts66";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:70]";
	setAttr ".gi" 87;
createNode deleteComponent -n "deleteComponent33";
	setAttr ".dc" -type "componentList" 1 "f[58]";
createNode deleteComponent -n "deleteComponent34";
	setAttr ".dc" -type "componentList" 1 "f[59]";
createNode deleteComponent -n "deleteComponent35";
	setAttr ".dc" -type "componentList" 1 "f[54]";
createNode deleteComponent -n "deleteComponent36";
	setAttr ".dc" -type "componentList" 1 "f[67]";
createNode deleteComponent -n "deleteComponent37";
	setAttr ".dc" -type "componentList" 1 "f[10]";
createNode deleteComponent -n "deleteComponent38";
	setAttr ".dc" -type "componentList" 1 "f[50]";
createNode deleteComponent -n "deleteComponent39";
	setAttr ".dc" -type "componentList" 1 "f[50]";
createNode polyBridgeEdge -n "polyBridgeEdge12";
	setAttr ".ics" -type "componentList" 2 "e[12]" "e[116]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 8;
	setAttr ".sv2" 72;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:64]";
	setAttr ".gi" 88;
createNode polyBridgeEdge -n "polyBridgeEdge13";
	setAttr ".ics" -type "componentList" 2 "e[127]" "e[167]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 43;
	setAttr ".sv2" 72;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
	setAttr ".gi" 89;
createNode polyBridgeEdge -n "polyBridgeEdge14";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts69";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
	setAttr ".gi" 90;
createNode deleteComponent -n "deleteComponent40";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent41";
	setAttr ".dc" -type "componentList" 0;
createNode polyTweak -n "polyTweak54";
	setAttr ".uopa" yes;
	setAttr ".tk[69]" -type "float3"  -0.060458805 0.44978946 0.0028139295;
createNode deleteComponent -n "deleteComponent42";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent43";
	setAttr ".dc" -type "componentList" 3 "e[32:33]" "e[35]" "e[60]";
createNode deleteComponent -n "deleteComponent44";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent45";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent46";
	setAttr ".dc" -type "componentList" 1 "f[27]";
createNode deleteComponent -n "deleteComponent47";
	setAttr ".dc" -type "componentList" 1 "f[16]";
createNode polyExtrudeEdge -n "polyExtrudeEdge8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[17]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.6101599 31.25598 -59.555397 ;
	setAttr ".rs" 231394363;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.834837239228449 30.668644584721243 -59.555398238805232 ;
	setAttr ".cbx" -type "double3" -8.385483311750642 31.843315445507557 -59.555398238805232 ;
createNode groupParts -n "groupParts70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:61]";
	setAttr ".gi" 91;
createNode polyDelEdge -n "polyDelEdge7";
	setAttr ".ics" -type "componentList" 2 "e[101]" "e[117]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak55";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[66]" -type "float3" 0.013047561 0 0 ;
	setAttr ".tk[98]" -type "float3" 0 23.818144 0 ;
	setAttr ".tk[99]" -type "float3" 0 19.096243 0 ;
createNode polyBridgeEdge -n "polyBridgeEdge15";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:61]";
	setAttr ".gi" 92;
createNode polyBridgeEdge -n "polyBridgeEdge16";
	setAttr ".ics" -type "componentList" 2 "e[117]" "e[160]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 73;
	setAttr ".sv2" 68;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts72";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:62]";
	setAttr ".gi" 93;
createNode polyBridgeEdge -n "polyBridgeEdge17";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts73";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:62]";
	setAttr ".gi" 94;
createNode polyBridgeEdge -n "polyBridgeEdge18";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts74";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:62]";
	setAttr ".gi" 95;
createNode polyBridgeEdge -n "polyBridgeEdge19";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts75";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:62]";
	setAttr ".gi" 96;
createNode polyBridgeEdge -n "polyBridgeEdge20";
	setAttr ".ics" -type "componentList" 2 "e[18]" "e[165]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 10;
	setAttr ".sv2" 68;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts76";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:63]";
	setAttr ".gi" 97;
createNode polyBridgeEdge -n "polyBridgeEdge21";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:63]";
	setAttr ".gi" 98;
createNode polyBridgeEdge -n "polyBridgeEdge22";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts78";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:63]";
	setAttr ".gi" 99;
createNode polyBridgeEdge -n "polyBridgeEdge23";
	setAttr ".ics" -type "componentList" 2 "e[101]" "e[109]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 64;
	setAttr ".sv2" 10;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts79";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:64]";
	setAttr ".gi" 100;
createNode polyNormal -n "polyNormal4";
	setAttr ".ics" -type "componentList" 2 "f[46]" "f[64]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal5";
	setAttr ".ics" -type "componentList" 1 "f[64]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal6";
	setAttr ".ics" -type "componentList" 1 "f[64]";
	setAttr ".unm" no;
createNode deleteComponent -n "deleteComponent48";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent49";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent50";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent51";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent52";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent53";
	setAttr ".dc" -type "componentList" 1 "vtx[0]";
createNode deleteComponent -n "deleteComponent54";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent55";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent56";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent57";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode polyExtrudeEdge -n "polyExtrudeEdge9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.6857069 35.625088 -60.484104 ;
	setAttr ".rs" 1825242596;
	setAttr ".lt" -type "double3" 8.749945212827015e-15 0.33353937645462017 -1.0259485826809214e-14 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7066608594401202 34.853218280118767 -60.484103899738031 ;
	setAttr ".cbx" -type "double3" -1.6647528382284953 36.396958187442877 -60.484103899738031 ;
createNode groupId -n "groupId103";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts80";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1]";
createNode polyTweak -n "polyTweak56";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[15]" -type "float3" 4.4703484e-08 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.25384402 0 0 ;
	setAttr ".tk[32]" -type "float3" -0.22416787 0 0 ;
	setAttr ".tk[66]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[83]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[87]" -type "float3" 0.059047941 0 0 ;
createNode deleteComponent -n "deleteComponent58";
	setAttr ".dc" -type "componentList" 1 "f[24]";
createNode polyTweak -n "polyTweak57";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[3:4]" -type "float3"  0.023201406 0 0 0.02770694
		 0 0;
createNode deleteComponent -n "deleteComponent59";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode deleteComponent -n "deleteComponent60";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent61";
	setAttr ".dc" -type "componentList" 1 "f[53]";
createNode deleteComponent -n "deleteComponent62";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent63";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent64";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent65";
	setAttr ".dc" -type "componentList" 1 "f[51]";
createNode deleteComponent -n "deleteComponent66";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent67";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent68";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent69";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent70";
	setAttr ".dc" -type "componentList" 1 "f[51]";
createNode polyBridgeEdge -n "polyBridgeEdge24";
	setAttr ".ics" -type "componentList" 2 "e[48]" "e[137]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 10;
	setAttr ".sv2" 81;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts81";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:61]";
	setAttr ".gi" 104;
createNode polyBridgeEdge -n "polyBridgeEdge25";
	setAttr ".ics" -type "componentList" 2 "e[107]" "e[162]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 68;
	setAttr ".sv2" 81;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts82";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:62]";
	setAttr ".gi" 105;
createNode polyBridgeEdge -n "polyBridgeEdge26";
	setAttr ".ics" -type "componentList" 2 "e[135]" "e[164]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 76;
	setAttr ".sv2" 81;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts83";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:63]";
	setAttr ".gi" 106;
createNode polySoftEdge -n "polySoftEdge6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[48]" "e[106:107]" "e[135]" "e[137]" "e[162:166]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[48]" "e[106:107]" "e[135]" "e[137]" "e[162:166]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[18]" "e[163]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".a" 0;
createNode polyBridgeEdge -n "polyBridgeEdge27";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts84";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:63]";
	setAttr ".gi" 107;
createNode polyBridgeEdge -n "polyBridgeEdge28";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode groupParts -n "groupParts85";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:63]";
	setAttr ".gi" 108;
createNode polyBridgeEdge -n "polyBridgeEdge29";
	setAttr ".ics" -type "componentList" 2 "e[18]" "e[50]";
	setAttr ".ix" -type "matrix" 9.2855246170102497 0 0 0 0 0.25020103167842483 0 0 0 0 129.45678893207631 0
		 -3.7427259843890841 30.418443553042817 -87.695953316717407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 15;
	setAttr ".sv2" 80;
	setAttr ".sma" 98.6897;
createNode groupId -n "groupId104";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts86";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:64]";
createNode groupId -n "groupId105";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate16";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 2 ;
createNode groupId -n "groupId107";
	setAttr ".ihi" 0;
createNode groupId -n "groupId109";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts89";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode polyChipOff -n "polyChipOff16";
	setAttr ".ics" -type "componentList" 1 "f[7:10]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 -1 0 0 0 32.515949410173874 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 32.515949 ;
	setAttr ".rs" 55217627;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate17";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 2 ;
createNode groupId -n "groupId110";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts90";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId111";
	setAttr ".ihi" 0;
createNode groupId -n "groupId113";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts92";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode polyChipOff -n "polyChipOff17";
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 -1 0 0 0 32.515949410173874 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 32.515949 ;
	setAttr ".rs" 1913666045;
	setAttr ".dup" no;
createNode polyChipOff -n "polyChipOff18";
	setAttr ".ics" -type "componentList" 1 "f[0:10]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 615065100;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate19";
	setAttr ".ic" 2;
createNode groupParts -n "groupParts96";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
	setAttr ".gi" 183;
createNode polySeparate -n "polySeparate20";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId119";
	setAttr ".ihi" 0;
createNode groupId -n "groupId120";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts98";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId121";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts99";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polyChipOff -n "polyChipOff20";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[7:10]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 -1 0 0 0 32.515949410173874 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 32.515949 ;
	setAttr ".rs" 891857391;
	setAttr ".dup" no;
createNode groupId -n "groupId122";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts100";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId123";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate22";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId127";
	setAttr ".ihi" 0;
createNode groupId -n "groupId128";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts104";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId129";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts105";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 26 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]";
createNode polyExtrudeFace -n "polyExtrudeFace55";
	setAttr ".ics" -type "componentList" 3 "f[2]" "f[11:12]" "f[14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 2.0698914991091133 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 57.69656 8.4856396 ;
	setAttr ".rs" 2094321561;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 54.475818634033203 6.6684403882692695 ;
	setAttr ".cbx" -type "double3" 1 60.917304992675781 10.302837894983137 ;
createNode polyChipOff -n "polyChipOff22";
	setAttr ".ics" -type "componentList" 1 "f[7:10]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 2.0698914991091133 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 2.0698915 ;
	setAttr ".rs" 1422400820;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate23";
	setAttr ".ic" 4;
	setAttr ".rs" -type "Int32Array" 1 3 ;
	setAttr -s 2 ".out";
createNode groupParts -n "groupParts106";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0]" "f[1]" "f[2]" "f[3]";
	setAttr ".gi" 197;
createNode groupId -n "groupId131";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts107";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:27]";
createNode polyChipOff -n "polyChipOff23";
	setAttr ".ics" -type "componentList" 1 "f[0:27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 2.0698914991091133 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 2.0698915 ;
	setAttr ".rs" 1042715813;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate24";
	setAttr ".ic" 3;
	setAttr -s 3 ".out";
createNode groupId -n "groupId132";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts108";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId133";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts109";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode groupParts -n "groupParts110";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]";
	setAttr ".gi" 201;
createNode polyChipOff -n "polyChipOff24";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 2.0698914991091133 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 2.0698915 ;
	setAttr ".rs" 900992098;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate25";
	setAttr ".ic" 2;
createNode groupParts -n "groupParts112";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 8 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]";
	setAttr ".gi" 203;
createNode polyChipOff -n "polyChipOff25";
	setAttr ".ics" -type "componentList" 1 "f[0:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 2.0698914991091133 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0 2.0698915 ;
	setAttr ".rs" 1615730614;
	setAttr ".dup" no;
createNode polyCloseBorder -n "polyCloseBorder6";
	setAttr ".ics" -type "componentList" 3 "e[0:1]" "e[6]" "e[10]";
createNode polyTweak -n "polyTweak58";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[0:9]" -type "float3"  0 4.66594219 0 0 4.66594219
		 0 0 4.66594219 0 0 4.66594219 0 0 4.66594219 0 0 4.66594219 0 0 4.66594219 0 0 4.66594219
		 0 0 4.66594219 0 0 4.66594219 0;
createNode groupParts -n "groupParts113";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0]" "f[1]" "f[2]" "f[3:4]";
	setAttr ".gi" 204;
createNode polyCloseBorder -n "polyCloseBorder7";
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
createNode groupId -n "groupId138";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts114";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10:11]";
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 1 "vtx[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.82637753522507751 5.2981722910317277 1;
	setAttr ".d" 10;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak59";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0.0051673325 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.0051673325 0 ;
	setAttr ".tk[4]" -type "float3" 0 3.6420646 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.0051673325 0 ;
	setAttr ".tk[8]" -type "float3" 0 3.6420646 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.0051673325 0 ;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.82637753522507751 5.2981722910317277 1;
	setAttr ".d" 10;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 1 "vtx[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.82637753522507751 5.2981722910317277 1;
	setAttr ".d" 10;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 1 "vtx[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.82637753522507751 5.2981722910317277 1;
	setAttr ".d" 10;
	setAttr ".am" yes;
createNode polyCloseBorder -n "polyCloseBorder8";
	setAttr ".ics" -type "componentList" 2 "e[7:8]" "e[10:11]";
createNode groupId -n "groupId139";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts115";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polySeparate -n "polySeparate26";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId140";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts116";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0]" "f[1]" "f[2]" "f[3]";
createNode groupParts -n "groupParts62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:182]";
createNode groupId -n "groupId100";
	setAttr ".ihi" 0;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 1 "vtx[197]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 10;
	setAttr ".am" yes;
createNode groupParts -n "groupParts117";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 176 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]" "f[66]" "f[67]" "f[68]" "f[69]" "f[70]" "f[71]" "f[72]" "f[73]" "f[74]" "f[75]" "f[76]" "f[77]" "f[78]" "f[79]" "f[80]" "f[81]" "f[82]" "f[83]" "f[84]" "f[85]" "f[86]" "f[87]" "f[88]" "f[89]" "f[90]" "f[91]" "f[92]" "f[93]" "f[94]" "f[95]" "f[96]" "f[97]" "f[98]" "f[99]" "f[100]" "f[101]" "f[102]" "f[103]" "f[104]" "f[105]" "f[106]" "f[107]" "f[108]" "f[109]" "f[110]" "f[111]" "f[112]" "f[113]" "f[114]" "f[115]" "f[116]" "f[117]" "f[118]" "f[119]" "f[120]" "f[121]" "f[122]" "f[123]" "f[124]" "f[125]" "f[126]" "f[127]" "f[128]" "f[129]" "f[130]" "f[131]" "f[132]" "f[133]" "f[134]" "f[135]" "f[136]" "f[137]" "f[138]" "f[139]" "f[140]" "f[141]" "f[142]" "f[143]" "f[144]" "f[145]" "f[146]" "f[147]" "f[148]" "f[149]" "f[150]" "f[151]" "f[152]" "f[153]" "f[154]" "f[155]" "f[156]" "f[157]" "f[158]" "f[159]" "f[160]" "f[161]" "f[162]" "f[163]" "f[164]" "f[165]" "f[166]" "f[167]" "f[168]" "f[169]" "f[170]" "f[171]" "f[172]" "f[173]" "f[174]" "f[175]";
createNode groupId -n "groupId141";
	setAttr ".ihi" 0;
createNode polyNormal -n "polyNormal2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyExtrudeEdge -n "polyExtrudeEdge10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1]" "e[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 5.2981722910317277 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1 68.280411 8.2007513 ;
	setAttr ".rs" 1180821814;
	setAttr ".lt" -type "double3" -4.4417203342051933e-16 4.4417203342051933e-16 -2.0003730042010464 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1 65.06878662109375 8.1825979311379289 ;
	setAttr ".cbx" -type "double3" 1 71.492034912109375 8.2189043123635148 ;
createNode groupId -n "groupId142";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts118";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 9 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7:8]" "f[9]";
createNode polyCut -n "polyCut21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 2.2204460492503131e-16 -1 0 0 2.7259501740213374 6.0528252943588821e-16 0
		 0 151.082321443399 60.385076089637309 1;
	setAttr ".pc" -type "double3" -0.31628383368937341 71.078121256840177 -2.2250956645292472 ;
	setAttr ".ro" -type "double3" -117.20764246243016 48.464686350689057 -22.465115793267667 ;
	setAttr ".ps" -type "double2" 2 10.297386169433594 ;
createNode polyExtrudeFace -n "polyExtrudeFace56";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 2.2204460492503131e-16 -1 0 0 2.7259501740213374 6.0528252943588821e-16 0
		 0 151.082321443399 60.385076089637309 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 70.483376 -2.6743112 ;
	setAttr ".rs" 648442502;
	setAttr ".lt" -type "double3" 0 -1.4210854715202004e-14 1.9235390442305995 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 70.039241691803809 -2.6743111173939624 ;
	setAttr ".cbx" -type "double3" 1 70.927512080560234 -2.6743111173939624 ;
createNode polyTweak -n "polyTweak60";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[6:9]" -type "float3"  0 -2.3841858e-07 0 0 -2.3841858e-07
		 0 0 -2.3841858e-07 -0.0090121711 0 -2.3841858e-07 0.0090121711;
createNode polyChipOff -n "polyChipOff26";
	setAttr ".ics" -type "componentList" 2 "f[3]" "f[7:10]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 2.2204460492503131e-16 -1 0 0 2.7259501740213374 6.0528252943588821e-16 0
		 0 151.082321443399 60.385076089637309 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 151.08232 60.385075 ;
	setAttr ".rs" 455396882;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate27";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId143";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts119";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId144";
	setAttr ".ihi" 0;
createNode groupId -n "groupId145";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts120";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId146";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts121";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode polyExtrudeEdge -n "polyExtrudeEdge11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.99999988 79.703423 3.671212 ;
	setAttr ".rs" 194488996;
	setAttr ".lt" -type "double3" -4.4097520906607703e-16 0 -1.9859757872296111 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.99999988079071045 79.703422546386719 2.3552048206329346 ;
	setAttr ".cbx" -type "double3" 0.99999988079071045 79.703422546386719 4.9872193336486816 ;
createNode groupId -n "groupId147";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts122";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId148";
	setAttr ".ihi" 0;
createNode groupId -n "groupId149";
	setAttr ".ihi" 0;
createNode groupId -n "groupId150";
	setAttr ".ihi" 0;
createNode groupId -n "groupId151";
	setAttr ".ihi" 0;
createNode groupId -n "groupId152";
	setAttr ".ihi" 0;
createNode hyperGraphInfo -n "nodeEditorPanel2Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -72.61904761904762 -232.14285714285717 ;
	setAttr ".vh" -type "double2" 483.33333333333343 86.904761904761912 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 1.4285714626312256;
	setAttr ".hyp[0].y" -72.857139587402344;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 212.85714721679688;
	setAttr ".hyp[1].y" -72.857139587402344;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".anf" yes;
createNode polySubdFace -n "polySubdFace18";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".dvv" 3;
	setAttr ".sbm" 1;
createNode polyCut -n "polyCut22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".pc" -type "double3" 1.0000000000009095 50.998348583046138 25.780195546067837 ;
	setAttr ".ro" -type "double3" -180 0 -90 ;
	setAttr ".ps" -type "double2" 1 1.3918533325195312 ;
createNode polyCut -n "polyCut23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".pc" -type "double3" -0.99999999999909051 50.934143042197306 25.780195546067837 ;
	setAttr ".ro" -type "double3" -180 0 -90 ;
	setAttr ".ps" -type "double2" 1 1.3918533325195312 ;
createNode polyCut -n "polyCut24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[5]" "f[14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".pc" -type "double3" 9.0949470177292824e-13 50.944673973086438 14.827398662582999 ;
	setAttr ".ro" -type "double3" -180 0 -90 ;
	setAttr ".ps" -type "double2" 2 1.3918533325195312 ;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".d" 10;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak61";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 -0.00076510315 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.00076510315 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.00076510315 ;
	setAttr ".tk[19]" -type "float3" 0 0 -0.00076510315 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.41154274 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.41154316 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.41154316 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.41154274 ;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[18]" "vtx[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".d" 10;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".d" 10;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".d" 10;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".d" 10;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 2 "vtx[17]" "vtx[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".d" 10;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert13";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".d" 10;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert14";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".d" 10;
	setAttr ".am" yes;
createNode deleteComponent -n "deleteComponent71";
	setAttr ".dc" -type "componentList" 2 "f[0]" "f[12:13]";
createNode deleteComponent -n "deleteComponent72";
	setAttr ".dc" -type "componentList" 2 "f[1]" "f[7:8]";
createNode polySewEdge -n "polySewEdge1";
	setAttr ".ics" -type "componentList" 3 "e[2:3]" "e[8:9]" "e[14:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".ws" yes;
createNode polySewEdge -n "polySewEdge2";
	setAttr ".ics" -type "componentList" 3 "e[2:3]" "e[8:9]" "e[14:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".ws" yes;
createNode polyCloseBorder -n "polyCloseBorder9";
	setAttr ".ics" -type "componentList" 3 "e[2:3]" "e[8:9]" "e[14:17]";
createNode polyCloseBorder -n "polyCloseBorder10";
	setAttr ".ics" -type "componentList" 3 "e[0:1]" "e[4:5]" "e[20:23]";
createNode deleteComponent -n "deleteComponent73";
	setAttr ".dc" -type "componentList" 1 "f[13]";
createNode deleteComponent -n "deleteComponent74";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent75";
	setAttr ".dc" -type "componentList" 1 "vtx[21]";
createNode deleteComponent -n "deleteComponent76";
	setAttr ".dc" -type "componentList" 1 "vtx[20]";
createNode deleteComponent -n "deleteComponent77";
	setAttr ".dc" -type "componentList" 1 "vtx[21]";
createNode deleteComponent -n "deleteComponent78";
	setAttr ".dc" -type "componentList" 1 "vtx[20]";
createNode deleteComponent -n "deleteComponent79";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode deleteComponent -n "deleteComponent80";
	setAttr ".dc" -type "componentList" 1 "vtx[14]";
createNode deleteComponent -n "deleteComponent81";
	setAttr ".dc" -type "componentList" 1 "vtx[14]";
createNode deleteComponent -n "deleteComponent82";
	setAttr ".dc" -type "componentList" 1 "vtx[12]";
createNode deleteComponent -n "deleteComponent83";
	setAttr ".dc" -type "componentList" 1 "vtx[12]";
createNode polyCloseBorder -n "polyCloseBorder11";
	setAttr ".ics" -type "componentList" 3 "e[2:3]" "e[7]" "e[12]";
createNode polyCloseBorder -n "polyCloseBorder12";
	setAttr ".ics" -type "componentList" 3 "e[0:1]" "e[4]" "e[15]";
createNode polyExtrudeFace -n "polyExtrudeFace57";
	setAttr ".ics" -type "componentList" 1 "f[12:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 45.970329 20.491894 ;
	setAttr ".rs" 177963832;
	setAttr ".lt" -type "double3" 0 -2.4055948040252491e-16 1.9643172265669726 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 45.274402534929585 4.7353323516731276 ;
	setAttr ".cbx" -type "double3" 1 46.666255867449117 36.248455387104038 ;
createNode polyTweak -n "polyTweak62";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -4.3401213 0 ;
	setAttr ".tk[1]" -type "float3" 0 -4.3401213 0 ;
	setAttr ".tk[2]" -type "float3" 0 -4.3401213 0 ;
	setAttr ".tk[3]" -type "float3" 0 -4.3401213 0 ;
	setAttr ".tk[4]" -type "float3" 0 -4.3401213 0 ;
	setAttr ".tk[5]" -type "float3" 0 -4.3401213 0 ;
	setAttr ".tk[6]" -type "float3" 0 -4.3401213 0 ;
	setAttr ".tk[7]" -type "float3" 0 -4.3401213 0 ;
	setAttr ".tk[12]" -type "float3" 0 -4.7683716e-07 0 ;
	setAttr ".tk[13]" -type "float3" 0 -4.7683716e-07 0 ;
	setAttr ".tk[14]" -type "float3" 0 -4.7683716e-07 0 ;
	setAttr ".tk[15]" -type "float3" 0 -4.7683716e-07 0 ;
	setAttr ".tk[20]" -type "float3" 0 -4.7683716e-07 0 ;
	setAttr ".tk[21]" -type "float3" 0 -4.7683716e-07 0 ;
	setAttr ".tk[22]" -type "float3" 0 -4.7683716e-07 0 ;
	setAttr ".tk[23]" -type "float3" 0 -4.7683716e-07 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace58";
	setAttr ".ics" -type "componentList" 1 "f[12:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 45.970329 20.491894 ;
	setAttr ".rs" 1196174921;
	setAttr ".lt" -type "double3" 0 -1.5284297207211163e-16 1.2480575801817051 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 45.274402534929585 2.7710150298957839 ;
	setAttr ".cbx" -type "double3" 1 46.666255867449117 38.212770801532749 ;
createNode polyExtrudeFace -n "polyExtrudeFace59";
	setAttr ".ics" -type "componentList" 2 "f[23]" "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 19.791660225359273 4.7382072028999342 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 45.274403 20.491892 ;
	setAttr ".rs" 2048933083;
	setAttr ".lt" -type "double3" 0 6.1775779551856758e-17 3.721786622229736 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1 45.274402534929585 1.5229576644783034 ;
	setAttr ".cbx" -type "double3" 1 45.274402534929585 39.46082530592728 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :initialShadingGroup;
	setAttr -s 245 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 81 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.45833525 0.45833525 0.45833525 ;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
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
connectAttr "polyExtrudeFace37.out" "Ledge105Shape.i";
connectAttr "groupId42.id" "LedgeShape128.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape128.iog.og[0].gco";
connectAttr "groupId43.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupId44.id" "LedgeShape129.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape129.iog.og[0].gco";
connectAttr "groupId45.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
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
connectAttr "polyExtrudeFace17.out" "WallLedgeShape130.i";
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
connectAttr "groupId39.id" "LedgeShape148.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape148.iog.og[0].gco";
connectAttr "TrainTracks:polyCube2.out" "|TrainTracks1|Ledge|LedgeShape.i";
connectAttr "TrainTracks:polyExtrudeFace3.out" "|TrainTracks1|TrainTracks:group1|TrainTracks:pCube1|TrainTracks:pCubeShape1.i"
		;
connectAttr "groupParts61.og" "LedgeWallShape1.i";
connectAttr "groupId99.id" "LedgeWallShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeWallShape1.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "WallLedge127Shape.iog.og[0].gco";
connectAttr "groupId84.id" "WallLedge127Shape.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace36.out" "Ledge151Shape.i";
connectAttr "groupParts37.og" "LedgeShape178.i";
connectAttr "groupId87.id" "LedgeShape178.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape178.iog.og[0].gco";
connectAttr "groupParts38.og" "WallLedgeShape132.i";
connectAttr "groupId88.id" "WallLedgeShape132.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape132.iog.og[0].gco";
connectAttr "polyChipOff11.out" "LedgeWallShape.i";
connectAttr "groupId86.id" "LedgeWallShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeWallShape.iog.og[0].gco";
connectAttr "layer1.di" "pPlane1.do";
connectAttr "polyNormal2.out" "pPlaneShape1.i";
connectAttr "polyCut7.out" "Ledge157Shape.i";
connectAttr "groupParts53.og" "Ledge161Shape.i";
connectAttr "groupId96.id" "Ledge161Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ledge161Shape.iog.og[0].gco";
connectAttr "groupParts50.og" "Ledge162Shape.i";
connectAttr "groupId93.id" "Ledge162Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ledge162Shape.iog.og[0].gco";
connectAttr "groupParts48.og" "Ledge163Shape.i";
connectAttr "groupId91.id" "Ledge163Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ledge163Shape.iog.og[0].gco";
connectAttr "deleteComponent69.og" "polySurfaceShape65.i";
connectAttr "groupId103.id" "polySurfaceShape65.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape65.iog.og[0].gco";
connectAttr "groupParts86.og" "polySurfaceShape68.i";
connectAttr "groupId104.id" "polySurfaceShape68.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape68.iog.og[0].gco";
connectAttr "groupId101.id" "WallLedgeShape136.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape136.iog.og[0].gco";
connectAttr "polyExtrudeFace54.out" "Nothing5Shape.i";
connectAttr "polyExtrudeFace53.out" "Nothing4Shape.i";
connectAttr "groupId105.id" "WallShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallShape5.iog.og[0].gco";
connectAttr "groupParts98.og" "WallLedgeShape159.i";
connectAttr "groupId120.id" "WallLedgeShape159.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape159.iog.og[0].gco";
connectAttr "groupParts99.og" "WallLedgeShape144.i";
connectAttr "groupId121.id" "WallLedgeShape144.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape144.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "Ledge32Shape.iog.og[0].gco";
connectAttr "groupId119.id" "Ledge32Shape.ciog.cog[0].cgid";
connectAttr ":initialShadingGroup.mwc" "Ledge35Shape.iog.og[0].gco";
connectAttr "groupId107.id" "Ledge35Shape.ciog.cog[0].cgid";
connectAttr "groupId122.id" "Ledge37Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ledge37Shape.iog.og[0].gco";
connectAttr "groupParts100.og" "Ledge37Shape.i";
connectAttr "groupId123.id" "Ledge37Shape.ciog.cog[0].cgid";
connectAttr "groupId110.id" "Ledge40Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Ledge40Shape.iog.og[0].gco";
connectAttr "groupParts90.og" "Ledge40Shape.i";
connectAttr "groupId111.id" "Ledge40Shape.ciog.cog[0].cgid";
connectAttr "groupParts122.og" "LedgeShape183.i";
connectAttr "groupId147.id" "LedgeShape183.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape183.iog.og[0].gco";
connectAttr "polyChipOff18.out" "polySurfaceShape75.i";
connectAttr "groupId109.id" "polySurfaceShape75.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape75.iog.og[0].gco";
connectAttr "groupId90.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "polyChipOff12.out" "polySurfaceShape31.i";
connectAttr "polyChipOff17.out" "polySurfaceShape78.i";
connectAttr "groupId113.id" "polySurfaceShape78.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape78.iog.og[0].gco";
connectAttr "groupParts104.og" "LedgeShape192.i";
connectAttr "groupId128.id" "LedgeShape192.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape192.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "Ledge31Shape.iog.og[0].gco";
connectAttr "groupId127.id" "Ledge31Shape.ciog.cog[0].cgid";
connectAttr "groupParts115.og" "WallLedgeShape150.i";
connectAttr "groupId139.id" "WallLedgeShape150.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape150.iog.og[0].gco";
connectAttr "polyChipOff22.out" "polySurfaceShape89.i";
connectAttr "groupId129.id" "polySurfaceShape89.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape89.iog.og[0].gco";
connectAttr "groupId38.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupParts108.og" "LedgeShape193.i";
connectAttr "groupId132.id" "LedgeShape193.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape193.iog.og[0].gco";
connectAttr "groupParts114.og" "WallLedgeShape146.i";
connectAttr "groupId138.id" "WallLedgeShape146.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape146.iog.og[0].gco";
connectAttr "polyChipOff23.out" "polySurfaceShape91.i";
connectAttr "groupId131.id" "polySurfaceShape91.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape91.iog.og[0].gco";
connectAttr "groupParts118.og" "WallLedgeShape152.i";
connectAttr "groupId142.id" "WallLedgeShape152.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape152.iog.og[0].gco";
connectAttr "polyChipOff24.out" "polySurfaceShape93.i";
connectAttr "groupId133.id" "polySurfaceShape93.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape93.iog.og[0].gco";
connectAttr "groupParts22.og" "|Ground|GroundShape.i";
connectAttr "groupId69.id" "|Ground|GroundShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|Ground|GroundShape.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "|transform6|GroundShape.iog.og[0].gco";
connectAttr "groupId68.id" "|transform6|GroundShape.ciog.cog[0].cgid";
connectAttr "groupId100.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "polyMergeVert2.out" "polySurfaceShape39.i";
connectAttr "groupParts116.og" "GroundShape1.i";
connectAttr "groupId140.id" "GroundShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "GroundShape1.iog.og[0].gco";
connectAttr "groupParts117.og" "polySurfaceShape95.i";
connectAttr "groupId141.id" "polySurfaceShape95.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape95.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape53.iog.og[0].gco";
connectAttr "groupParts120.og" "WallLedgeShape151.i";
connectAttr "groupId145.id" "WallLedgeShape151.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape151.iog.og[0].gco";
connectAttr "groupParts121.og" "|Ledge|LedgeShape.i";
connectAttr "groupId146.id" "|Ledge|LedgeShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|Ledge|LedgeShape.iog.og[0].gco";
connectAttr "groupId143.id" "WallLedge139Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedge139Shape.iog.og[0].gco";
connectAttr "groupParts119.og" "WallLedge139Shape.i";
connectAttr "groupId144.id" "WallLedge139Shape.ciog.cog[0].cgid";
connectAttr "groupId148.id" "WallLedgeShape153.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape153.iog.og[0].gco";
connectAttr "groupId149.id" "WallLedgeShape160.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape160.iog.og[0].gco";
connectAttr "groupId150.id" "WallLedgeShape154.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape154.iog.og[0].gco";
connectAttr "groupId151.id" "WallLedgeShape155.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape155.iog.og[0].gco";
connectAttr "groupId152.id" "WallLedgeShape156.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape156.iog.og[0].gco";
connectAttr "polyExtrudeFace59.out" "Ledge204Shape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
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
connectAttr "groupParts2.og" "polyChipOff2.ip";
connectAttr "polySurfaceShape36.wm" "polyChipOff2.mp";
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
connectAttr "|transform6|GroundShape.o" "polySeparate6.ip";
connectAttr "polySeparate6.out[0]" "groupParts22.ig";
connectAttr "groupId69.id" "groupParts22.gi";
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
connectAttr "file2.oc" "lambert3.c";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pPlaneShape1.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "layerManager.dli[3]" "layer1.id";
connectAttr "polyTweak14.out" "polySubdFace9.ip";
connectAttr "groupParts32.og" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace17.ip";
connectAttr "WallLedgeShape130.wm" "polyExtrudeFace17.mp";
connectAttr "polySubdFace9.out" "polyTweak15.ip";
connectAttr "|Ledge151|polySurfaceShape57.o" "polySubdFace17.ip";
connectAttr "polyTweak34.out" "polyExtrudeFace36.ip";
connectAttr "Ledge151Shape.wm" "polyExtrudeFace36.mp";
connectAttr "polySubdFace17.out" "polyTweak34.ip";
connectAttr "polySurfaceShape58.o" "polyExtrudeFace37.ip";
connectAttr "Ledge105Shape.wm" "polyExtrudeFace37.mp";
connectAttr "polySurfaceShape59.o" "polyCloseBorder5.ip";
connectAttr "polyCloseBorder5.out" "groupParts42.ig";
connectAttr "groupParts42.og" "polyTweak35.ip";
connectAttr "polyTweak35.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyExtrudeFace38.ip";
connectAttr "polySurfaceShape31.wm" "polyExtrudeFace38.mp";
connectAttr "polyExtrudeFace38.out" "polyExtrudeFace39.ip";
connectAttr "polySurfaceShape31.wm" "polyExtrudeFace39.mp";
connectAttr "polyExtrudeFace39.out" "polyBridgeEdge2.ip";
connectAttr "polySurfaceShape31.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "groupParts43.ig";
connectAttr "groupParts43.og" "polySoftEdge1.ip";
connectAttr "polySurfaceShape31.wm" "polySoftEdge1.mp";
connectAttr "|Ledge157|polySurfaceShape60.o" "polyExtrudeFace40.ip";
connectAttr "Ledge157Shape.wm" "polyExtrudeFace40.mp";
connectAttr "polyTweak36.out" "polyExtrudeFace41.ip";
connectAttr "polySurfaceShape31.wm" "polyExtrudeFace41.mp";
connectAttr "polySoftEdge1.out" "polyTweak36.ip";
connectAttr "polyExtrudeFace41.out" "polyExtrudeFace42.ip";
connectAttr "polySurfaceShape31.wm" "polyExtrudeFace42.mp";
connectAttr "polyTweak37.out" "polyExtrudeFace43.ip";
connectAttr "polySurfaceShape31.wm" "polyExtrudeFace43.mp";
connectAttr "polyExtrudeFace42.out" "polyTweak37.ip";
connectAttr "polyExtrudeFace43.out" "polyExtrudeEdge2.ip";
connectAttr "polySurfaceShape31.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "groupParts44.ig";
connectAttr "groupParts44.og" "polyExtrudeFace44.ip";
connectAttr "polySurfaceShape31.wm" "polyExtrudeFace44.mp";
connectAttr "polyExtrudeFace44.out" "polyCut2.ip";
connectAttr "polySurfaceShape31.wm" "polyCut2.mp";
connectAttr "polyTweak38.out" "polyExtrudeEdge3.ip";
connectAttr "polySurfaceShape31.wm" "polyExtrudeEdge3.mp";
connectAttr "polyCut2.out" "polyTweak38.ip";
connectAttr "polyExtrudeEdge3.out" "groupParts45.ig";
connectAttr "groupParts45.og" "polyTweak39.ip";
connectAttr "polyTweak39.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyCut3.ip";
connectAttr "polySurfaceShape31.wm" "polyCut3.mp";
connectAttr "polyCut3.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyCut4.ip";
connectAttr "polySurfaceShape31.wm" "polyCut4.mp";
connectAttr "polyCut4.out" "polyCut5.ip";
connectAttr "polySurfaceShape31.wm" "polyCut5.mp";
connectAttr "polyCut5.out" "polyCut6.ip";
connectAttr "polySurfaceShape31.wm" "polyCut6.mp";
connectAttr "polyTweak40.out" "polyCut7.ip";
connectAttr "Ledge157Shape.wm" "polyCut7.mp";
connectAttr "polyExtrudeFace40.out" "polyTweak40.ip";
connectAttr "polyCut6.out" "polyTweak41.ip";
connectAttr "polyTweak41.out" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "polyCut8.ip";
connectAttr "polySurfaceShape31.wm" "polyCut8.mp";
connectAttr "polyCut8.out" "polyCut9.ip";
connectAttr "polySurfaceShape31.wm" "polyCut9.mp";
connectAttr "polyTweak42.out" "polyNormal1.ip";
connectAttr "polyCut9.out" "polyTweak42.ip";
connectAttr "polyNormal1.out" "polyNormal3.ip";
connectAttr "polyTweak43.out" "polyBridgeEdge3.ip";
connectAttr "polySurfaceShape31.wm" "polyBridgeEdge3.mp";
connectAttr "polyNormal3.out" "polyTweak43.ip";
connectAttr "polyBridgeEdge3.out" "groupParts46.ig";
connectAttr "groupParts46.og" "polyBridgeEdge4.ip";
connectAttr "polySurfaceShape31.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "groupParts47.ig";
connectAttr "groupId90.id" "groupParts47.gi";
connectAttr "polyTweak44.out" "polySplit1.ip";
connectAttr "groupParts47.og" "polyTweak44.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyCut10.ip";
connectAttr "polySurfaceShape31.wm" "polyCut10.mp";
connectAttr "polyCut10.out" "polyChipOff12.ip";
connectAttr "polySurfaceShape31.wm" "polyChipOff12.mp";
connectAttr "polySurfaceShape31.o" "polySeparate13.ip";
connectAttr "polySeparate13.out[0]" "groupParts48.ig";
connectAttr "groupId91.id" "groupParts48.gi";
connectAttr "polySeparate13.out[1]" "groupParts49.ig";
connectAttr "groupId92.id" "groupParts49.gi";
connectAttr "groupParts49.og" "deleteComponent10.ig";
connectAttr "polyTweak45.out" "polyCut11.ip";
connectAttr "deleteComponent10.og" "polyTweak45.ip";
connectAttr "polyCut11.out" "polyChipOff13.ip";
connectAttr "polyChipOff13.out" "polySeparate14.ip";
connectAttr "polySeparate14.out[0]" "groupParts50.ig";
connectAttr "groupId93.id" "groupParts50.gi";
connectAttr "polySeparate14.out[1]" "groupParts51.ig";
connectAttr "polySeparate14.out[2]" "groupParts52.ig";
connectAttr "groupId95.id" "groupParts52.gi";
connectAttr "groupParts52.og" "polyCut12.ip";
connectAttr "polyCut12.out" "polyChipOff14.ip";
connectAttr "polyChipOff14.out" "polySeparate15.ip";
connectAttr "polySeparate15.out[0]" "groupParts53.ig";
connectAttr "groupId96.id" "groupParts53.gi";
connectAttr "polySeparate15.out[1]" "groupParts54.ig";
connectAttr "groupParts35.og" "polySoftEdge4.ip";
connectAttr "LedgeWallShape1.wm" "polySoftEdge4.mp";
connectAttr "polySoftEdge4.out" "polySoftEdge5.ip";
connectAttr "LedgeWallShape1.wm" "polySoftEdge5.mp";
connectAttr "polySoftEdge5.out" "polyExtrudeEdge6.ip";
connectAttr "LedgeWallShape1.wm" "polyExtrudeEdge6.mp";
connectAttr "polyExtrudeEdge6.out" "groupParts60.ig";
connectAttr "polyTweak49.out" "polyExtrudeEdge7.ip";
connectAttr "LedgeWallShape1.wm" "polyExtrudeEdge7.mp";
connectAttr "groupParts60.og" "polyTweak49.ip";
connectAttr "polyExtrudeEdge7.out" "groupParts61.ig";
connectAttr "groupId99.id" "groupParts61.gi";
connectAttr "polySurfaceShape71.o" "polyExtrudeFace49.ip";
connectAttr "Nothing5Shape.wm" "polyExtrudeFace49.mp";
connectAttr "polySurfaceShape72.o" "polyExtrudeFace50.ip";
connectAttr "Nothing4Shape.wm" "polyExtrudeFace50.mp";
connectAttr "polyExtrudeFace49.out" "polyCut13.ip";
connectAttr "Nothing5Shape.wm" "polyCut13.mp";
connectAttr "polyExtrudeFace50.out" "polyCut14.ip";
connectAttr "Nothing4Shape.wm" "polyCut14.mp";
connectAttr "polyCut13.out" "polyCut15.ip";
connectAttr "Nothing5Shape.wm" "polyCut15.mp";
connectAttr "polyCut14.out" "polyCut16.ip";
connectAttr "Nothing4Shape.wm" "polyCut16.mp";
connectAttr "polyCut16.out" "polyCut17.ip";
connectAttr "Nothing4Shape.wm" "polyCut17.mp";
connectAttr "polyCut15.out" "polyCut18.ip";
connectAttr "Nothing5Shape.wm" "polyCut18.mp";
connectAttr "polyCut17.out" "polyCut19.ip";
connectAttr "Nothing4Shape.wm" "polyCut19.mp";
connectAttr "polyCut18.out" "polyCut20.ip";
connectAttr "Nothing5Shape.wm" "polyCut20.mp";
connectAttr "polyCut19.out" "polyExtrudeFace51.ip";
connectAttr "Nothing4Shape.wm" "polyExtrudeFace51.mp";
connectAttr "polyCut20.out" "polyExtrudeFace52.ip";
connectAttr "Nothing5Shape.wm" "polyExtrudeFace52.mp";
connectAttr "polyExtrudeFace51.out" "polyExtrudeFace53.ip";
connectAttr "Nothing4Shape.wm" "polyExtrudeFace53.mp";
connectAttr "polyExtrudeFace52.out" "polyExtrudeFace54.ip";
connectAttr "Nothing5Shape.wm" "polyExtrudeFace54.mp";
connectAttr "groupParts54.og" "polyTweak52.ip";
connectAttr "polyTweak52.out" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "deleteComponent23.og" "deleteComponent24.ig";
connectAttr "deleteComponent24.og" "deleteComponent25.ig";
connectAttr "deleteComponent25.og" "deleteComponent26.ig";
connectAttr "deleteComponent26.og" "deleteComponent27.ig";
connectAttr "deleteComponent27.og" "polyTweak53.ip";
connectAttr "polyTweak53.out" "deleteComponent28.ig";
connectAttr "deleteComponent28.og" "deleteComponent29.ig";
connectAttr "deleteComponent29.og" "deleteComponent30.ig";
connectAttr "deleteComponent30.og" "deleteComponent31.ig";
connectAttr "deleteComponent31.og" "deleteComponent32.ig";
connectAttr "deleteComponent32.og" "groupParts63.ig";
connectAttr "groupParts63.og" "groupParts64.ig";
connectAttr "groupParts64.og" "polyBridgeEdge10.ip";
connectAttr "polySurfaceShape68.wm" "polyBridgeEdge10.mp";
connectAttr "polyBridgeEdge10.out" "groupParts65.ig";
connectAttr "groupParts65.og" "groupParts66.ig";
connectAttr "groupParts66.og" "deleteComponent33.ig";
connectAttr "deleteComponent33.og" "deleteComponent34.ig";
connectAttr "deleteComponent34.og" "deleteComponent35.ig";
connectAttr "deleteComponent35.og" "deleteComponent36.ig";
connectAttr "deleteComponent36.og" "deleteComponent37.ig";
connectAttr "deleteComponent37.og" "deleteComponent38.ig";
connectAttr "deleteComponent38.og" "deleteComponent39.ig";
connectAttr "deleteComponent39.og" "polyBridgeEdge12.ip";
connectAttr "polySurfaceShape68.wm" "polyBridgeEdge12.mp";
connectAttr "polyBridgeEdge12.out" "groupParts67.ig";
connectAttr "groupParts67.og" "polyBridgeEdge13.ip";
connectAttr "polySurfaceShape68.wm" "polyBridgeEdge13.mp";
connectAttr "polyBridgeEdge13.out" "groupParts68.ig";
connectAttr "groupParts68.og" "groupParts69.ig";
connectAttr "groupParts69.og" "deleteComponent40.ig";
connectAttr "deleteComponent40.og" "deleteComponent41.ig";
connectAttr "deleteComponent41.og" "polyTweak54.ip";
connectAttr "polyTweak54.out" "deleteComponent42.ig";
connectAttr "deleteComponent42.og" "deleteComponent43.ig";
connectAttr "deleteComponent43.og" "deleteComponent44.ig";
connectAttr "deleteComponent44.og" "deleteComponent45.ig";
connectAttr "deleteComponent45.og" "deleteComponent46.ig";
connectAttr "deleteComponent46.og" "deleteComponent47.ig";
connectAttr "deleteComponent47.og" "polyExtrudeEdge8.ip";
connectAttr "polySurfaceShape68.wm" "polyExtrudeEdge8.mp";
connectAttr "polyExtrudeEdge8.out" "groupParts70.ig";
connectAttr "polyTweak55.out" "polyDelEdge7.ip";
connectAttr "groupParts70.og" "polyTweak55.ip";
connectAttr "polyDelEdge7.out" "groupParts71.ig";
connectAttr "groupParts71.og" "polyBridgeEdge16.ip";
connectAttr "polySurfaceShape68.wm" "polyBridgeEdge16.mp";
connectAttr "polyBridgeEdge16.out" "groupParts72.ig";
connectAttr "groupParts72.og" "groupParts73.ig";
connectAttr "groupParts73.og" "groupParts74.ig";
connectAttr "groupParts74.og" "groupParts75.ig";
connectAttr "groupParts75.og" "polyBridgeEdge20.ip";
connectAttr "polySurfaceShape68.wm" "polyBridgeEdge20.mp";
connectAttr "polyBridgeEdge20.out" "groupParts76.ig";
connectAttr "groupParts76.og" "groupParts77.ig";
connectAttr "groupParts77.og" "groupParts78.ig";
connectAttr "groupParts78.og" "polyBridgeEdge23.ip";
connectAttr "polySurfaceShape68.wm" "polyBridgeEdge23.mp";
connectAttr "polyBridgeEdge23.out" "groupParts79.ig";
connectAttr "groupParts79.og" "polyNormal4.ip";
connectAttr "polyNormal4.out" "polyNormal5.ip";
connectAttr "polyNormal5.out" "polyNormal6.ip";
connectAttr "groupParts51.og" "deleteComponent48.ig";
connectAttr "deleteComponent48.og" "deleteComponent49.ig";
connectAttr "deleteComponent49.og" "deleteComponent50.ig";
connectAttr "deleteComponent50.og" "deleteComponent51.ig";
connectAttr "deleteComponent51.og" "deleteComponent52.ig";
connectAttr "deleteComponent52.og" "deleteComponent53.ig";
connectAttr "deleteComponent53.og" "deleteComponent54.ig";
connectAttr "deleteComponent54.og" "deleteComponent55.ig";
connectAttr "deleteComponent55.og" "deleteComponent56.ig";
connectAttr "deleteComponent56.og" "deleteComponent57.ig";
connectAttr "deleteComponent57.og" "polyExtrudeEdge9.ip";
connectAttr "polySurfaceShape65.wm" "polyExtrudeEdge9.mp";
connectAttr "polyExtrudeEdge9.out" "groupParts80.ig";
connectAttr "groupId103.id" "groupParts80.gi";
connectAttr "polyNormal6.out" "polyTweak56.ip";
connectAttr "polyTweak56.out" "deleteComponent58.ig";
connectAttr "groupParts80.og" "polyTweak57.ip";
connectAttr "polyTweak57.out" "deleteComponent59.ig";
connectAttr "deleteComponent59.og" "deleteComponent60.ig";
connectAttr "deleteComponent58.og" "deleteComponent61.ig";
connectAttr "deleteComponent60.og" "deleteComponent62.ig";
connectAttr "deleteComponent62.og" "deleteComponent63.ig";
connectAttr "deleteComponent63.og" "deleteComponent64.ig";
connectAttr "deleteComponent61.og" "deleteComponent65.ig";
connectAttr "deleteComponent64.og" "deleteComponent66.ig";
connectAttr "deleteComponent66.og" "deleteComponent67.ig";
connectAttr "deleteComponent67.og" "deleteComponent68.ig";
connectAttr "deleteComponent68.og" "deleteComponent69.ig";
connectAttr "deleteComponent65.og" "deleteComponent70.ig";
connectAttr "deleteComponent70.og" "polyBridgeEdge24.ip";
connectAttr "polySurfaceShape68.wm" "polyBridgeEdge24.mp";
connectAttr "polyBridgeEdge24.out" "groupParts81.ig";
connectAttr "groupParts81.og" "polyBridgeEdge25.ip";
connectAttr "polySurfaceShape68.wm" "polyBridgeEdge25.mp";
connectAttr "polyBridgeEdge25.out" "groupParts82.ig";
connectAttr "groupParts82.og" "polyBridgeEdge26.ip";
connectAttr "polySurfaceShape68.wm" "polyBridgeEdge26.mp";
connectAttr "polyBridgeEdge26.out" "groupParts83.ig";
connectAttr "groupParts83.og" "polySoftEdge6.ip";
connectAttr "polySurfaceShape68.wm" "polySoftEdge6.mp";
connectAttr "polySoftEdge6.out" "polySoftEdge7.ip";
connectAttr "polySurfaceShape68.wm" "polySoftEdge7.mp";
connectAttr "polySoftEdge7.out" "polySoftEdge8.ip";
connectAttr "polySurfaceShape68.wm" "polySoftEdge8.mp";
connectAttr "polySoftEdge8.out" "groupParts84.ig";
connectAttr "groupParts84.og" "groupParts85.ig";
connectAttr "groupParts85.og" "polyBridgeEdge29.ip";
connectAttr "polySurfaceShape68.wm" "polyBridgeEdge29.mp";
connectAttr "polyBridgeEdge29.out" "groupParts86.ig";
connectAttr "groupId104.id" "groupParts86.gi";
connectAttr "Ledge35Shape.o" "polySeparate16.ip";
connectAttr "polySeparate16.out[1]" "groupParts89.ig";
connectAttr "groupId109.id" "groupParts89.gi";
connectAttr "polySurfaceShape76.o" "polyChipOff16.ip";
connectAttr "Ledge40Shape.wm" "polyChipOff16.mp";
connectAttr "Ledge40Shape.o" "polySeparate17.ip";
connectAttr "polyChipOff16.out" "groupParts90.ig";
connectAttr "groupId110.id" "groupParts90.gi";
connectAttr "polySeparate17.out[1]" "groupParts92.ig";
connectAttr "groupId113.id" "groupParts92.gi";
connectAttr "groupParts92.og" "polyChipOff17.ip";
connectAttr "polySurfaceShape78.wm" "polyChipOff17.mp";
connectAttr "groupParts89.og" "polyChipOff18.ip";
connectAttr "polySurfaceShape75.wm" "polyChipOff18.mp";
connectAttr "polySurfaceShape75.o" "polySeparate19.ip";
connectAttr "polySeparate19.out[1]" "groupParts96.ig";
connectAttr "Ledge32Shape.o" "polySeparate20.ip";
connectAttr "polySeparate20.out[0]" "groupParts98.ig";
connectAttr "groupId120.id" "groupParts98.gi";
connectAttr "polySeparate20.out[1]" "groupParts99.ig";
connectAttr "groupId121.id" "groupParts99.gi";
connectAttr "polySurfaceShape86.o" "polyChipOff20.ip";
connectAttr "Ledge37Shape.wm" "polyChipOff20.mp";
connectAttr "polyChipOff20.out" "groupParts100.ig";
connectAttr "groupId122.id" "groupParts100.gi";
connectAttr "Ledge31Shape.o" "polySeparate22.ip";
connectAttr "polySeparate22.out[0]" "groupParts104.ig";
connectAttr "groupId128.id" "groupParts104.gi";
connectAttr "polySeparate22.out[1]" "groupParts105.ig";
connectAttr "groupId129.id" "groupParts105.gi";
connectAttr "groupParts105.og" "polyExtrudeFace55.ip";
connectAttr "polySurfaceShape89.wm" "polyExtrudeFace55.mp";
connectAttr "polyExtrudeFace55.out" "polyChipOff22.ip";
connectAttr "polySurfaceShape89.wm" "polyChipOff22.mp";
connectAttr "polySurfaceShape89.o" "polySeparate23.ip";
connectAttr "polySeparate23.out[0]" "groupParts106.ig";
connectAttr "polySeparate23.out[1]" "groupParts107.ig";
connectAttr "groupId131.id" "groupParts107.gi";
connectAttr "groupParts107.og" "polyChipOff23.ip";
connectAttr "polySurfaceShape91.wm" "polyChipOff23.mp";
connectAttr "polySurfaceShape91.o" "polySeparate24.ip";
connectAttr "polySeparate24.out[0]" "groupParts108.ig";
connectAttr "groupId132.id" "groupParts108.gi";
connectAttr "polySeparate24.out[1]" "groupParts109.ig";
connectAttr "groupId133.id" "groupParts109.gi";
connectAttr "polySeparate24.out[2]" "groupParts110.ig";
connectAttr "groupParts109.og" "polyChipOff24.ip";
connectAttr "polySurfaceShape93.wm" "polyChipOff24.mp";
connectAttr "polySurfaceShape93.o" "polySeparate25.ip";
connectAttr "polySeparate25.out[1]" "groupParts112.ig";
connectAttr "groupParts112.og" "polyChipOff25.ip";
connectAttr "WallLedgeShape152.wm" "polyChipOff25.mp";
connectAttr "polyTweak58.out" "polyCloseBorder6.ip";
connectAttr "groupParts106.og" "polyTweak58.ip";
connectAttr "polyCloseBorder6.out" "groupParts113.ig";
connectAttr "groupParts110.og" "polyCloseBorder7.ip";
connectAttr "polyCloseBorder7.out" "groupParts114.ig";
connectAttr "groupId138.id" "groupParts114.gi";
connectAttr "polyTweak59.out" "polyMergeVert3.ip";
connectAttr "WallLedgeShape150.wm" "polyMergeVert3.mp";
connectAttr "groupParts113.og" "polyTweak59.ip";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "WallLedgeShape150.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyMergeVert5.ip";
connectAttr "WallLedgeShape150.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "WallLedgeShape150.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyCloseBorder8.ip";
connectAttr "polyCloseBorder8.out" "groupParts115.ig";
connectAttr "groupId139.id" "groupParts115.gi";
connectAttr "polySurfaceShape53.o" "polySeparate26.ip";
connectAttr "polySeparate26.out[0]" "groupParts116.ig";
connectAttr "groupId140.id" "groupParts116.gi";
connectAttr "polySurfaceShape70.o" "groupParts62.ig";
connectAttr "groupId100.id" "groupParts62.gi";
connectAttr "groupParts62.og" "polyMergeVert2.ip";
connectAttr "polySurfaceShape39.wm" "polyMergeVert2.mp";
connectAttr "polySeparate26.out[1]" "groupParts117.ig";
connectAttr "groupId141.id" "groupParts117.gi";
connectAttr "polySurfaceShape61.o" "polyNormal2.ip";
connectAttr "polyChipOff25.out" "polyExtrudeEdge10.ip";
connectAttr "WallLedgeShape152.wm" "polyExtrudeEdge10.mp";
connectAttr "polyExtrudeEdge10.out" "groupParts118.ig";
connectAttr "groupId142.id" "groupParts118.gi";
connectAttr "polySurfaceShape96.o" "polyCut21.ip";
connectAttr "WallLedge139Shape.wm" "polyCut21.mp";
connectAttr "polyTweak60.out" "polyExtrudeFace56.ip";
connectAttr "WallLedge139Shape.wm" "polyExtrudeFace56.mp";
connectAttr "polyCut21.out" "polyTweak60.ip";
connectAttr "polyExtrudeFace56.out" "polyChipOff26.ip";
connectAttr "WallLedge139Shape.wm" "polyChipOff26.mp";
connectAttr "WallLedge139Shape.o" "polySeparate27.ip";
connectAttr "polyChipOff26.out" "groupParts119.ig";
connectAttr "groupId143.id" "groupParts119.gi";
connectAttr "polySeparate27.out[0]" "groupParts120.ig";
connectAttr "groupId145.id" "groupParts120.gi";
connectAttr "polySeparate27.out[1]" "groupParts121.ig";
connectAttr "groupId146.id" "groupParts121.gi";
connectAttr "groupParts96.og" "polyExtrudeEdge11.ip";
connectAttr "LedgeShape183.wm" "polyExtrudeEdge11.mp";
connectAttr "polyExtrudeEdge11.out" "groupParts122.ig";
connectAttr "groupId147.id" "groupParts122.gi";
connectAttr "hyperView1.msg" "nodeEditorPanel2Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "Ledge194Shape.msg" "hyperLayout1.hyp[0].dn";
connectAttr "Ledge194.msg" "hyperLayout1.hyp[1].dn";
connectAttr "|Ledge204|polySurfaceShape97.o" "polySubdFace18.ip";
connectAttr "polySubdFace18.out" "polyCut22.ip";
connectAttr "Ledge204Shape.wm" "polyCut22.mp";
connectAttr "polyCut22.out" "polyCut23.ip";
connectAttr "Ledge204Shape.wm" "polyCut23.mp";
connectAttr "polyCut23.out" "polyCut24.ip";
connectAttr "Ledge204Shape.wm" "polyCut24.mp";
connectAttr "polyTweak61.out" "polyMergeVert7.ip";
connectAttr "Ledge204Shape.wm" "polyMergeVert7.mp";
connectAttr "polyCut24.out" "polyTweak61.ip";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "Ledge204Shape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyMergeVert9.ip";
connectAttr "Ledge204Shape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "Ledge204Shape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "Ledge204Shape.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyMergeVert12.ip";
connectAttr "Ledge204Shape.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyMergeVert13.ip";
connectAttr "Ledge204Shape.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert13.out" "polyMergeVert14.ip";
connectAttr "Ledge204Shape.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert14.out" "deleteComponent71.ig";
connectAttr "deleteComponent71.og" "deleteComponent72.ig";
connectAttr "deleteComponent72.og" "polySewEdge1.ip";
connectAttr "Ledge204Shape.wm" "polySewEdge1.mp";
connectAttr "polySewEdge1.out" "polySewEdge2.ip";
connectAttr "Ledge204Shape.wm" "polySewEdge2.mp";
connectAttr "polySewEdge2.out" "polyCloseBorder9.ip";
connectAttr "polyCloseBorder9.out" "polyCloseBorder10.ip";
connectAttr "polyCloseBorder10.out" "deleteComponent73.ig";
connectAttr "deleteComponent73.og" "deleteComponent74.ig";
connectAttr "deleteComponent74.og" "deleteComponent75.ig";
connectAttr "deleteComponent75.og" "deleteComponent76.ig";
connectAttr "deleteComponent76.og" "deleteComponent77.ig";
connectAttr "deleteComponent77.og" "deleteComponent78.ig";
connectAttr "deleteComponent78.og" "deleteComponent79.ig";
connectAttr "deleteComponent79.og" "deleteComponent80.ig";
connectAttr "deleteComponent80.og" "deleteComponent81.ig";
connectAttr "deleteComponent81.og" "deleteComponent82.ig";
connectAttr "deleteComponent82.og" "deleteComponent83.ig";
connectAttr "deleteComponent83.og" "polyCloseBorder11.ip";
connectAttr "polyCloseBorder11.out" "polyCloseBorder12.ip";
connectAttr "polyTweak62.out" "polyExtrudeFace57.ip";
connectAttr "Ledge204Shape.wm" "polyExtrudeFace57.mp";
connectAttr "polyCloseBorder12.out" "polyTweak62.ip";
connectAttr "polyExtrudeFace57.out" "polyExtrudeFace58.ip";
connectAttr "Ledge204Shape.wm" "polyExtrudeFace58.mp";
connectAttr "polyExtrudeFace58.out" "polyExtrudeFace59.ip";
connectAttr "Ledge204Shape.wm" "polyExtrudeFace59.mp";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "Ledge1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge10Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge11Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge15Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge163Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge19Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge20Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan28Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan29Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan30Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan32Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan33Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan34Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge30Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge33Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge42Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge45Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge51Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge52Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge148Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge55Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge64Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge65Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge70Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge71Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge79Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge81Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge140Shape.iog" ":initialShadingGroup.dsm" -na;
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
connectAttr "WallLedge143Shape.iog" ":initialShadingGroup.dsm" -na;
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
connectAttr "|transform6|GroundShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|transform6|GroundShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|Ground|GroundShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
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
connectAttr "LedgeWallShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge151Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge153Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape178.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape132.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge154Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge155Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge156Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge134Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge135Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge157Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge159Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge160Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge163Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge162Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge161Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape53.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeWallShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge164Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge166Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge167Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge168Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge169Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape136.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Nothing5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nothing4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge170Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge171Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge173Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge174Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge142Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge141Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge177Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape65.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape68.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge179Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge35Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge35Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape75.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge40Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge40Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape78.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge32Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge32Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape159.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape144.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge37Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge37Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge186Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge187Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge147Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge189Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge31Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge31Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape192.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape89.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape91.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape193.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape93.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape146.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape150.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "GroundShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape95.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge194Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape152.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge139Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge139Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape151.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|Ledge|LedgeShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape183.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape153.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape160.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge196Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge197Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge198Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape154.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape155.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape156.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge157Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge199Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge200Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge201Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge202Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge158Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge203Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge162Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge161Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge204Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge205Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
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
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId63.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId64.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId65.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId69.msg" ":initialShadingGroup.gn" -na;
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
connectAttr "groupId86.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId87.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId88.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId90.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId91.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId92.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId93.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId95.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId96.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId99.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId100.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId101.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId103.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId104.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId105.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId107.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId109.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId110.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId111.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId113.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId119.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId120.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId121.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId122.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId123.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId127.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId128.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId129.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId131.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId132.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId133.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId138.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId139.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId140.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId141.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId142.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId143.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId144.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId145.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId146.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId147.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId148.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId149.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId150.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId151.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId152.msg" ":initialShadingGroup.gn" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of CommercialZoneFrozenTransformations.ma
