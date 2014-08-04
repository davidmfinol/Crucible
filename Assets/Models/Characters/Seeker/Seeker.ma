//Maya ASCII 2014 scene
//Name: Seeker.ma
//Last modified: Mon, Aug 04, 2014 01:49:40 AM
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
	setAttr ".t" -type "double3" -478.22178887614996 29.208833725679629 -11.468817943320708 ;
	setAttr ".r" -type "double3" -4.2000000000014692 257.99999999998056 0 ;
	setAttr ".rpt" -type "double3" -4.9723106631371393e-016 -1.6437828104727047e-017 
		-4.5404656593647106e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 494.84923470759543;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 4.5139141724545553 -7.0330320743064405 91.13982329220832 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 190.76523942455799;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.5248315334320033 7.2380475997924796 -17.476934938771976 ;
	setAttr ".r" -type "double3" 0 180.00000000000003 0 ;
	setAttr ".rpt" -type "double3" 3.8920054789229382e-016 -7.1715041382743562e-017 
		-1.3676337766647717e-016 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 17.433561830861819;
	setAttr ".ow" 44.944648449079153;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 4.5248315334320086 7.2380475997924796 -0.04337310791015625 ;
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
createNode transform -n "group4";
	setAttr ".t" -type "double3" -27.232596210248648 5.6106490739074601 -0.47512399397941746 ;
	setAttr ".r" -type "double3" 0 155 0 ;
	setAttr ".rp" -type "double3" -25.499559798211894 1.634996830067255 -3.1320797722576637 ;
	setAttr ".rpt" -type "double3" 50.979994507465939 0 3.3605145801525182 ;
	setAttr ".sp" -type "double3" -25.499559798211894 1.634996830067255 -3.1320797722576637 ;
createNode transform -n "pCube8";
	setAttr ".t" -type "double3" 4.5248315213541073 5.6675866382543276 -0.043375469477325623 ;
	setAttr ".s" -type "double3" 0.94032406578765659 0.94032406578765659 0.94032406578765659 ;
createNode transform -n "polySurface3" -p "pCube8";
	setAttr ".t" -type "double3" -9.4454502656607866e-016 1.6701251347177808 -1.4758516040094979e-017 ;
	setAttr ".s" -type "double3" 1.2594523689910386 1.2594523689910386 1.2594523689910386 ;
createNode transform -n "transform4" -p "polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform4";
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
createNode transform -n "polySurface4" -p "pCube8";
	setAttr ".t" -type "double3" -9.4454502656607866e-016 1.6701251347177808 -1.4758516040094979e-017 ;
	setAttr ".s" -type "double3" 1.2594523689910386 1.2594523689910386 1.2594523689910386 ;
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
createNode transform -n "transform2" -p "pCube8";
	setAttr ".v" no;
createNode mesh -n "pCubeShape8" -p "transform2";
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
createNode transform -n "group5";
	setAttr ".t" -type "double3" -24.272325977233983 5.6106490739074601 5.2649435642742501 ;
	setAttr ".r" -type "double3" 0 214.99999999999997 0 ;
	setAttr ".rp" -type "double3" -25.499559798211894 1.634996830067255 -3.1320797722576637 ;
	setAttr ".rpt" -type "double3" 50.979994507465939 0 3.3605145801525182 ;
	setAttr ".sp" -type "double3" -25.499559798211894 1.634996830067255 -3.1320797722576637 ;
createNode transform -n "group6";
	setAttr ".t" -type "double3" 6.7373656434889533 5.6106490739074601 31.201991524871687 ;
	setAttr ".r" -type "double3" 0 -85.000000000000043 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -25.499559798211884 1.634996830067255 -3.1320797722576628 ;
	setAttr ".rpt" -type "double3" 26.397287987383905 0 -22.543425241290468 ;
	setAttr ".sp" -type "double3" -25.499559798211894 1.634996830067255 -3.1320797722576637 ;
	setAttr ".spt" -type "double3" 1.0658141036401501e-014 0 8.8817841970012504e-016 ;
createNode transform -n "group7";
	setAttr ".t" -type "double3" 32.271861237217223 5.6106490739074601 13.681424202599342 ;
	setAttr ".r" -type "double3" 0 -25.000000000000057 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -25.499559798211884 1.634996830067255 -3.1320797722576628 ;
	setAttr ".rpt" -type "double3" 3.712784296070498 0 -10.483128152032783 ;
	setAttr ".sp" -type "double3" -25.499559798211894 1.634996830067255 -3.1320797722576637 ;
	setAttr ".spt" -type "double3" 1.0658141036401498e-014 0 8.8817841970012504e-016 ;
createNode transform -n "group8";
	setAttr ".t" -type "double3" 30.579352972501411 5.6106490739074601 -16.994080810948788 ;
	setAttr ".r" -type "double3" 0 34.999999999999943 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1 0.99999999999999956 ;
	setAttr ".rp" -type "double3" -25.499559798211884 1.634996830067255 -3.1320797722576623 ;
	setAttr ".rpt" -type "double3" 2.8150561068984663 0 15.192376861515342 ;
	setAttr ".sp" -type "double3" -25.499559798211894 1.634996830067255 -3.1320797722576637 ;
	setAttr ".spt" -type "double3" 1.0658141036401498e-014 0 1.3322676295501873e-015 ;
createNode transform -n "group9";
	setAttr ".t" -type "double3" 2.7356261488459555 5.6106490739074601 -31.259119839605049 ;
	setAttr ".r" -type "double3" 0 94.999999999999901 0 ;
	setAttr ".s" -type "double3" 0.99999999999999922 1 0.99999999999999933 ;
	setAttr ".rp" -type "double3" -25.499559798211873 1.634996830067255 -3.1320797722576614 ;
	setAttr ".rpt" -type "double3" 24.601831609039827 0 28.80758478580578 ;
	setAttr ".sp" -type "double3" -25.499559798211894 1.634996830067255 -3.1320797722576637 ;
	setAttr ".spt" -type "double3" 2.1316282072802987e-014 0 2.2204460492503123e-015 ;
createNode transform -n "pCube6" -p "group9";
	setAttr ".t" -type "double3" -12.650878883838134 4.4389667110335465 -8.8020230398658796 ;
	setAttr ".r" -type "double3" 0 22.500000000000004 0 ;
	setAttr ".s" -type "double3" 1.3289262649210851 1.3289262649210851 1.3289262649210851 ;
	setAttr ".rp" -type "double3" 0.54156307586370656 0 0 ;
	setAttr ".rpt" -type "double3" -0.041224034509370802 0 -0.20724721671371871 ;
	setAttr ".sp" -type "double3" 0.40751928091049194 0 0 ;
	setAttr ".spt" -type "double3" 0.13404379495321464 0 0 ;
createNode mesh -n "polySurfaceShape7" -p "pCube6";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.2712914 -3.7303494e-014 
		-1.7584069 -1.0854938 -3.7303494e-014 -1.7600613 1.2656305 -3.7303494e-014 -0.23865709 
		-0.46601826 -3.7303494e-014 -0.24245839 1.2810569 -3.7303494e-014 0.2424584 -0.45059097 
		-3.7303494e-014 0.23865739 1.2753941 -3.7303494e-014 1.7622074 -1.0813911 -3.7303494e-014 
		1.7605526;
	setAttr -s 8 ".vt[0:7]"  -1.41939485 -5.69772339 2.3109591 1.41939485 -5.69772339 2.3109591
		 -1.41939485 5.69772339 2.3109591 1.41939485 5.69772339 2.3109591 -1.41939485 5.69772339 -2.3109591
		 1.41939485 5.69772339 -2.3109591 -1.41939485 -5.69772339 -2.3109591 1.41939485 -5.69772339 -2.3109591;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface7" -p "pCube6";
createNode transform -n "transform6" -p "polySurface7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform6";
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
createNode transform -n "transform5" -p "pCube6";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform5";
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
createNode transform -n "pCube7" -p "group9";
	setAttr ".t" -type "double3" -12.164778283286203 -7.240172213454537 -9.0033725012921977 ;
	setAttr ".r" -type "double3" -2.4955663911162773 22.368322490166257 -6.5333164093511229 ;
	setAttr ".s" -type "double3" 1.0909373213741784 1.0909373213741782 1.0909373213741782 ;
	setAttr ".rp" -type "double3" 0.44457799272482346 -1.1124288415383117 0 ;
	setAttr ".rpt" -type "double3" -0.14426102298717114 -0.040603261541565683 -0.12439536187612596 ;
	setAttr ".sp" -type "double3" 0.40751928091049194 -1.0197000503540039 0 ;
	setAttr ".spt" -type "double3" 0.037058711814331541 -0.092728791184307699 0 ;
createNode mesh -n "polySurfaceShape8" -p "pCube7";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9197654 -3.2411015 -2.2095413 
		-0.83134401 -3.2517869 -2.2098372 0.80473095 1.3131294 -0.23999505 -0.91245431 1.1764413 
		-0.2437755 0.82007265 1.3147523 0.24111997 -0.8971132 1.1780632 0.23734026 1.9204983 
		-3.2410231 2.2146261 -0.83061087 -3.2517102 2.2143297;
	setAttr -s 8 ".vt[0:7]"  -1.41939485 -5.69772339 2.3109591 1.41939485 -5.69772339 2.3109591
		 -1.41939485 5.69772339 2.3109591 1.41939485 5.69772339 2.3109591 -1.41939485 5.69772339 -2.3109591
		 1.41939485 5.69772339 -2.3109591 -1.41939485 -5.69772339 -2.3109591 1.41939485 -5.69772339 -2.3109591;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform7" -p "pCube7";
	setAttr ".v" no;
createNode mesh -n "pCubeShape7" -p "transform7";
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
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" 4.5886220157211275 -3.9312854894718399 0.03739927871002327 ;
	setAttr ".r" -type "double3" 90 0 13 ;
createNode transform -n "transform1" -p "pCylinder1";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform1";
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
createNode transform -n "pointLight1";
	setAttr ".t" -type "double3" 33.409034544898688 18.252945756478443 -41.086993529693842 ;
createNode pointLight -n "pointLightShape1" -p "pointLight1";
	setAttr -k off ".v";
createNode transform -n "pointLight2";
	setAttr ".t" -type "double3" -43.630512709613754 21.239791425719257 -37.227963811922663 ;
createNode pointLight -n "pointLightShape2" -p "pointLight2";
	setAttr -k off ".v";
	setAttr ".in" 0.64220184087753296;
	setAttr ".us" no;
createNode transform -n "ambientLight1";
	setAttr ".t" -type "double3" -76.681672452315439 30.718433866343563 -18.163864447363352 ;
createNode ambientLight -n "ambientLightShape1" -p "ambientLight1";
	setAttr -k off ".v";
	setAttr ".urs" no;
createNode transform -n "pointLight3";
createNode pointLight -n "pointLightShape3" -p "pointLight3";
	setAttr -k off ".v";
	setAttr ".in" 0.18348623812198639;
	setAttr ".us" no;
createNode transform -n "left";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -178.76470413103365 4.1985148227697033 99.755589716621401 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 149.18138270695147;
	setAttr ".ow" 62.633350068911398;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode transform -n "pCube11";
	setAttr ".t" -type "double3" 1.2390009296763083 -14.159491719587177 -95.59068137540163 ;
	setAttr ".s" -type "double3" 2.1866943064599491 1 4.3560243056753496 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "GlobalCTRL";
	setAttr ".rp" -type "double3" 4.5139159919986902 -2.1273374580453179 -0.070248678358501293 ;
	setAttr ".rpt" -type "double3" 0 4.4408920985006262e-014 2.631228568361621e-014 ;
	setAttr ".sp" -type "double3" 4.5139159919986902 -2.1273374580453179 -0.070248678358501293 ;
createNode nurbsCurve -n "GlobalCTRLShape" -p "GlobalCTRL";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		20.277402569603339 -2.1273374580453179 -15.833735255963127
		4.5139159919986866 -2.1273374580453179 -22.363185186693222
		-11.249570585605946 -2.1273374580453179 -15.833735255963138
		-17.779020516336033 -2.1273374580453179 -0.070248678358507732
		-11.24957058560595 -2.1273374580453179 15.693237899246132
		4.5139159919986831 -2.1273374580453179 22.222687829976227
		20.277402569603318 -2.1273374580453179 15.693237899246139
		26.806852500333413 -2.1273374580453179 -0.070248678358489358
		20.277402569603339 -2.1273374580453179 -15.833735255963127
		4.5139159919986866 -2.1273374580453179 -22.363185186693222
		-11.249570585605946 -2.1273374580453179 -15.833735255963138
		;
createNode joint -n "CenterJoint" -p "GlobalCTRL";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "joint1" -p "CenterJoint";
	setAttr ".t" -type "double3" -3.5906202183529081 4.1275347534920073 -7.0219701110419805 ;
	setAttr ".r" -type "double3" -0.07431826257557303 -0.0030591133915164647 0.012337933311710328 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 20.234372929068488 26.619119853549144 -0.27090021416311605 ;
	setAttr ".radi" 1.8008680421490426;
createNode transform -n "FirstLeg" -p "joint1";
	setAttr ".t" -type "double3" -0.023287206765761237 -1.1874035704686596 -4.0914266785100715 ;
	setAttr ".r" -type "double3" -177.52808364050605 79.717764090202138 92.526927041593794 ;
	setAttr ".s" -type "double3" 1.1118201556365244 0.99999999999999956 0.63139699528961146 ;
	setAttr ".rp" -type "double3" -12.688933480668458 0.012362781761843239 -2.3433930997727996 ;
	setAttr ".rpt" -type "double3" 12.800562293040878 0.030751146854854028 15.246352339136156 ;
	setAttr ".sp" -type "double3" -11.412757194893594 0.012362781761843245 -3.7114416401331183 ;
	setAttr ".spt" -type "double3" -1.2761762857748644 -5.204170427930419e-018 1.3680485403603202 ;
createNode mesh -n "FirstLegShape" -p "|GlobalCTRL|CenterJoint|joint1|FirstLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape25" -p "|GlobalCTRL|CenterJoint|joint1|FirstLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.4375 0
		 0.5 0 0.5625 0 0.625 0 0.375 0.25 0.4375 0.25 0.5 0.25 0.5625 0.25 0.625 0.25 0.375
		 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625 0.5 0.375 0.75 0.4375 0.75 0.5 0.75 0.5625
		 0.75 0.625 0.75 0.375 1 0.4375 1 0.5 1 0.5625 1 0.625 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -4.4170942 -0.026273968 -0.60351831 
		-1.6762052 0 5.9604652e-008 -2.8476882 0 4.2384214 1.6762047 0 5.9604652e-008 5.6829805 
		4.7683716e-007 -1.4162729 -4.4170942 -0.026273491 -0.60351831 -1.6762047 -2.3841858e-007 
		5.9604652e-008 -2.8476882 -2.3841858e-007 4.2384214 1.6762047 0 5.9604652e-008 5.6829782 
		0 -1.4162729 -0.9616397 0.047407553 -0.25874805 -1.4288921 0.026151896 0.095598102 
		0.17170906 0.0058345795 0.72367275 1.772311 -0.014482439 1.3517479 5.6430321 -0.051041126 
		2.4821379 -0.94987708 0.051980421 -0.25622463 -1.4171309 0.030725002 0.098121658 
		0.18347073 0.010407448 0.72619665 1.7840722 -0.009909749 1.354272 5.6547961 -0.046468735 
		2.4846618;
	setAttr -s 20 ".vt[0:19]"  -2.47573733 -0.79259473 2.84477186 -1.23786867 -0.79259473 2.84477186
		 0 -0.79259473 2.84477186 1.23786867 -0.79259473 2.84477186 2.47573733 -0.79259473 2.84477186
		 -2.47573733 0.79259473 2.84477186 -1.23786867 0.79259473 2.84477186 0 0.79259473 2.84477186
		 1.23786867 0.79259473 2.84477186 2.47573733 0.79259473 2.84477186 -2.47573733 0.79259473 -2.84477186
		 -1.23786867 0.79259473 -2.84477186 0 0.79259473 -2.84477186 1.23786867 0.79259473 -2.84477186
		 2.47573733 0.79259473 -2.84477186 -2.47573733 -0.79259473 -2.84477186 -1.23786867 -0.79259473 -2.84477186
		 0 -0.79259473 -2.84477186 1.23786867 -0.79259473 -2.84477186 2.47573733 -0.79259473 -2.84477186;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 5 6 0 6 7 0 7 8 0
		 8 9 0 10 11 0 11 12 0 12 13 0 13 14 0 15 16 0 16 17 0 17 18 0 18 19 0 0 5 0 1 6 1
		 2 7 1 3 8 1 4 9 0 5 10 0 6 11 1 7 12 1 8 13 1 9 14 0 10 15 0 11 16 1 12 17 1 13 18 1
		 14 19 0 15 0 0 16 1 1 17 2 1 18 3 1 19 4 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 17 -5 -17
		mu 0 4 0 1 6 5
		f 4 1 18 -6 -18
		mu 0 4 1 2 7 6
		f 4 2 19 -7 -19
		mu 0 4 2 3 8 7
		f 4 3 20 -8 -20
		mu 0 4 3 4 9 8
		f 4 4 22 -9 -22
		mu 0 4 5 6 11 10
		f 4 5 23 -10 -23
		mu 0 4 6 7 12 11
		f 4 6 24 -11 -24
		mu 0 4 7 8 13 12
		f 4 7 25 -12 -25
		mu 0 4 8 9 14 13
		f 4 8 27 -13 -27
		mu 0 4 10 11 16 15
		f 4 9 28 -14 -28
		mu 0 4 11 12 17 16
		f 4 10 29 -15 -29
		mu 0 4 12 13 18 17
		f 4 11 30 -16 -30
		mu 0 4 13 14 19 18
		f 4 12 32 -1 -32
		mu 0 4 15 16 21 20
		f 4 13 33 -2 -33
		mu 0 4 16 17 22 21
		f 4 14 34 -3 -34
		mu 0 4 17 18 23 22
		f 4 15 35 -4 -35
		mu 0 4 18 19 24 23
		f 4 -36 -31 -26 -21
		mu 0 4 4 25 26 9
		f 4 31 16 21 26
		mu 0 4 27 0 5 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint2" -p "joint1";
	setAttr ".t" -type "double3" -0.16865029389538755 0.33427999921045881 -13.115438251413272 ;
	setAttr ".r" -type "double3" -0.0038827698683982967 0.011236559273667549 -0.28566804078694147 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -92.823032896644719 19.619418342798699 -91.914421109396002 ;
	setAttr ".radi" 0.86417967249108762;
createNode transform -n "SecondLeg" -p "|GlobalCTRL|CenterJoint|joint1|joint2";
	setAttr ".t" -type "double3" 6.203635659615589 -0.18981021653243249 -0.23603106211538449 ;
	setAttr ".r" -type "double3" -0.22193086160837708 -1.9481915475481517 87.186680131203886 ;
	setAttr ".s" -type "double3" 1.3289262649210838 1.3289262649210851 1.3289262649210831 ;
createNode mesh -n "SecondLegShape" -p "|GlobalCTRL|CenterJoint|joint1|joint2|SecondLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.60231571850451759 0.46364185214042664 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "SecondLegGlow" -p "|GlobalCTRL|CenterJoint|joint1|joint2|SecondLeg";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -8.8817841970012523e-016 
		-8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" 0 3.1805546814635176e-015 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode mesh -n "SecondLegGlowShape" -p "|GlobalCTRL|CenterJoint|joint1|joint2|SecondLeg|SecondLegGlow";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "joint3" -p "|GlobalCTRL|CenterJoint|joint1|joint2";
	setAttr ".t" -type "double3" 13.69402549008842 0.15251700313569927 -0.35278007081190399 ;
	setAttr ".r" -type "double3" -0.23517048151878084 -0.0059293401262853441 -0.0037685857945855892 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 46.327758954573859 -86.984571870005965 -77.615155518416401 ;
	setAttr ".radi" 0.86417967249108762;
createNode joint -n "joint4" -p "|GlobalCTRL|CenterJoint|joint1|joint2|joint3";
	setAttr ".t" -type "double3" 0.24058386490586825 -0.68317758151917118 -13.938234120488769 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.192708005548819e-014 -2.3854160110976392e-015 -3.1805546814635176e-015 ;
	setAttr ".radi" 0.86417967249108762;
createNode transform -n "ThirdLeg" -p "|GlobalCTRL|CenterJoint|joint1|joint2|joint3";
	setAttr ".t" -type "double3" 0.23943707694212743 -0.26753079240580391 -4.1971711707354675 ;
	setAttr ".r" -type "double3" 89.049718670789488 8.8613820983789449 90.869450214160622 ;
	setAttr ".s" -type "double3" 1.0909373213741782 1.0909373213741786 1.0909373213741778 ;
createNode mesh -n "ThirdLegShape" -p "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|ThirdLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.2417512235035466 -0.29605725138482453 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "ThirdLegGlow" -p "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|ThirdLeg";
	setAttr ".t" -type "double3" 0 3.3306690738754696e-016 4.4408920985006262e-016 ;
	setAttr ".r" -type "double3" 0 0 -7.9513867036587919e-016 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode mesh -n "ThirdLegGlowShape" -p "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|ThirdLeg|ThirdLegGlow";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode ikEffector -n "effector1" -p "|GlobalCTRL|CenterJoint|joint1|joint2|joint3";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "joint5" -p "CenterJoint";
	setAttr ".t" -type "double3" 7.8484055254285652 4.1275347534920073 0.42039077933320174 ;
	setAttr ".r" -type "double3" -0.073830756015499849 -0.0031051111830069471 0.012377118384692602 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 16.262868906244961 266.61072250352095 4.1000305369357104 ;
	setAttr ".radi" 1.8008680421490426;
createNode transform -n "FirstLeg" -p "joint5";
	setAttr ".t" -type "double3" -0.023287206765761237 -1.1874035704686596 -4.0914266785100715 ;
	setAttr ".r" -type "double3" -177.52808364050605 79.717764090202138 92.526927041593794 ;
	setAttr ".s" -type "double3" 1.1118201556365244 0.99999999999999956 0.63139699528961146 ;
	setAttr ".rp" -type "double3" -12.688933480668458 0.012362781761843239 -2.3433930997727996 ;
	setAttr ".rpt" -type "double3" 12.800562293040878 0.030751146854854028 15.246352339136156 ;
	setAttr ".sp" -type "double3" -11.412757194893594 0.012362781761843245 -3.7114416401331183 ;
	setAttr ".spt" -type "double3" -1.2761762857748644 -5.204170427930419e-018 1.3680485403603202 ;
createNode mesh -n "FirstLegShape" -p "|GlobalCTRL|CenterJoint|joint5|FirstLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape24" -p "|GlobalCTRL|CenterJoint|joint5|FirstLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.4375 0
		 0.5 0 0.5625 0 0.625 0 0.375 0.25 0.4375 0.25 0.5 0.25 0.5625 0.25 0.625 0.25 0.375
		 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625 0.5 0.375 0.75 0.4375 0.75 0.5 0.75 0.5625
		 0.75 0.625 0.75 0.375 1 0.4375 1 0.5 1 0.5625 1 0.625 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -4.4170942 -0.026273968 -0.60351831 
		-1.6762052 0 5.9604652e-008 -2.8476882 0 4.2384214 1.6762047 0 5.9604652e-008 5.6829805 
		4.7683716e-007 -1.4162729 -4.4170942 -0.026273491 -0.60351831 -1.6762047 -2.3841858e-007 
		5.9604652e-008 -2.8476882 -2.3841858e-007 4.2384214 1.6762047 0 5.9604652e-008 5.6829782 
		0 -1.4162729 -0.9616397 0.047407553 -0.25874805 -1.4288921 0.026151896 0.095598102 
		0.17170906 0.0058345795 0.72367275 1.772311 -0.014482439 1.3517479 5.6430321 -0.051041126 
		2.4821379 -0.94987708 0.051980421 -0.25622463 -1.4171309 0.030725002 0.098121658 
		0.18347073 0.010407448 0.72619665 1.7840722 -0.009909749 1.354272 5.6547961 -0.046468735 
		2.4846618;
	setAttr -s 20 ".vt[0:19]"  -2.47573733 -0.79259473 2.84477186 -1.23786867 -0.79259473 2.84477186
		 0 -0.79259473 2.84477186 1.23786867 -0.79259473 2.84477186 2.47573733 -0.79259473 2.84477186
		 -2.47573733 0.79259473 2.84477186 -1.23786867 0.79259473 2.84477186 0 0.79259473 2.84477186
		 1.23786867 0.79259473 2.84477186 2.47573733 0.79259473 2.84477186 -2.47573733 0.79259473 -2.84477186
		 -1.23786867 0.79259473 -2.84477186 0 0.79259473 -2.84477186 1.23786867 0.79259473 -2.84477186
		 2.47573733 0.79259473 -2.84477186 -2.47573733 -0.79259473 -2.84477186 -1.23786867 -0.79259473 -2.84477186
		 0 -0.79259473 -2.84477186 1.23786867 -0.79259473 -2.84477186 2.47573733 -0.79259473 -2.84477186;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 5 6 0 6 7 0 7 8 0
		 8 9 0 10 11 0 11 12 0 12 13 0 13 14 0 15 16 0 16 17 0 17 18 0 18 19 0 0 5 0 1 6 1
		 2 7 1 3 8 1 4 9 0 5 10 0 6 11 1 7 12 1 8 13 1 9 14 0 10 15 0 11 16 1 12 17 1 13 18 1
		 14 19 0 15 0 0 16 1 1 17 2 1 18 3 1 19 4 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 17 -5 -17
		mu 0 4 0 1 6 5
		f 4 1 18 -6 -18
		mu 0 4 1 2 7 6
		f 4 2 19 -7 -19
		mu 0 4 2 3 8 7
		f 4 3 20 -8 -20
		mu 0 4 3 4 9 8
		f 4 4 22 -9 -22
		mu 0 4 5 6 11 10
		f 4 5 23 -10 -23
		mu 0 4 6 7 12 11
		f 4 6 24 -11 -24
		mu 0 4 7 8 13 12
		f 4 7 25 -12 -25
		mu 0 4 8 9 14 13
		f 4 8 27 -13 -27
		mu 0 4 10 11 16 15
		f 4 9 28 -14 -28
		mu 0 4 11 12 17 16
		f 4 10 29 -15 -29
		mu 0 4 12 13 18 17
		f 4 11 30 -16 -30
		mu 0 4 13 14 19 18
		f 4 12 32 -1 -32
		mu 0 4 15 16 21 20
		f 4 13 33 -2 -33
		mu 0 4 16 17 22 21
		f 4 14 34 -3 -34
		mu 0 4 17 18 23 22
		f 4 15 35 -4 -35
		mu 0 4 18 19 24 23
		f 4 -36 -31 -26 -21
		mu 0 4 4 25 26 9
		f 4 31 16 21 26
		mu 0 4 27 0 5 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint2" -p "joint5";
	setAttr ".t" -type "double3" -0.16865029389538755 0.33427999921045881 -13.115438251413272 ;
	setAttr ".r" -type "double3" -0.0038897265869547604 0.011256691700532674 -0.28617986925674171 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -92.823032896644719 19.619418342798681 -91.914421109395974 ;
	setAttr ".radi" 0.86417967249108762;
createNode transform -n "SecondLeg" -p "|GlobalCTRL|CenterJoint|joint5|joint2";
	setAttr ".t" -type "double3" 6.203635659615589 -0.18981021653243249 -0.23603106211538449 ;
	setAttr ".r" -type "double3" -0.22193086160837708 -1.9481915475481517 87.186680131203886 ;
	setAttr ".s" -type "double3" 1.3289262649210838 1.3289262649210851 1.3289262649210831 ;
createNode mesh -n "SecondLegShape" -p "|GlobalCTRL|CenterJoint|joint5|joint2|SecondLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.18318608403205872 0.00052658020285889506 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "SecondLegGlow" -p "|GlobalCTRL|CenterJoint|joint5|joint2|SecondLeg";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -8.8817841970012523e-016 
		-8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" 0 3.1805546814635176e-015 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode mesh -n "SecondLegGlowShape" -p "|GlobalCTRL|CenterJoint|joint5|joint2|SecondLeg|SecondLegGlow";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.28271782 0.26052082
		 0.3530978 0.26052082 0.3530978 0.33090079 0.28271782 0.33090079;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.60040665 -2.47450113 0.00045776367 0.65462875 -2.47838974 -0.0011312962
		 1.028795242 4.73984337 -1.30775428 1.019062996 4.73984337 1.30441833;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 2 0 0 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -1 -2 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape23" -p "|GlobalCTRL|CenterJoint|joint5|joint2|SecondLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25 0.875 0 0.875 0 0.625 0 0.875 0.25 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.14810276 -5.69772339 0.55255127 0.33390141 -5.69772339 0.55089664
		 -0.15376377 5.69772148 2.072301149 0.95337677 5.69772148 2.068499327 -0.13833809 5.69772148 -2.068502665
		 0.96880341 5.69772148 -2.072301626 -0.14400101 -5.69772339 -0.54875278 0.33800507 -5.69772339 -0.55040836
		 0.65462875 -2.47838974 -0.0011312962 0.60040665 -2.47450113 0.00045776367 1.028795242 4.73984337 -1.30775428
		 1.019062996 4.73984337 1.30441833;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11
		f 4 -12 12 14 -14
		mu 0 4 1 12 13 14
		f 4 -10 15 16 -13
		mu 0 4 12 15 16 13
		f 4 -8 17 18 -16
		mu 0 4 15 2 17 16
		f 4 -6 13 19 -18
		mu 0 4 2 1 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint3" -p "|GlobalCTRL|CenterJoint|joint5|joint2";
	setAttr ".t" -type "double3" 13.69402549008842 0.15251700313569927 -0.35278007081190399 ;
	setAttr ".r" -type "double3" -0.23559183403468195 -0.0059399636635749393 -0.0037753379307196972 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 46.32775895457339 -86.984571870006022 -77.615155518416174 ;
	setAttr ".radi" 0.86417967249108762;
createNode joint -n "joint4" -p "|GlobalCTRL|CenterJoint|joint5|joint2|joint3";
	setAttr ".t" -type "double3" 0.24058386490586825 -0.68317758151917118 -13.938234120488769 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.86417967249108762;
createNode transform -n "ThirdLeg" -p "|GlobalCTRL|CenterJoint|joint5|joint2|joint3";
	setAttr ".t" -type "double3" 0.23943707694212743 -0.26753079240580391 -4.1971711707354675 ;
	setAttr ".r" -type "double3" 89.049718670789488 8.8613820983789449 90.869450214160622 ;
	setAttr ".s" -type "double3" 1.0909373213741782 1.0909373213741786 1.0909373213741778 ;
createNode mesh -n "ThirdLegShape" -p "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|ThirdLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "ThirdLegGlow" -p "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|ThirdLeg";
	setAttr ".t" -type "double3" 0 3.3306690738754696e-016 4.4408920985006262e-016 ;
	setAttr ".r" -type "double3" 0 0 -7.9513867036587919e-016 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode mesh -n "ThirdLegGlowShape" -p "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|ThirdLeg|ThirdLegGlow";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.58969998 0.30990511
		 0.68916941 0.30990511 0.68916941 0.40937465 0.58969998 0.40937465;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.80957222 -3.45846486 0.0058999062 0.80998611 -3.45842123 -0.10598087
		 0.77236366 5.4948864 -1.22448587 0.76368332 5.49396753 1.11822319;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 2 0 0 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -1 -2 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape22" -p "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|ThirdLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25 0.875 0 0.875 0 0.625 0 0.875 0.25 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.50037003 -8.93882656 0.10141683 0.58805084 -8.94951057 0.10112047
		 -0.61466408 7.01085186 2.07096386 0.50694084 6.87416458 2.067184448 -0.59932137 7.012475014 -2.069841385
		 0.52228355 6.87578583 -2.073618889 0.50110245 -8.93874741 -0.096333981 0.58878326 -8.94943237 -0.096630573
		 0.80998611 -3.45842123 -0.10598087 0.80957222 -3.45846486 0.0058999062 0.77236366 5.4948864 -1.22448587
		 0.76368332 5.49396753 1.11822319;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11
		f 4 -12 12 14 -14
		mu 0 4 1 12 13 14
		f 4 -10 15 16 -13
		mu 0 4 12 15 16 13
		f 4 -8 17 18 -16
		mu 0 4 15 2 17 16
		f 4 -6 13 19 -18
		mu 0 4 2 1 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode ikEffector -n "effector1" -p "|GlobalCTRL|CenterJoint|joint5|joint2|joint3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.24058386490586825 -0.68317758151917118 -13.938234120488769 ;
	setAttr ".hd" yes;
createNode ikEffector -n "effector5" -p "|GlobalCTRL|CenterJoint|joint5|joint2|joint3";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "joint6" -p "CenterJoint";
	setAttr ".t" -type "double3" 3.551556461964112 4.1275347534920073 7.0247153717724888 ;
	setAttr ".r" -type "double3" 4.9211812065353193 -0.18896888742218682 -0.11288353669028456 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 20.234372929068467 206.61911985354914 0.2709002141631125 ;
	setAttr ".radi" 1.8008680421490426;
createNode transform -n "FirstLeg" -p "joint6";
	setAttr ".t" -type "double3" -0.023287206765761237 -1.1874035704686596 -4.0914266785100715 ;
	setAttr ".r" -type "double3" -177.52808364050605 79.717764090202138 92.526927041593794 ;
	setAttr ".s" -type "double3" 1.1118201556365244 0.99999999999999956 0.63139699528961146 ;
	setAttr ".rp" -type "double3" -12.688933480668458 0.012362781761843239 -2.3433930997727996 ;
	setAttr ".rpt" -type "double3" 12.800562293040878 0.030751146854854028 15.246352339136156 ;
	setAttr ".sp" -type "double3" -11.412757194893594 0.012362781761843245 -3.7114416401331183 ;
	setAttr ".spt" -type "double3" -1.2761762857748644 -5.204170427930419e-018 1.3680485403603202 ;
createNode mesh -n "FirstLegShape" -p "|GlobalCTRL|CenterJoint|joint6|FirstLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.6027243435382843 0.15828132629394531 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape18" -p "|GlobalCTRL|CenterJoint|joint6|FirstLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.4375 0
		 0.5 0 0.5625 0 0.625 0 0.375 0.25 0.4375 0.25 0.5 0.25 0.5625 0.25 0.625 0.25 0.375
		 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625 0.5 0.375 0.75 0.4375 0.75 0.5 0.75 0.5625
		 0.75 0.625 0.75 0.375 1 0.4375 1 0.5 1 0.5625 1 0.625 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -4.4170942 -0.026273968 -0.60351831 
		-1.6762052 0 5.9604652e-008 -2.8476882 0 4.2384214 1.6762047 0 5.9604652e-008 5.6829805 
		4.7683716e-007 -1.4162729 -4.4170942 -0.026273491 -0.60351831 -1.6762047 -2.3841858e-007 
		5.9604652e-008 -2.8476882 -2.3841858e-007 4.2384214 1.6762047 0 5.9604652e-008 5.6829782 
		0 -1.4162729 -0.9616397 0.047407553 -0.25874805 -1.4288921 0.026151896 0.095598102 
		0.17170906 0.0058345795 0.72367275 1.772311 -0.014482439 1.3517479 5.6430321 -0.051041126 
		2.4821379 -0.94987708 0.051980421 -0.25622463 -1.4171309 0.030725002 0.098121658 
		0.18347073 0.010407448 0.72619665 1.7840722 -0.009909749 1.354272 5.6547961 -0.046468735 
		2.4846618;
	setAttr -s 20 ".vt[0:19]"  -2.47573733 -0.79259473 2.84477186 -1.23786867 -0.79259473 2.84477186
		 0 -0.79259473 2.84477186 1.23786867 -0.79259473 2.84477186 2.47573733 -0.79259473 2.84477186
		 -2.47573733 0.79259473 2.84477186 -1.23786867 0.79259473 2.84477186 0 0.79259473 2.84477186
		 1.23786867 0.79259473 2.84477186 2.47573733 0.79259473 2.84477186 -2.47573733 0.79259473 -2.84477186
		 -1.23786867 0.79259473 -2.84477186 0 0.79259473 -2.84477186 1.23786867 0.79259473 -2.84477186
		 2.47573733 0.79259473 -2.84477186 -2.47573733 -0.79259473 -2.84477186 -1.23786867 -0.79259473 -2.84477186
		 0 -0.79259473 -2.84477186 1.23786867 -0.79259473 -2.84477186 2.47573733 -0.79259473 -2.84477186;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 5 6 0 6 7 0 7 8 0
		 8 9 0 10 11 0 11 12 0 12 13 0 13 14 0 15 16 0 16 17 0 17 18 0 18 19 0 0 5 0 1 6 1
		 2 7 1 3 8 1 4 9 0 5 10 0 6 11 1 7 12 1 8 13 1 9 14 0 10 15 0 11 16 1 12 17 1 13 18 1
		 14 19 0 15 0 0 16 1 1 17 2 1 18 3 1 19 4 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 17 -5 -17
		mu 0 4 0 1 6 5
		f 4 1 18 -6 -18
		mu 0 4 1 2 7 6
		f 4 2 19 -7 -19
		mu 0 4 2 3 8 7
		f 4 3 20 -8 -20
		mu 0 4 3 4 9 8
		f 4 4 22 -9 -22
		mu 0 4 5 6 11 10
		f 4 5 23 -10 -23
		mu 0 4 6 7 12 11
		f 4 6 24 -11 -24
		mu 0 4 7 8 13 12
		f 4 7 25 -12 -25
		mu 0 4 8 9 14 13
		f 4 8 27 -13 -27
		mu 0 4 10 11 16 15
		f 4 9 28 -14 -28
		mu 0 4 11 12 17 16
		f 4 10 29 -15 -29
		mu 0 4 12 13 18 17
		f 4 11 30 -16 -30
		mu 0 4 13 14 19 18
		f 4 12 32 -1 -32
		mu 0 4 15 16 21 20
		f 4 13 33 -2 -33
		mu 0 4 16 17 22 21
		f 4 14 34 -3 -34
		mu 0 4 17 18 23 22
		f 4 15 35 -4 -35
		mu 0 4 18 19 24 23
		f 4 -36 -31 -26 -21
		mu 0 4 4 25 26 9
		f 4 31 16 21 26
		mu 0 4 27 0 5 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint2" -p "joint6";
	setAttr ".t" -type "double3" -0.16865029389538755 0.33427999921045881 -13.115438251413272 ;
	setAttr ".r" -type "double3" -0.078422752437673077 0.22695187611867551 -5.7698176305336029 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -92.823032896644719 19.619418342798681 -91.914421109395974 ;
	setAttr ".radi" 0.86417967249108762;
createNode transform -n "SecondLeg" -p "|GlobalCTRL|CenterJoint|joint6|joint2";
	setAttr ".t" -type "double3" 6.203635659615589 -0.18981021653243249 -0.23603106211538449 ;
	setAttr ".r" -type "double3" -0.22193086160837708 -1.9481915475481517 87.186680131203886 ;
	setAttr ".s" -type "double3" 1.3289262649210838 1.3289262649210851 1.3289262649210831 ;
createNode mesh -n "SecondLegShape" -p "|GlobalCTRL|CenterJoint|joint6|joint2|SecondLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.31566930215893008 0.69757828096482255 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "SecondLegGlow" -p "|GlobalCTRL|CenterJoint|joint6|joint2|SecondLeg";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -8.8817841970012523e-016 
		-8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" 0 3.1805546814635176e-015 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode mesh -n "SecondLegGlowShape" -p "|GlobalCTRL|CenterJoint|joint6|joint2|SecondLeg|SecondLegGlow";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.86484479904174805 1.1474888324737549 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.28271782 0.26052082
		 0.3530978 0.26052082 0.3530978 0.33090079 0.28271782 0.33090079;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.60040665 -2.47450113 0.00045776367 0.65462875 -2.47838974 -0.0011312962
		 1.028795242 4.73984337 -1.30775428 1.019062996 4.73984337 1.30441833;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 2 0 0 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -1 -2 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape16" -p "|GlobalCTRL|CenterJoint|joint6|joint2|SecondLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25 0.875 0 0.875 0 0.625 0 0.875 0.25 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.14810276 -5.69772339 0.55255127 0.33390141 -5.69772339 0.55089664
		 -0.15376377 5.69772148 2.072301149 0.95337677 5.69772148 2.068499327 -0.13833809 5.69772148 -2.068502665
		 0.96880341 5.69772148 -2.072301626 -0.14400101 -5.69772339 -0.54875278 0.33800507 -5.69772339 -0.55040836
		 0.65462875 -2.47838974 -0.0011312962 0.60040665 -2.47450113 0.00045776367 1.028795242 4.73984337 -1.30775428
		 1.019062996 4.73984337 1.30441833;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11
		f 4 -12 12 14 -14
		mu 0 4 1 12 13 14
		f 4 -10 15 16 -13
		mu 0 4 12 15 16 13
		f 4 -8 17 18 -16
		mu 0 4 15 2 17 16
		f 4 -6 13 19 -18
		mu 0 4 2 1 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint3" -p "|GlobalCTRL|CenterJoint|joint6|joint2";
	setAttr ".t" -type "double3" 13.69402549008842 0.15251700313569927 -0.35278007081190399 ;
	setAttr ".r" -type "double3" -4.7498865701261463 -0.11975862299411645 -0.076116504667022772 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 46.327758954573426 -86.984571870005993 -77.615155518416202 ;
	setAttr ".radi" 0.86417967249108762;
createNode joint -n "joint4" -p "|GlobalCTRL|CenterJoint|joint6|joint2|joint3";
	setAttr ".t" -type "double3" 0.24058386490586825 -0.68317758151917118 -13.938234120488769 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.86417967249108762;
createNode transform -n "ThirdLeg" -p "|GlobalCTRL|CenterJoint|joint6|joint2|joint3";
	setAttr ".t" -type "double3" 0.23943707694212743 -0.26753079240580391 -4.1971711707354675 ;
	setAttr ".r" -type "double3" 89.049718670789488 8.8613820983789449 90.869450214160622 ;
	setAttr ".s" -type "double3" 1.0909373213741782 1.0909373213741786 1.0909373213741778 ;
createNode mesh -n "ThirdLegShape" -p "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|ThirdLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.63943466544151306 0.3616372841781903 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "ThirdLegGlow" -p "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|ThirdLeg";
	setAttr ".t" -type "double3" 0 3.3306690738754696e-016 4.4408920985006262e-016 ;
	setAttr ".r" -type "double3" 0 0 -7.9513867036587919e-016 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode mesh -n "ThirdLegGlowShape" -p "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|ThirdLeg|ThirdLegGlow";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.78621899973543197 0.24739342927932739 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.58969998 0.30990511
		 0.68916941 0.30990511 0.68916941 0.40937465 0.58969998 0.40937465;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.80957222 -3.45846486 0.0058999062 0.80998611 -3.45842123 -0.10598087
		 0.77236366 5.4948864 -1.22448587 0.76368332 5.49396753 1.11822319;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 2 0 0 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -1 -2 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape17" -p "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|ThirdLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25 0.875 0 0.875 0 0.625 0 0.875 0.25 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.50037003 -8.93882656 0.10141683 0.58805084 -8.94951057 0.10112047
		 -0.61466408 7.01085186 2.07096386 0.50694084 6.87416458 2.067184448 -0.59932137 7.012475014 -2.069841385
		 0.52228355 6.87578583 -2.073618889 0.50110245 -8.93874741 -0.096333981 0.58878326 -8.94943237 -0.096630573
		 0.80998611 -3.45842123 -0.10598087 0.80957222 -3.45846486 0.0058999062 0.77236366 5.4948864 -1.22448587
		 0.76368332 5.49396753 1.11822319;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11
		f 4 -12 12 14 -14
		mu 0 4 1 12 13 14
		f 4 -10 15 16 -13
		mu 0 4 12 15 16 13
		f 4 -8 17 18 -16
		mu 0 4 15 2 17 16
		f 4 -6 13 19 -18
		mu 0 4 2 1 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode ikEffector -n "effector1" -p "|GlobalCTRL|CenterJoint|joint6|joint2|joint3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.24058386490586825 -0.68317758151917118 -13.938234120488769 ;
	setAttr ".hd" yes;
createNode ikEffector -n "effector4" -p "|GlobalCTRL|CenterJoint|joint6|joint2|joint3";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "joint7" -p "CenterJoint";
	setAttr ".t" -type "double3" -4.3163809416588519 4.1275347534920073 6.6056972228045447 ;
	setAttr ".r" -type "double3" -0.074267124875491392 -0.0030591592535615894 0.012333868067885488 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 20.515326315055784 146.6197136414952 0.29003044439435055 ;
	setAttr ".radi" 1.8008680421490426;
createNode transform -n "FirstLeg" -p "joint7";
	setAttr ".t" -type "double3" -0.023287206765761237 -1.1874035704686596 -4.0914266785100715 ;
	setAttr ".r" -type "double3" -177.52808364050605 79.717764090202138 92.526927041593794 ;
	setAttr ".s" -type "double3" 1.1118201556365244 0.99999999999999956 0.63139699528961146 ;
	setAttr ".rp" -type "double3" -12.688933480668458 0.012362781761843239 -2.3433930997727996 ;
	setAttr ".rpt" -type "double3" 12.800562293040878 0.030751146854854028 15.246352339136156 ;
	setAttr ".sp" -type "double3" -11.412757194893594 0.012362781761843245 -3.7114416401331183 ;
	setAttr ".spt" -type "double3" -1.2761762857748644 -5.204170427930419e-018 1.3680485403603202 ;
createNode mesh -n "FirstLegShape" -p "|GlobalCTRL|CenterJoint|joint7|FirstLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.27514952421188354 -0.21829511225223541 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape15" -p "|GlobalCTRL|CenterJoint|joint7|FirstLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.4375 0
		 0.5 0 0.5625 0 0.625 0 0.375 0.25 0.4375 0.25 0.5 0.25 0.5625 0.25 0.625 0.25 0.375
		 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625 0.5 0.375 0.75 0.4375 0.75 0.5 0.75 0.5625
		 0.75 0.625 0.75 0.375 1 0.4375 1 0.5 1 0.5625 1 0.625 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -4.4170942 -0.026273968 -0.60351831 
		-1.6762052 0 5.9604652e-008 -2.8476882 0 4.2384214 1.6762047 0 5.9604652e-008 5.6829805 
		4.7683716e-007 -1.4162729 -4.4170942 -0.026273491 -0.60351831 -1.6762047 -2.3841858e-007 
		5.9604652e-008 -2.8476882 -2.3841858e-007 4.2384214 1.6762047 0 5.9604652e-008 5.6829782 
		0 -1.4162729 -0.9616397 0.047407553 -0.25874805 -1.4288921 0.026151896 0.095598102 
		0.17170906 0.0058345795 0.72367275 1.772311 -0.014482439 1.3517479 5.6430321 -0.051041126 
		2.4821379 -0.94987708 0.051980421 -0.25622463 -1.4171309 0.030725002 0.098121658 
		0.18347073 0.010407448 0.72619665 1.7840722 -0.009909749 1.354272 5.6547961 -0.046468735 
		2.4846618;
	setAttr -s 20 ".vt[0:19]"  -2.47573733 -0.79259473 2.84477186 -1.23786867 -0.79259473 2.84477186
		 0 -0.79259473 2.84477186 1.23786867 -0.79259473 2.84477186 2.47573733 -0.79259473 2.84477186
		 -2.47573733 0.79259473 2.84477186 -1.23786867 0.79259473 2.84477186 0 0.79259473 2.84477186
		 1.23786867 0.79259473 2.84477186 2.47573733 0.79259473 2.84477186 -2.47573733 0.79259473 -2.84477186
		 -1.23786867 0.79259473 -2.84477186 0 0.79259473 -2.84477186 1.23786867 0.79259473 -2.84477186
		 2.47573733 0.79259473 -2.84477186 -2.47573733 -0.79259473 -2.84477186 -1.23786867 -0.79259473 -2.84477186
		 0 -0.79259473 -2.84477186 1.23786867 -0.79259473 -2.84477186 2.47573733 -0.79259473 -2.84477186;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 5 6 0 6 7 0 7 8 0
		 8 9 0 10 11 0 11 12 0 12 13 0 13 14 0 15 16 0 16 17 0 17 18 0 18 19 0 0 5 0 1 6 1
		 2 7 1 3 8 1 4 9 0 5 10 0 6 11 1 7 12 1 8 13 1 9 14 0 10 15 0 11 16 1 12 17 1 13 18 1
		 14 19 0 15 0 0 16 1 1 17 2 1 18 3 1 19 4 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 17 -5 -17
		mu 0 4 0 1 6 5
		f 4 1 18 -6 -18
		mu 0 4 1 2 7 6
		f 4 2 19 -7 -19
		mu 0 4 2 3 8 7
		f 4 3 20 -8 -20
		mu 0 4 3 4 9 8
		f 4 4 22 -9 -22
		mu 0 4 5 6 11 10
		f 4 5 23 -10 -23
		mu 0 4 6 7 12 11
		f 4 6 24 -11 -24
		mu 0 4 7 8 13 12
		f 4 7 25 -12 -25
		mu 0 4 8 9 14 13
		f 4 8 27 -13 -27
		mu 0 4 10 11 16 15
		f 4 9 28 -14 -28
		mu 0 4 11 12 17 16
		f 4 10 29 -15 -29
		mu 0 4 12 13 18 17
		f 4 11 30 -16 -30
		mu 0 4 13 14 19 18
		f 4 12 32 -1 -32
		mu 0 4 15 16 21 20
		f 4 13 33 -2 -33
		mu 0 4 16 17 22 21
		f 4 14 34 -3 -34
		mu 0 4 17 18 23 22
		f 4 15 35 -4 -35
		mu 0 4 18 19 24 23
		f 4 -36 -31 -26 -21
		mu 0 4 4 25 26 9
		f 4 31 16 21 26
		mu 0 4 27 0 5 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint2" -p "joint7";
	setAttr ".t" -type "double3" -0.16865029389538755 0.33427999921045881 -13.115438251413272 ;
	setAttr ".r" -type "double3" -0.0038834657885170767 0.011238573234816116 -0.28571924189944697 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -92.823032896644719 19.619418342798689 -91.914421109395974 ;
	setAttr ".radi" 0.86417967249108762;
createNode transform -n "SecondLeg" -p "|GlobalCTRL|CenterJoint|joint7|joint2";
	setAttr ".t" -type "double3" 6.203635659615589 -0.18981021653243249 -0.23603106211538449 ;
	setAttr ".r" -type "double3" -0.22193086160837708 -1.9481915475481517 87.186680131203886 ;
	setAttr ".s" -type "double3" 1.3289262649210838 1.3289262649210851 1.3289262649210831 ;
createNode mesh -n "SecondLegShape" -p "|GlobalCTRL|CenterJoint|joint7|joint2|SecondLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "SecondLegGlow" -p "|GlobalCTRL|CenterJoint|joint7|joint2|SecondLeg";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -8.8817841970012523e-016 
		-8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" 0 3.1805546814635176e-015 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode mesh -n "SecondLegGlowShape" -p "|GlobalCTRL|CenterJoint|joint7|joint2|SecondLeg|SecondLegGlow";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.28271782 0.26052082
		 0.3530978 0.26052082 0.3530978 0.33090079 0.28271782 0.33090079;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.60040665 -2.47450113 0.00045776367 0.65462875 -2.47838974 -0.0011312962
		 1.028795242 4.73984337 -1.30775428 1.019062996 4.73984337 1.30441833;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 2 0 0 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -1 -2 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape13" -p "|GlobalCTRL|CenterJoint|joint7|joint2|SecondLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25 0.875 0 0.875 0 0.625 0 0.875 0.25 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.14810276 -5.69772339 0.55255127 0.33390141 -5.69772339 0.55089664
		 -0.15376377 5.69772148 2.072301149 0.95337677 5.69772148 2.068499327 -0.13833809 5.69772148 -2.068502665
		 0.96880341 5.69772148 -2.072301626 -0.14400101 -5.69772339 -0.54875278 0.33800507 -5.69772339 -0.55040836
		 0.65462875 -2.47838974 -0.0011312962 0.60040665 -2.47450113 0.00045776367 1.028795242 4.73984337 -1.30775428
		 1.019062996 4.73984337 1.30441833;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11
		f 4 -12 12 14 -14
		mu 0 4 1 12 13 14
		f 4 -10 15 16 -13
		mu 0 4 12 15 16 13
		f 4 -8 17 18 -16
		mu 0 4 15 2 17 16
		f 4 -6 13 19 -18
		mu 0 4 2 1 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint3" -p "|GlobalCTRL|CenterJoint|joint7|joint2";
	setAttr ".t" -type "double3" 13.69402549008842 0.15251700313569927 -0.35278007081190399 ;
	setAttr ".r" -type "double3" -0.23521263180709856 -0.0059304028591344446 -0.0037692612491612085 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 46.327758954573703 -86.984571870005993 -77.615155518416358 ;
	setAttr ".radi" 0.86417967249108762;
createNode joint -n "joint4" -p "|GlobalCTRL|CenterJoint|joint7|joint2|joint3";
	setAttr ".t" -type "double3" 0.24058386490586825 -0.68317758151917118 -13.938234120488769 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.86417967249108762;
createNode transform -n "ThirdLeg" -p "|GlobalCTRL|CenterJoint|joint7|joint2|joint3";
	setAttr ".t" -type "double3" 0.23943707694212743 -0.26753079240580391 -4.1971711707354675 ;
	setAttr ".r" -type "double3" 89.049718670789488 8.8613820983789449 90.869450214160622 ;
	setAttr ".s" -type "double3" 1.0909373213741782 1.0909373213741786 1.0909373213741778 ;
createNode mesh -n "ThirdLegShape" -p "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|ThirdLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "ThirdLegGlow" -p "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|ThirdLeg";
	setAttr ".t" -type "double3" 0 3.3306690738754696e-016 4.4408920985006262e-016 ;
	setAttr ".r" -type "double3" 0 0 -7.9513867036587919e-016 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode mesh -n "ThirdLegGlowShape" -p "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|ThirdLeg|ThirdLegGlow";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.58969998 0.30990511
		 0.68916941 0.30990511 0.68916941 0.40937465 0.58969998 0.40937465;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.80957222 -3.45846486 0.0058999062 0.80998611 -3.45842123 -0.10598087
		 0.77236366 5.4948864 -1.22448587 0.76368332 5.49396753 1.11822319;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 2 0 0 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -1 -2 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape14" -p "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|ThirdLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25 0.875 0 0.875 0 0.625 0 0.875 0.25 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.50037003 -8.93882656 0.10141683 0.58805084 -8.94951057 0.10112047
		 -0.61466408 7.01085186 2.07096386 0.50694084 6.87416458 2.067184448 -0.59932137 7.012475014 -2.069841385
		 0.52228355 6.87578583 -2.073618889 0.50110245 -8.93874741 -0.096333981 0.58878326 -8.94943237 -0.096630573
		 0.80998611 -3.45842123 -0.10598087 0.80957222 -3.45846486 0.0058999062 0.77236366 5.4948864 -1.22448587
		 0.76368332 5.49396753 1.11822319;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11
		f 4 -12 12 14 -14
		mu 0 4 1 12 13 14
		f 4 -10 15 16 -13
		mu 0 4 12 15 16 13
		f 4 -8 17 18 -16
		mu 0 4 15 2 17 16
		f 4 -6 13 19 -18
		mu 0 4 2 1 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode ikEffector -n "effector1" -p "|GlobalCTRL|CenterJoint|joint7|joint2|joint3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.24058386490586825 -0.68317758151917118 -13.938234120488769 ;
	setAttr ".hd" yes;
createNode ikEffector -n "effector3" -p "|GlobalCTRL|CenterJoint|joint7|joint2|joint3";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "joint8" -p "CenterJoint";
	setAttr ".t" -type "double3" -7.88746928181736 4.1275347534920073 -0.41764551860269 ;
	setAttr ".r" -type "double3" -0.074060138760364158 -0.0030531579243857658 0.012304010192436753 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 16.262868906244996 86.610722503520961 -4.1000305369357131 ;
	setAttr ".radi" 1.8008680421490426;
createNode transform -n "FirstLeg" -p "joint8";
	setAttr ".t" -type "double3" -0.023287206765761237 -1.1874035704686596 -4.0914266785100715 ;
	setAttr ".r" -type "double3" -177.52808364050605 79.717764090202138 92.526927041593794 ;
	setAttr ".s" -type "double3" 1.1118201556365244 0.99999999999999956 0.63139699528961146 ;
	setAttr ".rp" -type "double3" -12.688933480668458 0.012362781761843239 -2.3433930997727996 ;
	setAttr ".rpt" -type "double3" 12.800562293040878 0.030751146854854028 15.246352339136156 ;
	setAttr ".sp" -type "double3" -11.412757194893594 0.012362781761843245 -3.7114416401331183 ;
	setAttr ".spt" -type "double3" -1.2761762857748644 -5.204170427930419e-018 1.3680485403603202 ;
createNode mesh -n "FirstLegShape" -p "|GlobalCTRL|CenterJoint|joint8|FirstLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape26" -p "|GlobalCTRL|CenterJoint|joint8|FirstLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.4375 0
		 0.5 0 0.5625 0 0.625 0 0.375 0.25 0.4375 0.25 0.5 0.25 0.5625 0.25 0.625 0.25 0.375
		 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625 0.5 0.375 0.75 0.4375 0.75 0.5 0.75 0.5625
		 0.75 0.625 0.75 0.375 1 0.4375 1 0.5 1 0.5625 1 0.625 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -4.4170942 -0.026273968 -0.60351831 
		-1.6762052 0 5.9604652e-008 -2.8476882 0 4.2384214 1.6762047 0 5.9604652e-008 5.6829805 
		4.7683716e-007 -1.4162729 -4.4170942 -0.026273491 -0.60351831 -1.6762047 -2.3841858e-007 
		5.9604652e-008 -2.8476882 -2.3841858e-007 4.2384214 1.6762047 0 5.9604652e-008 5.6829782 
		0 -1.4162729 -0.9616397 0.047407553 -0.25874805 -1.4288921 0.026151896 0.095598102 
		0.17170906 0.0058345795 0.72367275 1.772311 -0.014482439 1.3517479 5.6430321 -0.051041126 
		2.4821379 -0.94987708 0.051980421 -0.25622463 -1.4171309 0.030725002 0.098121658 
		0.18347073 0.010407448 0.72619665 1.7840722 -0.009909749 1.354272 5.6547961 -0.046468735 
		2.4846618;
	setAttr -s 20 ".vt[0:19]"  -2.47573733 -0.79259473 2.84477186 -1.23786867 -0.79259473 2.84477186
		 0 -0.79259473 2.84477186 1.23786867 -0.79259473 2.84477186 2.47573733 -0.79259473 2.84477186
		 -2.47573733 0.79259473 2.84477186 -1.23786867 0.79259473 2.84477186 0 0.79259473 2.84477186
		 1.23786867 0.79259473 2.84477186 2.47573733 0.79259473 2.84477186 -2.47573733 0.79259473 -2.84477186
		 -1.23786867 0.79259473 -2.84477186 0 0.79259473 -2.84477186 1.23786867 0.79259473 -2.84477186
		 2.47573733 0.79259473 -2.84477186 -2.47573733 -0.79259473 -2.84477186 -1.23786867 -0.79259473 -2.84477186
		 0 -0.79259473 -2.84477186 1.23786867 -0.79259473 -2.84477186 2.47573733 -0.79259473 -2.84477186;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 5 6 0 6 7 0 7 8 0
		 8 9 0 10 11 0 11 12 0 12 13 0 13 14 0 15 16 0 16 17 0 17 18 0 18 19 0 0 5 0 1 6 1
		 2 7 1 3 8 1 4 9 0 5 10 0 6 11 1 7 12 1 8 13 1 9 14 0 10 15 0 11 16 1 12 17 1 13 18 1
		 14 19 0 15 0 0 16 1 1 17 2 1 18 3 1 19 4 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 17 -5 -17
		mu 0 4 0 1 6 5
		f 4 1 18 -6 -18
		mu 0 4 1 2 7 6
		f 4 2 19 -7 -19
		mu 0 4 2 3 8 7
		f 4 3 20 -8 -20
		mu 0 4 3 4 9 8
		f 4 4 22 -9 -22
		mu 0 4 5 6 11 10
		f 4 5 23 -10 -23
		mu 0 4 6 7 12 11
		f 4 6 24 -11 -24
		mu 0 4 7 8 13 12
		f 4 7 25 -12 -25
		mu 0 4 8 9 14 13
		f 4 8 27 -13 -27
		mu 0 4 10 11 16 15
		f 4 9 28 -14 -28
		mu 0 4 11 12 17 16
		f 4 10 29 -15 -29
		mu 0 4 12 13 18 17
		f 4 11 30 -16 -30
		mu 0 4 13 14 19 18
		f 4 12 32 -1 -32
		mu 0 4 15 16 21 20
		f 4 13 33 -2 -33
		mu 0 4 16 17 22 21
		f 4 14 34 -3 -34
		mu 0 4 17 18 23 22
		f 4 15 35 -4 -35
		mu 0 4 18 19 24 23
		f 4 -36 -31 -26 -21
		mu 0 4 4 25 26 9
		f 4 31 16 21 26
		mu 0 4 27 0 5 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint2" -p "joint8";
	setAttr ".t" -type "double3" -0.16865029389538755 0.33427999921045881 -13.115438251413272 ;
	setAttr ".r" -type "double3" -0.0038861832675795363 0.01124643749553597 -0.28591917569567077 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -92.823032896644719 19.619418342798689 -91.914421109395974 ;
	setAttr ".radi" 0.86417967249108762;
createNode transform -n "SecondLeg" -p "|GlobalCTRL|CenterJoint|joint8|joint2";
	setAttr ".t" -type "double3" 6.203635659615589 -0.18981021653243249 -0.23603106211538449 ;
	setAttr ".r" -type "double3" -0.22193086160837708 -1.9481915475481517 87.186680131203886 ;
	setAttr ".s" -type "double3" 1.3289262649210838 1.3289262649210851 1.3289262649210831 ;
createNode mesh -n "SecondLegShape" -p "|GlobalCTRL|CenterJoint|joint8|joint2|SecondLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "SecondLegGlow" -p "|GlobalCTRL|CenterJoint|joint8|joint2|SecondLeg";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -8.8817841970012523e-016 
		-8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" 0 3.1805546814635176e-015 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode mesh -n "SecondLegGlowShape" -p "|GlobalCTRL|CenterJoint|joint8|joint2|SecondLeg|SecondLegGlow";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.28271782 0.26052082
		 0.3530978 0.26052082 0.3530978 0.33090079 0.28271782 0.33090079;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.60040665 -2.47450113 0.00045776367 0.65462875 -2.47838974 -0.0011312962
		 1.028795242 4.73984337 -1.30775428 1.019062996 4.73984337 1.30441833;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 2 0 0 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -1 -2 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape27" -p "|GlobalCTRL|CenterJoint|joint8|joint2|SecondLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25 0.875 0 0.875 0 0.625 0 0.875 0.25 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.14810276 -5.69772339 0.55255127 0.33390141 -5.69772339 0.55089664
		 -0.15376377 5.69772148 2.072301149 0.95337677 5.69772148 2.068499327 -0.13833809 5.69772148 -2.068502665
		 0.96880341 5.69772148 -2.072301626 -0.14400101 -5.69772339 -0.54875278 0.33800507 -5.69772339 -0.55040836
		 0.65462875 -2.47838974 -0.0011312962 0.60040665 -2.47450113 0.00045776367 1.028795242 4.73984337 -1.30775428
		 1.019062996 4.73984337 1.30441833;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11
		f 4 -12 12 14 -14
		mu 0 4 1 12 13 14
		f 4 -10 15 16 -13
		mu 0 4 12 15 16 13
		f 4 -8 17 18 -16
		mu 0 4 15 2 17 16
		f 4 -6 13 19 -18
		mu 0 4 2 1 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint3" -p "|GlobalCTRL|CenterJoint|joint8|joint2";
	setAttr ".t" -type "double3" 13.69402549008842 0.15251700313569927 -0.35278007081190399 ;
	setAttr ".r" -type "double3" -0.23537722329237742 -0.0059345526949973739 -0.0037718988128950834 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 46.327758954573703 -86.984571870005993 -77.615155518416358 ;
	setAttr ".radi" 0.86417967249108762;
createNode joint -n "joint4" -p "|GlobalCTRL|CenterJoint|joint8|joint2|joint3";
	setAttr ".t" -type "double3" 0.24058386490586825 -0.68317758151917118 -13.938234120488769 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.86417967249108762;
createNode transform -n "ThirdLeg" -p "|GlobalCTRL|CenterJoint|joint8|joint2|joint3";
	setAttr ".t" -type "double3" 0.23943707694212743 -0.26753079240580391 -4.1971711707354675 ;
	setAttr ".r" -type "double3" 89.049718670789488 8.8613820983789449 90.869450214160622 ;
	setAttr ".s" -type "double3" 1.0909373213741782 1.0909373213741786 1.0909373213741778 ;
createNode mesh -n "ThirdLegShape" -p "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|ThirdLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "ThirdLegGlow" -p "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|ThirdLeg";
	setAttr ".t" -type "double3" 0 3.3306690738754696e-016 4.4408920985006262e-016 ;
	setAttr ".r" -type "double3" 0 0 -7.9513867036587919e-016 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode mesh -n "ThirdLegGlowShape" -p "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|ThirdLeg|ThirdLegGlow";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.58969998 0.30990511
		 0.68916941 0.30990511 0.68916941 0.40937465 0.58969998 0.40937465;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.80957222 -3.45846486 0.0058999062 0.80998611 -3.45842123 -0.10598087
		 0.77236366 5.4948864 -1.22448587 0.76368332 5.49396753 1.11822319;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 2 0 0 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -1 -2 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape28" -p "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|ThirdLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25 0.875 0 0.875 0 0.625 0 0.875 0.25 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.50037003 -8.93882656 0.10141683 0.58805084 -8.94951057 0.10112047
		 -0.61466408 7.01085186 2.07096386 0.50694084 6.87416458 2.067184448 -0.59932137 7.012475014 -2.069841385
		 0.52228355 6.87578583 -2.073618889 0.50110245 -8.93874741 -0.096333981 0.58878326 -8.94943237 -0.096630573
		 0.80998611 -3.45842123 -0.10598087 0.80957222 -3.45846486 0.0058999062 0.77236366 5.4948864 -1.22448587
		 0.76368332 5.49396753 1.11822319;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11
		f 4 -12 12 14 -14
		mu 0 4 1 12 13 14
		f 4 -10 15 16 -13
		mu 0 4 12 15 16 13
		f 4 -8 17 18 -16
		mu 0 4 15 2 17 16
		f 4 -6 13 19 -18
		mu 0 4 2 1 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode ikEffector -n "effector1" -p "|GlobalCTRL|CenterJoint|joint8|joint2|joint3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.24058386490586825 -0.68317758151917118 -13.938234120488769 ;
	setAttr ".hd" yes;
createNode ikEffector -n "effector2" -p "|GlobalCTRL|CenterJoint|joint8|joint2|joint3";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "pCylinder2" -p "CenterJoint";
	setAttr ".t" -type "double3" 0.037035917210564762 -0.18779654057657691 0.51655677213581352 ;
	setAttr ".r" -type "double3" -179.99999999999929 81.917516536625726 89.999999999999915 ;
	setAttr ".s" -type "double3" 1.7185061958902792 1.718506195890279 1.7185061958902788 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42821622921360858 0.8138333135181004 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface1" -p "pCylinder2";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-016 0 ;
	setAttr ".r" -type "double3" -2.5191689914522519e-014 1.5902773407317584e-015 1.1299600123008413e-029 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr ".rp" -type "double3" -0.51365584958374921 -0.057867612635552838 0.071098453675217527 ;
	setAttr ".sp" -type "double3" -0.51365584958374833 -0.057867612635551957 0.071098453675219275 ;
	setAttr ".spt" -type "double3" 0 0 2.7755575615628926e-017 ;
createNode transform -n "pCube10" -p "polySurface1";
	setAttr ".rp" -type "double3" -3.7832392666325729 -0.10047927620256968 0.25597189830987066 ;
	setAttr ".sp" -type "double3" -3.7832392666325729 -0.10047927620256968 0.25597189830987066 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.12407043389976025 0.2178652323782444 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape32" -p "pCube10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.71864056587219238 0.31547009944915771 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" -0.80218995 -0.018726826
		 -0.63509142 -0.018726826 -0.80218995 0.1483717 -0.63509142 0.1483717 -0.80218995
		 0.3154701 -0.63509142 0.3154701 -0.80218995 0.4825685 -0.63509142 0.4825685 -0.80218995
		 0.64966702 -0.63509142 0.64966702 -0.4679929 -0.018726826 -0.4679929 0.1483717 -0.96928823
		 -0.018726826 -0.96928823 0.1483717;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.5923157 4.7897825 0.5966866 
		-5.5948677 4.9744759 0.59652936 -4.3241458 -5.2082133 -1.4012556 -5.3266969 -5.023519 
		-1.4014128 -4.0806875 -5.2048159 -0.36285937 -5.0832396 -5.0201225 -0.36301664 -4.3488588 
		4.7931795 1.6350857 -5.3514109 4.9778728 1.6349285;
	setAttr -s 8 ".vt[0:7]"  -0.5 -5 0.5 0.5 -5 0.5 -0.5 5 0.5 0.5 5 0.5
		 -0.5 5 -0.5 0.5 5 -0.5 -0.5 -5 -0.5 0.5 -5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "polySurface1";
	setAttr ".rp" -type "double3" -5.9687852609109386 -0.1309540543967378 -0.065600407266455107 ;
	setAttr ".sp" -type "double3" -5.9687852609109386 -0.1309540543967378 -0.065600407266455107 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.08809755483399262 1.1226669187131135 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface6" -p "polySurface1";
	setAttr ".t" -type "double3" 5.5511151231257827e-017 4.4408920985006262e-016 0.081939844665739323 ;
	setAttr ".r" -type "double3" -5.6498000615042058e-030 0 1.1299600123008413e-029 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" -2.9981873408685766 -0.091500356438849004 0.89283825369407044 ;
	setAttr ".sp" -type "double3" -2.9981873408685766 -0.091500356438849018 0.89283825369407044 ;
	setAttr ".spt" -type "double3" 0 1.3877787807814457e-017 0 ;
createNode mesh -n "polySurfaceShape6" -p "polySurface6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.30071864547327865 0.12442411216927192 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape31" -p "polySurface6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:20]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.375 0.3125 0.4107143
		 0.3125 0.4107143 0.68843985 0.375 0.68843985 0.4464286 0.3125 0.4464286 0.68843985
		 0.4821429 0.3125 0.4821429 0.68843985 0.51785719 0.3125 0.51785719 0.68843985 0.55357146
		 0.3125 0.55357146 0.68843985 0.58928573 0.3125 0.58928573 0.68843985 0.625 0.3125
		 0.625 0.68843985 0.59742028 0.96591115 0.46523112 0.99608248 0.5 0.83749998 0.35922363
		 0.91154438 0.3592236 0.77595568 0.46523106 0.69141752 0.59742022 0.72158879 0.65625
		 0.84375 0.46523106 0.0039175153 0.59742022 0.034088783 0.59742022 0.034088783 0.46523106
		 0.0039175153 0.3592236 0.088455707 0.3592236 0.088455707 0.35922363 0.22404437 0.35922363
		 0.22404437 0.46523112 0.30858248 0.46523112 0.30858248 0.59742028 0.27841115 0.59742028
		 0.27841115 0.65625 0.15625 0.65625 0.15625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  -5.332788 3.0386839 2.993433 
		-3.5273521 3.4771209 3.4052651 -2.0060778 3.7502909 1.8788348 -1.9107507 3.6525187 
		-0.46456677 -3.3452568 3.2572036 -1.6205523 -5.1637516 2.8624849 -1.2087913 -6.0628586 
		2.7651329 0.95345777 -9.6173077 -3.7443647 2.2756114 -7.8118691 -3.3059282 2.6874418 
		-6.2905946 -3.0327578 1.1610131 -6.2009068 -3.1305685 -1.1402878 -7.6354094 -3.5258865 
		-2.296273 -9.453907 -3.9206018 -1.8845131 -10.347377 -4.0179148 0.23563588 -8.1892347 
		-3.5254002 0.11346027 -5.2163668 2.9586124 2.6921299 -3.6394262 3.3415608 3.0518408 
		-2.3106868 3.5801587 1.718596 -2.230715 3.4947357 -0.30364251 -3.4849539 3.1494422 
		-1.3037405 -5.0722637 2.8046875 -0.95181662 -5.8540397 2.7196817 0.91033536;
	setAttr -s 22 ".vt[0:21]"  1.33482766 -3.36172247 -1.67382145 -0.47639441 -3.36172247 -2.087221384
		 -1.92888212 -3.36172247 -0.92890143 -1.92888236 -3.36172247 0.92890072 -0.47639489 -3.36172247 2.087221146
		 1.33482814 -3.36172247 1.67382145 2.14089799 -3.36172247 0 1.33482766 3.36172247 -1.67382145
		 -0.47639441 3.36172247 -2.087221384 -1.92888212 3.36172247 -0.92890143 -1.92888236 3.36172247 0.92890072
		 -0.47639489 3.36172247 2.087221146 1.33482814 3.36172247 1.67382145 2.14089799 3.36172247 0
		 0 3.36172247 0 1.1627605 -3.25484467 -1.44908619 -0.41923356 -3.2548449 -1.81016636
		 -1.68789351 -3.25484443 -0.79844379 -1.68789411 -3.25484347 0.82423401 -0.41923356 -3.254843 1.83595753
		 1.1627605 -3.25484324 1.47487736 1.8668139 -3.25484395 0.012895584;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 0 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 7 0 0 7 0 1 8 0 2 9 0 3 10 0 4 11 0
		 5 12 0 6 13 0 7 14 1 8 14 1 9 14 1 10 14 1 11 14 1 12 14 1 13 14 1 0 15 0 1 16 0
		 15 16 0 2 17 0 16 17 0 3 18 0 17 18 0 4 19 0 18 19 0 5 20 0 19 20 0 6 21 0 20 21 0
		 21 15 0;
	setAttr -s 21 -ch 77 ".fc[0:20]" -type "polyFaces" 
		f 4 0 15 -8 -15
		mu 0 4 0 1 2 3
		f 4 1 16 -9 -16
		mu 0 4 1 4 5 2
		f 4 2 17 -10 -17
		mu 0 4 4 6 7 5
		f 4 3 18 -11 -18
		mu 0 4 6 8 9 7
		f 4 4 19 -12 -19
		mu 0 4 8 10 11 9
		f 4 5 20 -13 -20
		mu 0 4 10 12 13 11
		f 4 6 14 -14 -21
		mu 0 4 12 14 15 13
		f 3 7 22 -22
		mu 0 3 16 17 18
		f 3 8 23 -23
		mu 0 3 17 19 18
		f 3 9 24 -24
		mu 0 3 19 20 18
		f 3 10 25 -25
		mu 0 3 20 21 18
		f 3 11 26 -26
		mu 0 3 21 22 18
		f 3 12 27 -27
		mu 0 3 22 23 18
		f 3 13 21 -28
		mu 0 3 23 16 18
		f 4 -1 28 30 -30
		mu 0 4 24 25 26 27
		f 4 -2 29 32 -32
		mu 0 4 28 24 27 29
		f 4 -3 31 34 -34
		mu 0 4 30 28 29 31
		f 4 -4 33 36 -36
		mu 0 4 32 30 31 33
		f 4 -5 35 38 -38
		mu 0 4 34 32 33 35
		f 4 -6 37 40 -40
		mu 0 4 36 34 35 37
		f 4 -7 39 41 -29
		mu 0 4 25 36 37 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface13" -p "polySurface1";
createNode mesh -n "polySurfaceShape33" -p "polySurface13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface15" -p "polySurface1";
createNode mesh -n "polySurfaceShape35" -p "polySurface15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25275463708957324 0.78271591325564627 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface14" -p "polySurface15";
	setAttr ".t" -type "double3" 5.5511151231257827e-017 0 0 ;
	setAttr ".r" -type "double3" 8.4747000922563062e-029 1.5902773407317584e-015 1.1299600123008412e-029 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode mesh -n "polySurfaceShape34" -p "polySurface14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform10" -p "polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.20979976654052737 0.23838678002357483 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface5" -p "CenterJoint";
	setAttr ".t" -type "double3" -4.5334478701930889 -7.2503263523657955 0.071621308723755342 ;
createNode transform -n "polySurface8" -p "polySurface5";
createNode mesh -n "polySurfaceShape10" -p "polySurface8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface9" -p "polySurface5";
createNode mesh -n "polySurfaceShape11" -p "polySurface9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface11" -p "polySurface9";
createNode mesh -n "polySurfaceShape29" -p "polySurface11";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface10" -p "polySurface5";
createNode transform -n "polySurface12" -p "polySurface10";
createNode mesh -n "polySurfaceShape30" -p "polySurface12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.60183395603348189 0.75966195222773547 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform9" -p "polySurface10";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.57325217127799988 0.24117679509799927 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform8" -p "polySurface5";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform8";
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
createNode joint -n "joint9" -p "CenterJoint";
	setAttr ".t" -type "double3" 4.2773171852700527 4.1275347534920073 -6.6029519620740382 ;
	setAttr ".r" -type "double3" -0.073814369867219218 -0.0031111143474914574 0.012383888326937613 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 20.515326315055805 -33.38028635850479 -0.29003044439436348 ;
	setAttr ".radi" 1.8008680421490426;
createNode transform -n "FirstLeg" -p "joint9";
	setAttr ".t" -type "double3" -0.023287206765761237 -1.1874035704686596 -4.0914266785100715 ;
	setAttr ".r" -type "double3" -177.52808364050605 79.717764090202138 92.526927041593794 ;
	setAttr ".s" -type "double3" 1.1118201556365244 0.99999999999999956 0.63139699528961146 ;
	setAttr ".rp" -type "double3" -12.688933480668458 0.012362781761843239 -2.3433930997727996 ;
	setAttr ".rpt" -type "double3" 12.800562293040878 0.030751146854854028 15.246352339136156 ;
	setAttr ".sp" -type "double3" -11.412757194893594 0.012362781761843245 -3.7114416401331183 ;
	setAttr ".spt" -type "double3" -1.2761762857748644 -5.204170427930419e-018 1.3680485403603202 ;
createNode mesh -n "FirstLegShape" -p "|GlobalCTRL|CenterJoint|joint9|FirstLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape19" -p "|GlobalCTRL|CenterJoint|joint9|FirstLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.375 0 0.4375 0
		 0.5 0 0.5625 0 0.625 0 0.375 0.25 0.4375 0.25 0.5 0.25 0.5625 0.25 0.625 0.25 0.375
		 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625 0.5 0.375 0.75 0.4375 0.75 0.5 0.75 0.5625
		 0.75 0.625 0.75 0.375 1 0.4375 1 0.5 1 0.5625 1 0.625 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -4.4170942 -0.026273968 -0.60351831 
		-1.6762052 0 5.9604652e-008 -2.8476882 0 4.2384214 1.6762047 0 5.9604652e-008 5.6829805 
		4.7683716e-007 -1.4162729 -4.4170942 -0.026273491 -0.60351831 -1.6762047 -2.3841858e-007 
		5.9604652e-008 -2.8476882 -2.3841858e-007 4.2384214 1.6762047 0 5.9604652e-008 5.6829782 
		0 -1.4162729 -0.9616397 0.047407553 -0.25874805 -1.4288921 0.026151896 0.095598102 
		0.17170906 0.0058345795 0.72367275 1.772311 -0.014482439 1.3517479 5.6430321 -0.051041126 
		2.4821379 -0.94987708 0.051980421 -0.25622463 -1.4171309 0.030725002 0.098121658 
		0.18347073 0.010407448 0.72619665 1.7840722 -0.009909749 1.354272 5.6547961 -0.046468735 
		2.4846618;
	setAttr -s 20 ".vt[0:19]"  -2.47573733 -0.79259473 2.84477186 -1.23786867 -0.79259473 2.84477186
		 0 -0.79259473 2.84477186 1.23786867 -0.79259473 2.84477186 2.47573733 -0.79259473 2.84477186
		 -2.47573733 0.79259473 2.84477186 -1.23786867 0.79259473 2.84477186 0 0.79259473 2.84477186
		 1.23786867 0.79259473 2.84477186 2.47573733 0.79259473 2.84477186 -2.47573733 0.79259473 -2.84477186
		 -1.23786867 0.79259473 -2.84477186 0 0.79259473 -2.84477186 1.23786867 0.79259473 -2.84477186
		 2.47573733 0.79259473 -2.84477186 -2.47573733 -0.79259473 -2.84477186 -1.23786867 -0.79259473 -2.84477186
		 0 -0.79259473 -2.84477186 1.23786867 -0.79259473 -2.84477186 2.47573733 -0.79259473 -2.84477186;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 5 6 0 6 7 0 7 8 0
		 8 9 0 10 11 0 11 12 0 12 13 0 13 14 0 15 16 0 16 17 0 17 18 0 18 19 0 0 5 0 1 6 1
		 2 7 1 3 8 1 4 9 0 5 10 0 6 11 1 7 12 1 8 13 1 9 14 0 10 15 0 11 16 1 12 17 1 13 18 1
		 14 19 0 15 0 0 16 1 1 17 2 1 18 3 1 19 4 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 17 -5 -17
		mu 0 4 0 1 6 5
		f 4 1 18 -6 -18
		mu 0 4 1 2 7 6
		f 4 2 19 -7 -19
		mu 0 4 2 3 8 7
		f 4 3 20 -8 -20
		mu 0 4 3 4 9 8
		f 4 4 22 -9 -22
		mu 0 4 5 6 11 10
		f 4 5 23 -10 -23
		mu 0 4 6 7 12 11
		f 4 6 24 -11 -24
		mu 0 4 7 8 13 12
		f 4 7 25 -12 -25
		mu 0 4 8 9 14 13
		f 4 8 27 -13 -27
		mu 0 4 10 11 16 15
		f 4 9 28 -14 -28
		mu 0 4 11 12 17 16
		f 4 10 29 -15 -29
		mu 0 4 12 13 18 17
		f 4 11 30 -16 -30
		mu 0 4 13 14 19 18
		f 4 12 32 -1 -32
		mu 0 4 15 16 21 20
		f 4 13 33 -2 -33
		mu 0 4 16 17 22 21
		f 4 14 34 -3 -34
		mu 0 4 17 18 23 22
		f 4 15 35 -4 -35
		mu 0 4 18 19 24 23
		f 4 -36 -31 -26 -21
		mu 0 4 4 25 26 9
		f 4 31 16 21 26
		mu 0 4 27 0 5 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint2" -p "joint9";
	setAttr ".t" -type "double3" -0.16865029389538755 0.33427999921045881 -13.115438251413272 ;
	setAttr ".r" -type "double3" -0.0038894215088375057 0.011255808818347089 -0.28615742366480784 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -92.823032896644719 19.619418342798681 -91.914421109395974 ;
	setAttr ".radi" 0.86417967249108762;
createNode transform -n "SecondLeg" -p "|GlobalCTRL|CenterJoint|joint9|joint2";
	setAttr ".t" -type "double3" 6.203635659615589 -0.18981021653243249 -0.23603106211538449 ;
	setAttr ".r" -type "double3" -0.22193086160837708 -1.9481915475481517 87.186680131203886 ;
	setAttr ".s" -type "double3" 1.3289262649210838 1.3289262649210851 1.3289262649210831 ;
createNode mesh -n "SecondLegShape" -p "|GlobalCTRL|CenterJoint|joint9|joint2|SecondLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.16556909463754499 0.21487938801874407 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "SecondLegGlow" -p "|GlobalCTRL|CenterJoint|joint9|joint2|SecondLeg";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -8.8817841970012523e-016 
		-8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" 0 3.1805546814635176e-015 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode mesh -n "SecondLegGlowShape" -p "|GlobalCTRL|CenterJoint|joint9|joint2|SecondLeg|SecondLegGlow";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.3181802116110175 0.29571082480376365 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.28326261 0.26052082
		 0.35364258 0.26052082 0.35364258 0.33090079 0.28326261 0.33090079;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.60040665 -2.47450113 0.00045776367 0.65462875 -2.47838974 -0.0011312962
		 1.028795242 4.73984337 -1.30775428 1.019062996 4.73984337 1.30441833;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 2 0 0 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -1 -2 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape20" -p "|GlobalCTRL|CenterJoint|joint9|joint2|SecondLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25 0.875 0 0.875 0 0.625 0 0.875 0.25 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.14810276 -5.69772339 0.55255127 0.33390141 -5.69772339 0.55089664
		 -0.15376377 5.69772148 2.072301149 0.95337677 5.69772148 2.068499327 -0.13833809 5.69772148 -2.068502665
		 0.96880341 5.69772148 -2.072301626 -0.14400101 -5.69772339 -0.54875278 0.33800507 -5.69772339 -0.55040836
		 0.65462875 -2.47838974 -0.0011312962 0.60040665 -2.47450113 0.00045776367 1.028795242 4.73984337 -1.30775428
		 1.019062996 4.73984337 1.30441833;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11
		f 4 -12 12 14 -14
		mu 0 4 1 12 13 14
		f 4 -10 15 16 -13
		mu 0 4 12 15 16 13
		f 4 -8 17 18 -16
		mu 0 4 15 2 17 16
		f 4 -6 13 19 -18
		mu 0 4 2 1 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint3" -p "|GlobalCTRL|CenterJoint|joint9|joint2";
	setAttr ".t" -type "double3" 13.69402549008842 0.15251700313569927 -0.35278007081190399 ;
	setAttr ".r" -type "double3" -0.2355733561515819 -0.005939497781747397 -0.0037750418243065334 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 46.327758954573603 -86.984571870006022 -77.615155518416387 ;
	setAttr ".radi" 0.86417967249108762;
createNode joint -n "joint4" -p "|GlobalCTRL|CenterJoint|joint9|joint2|joint3";
	setAttr ".t" -type "double3" 0.24058386490586825 -0.68317758151917118 -13.938234120488769 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.86417967249108762;
createNode transform -n "ThirdLeg" -p "|GlobalCTRL|CenterJoint|joint9|joint2|joint3";
	setAttr ".t" -type "double3" 0.23943707694212743 -0.26753079240580391 -4.1971711707354675 ;
	setAttr ".r" -type "double3" 89.049718670789488 8.8613820983789449 90.869450214160622 ;
	setAttr ".s" -type "double3" 1.0909373213741782 1.0909373213741786 1.0909373213741778 ;
createNode mesh -n "ThirdLegShape" -p "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|ThirdLeg";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "ThirdLegGlow" -p "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|ThirdLeg";
	setAttr ".t" -type "double3" 0 3.3306690738754696e-016 4.4408920985006262e-016 ;
	setAttr ".r" -type "double3" 0 0 -7.9513867036587919e-016 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode mesh -n "ThirdLegGlowShape" -p "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|ThirdLeg|ThirdLegGlow";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.58969998 0.30990511
		 0.68916941 0.30990511 0.68916941 0.40937465 0.58969998 0.40937465;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.80957222 -3.45846486 0.0058999062 0.80998611 -3.45842123 -0.10598087
		 0.77236366 5.4948864 -1.22448587 0.76368332 5.49396753 1.11822319;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 2 0 0 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -1 -2 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape21" -p "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|ThirdLeg";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.125 0
		 0.125 0.25 0.875 0 0.875 0 0.625 0 0.875 0.25 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.50037003 -8.93882656 0.10141683 0.58805084 -8.94951057 0.10112047
		 -0.61466408 7.01085186 2.07096386 0.50694084 6.87416458 2.067184448 -0.59932137 7.012475014 -2.069841385
		 0.52228355 6.87578583 -2.073618889 0.50110245 -8.93874741 -0.096333981 0.58878326 -8.94943237 -0.096630573
		 0.80998611 -3.45842123 -0.10598087 0.80957222 -3.45846486 0.0058999062 0.77236366 5.4948864 -1.22448587
		 0.76368332 5.49396753 1.11822319;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 0 1 9 0 8 9 0 5 10 0 10 8 0 3 11 0 11 10 0 9 11 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 10 4 6 8
		mu 0 4 10 0 3 11
		f 4 -12 12 14 -14
		mu 0 4 1 12 13 14
		f 4 -10 15 16 -13
		mu 0 4 12 15 16 13
		f 4 -8 17 18 -16
		mu 0 4 15 2 17 16
		f 4 -6 13 19 -18
		mu 0 4 2 1 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode ikEffector -n "effector1" -p "|GlobalCTRL|CenterJoint|joint9|joint2|joint3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.24058386490586825 -0.68317758151917118 -13.938234120488769 ;
	setAttr ".hd" yes;
createNode ikEffector -n "effector6" -p "|GlobalCTRL|CenterJoint|joint9|joint2|joint3";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "CenterJoint_parentConstraint1" -p "CenterJoint";
	addAttr -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.019531878194397834 -9.2423233588036968 -0.0013726303652539934 ;
	setAttr ".rst" -type "double3" 4.5334478701930889 7.2503263523657955 -0.071621308723755342 ;
	setAttr -k on ".w0";
createNode transform -n "SpiderIKs" -p "GlobalCTRL";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 0 -9.9475983006414026e-014 ;
	setAttr ".rp" -type "double3" 4.5139141723105745 3.49046240167824 -0.07022764780960955 ;
	setAttr ".sp" -type "double3" 4.5139141723105745 3.49046240167824 -0.07022764780960955 ;
createNode transform -n "Leg1" -p "SpiderIKs";
	setAttr ".rp" -type "double3" 4.5139159919986911 7.2241070495874755 -0.070248678358501335 ;
	setAttr ".sp" -type "double3" 4.5139159919986911 7.2241070495874755 -0.070248678358501335 ;
createNode ikHandle -n "ikHandle1" -p "|GlobalCTRL|SpiderIKs|Leg1";
	setAttr ".rp" -type "double3" -10.288330907523724 -8.0955733328913375 -26.405147401132581 ;
	setAttr ".sp" -type "double3" -10.288332455604174 -8.0955920148258702 -26.40513575377555 ;
	setAttr ".pv" -type "double3" -0.65465471070444758 1.7564880412026831 -1.3667146123461282 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle1_pointConstraint1" -p "ikHandle1";
	addAttr -ci true -k true -sn "w0" -ln "Leg7W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -8.499257392102777e-006 -4.6732738747223834e-005 
		1.4004805557021882e-005 ;
	setAttr -k on ".w0";
createNode transform -n "Leg2" -p "SpiderIKs";
	setAttr ".r" -type "double3" 0 59.999999999999993 0 ;
	setAttr ".rp" -type "double3" 4.5139159919986911 7.2241070495874755 -0.070248678358501335 ;
	setAttr ".sp" -type "double3" 4.5139159919986911 7.2241070495874755 -0.070248678358501335 ;
createNode ikHandle -n "ikHandle2" -p "|GlobalCTRL|SpiderIKs|Leg2";
	setAttr ".r" -type "double3" 0 -59.999999999999993 0 ;
	setAttr ".pv" -type "double3" -0.65465471914733997 1.7564880432173535 -1.3667146057127602 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle2_pointConstraint1" -p "ikHandle2";
	addAttr -ci true -k true -sn "w0" -ln "Leg8W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 9.0248698647599213e-007 1.5648062827722242e-006 1.5517881948312606e-006 ;
	setAttr ".rst" -type "double3" -10.288320176619155 -8.095567996764709 -26.405065160501984 ;
	setAttr -k on ".w0";
createNode transform -n "Leg3" -p "SpiderIKs";
	setAttr ".r" -type "double3" 0 119.99999999999999 0 ;
	setAttr ".rp" -type "double3" 4.5139159919986911 7.2241070495874755 -0.070248678358501335 ;
	setAttr ".sp" -type "double3" 4.5139159919986911 7.2241070495874755 -0.070248678358501335 ;
createNode ikHandle -n "ikHandle3" -p "|GlobalCTRL|SpiderIKs|Leg3";
	setAttr ".r" -type "double3" 0 240.00000000000003 0 ;
	setAttr ".pv" -type "double3" -0.65465471914733508 1.7564880432173466 -1.3667146057127693 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle3_pointConstraint1" -p "ikHandle3";
	addAttr -ci true -k true -sn "w0" -ln "Leg9W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 9.0074195924216838e-007 1.5617767239461957e-006 1.548789327898703e-006 ;
	setAttr ".rst" -type "double3" -10.288333848844204 -8.0956100866590752 -26.405119794626579 ;
	setAttr -k on ".w0";
createNode transform -n "Leg4" -p "SpiderIKs";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 4.5139159919986911 7.2241070495874755 -0.070248678358501335 ;
	setAttr ".sp" -type "double3" 4.5139159919986911 7.2241070495874755 -0.070248678358501335 ;
createNode ikHandle -n "ikHandle4" -p "Leg4";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".pv" -type "double3" -0.65465511841067048 1.756488043377008 -1.3667144142608287 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle4_pointConstraint1" -p "ikHandle4";
	addAttr -ci true -k true -sn "w0" -ln "Leg1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 5.051276836809393e-007 9.0397157226362879e-007 8.6453367487138166e-007 ;
	setAttr ".rst" -type "double3" -9.4308694271578872 -7.186805772995938 -24.848330536788595 ;
	setAttr -k on ".w0";
createNode transform -n "Leg5" -p "SpiderIKs";
	setAttr ".r" -type "double3" 0 239.99999999999997 0 ;
	setAttr ".rp" -type "double3" 4.5139159919986911 7.2241070495874755 -0.070248678358501335 ;
	setAttr ".sp" -type "double3" 4.5139159919986911 7.2241070495874755 -0.070248678358501335 ;
createNode ikHandle -n "ikHandle5" -p "Leg5";
	setAttr ".r" -type "double3" 0 119.99999999999999 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".pv" -type "double3" -0.65465471914733486 1.7564880432173544 -1.3667146057127617 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle5_pointConstraint1" -p "ikHandle5";
	addAttr -ci true -k true -sn "w0" -ln "Leg2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 9.0476462588640061e-007 1.5687567564981464e-006 1.5557104475760752e-006 ;
	setAttr ".rst" -type "double3" -10.288238553858896 -8.0955310706464836 -26.405012919354945 ;
	setAttr -k on ".w0";
createNode transform -n "Leg6" -p "SpiderIKs";
	setAttr ".r" -type "double3" 0 300 0 ;
	setAttr ".rp" -type "double3" 4.5139159919986911 7.2241070495874755 -0.070248678358501335 ;
	setAttr ".sp" -type "double3" 4.5139159919986911 7.2241070495874755 -0.070248678358501335 ;
createNode ikHandle -n "ikHandle6" -p "Leg6";
	setAttr ".r" -type "double3" 0 59.999999999999993 0 ;
	setAttr ".pv" -type "double3" -0.65465468595896192 1.7564880210799878 -1.3667146500606653 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle6_pointConstraint1" -p "ikHandle6";
	addAttr -ci true -k true -sn "w0" -ln "Leg3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 9.0456529910909467e-007 1.5684202843146977e-006 1.5553703178738942e-006 ;
	setAttr ".rst" -type "double3" -10.288243568263161 -8.0955204190810051 -26.405032535068191 ;
	setAttr -k on ".w0";
createNode transform -n "GCtrl" -p "GlobalCTRL";
	setAttr ".rp" -type "double3" 4.5139159919986911 16.492649711169491 -0.070248678358501349 ;
	setAttr ".rpt" -type "double3" 0 -8.4762058483178748e-014 5.595524044110789e-014 ;
	setAttr ".sp" -type "double3" 4.5139159919986911 16.492649711169491 -0.070248678358501349 ;
createNode nurbsCurve -n "GCtrlShape" -p "GCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".tw" yes;
createNode transform -n "Leg2" -p "GlobalCTRL";
	addAttr -ci true -k true -sn "blendPoint1" -ln "blendPoint1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".rp" -type "double3" 34.721569899971513 -8.0955326394032401 0.27809156898982934 ;
	setAttr ".sp" -type "double3" 34.721569899971513 -8.0955326394032401 0.27809156898982934 ;
	setAttr -k on ".blendPoint1";
createNode nurbsCurve -n "LegShape2" -p "|GlobalCTRL|Leg2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		38.311688069756059 -8.0955326394032401 -3.312026600794717
		38.311688069756059 -8.0955326394032401 3.8682097387743752
		31.131451730186967 -8.0955326394032401 3.8682097387743752
		31.131451730186967 -8.0955326394032401 -3.312026600794717
		38.311688069756059 -8.0955326394032401 -3.312026600794717
		;
createNode pointConstraint -n "Leg2_pointConstraint1" -p "|GlobalCTRL|Leg2";
	addAttr -ci true -k true -sn "w0" -ln "pCube14W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 1.7768937183859634e-006 -1.5510761119941208e-006 -9.845603443636719e-009 ;
	setAttr ".rst" -type "double3" 0 0.08892007905772914 27.856765904233605 ;
	setAttr -k on ".w0";
createNode transform -n "Leg3" -p "GlobalCTRL";
	addAttr -ci true -k true -sn "blendPoint1" -ln "blendPoint1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".rp" -type "double3" 19.919428929658245 -8.0955219875012894 -26.056688377832497 ;
	setAttr ".sp" -type "double3" 19.919428929658245 -8.0955219875012894 -26.056688377832497 ;
	setAttr -k on ".blendPoint1";
createNode nurbsCurve -n "LegShape3" -p "|GlobalCTRL|Leg3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		23.509547099442791 -8.0955219875012894 -29.646806547617039
		23.509547099442791 -8.0955219875012894 -22.466570208047948
		16.3293107598737 -8.0955219875012894 -22.466570208047948
		16.3293107598737 -8.0955219875012894 -29.646806547617039
		23.509547099442791 -8.0955219875012894 -29.646806547617039
		;
createNode pointConstraint -n "Leg3_pointConstraint1" -p "|GlobalCTRL|Leg3";
	addAttr -ci true -k true -sn "w0" -ln "pCube13W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0.44262701595171206 -0.22844043953231719 -0.23411885640302188 ;
	setAttr ".rst" -type "double3" 0.5460927794134669 0.92202560685878865 40.883186247095495 ;
	setAttr -k on ".w0";
createNode transform -n "Leg7" -p "GlobalCTRL";
	addAttr -ci true -k true -sn "blendPoint1" -ln "blendPoint1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".rp" -type "double3" -10.288339406781116 -8.0956200656300847 -26.405133396327024 ;
	setAttr ".sp" -type "double3" -10.288339406781116 -8.0956200656300847 -26.405133396327024 ;
	setAttr -k on ".blendPoint1";
createNode nurbsCurve -n "LegShape7" -p "Leg7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-6.6982212369965701 -8.0956200656300847 -29.99525156611157
		-6.6982212369965701 -8.0956200656300847 -22.815015226542481
		-13.87845757656566 -8.0956200656300847 -22.815015226542481
		-13.87845757656566 -8.0956200656300847 -29.99525156611157
		-6.6982212369965701 -8.0956200656300847 -29.99525156611157
		;
createNode pointConstraint -n "Leg7_pointConstraint1" -p "Leg7";
	addAttr -ci true -k true -sn "w0" -ln "pCube12W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -0.48508896728450468 -0.22084759302618551 -0.13721538184631044 ;
	setAttr ".rst" -type "double3" 0.51030279115705746 1.2382225701081637 41.655702111920775 ;
	setAttr -k on ".w0";
createNode transform -n "Leg8" -p "GlobalCTRL";
	addAttr -ci true -k true -sn "blendPoint1" -ln "blendPoint1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".rp" -type "double3" -25.693823964979124 -8.0955695615709917 -0.4185443589077949 ;
	setAttr ".sp" -type "double3" -25.693823964979124 -8.0955695615709917 -0.4185443589077949 ;
	setAttr -k on ".blendPoint1";
createNode nurbsCurve -n "LegShape8" -p "Leg8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-22.103705795194575 -8.0955695615709917 -4.0086625286923407
		-22.103705795194575 -8.0955695615709917 3.1715738108767511
		-29.28394213476367 -8.0955695615709917 3.1715738108767511
		-29.28394213476367 -8.0955695615709917 -4.0086625286923407
		-22.103705795194575 -8.0955695615709917 -4.0086625286923407
		;
createNode pointConstraint -n "Leg8_pointConstraint1" -p "Leg8";
	addAttr -ci true -k true -sn "w0" -ln "pCube15W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -0.42709998402418847 0.10758659169114715 0.29847453408000391 ;
	setAttr ".rst" -type "double3" 0 0.08892007905772914 27.856765904233605 ;
	setAttr -k on ".w0";
createNode transform -n "Leg9" -p "GlobalCTRL";
	setAttr ".rp" -type "double3" -10.891627370577003 -8.0956116484357992 25.916312829569723 ;
	setAttr ".sp" -type "double3" -10.891627370577003 -8.0956116484357992 25.916312829569723 ;
createNode nurbsCurve -n "LegShape9" -p "Leg9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-7.3015092007924594 -8.0956116484357992 22.326194659785177
		-7.3015092007924594 -8.0956116484357992 29.506430999354269
		-14.481745540361548 -8.0956116484357992 29.506430999354269
		-14.481745540361548 -8.0956116484357992 22.326194659785177
		-7.3015092007924594 -8.0956116484357992 22.326194659785177
		;
createNode transform -n "Leg1" -p "GlobalCTRL";
	setAttr ".rp" -type "double3" 18.458701916282951 -7.1868066769675103 24.707834044605271 ;
	setAttr ".sp" -type "double3" 18.458701916282951 -7.1868066769675103 24.707834044605271 ;
createNode nurbsCurve -n "LegShape1" -p "|GlobalCTRL|Leg1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		22.048820086067497 -7.1868066769675094 21.117715874820725
		22.048820086067497 -7.1868066769675112 28.297952214389817
		14.868583746498407 -7.1868066769675112 28.297952214389817
		14.868583746498407 -7.1868066769675094 21.117715874820725
		22.048820086067497 -7.1868066769675094 21.117715874820725
		;
createNode transform -n "pCube12";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.2929476483395543 -7.9717303402694482 15.387784097440061 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube13";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20.022894693120001 -7.9717303402694482 15.060616725666019 ;
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
	setAttr -s 8 ".vt[0:7]"  -1.90286815 -1.86336529 1.8319273 1.90286815 -1.86336529 1.8319273
		 -1.90286815 1.86336529 1.8319273 1.90286815 1.86336529 1.8319273 -1.90286815 1.86336529 -1.8319273
		 1.90286815 1.86336529 -1.8319273 -1.90286815 -1.86336529 -1.8319273 1.90286815 -1.86336529 -1.8319273;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 34.721568123077795 -8.0066110092693954 28.134857483069041 ;
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
	setAttr -s 8 ".vt[0:7]"  -1.90286815 -1.86336529 1.8319273 1.90286815 -1.86336529 1.8319273
		 -1.90286815 1.86336529 1.8319273 1.90286815 1.86336529 1.8319273 -1.90286815 1.86336529 -1.8319273
		 1.90286815 1.86336529 -1.8319273 -1.90286815 -1.86336529 -1.8319273 1.90286815 -1.86336529 -1.8319273;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" -25.266723980954936 -8.1142360742044062 27.139747011245809 ;
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
	setAttr -s 8 ".vt[0:7]"  -1.90286815 -1.86336529 1.8319273 1.90286815 -1.86336529 1.8319273
		 -1.90286815 1.86336529 1.8319273 1.90286815 1.86336529 1.8319273 -1.90286815 1.86336529 -1.8319273
		 1.90286815 1.86336529 -1.8319273 -1.90286815 -1.86336529 -1.8319273 1.90286815 -1.86336529 -1.8319273;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 5;
	setAttr -s 6 ".dli[1:5]"  1 2 3 4 5;
	setAttr -s 6 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 0\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 0\n                -hulls 0\n                -grid 1\n                -imagePlane 0\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -pluginShapes 0\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -motionTrails 0\n                -clipGhosts 0\n                -greasePencils 0\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n"
		+ "            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 0\n                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 0\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 400 -ast 0 -aet 400 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	setAttr ".w" 11.335173276508655;
	setAttr ".h" 11.335173276508655;
	setAttr ".d" 11.335173276508655;
	setAttr ".sw" 2;
	setAttr ".sh" 3;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[6:7]";
	setAttr ".ix" -type "matrix" 0.94032406578765659 0 0 0 0 0.94032406578765659 0 0
		 0 0 0.94032406578765659 0 4.5248315213541073 5.6675866382543276 -0.043375469477325623 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.5248313 11.663524 -0.04337547 ;
	setAttr ".rs" 1788000671;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.17002542171212554 11.663523259759552 -5.3727437356889958 ;
	setAttr ".cbx" -type "double3" 9.2196884644203401 11.663523259759552 5.2859927967343445 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[0:23]" -type "float3"  0.67477936 -0.70887077 -2.68686152
		 -1.6402613e-015 -0.70887077 6.2172489e-015 -0.67477936 -0.70887077 -2.68686152 -2.83138156
		 1.17002428 -0.54202592 -0.040947162 1.17002428 4.0096287727 2.7883122 1.17002428
		 -0.61417019 -2.83138156 -1.17002404 -0.54202592 -0.040947162 -1.17002404 4.0096287727
		 2.7883122 -1.17002404 -0.61417019 0.67477936 0.70887077 -2.68686152 -1.0794236e-014
		 0.70887077 -6.2172489e-015 -0.67477936 0.70887077 -2.68686152 0.67477936 0.70887077
		 2.68686152 -1.0794236e-014 0.70887077 6.2172489e-015 -0.67477936 0.70887077 2.68686152
		 -2.7883122 -1.17002428 0.61417019 0.040947162 -1.17002428 -4.0096287727 2.83138156
		 -1.17002428 0.54202592 -2.7883122 1.17002404 0.61417019 0.040947162 1.17002404 -4.0096287727
		 2.83138156 1.17002404 0.54202592 0.67477936 -0.70887077 2.68686152 -1.6402613e-015
		 -0.70887077 -6.2172489e-015 -0.67477936 -0.70887077 2.68686152;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[6:7]";
	setAttr ".ix" -type "matrix" 0.94032406578765659 0 0 0 0 0.94032406578765659 0 0
		 0 0 0.94032406578765659 0 4.5248315213541073 5.6675866382543276 -0.043375469477325623 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.5248313 11.663525 -0.04337547 ;
	setAttr ".rs" 662783619;
	setAttr ".lt" -type "double3" -4.4408920985006262e-016 8.8754970140150255e-019 -0.7147528314954954 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.81887808447074173 11.663524604903918 -4.250189375593016 ;
	setAttr ".cbx" -type "double3" 8.2307845098560168 11.663524604903918 4.1634384366383648 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[24:29]" -type "float3"  1.051662922 -2.6645353e-015
		 -0.62784678 -5.0219434e-008 -2.6645353e-015 -1.19379532 -5.0219434e-008 -2.6645353e-015
		 1.19379532 1.051662922 -2.6645353e-015 0.62784678 -1.051662922 -2.6645353e-015 -0.62784678
		 -1.051662922 -2.6645353e-015 0.62784678;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.94032406578765659 0 0 0 0 0.94032406578765659 0 0
		 0 0 0.94032406578765659 0 4.5248315213541073 5.6675866382543276 -0.043375469477325623 1;
	setAttr ".a" 0;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".r" 2.1408980467656646;
	setAttr ".h" 2.5344875070777131;
	setAttr ".sa" 7;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[7:13]";
	setAttr ".ix" -type "matrix" 0.97437006478523525 0.22495105434386503 1.387778780781446e-017 0
		 -4.1633363423443389e-017 1.1102230246251563e-016 1 0 0.22495105434386503 -0.97437006478523525 1.1102230246251563e-016 0
		 4.5886220157211275 -3.9312854894718399 0.03739927871002327 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.6919127 -3.907439 -3.3243232 ;
	setAttr ".rs" 864910600;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.5002196650779278 -6.0721767719085271 -3.3243231906198112 ;
	setAttr ".cbx" -type "double3" 6.6746489282277093 -2.0000932107160914 -3.3243231906198103 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[0:15]" -type "float3"  0 -2.094478846 2.4424907e-015
		 7.2164497e-016 -2.094478846 5.3290705e-015 0 -2.094478846 -6.6613381e-016 0 -2.094478846
		 -3.5527137e-015 -7.2164497e-016 -2.094478846 -6.2172489e-015 0 -2.094478846 -3.3306691e-015
		 0 -2.094478846 9.3736372e-016 0 2.094478846 3.3306691e-015 7.2164497e-016 2.094478846
		 6.2172489e-015 0 2.094478846 6.6613381e-016 0 2.094478846 -2.220446e-015 -7.2164497e-016
		 2.094478846 -5.3290705e-015 0 2.094478846 -2.4424907e-015 0 2.094478846 2.1525727e-015
		 2.1266463e-017 -2.094478846 -6.0760463e-016 -2.1266463e-017 2.094478846 6.0760463e-016;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[7:13]";
	setAttr ".ix" -type "matrix" 0.97437006478523525 0.22495105434386503 1.387778780781446e-017 0
		 -4.1633363423443389e-017 1.1102230246251563e-016 1 0 0.22495105434386503 -0.97437006478523525 1.1102230246251563e-016 0
		 4.5886220157211275 -3.9312854894718399 0.03739927871002327 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.67869 -3.9237266 -3.3243232 ;
	setAttr ".rs" 781876692;
	setAttr ".lt" -type "double3" 2.1549513276426304e-016 -7.0685368625214803e-016 0.25229600533159352 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.7643783785561831 -5.8144946158434658 -3.3243231906198107 ;
	setAttr ".cbx" -type "double3" 6.4104902999064883 -2.2577751394299508 -3.3243231906198107 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[15:22]" -type "float3"  -0.17206782 0 0.22473523 0.05716113
		 0 0.27705532 -0.0031315091 0 0.012895862 0.24098846 0 0.13045788 0.24098852 0 -0.10466612
		 0.057161167 0 -0.25126356 -0.17206782 0 -0.19894354 -0.27408427 0 0.012895862;
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 2 "f[7:13]" "f[28:34]";
	setAttr ".ix" -type "matrix" 0.97437006478523525 0.22495105434386503 1.387778780781446e-017 0
		 -4.1633363423443389e-017 1.1102230246251563e-016 1 0 0.22495105434386503 -0.97437006478523525 1.1102230246251563e-016 0
		 4.5886220157211275 -3.9312854894718399 0.03739927871002327 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.6574483 -3.949892 -3.6834977 ;
	setAttr ".rs" 1088243780;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk[15:29]" -type "float3"  0 0.10687783 6.3338469e-008
		 1.2656542e-014 0.10687766 6.3338369e-008 8.437695e-015 0.10687809 6.3338646e-008
		 0 0.10687894 6.3339129e-008 -8.437695e-015 0.10687942 6.3339421e-008 -1.687539e-014
		 0.10687927 6.3339328e-008 -8.437695e-015 0.10687855 6.3338888e-008 -0.27641737 -0.10687917
		 0.36102474 0.091826245 -0.1068793 0.44507399 -0.0050305529 -0.10687864 0.020716485
		 0.38713461 -0.10687894 0.20957337 0.3871347 -0.10687831 -0.1681402 0.091826245 -0.10687792
		 -0.40364081 -0.27641737 -0.10687803 -0.31959173 -0.44030109 -0.10687864 0.020716485;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 2;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:34]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode polyChipOff -n "polyChipOff2";
	setAttr ".ics" -type "componentList" 3 "f[4:9]" "f[18]" "f[21:33]";
	setAttr ".ix" -type "matrix" 0.94032406578765659 0 0 0 0 0.94032406578765659 0 0
		 0 0 0.94032406578765659 0 4.5248315213541073 5.6675866382543276 -0.043375469477325623 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.5248313 5.6675868 -0.04337547 ;
	setAttr ".rs" 573521680;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:33]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".muv" 2;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:33]";
	setAttr ".gi" 9;
createNode polyCut -n "polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pc" -type "double3" 6.915714231146211 14.714299845025783 -0.043373107911975239 ;
	setAttr ".ro" -type "double3" 89.999999999999986 0 -90 ;
	setAttr ".ps" -type "double2" 20.130543231964111 15.10319709777832 ;
createNode polyCut -n "polyCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pc" -type "double3" 1.906245721649781 14.486596730957764 -0.043373107913794229 ;
	setAttr ".ro" -type "double3" 89.999999999999986 0 -90 ;
	setAttr ".ps" -type "double2" 20.130543231964111 15.10319709777832 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 15 "f[1]" "f[3]" "f[5]" "f[7]" "f[9]" "f[15]" "f[17]" "f[19]" "f[23]" "f[25]" "f[29]" "f[31]" "f[43]" "f[45:54]" "f[56]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.4109797 7.2380476 -0.043373108 ;
	setAttr ".rs" 2041550590;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.9062454700469973 -0.31355094909667969 -11.504037857055664 ;
	setAttr ".cbx" -type "double3" 6.9157142639160156 14.789646148681641 11.417291641235352 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[60:101]" -type "float3"  0.00072807225 2.63132167 -2.3387959
		 0.016017914 2.63132167 -1.89047003 0.016017914 0.29677442 -3.53087234 0.00041794125
		 0.29677463 -3.99341822 0.016017914 -0.29677501 -3.53087234 0.00041794125 -0.29677501
		 -3.99341822 0.0010382115 -0.29677501 3.99341822 0.016017914 -0.29677501 3.55418563
		 0.016017914 0.29677463 3.55418563 0.0010382115 0.29677463 3.99341822 0.016017914
		 2.63132167 1.89047158 0.00072807225 2.63132167 2.33879733 -0.016017897 2.63132167
		 -1.84777248 -0.016017884 0.29677463 -3.51148891 -0.016017884 -0.29677501 -3.51148891
		 -0.016017919 -0.29677501 3.48769546 -0.016017919 0.29677463 3.48769546 -0.016017897
		 2.63132167 1.84777403 0.00041794125 -0.29677501 -3.99341822 0.016017914 -0.29677501
		 -3.53087234 0.016017914 -2.63132143 -1.89047003 0.00072807225 -2.63132143 -2.3387959
		 0.00072807225 -2.31765223 -1.84616196 0.016017914 -2.31765223 -1.39783657 0.016017914
		 -2.31765223 1.39783788 0.00072807225 -2.31765223 1.84616351 0.00072807225 -2.63132143
		 2.33879733 0.016017914 -2.63132143 1.89047158 0.016017914 -0.29677501 3.55418563
		 0.0010382115 -0.29677501 3.99341822 -0.016017897 -2.63132143 1.84777403 -0.016017884
		 -2.63132143 1.35514057 0.00072807225 -2.63132143 1.84616351 0.016017914 -2.63132143
		 -1.39783657 0.00072807225 -2.63132143 -1.84616196 -0.016017884 -2.31765223 1.35514057
		 0.016017914 -2.63132143 1.39783788 -0.016017884 -0.29677501 -3.51148891 -0.016017897
		 -2.63132143 -1.84777248 -0.016017884 -2.31765223 -1.35513878 -0.016017919 -0.29677501
		 3.48769546 -0.016017884 -2.63132143 -1.35513878;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 3 "f[60:61]" "f[67]" "f[69]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 3 "f[68]" "f[72]" "f[80]";
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 73 ".tk";
	setAttr ".tk[19]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".tk[23]" -type "float3" -1.1920929e-007 0 0 ;
	setAttr ".tk[26]" -type "float3" -0.043169353 0 0 ;
	setAttr ".tk[29]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[30]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[32]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[33]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[36]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[38]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[40]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[41]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.069900848 0 0 ;
	setAttr ".tk[43]" -type "float3" -0.067883842 0 0 ;
	setAttr ".tk[44]" -type "float3" -0.067884095 0 0 ;
	setAttr ".tk[45]" -type "float3" -0.067884095 0 0 ;
	setAttr ".tk[46]" -type "float3" -0.067883976 0 0 ;
	setAttr ".tk[47]" -type "float3" -0.067883976 0 0 ;
	setAttr ".tk[48]" -type "float3" -0.067883842 0 0 ;
	setAttr ".tk[49]" -type "float3" -0.067883842 0 0 ;
	setAttr ".tk[50]" -type "float3" -0.067883842 0 0 ;
	setAttr ".tk[51]" -type "float3" -0.067884095 0 0 ;
	setAttr ".tk[52]" -type "float3" -0.067884095 0 0 ;
	setAttr ".tk[53]" -type "float3" -0.067884095 0 0 ;
	setAttr ".tk[54]" -type "float3" -0.067884095 0 0 ;
	setAttr ".tk[55]" -type "float3" -0.067884095 0 0 ;
	setAttr ".tk[56]" -type "float3" -0.068688288 0 0 ;
	setAttr ".tk[57]" -type "float3" 0.0054825856 0 0 ;
	setAttr ".tk[58]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[59]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[60]" -type "float3" 0.055198811 0 0 ;
	setAttr ".tk[61]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[62]" -type "float3" 0.055198811 0 0 ;
	setAttr ".tk[63]" -type "float3" -0.044229072 0 0 ;
	setAttr ".tk[64]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[65]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[66]" -type "float3" -0.044229072 0 0 ;
	setAttr ".tk[67]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[68]" -type "float3" 0.0054825856 0 0 ;
	setAttr ".tk[69]" -type "float3" -0.052782763 0 0 ;
	setAttr ".tk[70]" -type "float3" -0.052783005 0 0 ;
	setAttr ".tk[71]" -type "float3" -0.052783005 0 0 ;
	setAttr ".tk[72]" -type "float3" -0.052782878 0 0 ;
	setAttr ".tk[73]" -type "float3" -0.052782878 0 0 ;
	setAttr ".tk[74]" -type "float3" -0.052782763 0 0 ;
	setAttr ".tk[75]" -type "float3" 0.055198811 0 0 ;
	setAttr ".tk[76]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[77]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[78]" -type "float3" 0.0054825856 0 0 ;
	setAttr ".tk[79]" -type "float3" 0.0054825856 0 0 ;
	setAttr ".tk[80]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[81]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[82]" -type "float3" 0.0054825856 0 0 ;
	setAttr ".tk[83]" -type "float3" 0.0054825856 0 0 ;
	setAttr ".tk[84]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[85]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[86]" -type "float3" -0.044229072 0 0 ;
	setAttr ".tk[87]" -type "float3" -0.052782763 0 0 ;
	setAttr ".tk[88]" -type "float3" -0.052783005 0 0 ;
	setAttr ".tk[89]" -type "float3" 0.0054825856 0 0 ;
	setAttr ".tk[90]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[91]" -type "float3" 0.0054825856 0 0 ;
	setAttr ".tk[92]" -type "float3" -0.052783005 0 0 ;
	setAttr ".tk[93]" -type "float3" 0.050766189 0 0 ;
	setAttr ".tk[94]" -type "float3" -0.052783005 0 0 ;
	setAttr ".tk[95]" -type "float3" -0.052782763 0 0 ;
	setAttr ".tk[96]" -type "float3" -0.052783005 0 0 ;
	setAttr ".tk[97]" -type "float3" -0.052782878 0 0 ;
	setAttr ".tk[98]" -type "float3" -0.052783005 0 0 ;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 16 "f[1]" "f[3]" "f[5]" "f[7]" "f[9]" "f[15]" "f[17]" "f[19]" "f[23]" "f[25]" "f[29]" "f[31]" "f[43]" "f[45:54]" "f[56]" "f[80]";
createNode polyCube -n "polyCube2";
	setAttr ".h" 10;
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "f[52]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "f[51]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 3 "f[34:38]" "f[44:46]" "f[48]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 3 "f[34:35]" "f[37:40]" "f[42:46]";
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 1 "f[34]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[74]" "e[77:78]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8383616 3.0363934 -0.0092334747 ;
	setAttr ".rs" 120511141;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.8383616209030151 -0.31355094909667969 -10.052671432495115 ;
	setAttr ".cbx" -type "double3" 1.8383616209030151 6.3863377571105957 10.034204483032228 ;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:37]";
	setAttr ".gi" 11;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[79:83]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8379594 11.439702 -0.0092334747 ;
	setAttr ".rs" 1957545332;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.837557315826416 8.0897588729858398 -10.052671432495115 ;
	setAttr ".cbx" -type "double3" 1.8383616209030151 14.789646148681641 10.034204483032228 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[56]" -type "float3" 0 -4.7683716e-007 4.7683716e-007 ;
	setAttr ".tk[57]" -type "float3" 0 5.9604645e-008 2.3841858e-006 ;
	setAttr ".tk[58]" -type "float3" 0 8.3749638 2.3841858e-006 ;
	setAttr ".tk[59]" -type "float3" 0 1.6804937 -2.3841858e-006 ;
	setAttr ".tk[60]" -type "float3" 0 1.6804937 -2.3841858e-006 ;
	setAttr ".tk[61]" -type "float3" 0 8.3749638 0 ;
	setAttr ".tk[68]" -type "float3" 0 -2.9802322e-008 2.3841858e-006 ;
	setAttr ".tk[69]" -type "float3" 0 9.5367432e-007 4.7683716e-007 ;
	setAttr ".tk[70]" -type "float3" 0 0 2.3841858e-007 ;
	setAttr ".tk[71]" -type "float3" 0 0 4.7683716e-007 ;
	setAttr ".tk[72]" -type "float3" 0 9.5367432e-007 0 ;
	setAttr ".tk[73]" -type "float3" 0 -2.9802322e-008 -2.3841858e-006 ;
	setAttr ".tk[76]" -type "float3" 0 9.5367432e-007 2.3841858e-007 ;
	setAttr ".tk[78]" -type "float3" 0 9.5367432e-007 4.7683716e-007 ;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:42]";
	setAttr ".gi" 12;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[62:69]" -type "float3"  0 -0.034355056 0 0 -6.72637177
		 0 0 -5.82720947 0 0 -5.82720947 0 0 -6.72637177 0 0 -0.034355056 0 0 -6.72637177
		 0 0 -6.72637177 0;
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "f[35:42]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".ics" -type "componentList" 2 "e[62]" "e[65]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 28;
	setAttr ".sv2" 32;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:35]";
	setAttr ".gi" 13;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 1 "e[63:64]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 29;
	setAttr ".sv2" 31;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:36]";
	setAttr ".gi" 14;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	setAttr ".ics" -type "componentList" 2 "e[69]" "e[73]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 35;
	setAttr ".sv2" 39;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:37]";
	setAttr ".gi" 15;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	setAttr ".ics" -type "componentList" 2 "e[68]" "e[90]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 38;
	setAttr ".sv2" 31;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:38]";
	setAttr ".gi" 16;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:38]";
	setAttr ".gi" 17;
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 1 "f[34]";
createNode polyBridgeEdge -n "polyBridgeEdge6";
	setAttr ".ics" -type "componentList" 2 "e[67]" "e[72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 40;
	setAttr ".sv2" 36;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:38]";
	setAttr ".gi" 18;
createNode polyBridgeEdge -n "polyBridgeEdge7";
	setAttr ".ics" -type "componentList" 2 "e[79]" "e[84]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 48;
	setAttr ".sv2" 52;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
	setAttr ".gi" 19;
createNode polyBridgeEdge -n "polyBridgeEdge8";
	setAttr ".ics" -type "componentList" 2 "e[74]" "e[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 43;
	setAttr ".sv2" 47;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:40]";
	setAttr ".gi" 20;
createNode polyBridgeEdge -n "polyBridgeEdge9";
	setAttr ".ics" -type "componentList" 1 "e[75:76]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 44;
	setAttr ".sv2" 46;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:41]";
	setAttr ".gi" 21;
createNode polyBridgeEdge -n "polyBridgeEdge10";
	setAttr ".ics" -type "componentList" 2 "e[81]" "e[85]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 55;
	setAttr ".sv2" 51;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:42]";
	setAttr ".gi" 22;
createNode polyBridgeEdge -n "polyBridgeEdge11";
	setAttr ".ics" -type "componentList" 2 "e[80]" "e[94]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 53;
	setAttr ".sv2" 44;
	setAttr ".sma" 99.3103;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:43]";
createNode polyCylinder -n "polyCylinder2";
	setAttr ".r" 2.3866130506064143;
	setAttr ".h" 5.4642443330012771;
	setAttr ".sa" 5;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk[0:21]" -type "float3"  0.0015329856 0.27773383 -0.0066400911
		 0.001532327 0.27761438 -0.0066372356 0.0013251439 0.24007867 -0.0057398267 -0.023722241
		 0.19609587 0.10275229 0.15644063 0.15575002 -0.67761844 -0.025597313 0.1965158 0.11087416
		 0.0013266255 0.24034709 -0.0057462458 0.040540706 7.34483242 -0.17560111 0.040540058
		 7.34471321 -0.17559825 0.040332869 7.30717659 -0.17470081 0.052370269 7.25915051
		 -0.22684054 0.23253302 7.21880388 -1.0072113276 0.050495189 7.25957012 -0.21871871
		 0.040334355 7.307446 -0.17470723 0.040265795 7.29502678 -0.17441028 0.0021163812
		 0.3834286 -0.0091670537 0.002115804 0.38332403 -0.0091645522 0.0019348447 0.35053933
		 -0.0083807334 0.0017097703 0.30976218 -0.0074058301 0.16751613 0.27360195 -0.72559214
		 0.0017108102 0.3099505 -0.0074103312 0.0019361416 0.35077417 -0.0083863484;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 1.0743681464899404 0 0 0 0 1.0743681464899404 0 0
		 0 0 1.0743681464899404 0 2.670625824402681 3.844806982879887 -11.567751327640403 1;
createNode transformGeometry -n "transformGeometry2";
	setAttr ".txf" -type "matrix" 0.42800617848358496 0 0.098813005862148209 0 0.098783273408486069 -0.01077498688251882 -0.42787739306958161 0
		 0.0024238445117683487 0.43913232471012315 -0.010498824700947479 0 2.3959641076631897 12.91777488438848 -10.352568108694756 1;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" -0.61362985991892172 0 -1.178771993480074 0 0 1.3289262649210851 0 0
		 1.1787719934800742 0 -0.61362985991892172 0 -4.9303057904182577 10.049615784941007 -17.889234513603192 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.3322353 10.049616 -18.655865 ;
	setAttr ".rs" 125847728;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.9675639002005054 2.4777615234797841 -20.282341968449352 ;
	setAttr ".cbx" -type "double3" -3.077035373429521 17.62147004640223 -17.759607240987304 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" -0.50094254307216324 -0.11478806559165464 -0.96230167188111315 0
		 -0.053003230102878385 1.0848815323180652 -0.10181825769936992 0 0.96767322237732734 -2.2709694986484498e-017 -0.50373879527086718 0
		 -5.1732555152459714 -1.6295231395470786 -18.355936592749789 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.3958597 -2.8172836 -18.775953 ;
	setAttr ".rs" 426103828;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.8059129926270225 -11.40618345446723 -20.58500230941403 ;
	setAttr ".cbx" -type "double3" -3.7911984140031016 5.7699403404432186 -17.962632723731804 ;
createNode polyChipOff -n "polyChipOff3";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" -0.61362985991892172 0 -1.178771993480074 0 0 1.3289262649210851 0 0
		 1.1787719934800742 0 -0.61362985991892172 0 -4.9303057904182577 10.049615784941007 -17.889234513603192 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.4321337 11.552269 -18.84844 ;
	setAttr ".rs" 460680574;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.31662345 3.21933341 0.54927695
		 0.2665073 3.22322202 -0.55043805 0.059991535 -0.95787698 0.76454842 0.065686822 -0.95787698
		 -0.76408005;
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 2;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode polyChipOff -n "polyChipOff4";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" -0.61362985991892172 0 -1.178771993480074 0 0 1.3289262649210851 0 0
		 1.1787719934800742 0 -0.61362985991892172 0 -4.9303057904182577 10.049615784941007 -17.889234513603192 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.930306 10.049616 -17.889235 ;
	setAttr ".rs" 724462049;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate4";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode polyChipOff -n "polyChipOff5";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" -0.50094254307216324 -0.11478806559165464 -0.96230167188111315 0
		 -0.053003230102878385 1.0848815323180652 -0.10181825769936992 0 0.96767322237732734 -2.2709694986484498e-017 -0.50373879527086718 0
		 -5.1732555152459714 -1.6295231395470786 -18.355936592749789 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.6727958 -0.61520416 -19.190018 ;
	setAttr ".rs" 1300156365;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.22120279 5.49101114 -0.0093500596
		 0.22152087 5.49104595 -0.095221065 0.25007957 -1.38089979 0.84913397 0.25674188 -1.38019645
		 -0.94896078;
createNode polySeparate -n "polySeparate5";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode displayLayer -n "CenterLaye";
	setAttr ".do" 1;
createNode displayLayer -n "Leg";
	setAttr ".do" 2;
createNode ikRPsolver -n "ikRPsolver";
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk[0:21]" -type "float3"  0.045401946 0.21830586 -0.19665749
		 0.04529823 0.21816465 -0.19620821 0.012706247 0.17381644 -0.055036794 -0.030271418
		 0.11728726 0.13111994 -0.030486152 0.10280737 0.13204998 -0.030269176 0.11743795
		 0.13111015 0.012939312 0.1741336 -0.056046378 0.11507745 5.16409874 -0.49845526 0.11497373
		 5.16395903 -0.49800599 0.082381755 5.11960983 -0.35683453 0.043054029 5.065128803
		 -0.18648763 0.042839311 5.050648689 -0.18555748 0.043056313 5.065279484 -0.18649717
		 0.082614847 5.11992693 -0.35784417 0.071829818 5.10525322 -0.31112912 0.040738959
		 0.2890735 -0.17645985 0.040648352 0.28895 -0.17606732 0.01218123 0.25021493 -0.052762732
		 -0.023226116 0.20203643 0.10060336 -0.022582514 0.18985592 0.097815573 -0.023062848
		 0.20225883 0.099896237 0.012384797 0.2504921 -0.053644441;
createNode transformGeometry -n "transformGeometry3";
	setAttr ".txf" -type "matrix" 9.3370117202880537e-017 0.40976346087490922 -0.094422046128767895 0
		 -0.4197046263719949 -0.0058106869912764331 -0.025216644938610842 0 -0.025877466361113453 0.094243083098085156 0.40898681480730326 0
		 -0.81311354451034668 -0.06201351626160978 5.0562132783352176 1;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -0.012679252 4.33216429 0.054919783
		 -0.012679252 4.33216429 0.054919783 0.077814795 4.38293886 -0.33705285 0.077814788
		 4.38293886 -0.33705285 0.075640857 4.23624754 -0.32763654 0.07564085 4.23624754 -0.32763651
		 -0.014853221 4.18547201 0.064336024 -0.014853229 4.18547201 0.064336292;
createNode transformGeometry -n "transformGeometry4";
	setAttr ".txf" -type "matrix" 9.3370117202880537e-017 0.40976346087490922 -0.094422046128767895 0
		 -0.4197046263719949 -0.0058106869912764331 -0.025216644938610842 0 -0.025877466361113453 0.094243083098085156 0.40898681480730326 0
		 -0.81311354451034668 -0.06201351626160978 5.0562132783352176 1;
createNode transformGeometry -n "transformGeometry5";
	setAttr ".txf" -type "matrix" 0.99810679205830299 0 0.061504728656287082 0 0 1 0 0
		 -0.061504728656287082 0 0.99810679205830299 0 0.0034004337674447141 0 0.031726867808503409 1;
createNode transformGeometry -n "transformGeometry6";
	setAttr ".txf" -type "matrix" 0.99810679205830299 0 0.061504728656287082 0 0 1 0 0
		 -0.061504728656287082 0 0.99810679205830299 0 0.0034004337674447141 0 0.031726867808503409 1;
createNode displayLayer -n "SeekrPlygns";
	setAttr ".dt" 2;
	setAttr ".do" 3;
createNode transformGeometry -n "transformGeometry7";
	setAttr ".txf" -type "matrix" 5.1160120469070014 0 0 0 0 5.1160120469070014 0 0
		 0 0 5.1160120469070014 0 4.5139159919986911 16.492649711169491 -0.070248678358501349 1;
createNode makeNurbCircle -n "makeNurbCircle1";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0;
createNode lambert -n "SeekrGlow";
	setAttr ".c" -type "float3" 1 0 0 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 19 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo1";
createNode polyChipOff -n "polyChipOff6";
	setAttr ".ics" -type "componentList" 5 "f[1:2]" "f[6]" "f[8]" "f[23:24]" "f[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 2053792554;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk[28:55]" -type "float3"  -0.55915123 -5.5511151e-016
		 0 -0.55915123 0 0 -0.55915123 0 0 -0.55915123 0 0 -0.55915123 0 0 -0.55915123 -5.5511151e-016
		 0 -0.55915123 0 0 -0.55915123 0 0 -0.55915123 0 0 -0.55915123 0 0 -0.55915123 0 0
		 -0.55915123 0 0 -0.55915123 0 0 -0.55915123 0 0 0.55897659 1.110223e-016 0 0.55897659
		 0 0 0.55897659 0 0 0.55897659 0 0 0.55897659 0 0 0.55897659 1.110223e-016 0 0.55897659
		 0 0 0.55897659 0 0 0.55897659 0 0 0.55897659 0 0 0.55897659 0 0 0.55897659 0 0 0.55897659
		 0 0 0.55915117 0 0;
createNode polySeparate -n "polySeparate6";
	setAttr ".ic" 5;
	setAttr ".rs" -type "Int32Array" 2 1 3 ;
	setAttr -s 3 ".out";
createNode polyAutoProj -n "polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" -0.58169574266651181 0.7964815660641974 0.89066952091147755 0
		 0.40597605620439797 1.0634247369625482 -0.68582526069106375 0 -1.1237697817388941 -0.028106250784544443 -0.70879936083101602 0
		 -8.0838207928015482 11.342964290274615 20.205604663536914 1;
	setAttr ".s" -type "double3" 26.405165502687435 26.405165502687435 26.405165502687435 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" -0.57023202899021774 -0.013717949243355817 0.92994165954070651 0
		 -0.031843976398393571 1.0904670390019426 -0.0034405209696400652 0 -0.92949751664429126 -0.028942941902313345 -0.57038663363827258 0
		 -10.746011926485744 1.5969153102558815 24.869991532378275 1;
	setAttr ".s" -type "double3" 26.405165502687435 26.405165502687435 26.405165502687435 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" -0.52147098617859078 0.56520570144708304 0.80296611641168547 0
		 -0.83860548468599871 0.00017462931652280919 -0.5447392133481509 0 -0.17492862641552681 -0.54372386355151103 0.26912172250813293 0
		 -2.1029487384367092 11.682386597895007 10.094277218570952 1;
	setAttr ".s" -type "double3" 26.405165502687435 26.405165502687435 26.405165502687435 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 0.48400997855816025 0.78739393054314133 0.95487703731792317 0
		 -0.3880497877772795 1.07014522883658 -0.68574891104646907 0 -1.1752432601207461 -0.029068968664734907 0.61967999176884081 0
		 15.506497408608048 12.353969641852109 20.539940193621749 1;
	setAttr ".s" -type "double3" 13.150527860826235 13.150527860826235 13.150527860826235 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 0.52049707400191114 -0.10877662282006879 0.95257266465628565 0
		 0.026321297337902075 1.0851059406905397 0.10952865356433956 0 -0.95840191174108436 -0.029274271520020888 0.52033934289564643 0
		 18.026730974369592 2.5530323706568012 24.807870993751909 1;
	setAttr ".s" -type "double3" 17.513157052470049 17.513157052470049 17.513157052470049 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.40701165529334937 0.64642808738520618 0.8078467049969924 0
		 -0.89226879387215796 -0.0024401382911494502 0.45149800133228057 0 0.16686583439003361 -0.51370713690133407 0.32699072841703258 0
		 9.9773063413922802 12.051239113472962 10.710220220564572 1;
	setAttr ".s" -type "double3" 12.62115197776142 12.62115197776142 12.62115197776142 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.5214692446575504 0.56521325924913046 -0.80296192744418737 0
		 0.83860483785872997 0.00017518477597798553 0.54474020893470598 0 0.17493153689457078 -0.54372132973177989 -0.26912494989346153 0
		 11.130783492967538 11.682420145545263 -10.234769900166588 1;
	setAttr ".s" -type "double3" 12.71629293153779 12.71629293153779 12.71629293153779 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 0.58169594487919862 0.7964818308766084 -0.89066915203774955 0
		 -0.4059774458633934 1.0634245639156314 0.68582470639966775 0 1.1237691750348171 -0.028105293832289439 0.70880036067800378 0
		 17.111648400746436 11.343061095170166 -20.346061091179099 1;
	setAttr ".s" -type "double3" 13.081563721474502 13.081563721474502 13.081563721474502 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 0.5702326667903157 -0.01372456850461215 -0.92994117077997684 0
		 0.031846719333533391 1.0904669779873504 0.0034344655909795963 0 0.92949703138846107 -0.028942102645915277 0.57038746699198917 0
		 19.773837131551858 1.5970111699482308 -25.0104212133161 1;
	setAttr ".s" -type "double3" 17.485146559009738 17.485146559009738 17.485146559009738 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 1.0904690024111745 -0.01372565625110847 0.028865209299814659 0
		 0.012950114622589354 1.09046696190423 0.029297417867266667 0 -0.02922137024007445 -0.028942192779812571 1.0901617770613017 0
		 33.742689762874491 1.5970014482411257 0.67514017625131806 1;
	setAttr ".s" -type "double3" 17.485147789528412 17.485147789528412 17.485147789528412 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 1.0621906289353364 0.79648111092134555 0.058428805777261859 0
		 -0.79692962780876941 1.0634251004522974 -0.0086741942394214875 0 -0.05195434264462713 -0.02810539575641818 1.3276128391239823 0
		 28.372148947825835 11.34305508540386 0.70179903888398831 1;
	setAttr ".s" -type "double3" 13.081569298961874 13.081569298961874 13.081569298961874 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.956120215386284 0.56521298646794182 0.050124566205619253 0
		 -0.052456299885060786 0.00017510882436340197 0.99862320518765613 0 0.32053466169441208 -0.54372142119205435 0.016932585452054602 0
		 16.625083455556712 11.682418934347924 0.57786549055197867 1;
	setAttr ".s" -type "double3" 14.212350051325039 14.212350051325039 14.212350051325039 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" -0.43465376539416961 0.56520497153833138 -0.85309055958711077 0
		 0.8910607508234023 0.0001746870155798089 -0.45388402464338906 0 -0.14560171194625646 -0.54372410824316375 -0.28605314410830263 0
		 -0.98038931319723344 11.682383358714493 -10.882884823778149 1;
	setAttr ".s" -type "double3" 13.339259184403211 13.339259184403211 13.339259184403211 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" -0.95612250755041328 0.56520916413658928 -0.050123944489172824 0
		 0.052454991089784513 0.00017420109974275542 -0.99862327409476448 0 -0.32053254201860748 -0.54372270274741219 -0.016931558844022303 0
		 -7.5972529713462178 11.68240196357063 -0.71835762886113308 1;
	setAttr ".s" -type "double3" 14.212384234422926 14.212384234422926 14.212384234422926 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" -0.52147098617859078 0.56520570144708304 0.80296611641168547 0
		 -0.83860548468599871 0.00017462931652280919 -0.5447392133481509 0 -0.17492862641552681 -0.54372386355151103 0.26912172250813293 0
		 -2.1029487384367092 11.682386597895007 10.094277218570952 1;
	setAttr ".s" -type "double3" 12.716357053028227 12.716357053028227 12.716357053028227 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk[0:49]" -type "float2" -0.44224882 -0.40635079 -0.44282222
		 -0.31953716 -0.4774099 -0.31953716 -0.47683674 -0.40635079 -0.47937697 -0.32436937
		 -0.47937697 -0.23189002 -0.51396471 -0.23189002 -0.51396471 -0.32436937 -0.47796816
		 -0.10533106 -0.47796816 0.0091033261 -0.5125559 0.0091032926 -0.5125559 -0.10533106
		 -0.47796816 -0.23104864 -0.5125559 -0.23104864 -0.024436444 -0.31931072 0.011609852
		 -0.2324971 -0.32249892 -0.22710091 -0.34366292 -0.2439152 0.26475745 -0.23104858
		 -0.28498596 -0.16516745 0.011609852 -0.10533108 -0.24747294 -0.10323407 -0.072979599
		 0.0091033261 -0.17995851 0.0082317153 -0.43908358 -0.2433002 -0.4395473 -0.22648591
		 -0.47403526 -0.22622931 -0.47357154 -0.2430436 -0.43999064 -0.16455251 -0.4744786
		 -0.16429591 -0.47527897 -0.31869572 -0.44069123 -0.31869572 -0.44043398 -0.10261916
		 -0.47492182 -0.10236253 -0.44123161 0.0088466629 -0.47571957 0.0091033578 0.50141567
		 -0.24365854 0.49368405 -0.22684431 0.37168327 -0.23249716 0.3848516 -0.31931078 0.47997993
		 -0.16491085 0.27920386 -0.23104864 0.46627581 -0.1029775 0.37168327 -0.10533106 0.44161153
		 0.0084883468 0.4025853 0.0091033261 -0.40569425 -0.35923338 -0.40468025 -0.32020718
		 -0.43916821 -0.3201521 -0.44028187 -0.35923338;
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk[0:49]" -type "float2" -0.44224882 -0.40635091 -0.4428221
		 -0.31953716 -0.4774099 -0.31953716 -0.47683662 -0.40635091 -0.47937697 -0.32436937
		 -0.47937697 -0.23189002 -0.51396459 -0.23189002 -0.51396459 -0.32436937 -0.47796804
		 -0.10533106 -0.47796804 0.009103315 -0.51255578 0.0091033038 -0.51255578 -0.10533106
		 -0.47796804 -0.23104864 -0.51255578 -0.23104864 -0.024436444 -0.31931072 0.011609852
		 -0.23249704 -0.3224988 -0.22710085 -0.3436628 -0.2439152 0.26475757 -0.23104858 -0.28498572
		 -0.16516751 0.011609852 -0.10533108 -0.24747282 -0.10323404 -0.072979599 0.0091033103
		 -0.17995827 0.0082317488 -0.43908358 -0.2433002 -0.4395473 -0.22648591 -0.47403526
		 -0.22622931 -0.47357142 -0.24304354 -0.43999064 -0.16455251 -0.47447848 -0.16429591
		 -0.47527885 -0.31869578 -0.44069123 -0.31869578 -0.44043398 -0.10261905 -0.47492182
		 -0.1023625 -0.44123161 0.0088466974 -0.47571957 0.0091033503 0.50141567 -0.24365854
		 0.49368411 -0.22684431 0.37168327 -0.2324971 0.3848516 -0.31931072 0.47997999 -0.16491085
		 0.27920392 -0.23104864 0.46627581 -0.1029775 0.37168327 -0.10533106 0.44161153 0.0084883617
		 0.4025853 0.0091033103 -0.40569413 -0.35923332 -0.40468013 -0.32020712 -0.4391681
		 -0.32015204 -0.44028175 -0.35923332;
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk[0:49]" -type "float2" -0.44224894 -0.40635091 -0.44282222
		 -0.31953722 -0.47741002 -0.31953722 -0.47683674 -0.40635091 -0.47937697 -0.32436943
		 -0.47937697 -0.23189008 -0.51396471 -0.23189008 -0.51396471 -0.32436943 -0.47796816
		 -0.10533106 -0.47796816 0.0091033261 -0.5125559 0.0091032535 -0.5125559 -0.10533106
		 -0.47796816 -0.23104864 -0.5125559 -0.23104864 -0.024436444 -0.31931072 0.011609852
		 -0.23249704 -0.32249892 -0.22710091 -0.34366292 -0.2439152 0.26475745 -0.23104858
		 -0.28498596 -0.16516745 0.011609852 -0.105331 -0.24747306 -0.10323407 -0.072979718
		 0.0091033252 -0.17995851 0.0082317432 -0.43908358 -0.24330026 -0.43954742 -0.22648597
		 -0.47403526 -0.22622937 -0.47357154 -0.24304354 -0.43999064 -0.16455251 -0.47447872
		 -0.16429591 -0.47527897 -0.31869578 -0.44069123 -0.31869578 -0.44043398 -0.10261911
		 -0.47492194 -0.1023625 -0.44123173 0.0088466685 -0.47571957 0.0091033587 0.50141567
		 -0.2436586 0.49368411 -0.22684431 0.37168321 -0.23249716 0.3848516 -0.31931078 0.47997993
		 -0.16491091 0.27920389 -0.23104864 0.46627578 -0.1029775 0.37168321 -0.10533106 0.44161144
		 0.0084883608 0.4025853 0.0091033261 -0.40569413 -0.35923338 -0.40468025 -0.32020718
		 -0.43916821 -0.32015216 -0.44028187 -0.35923338;
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk[0:49]" -type "float2" -0.44224894 -0.40635097 -0.44282222
		 -0.31953728 -0.47741002 -0.31953728 -0.47683674 -0.40635097 -0.47937697 -0.32436943
		 -0.47937697 -0.23189008 -0.51396471 -0.23189008 -0.51396471 -0.32436943 -0.47796816
		 -0.10533106 -0.47796816 0.0091033215 -0.5125559 0.0091032255 -0.5125559 -0.10533106
		 -0.47796816 -0.23104864 -0.5125559 -0.23104864 -0.024436444 -0.31931072 0.011609733
		 -0.2324971 -0.3224991 -0.22710091 -0.34366292 -0.2439152 0.26475742 -0.23104858 -0.28498608
		 -0.16516751 0.011609733 -0.105331 -0.24747306 -0.10323404 -0.072979838 0.0091033289
		 -0.17995863 0.0082317591 -0.4390837 -0.24330026 -0.43954742 -0.22648603 -0.47403538
		 -0.22622937 -0.47357166 -0.2430436 -0.43999076 -0.16455257 -0.47447872 -0.16429597
		 -0.47527909 -0.31869584 -0.44069135 -0.31869584 -0.4404341 -0.10261913 -0.47492206
		 -0.1023625 -0.44123173 0.008846635 -0.47571969 0.0091033606 0.50141567 -0.2436586
		 0.49368405 -0.22684431 0.37168321 -0.23249716 0.38485155 -0.31931078 0.47997996 -0.16491091
		 0.27920383 -0.23104864 0.46627581 -0.10297753 0.37168321 -0.10533106 0.44161147 0.0084883589
		 0.4025853 0.0091033299 -0.40569425 -0.35923338 -0.40468025 -0.32020724 -0.43916821
		 -0.3201521 -0.44028199 -0.35923338;
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk[0:49]" -type "float2" -0.44224894 -0.40635085 -0.44282222
		 -0.31953722 -0.4774099 -0.31953716 -0.47683674 -0.40635085 -0.47937697 -0.32436937
		 -0.47937697 -0.23189002 -0.51396471 -0.23189002 -0.51396471 -0.32436937 -0.47796816
		 -0.10533105 -0.47796816 0.0091033466 -0.51255578 0.0091032358 -0.51255578 -0.10533105
		 -0.47796816 -0.23104864 -0.51255578 -0.23104864 -0.024436325 -0.31931072 0.011609852
		 -0.23249704 -0.3224988 -0.22710085 -0.3436628 -0.24391514 0.26475757 -0.23104858
		 -0.28498584 -0.16516745 0.011609852 -0.105331 -0.24747294 -0.10323405 -0.072979599
		 0.0091033466 -0.17995839 0.00823176 -0.43908358 -0.24330026 -0.43954742 -0.22648597
		 -0.47403538 -0.22622931 -0.47357154 -0.2430436 -0.43999064 -0.16455257 -0.47447872
		 -0.16429597 -0.47527897 -0.31869584 -0.44069123 -0.31869584 -0.44043398 -0.10261911
		 -0.47492194 -0.10236251 -0.44123173 0.0088466592 -0.47571969 0.0091033112 0.50141567
		 -0.24365854 0.49368411 -0.22684431 0.37168327 -0.23249716 0.38485146 -0.31931078
		 0.47997996 -0.16491091 0.27920383 -0.23104864 0.46627578 -0.1029775 0.37168327 -0.10533108
		 0.4416115 0.0084883608 0.4025853 0.0091033466 -0.40569413 -0.35923338 -0.40468025
		 -0.32020718 -0.43916821 -0.3201521 -0.44028187 -0.35923338;
createNode polyTweakUV -n "polyTweakUV6";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk[0:49]" -type "float2" -0.44224894 -0.40635091 -0.44282222
		 -0.31953722 -0.4774099 -0.31953722 -0.47683674 -0.40635091 -0.47937697 -0.32436943
		 -0.47937697 -0.23189002 -0.51396471 -0.23189002 -0.51396471 -0.32436943 -0.47796816
		 -0.10533106 -0.47796816 0.0091033317 -0.5125559 0.0091032367 -0.5125559 -0.10533106
		 -0.47796816 -0.23104864 -0.5125559 -0.23104864 -0.024436444 -0.31931078 0.011609852
		 -0.23249704 -0.32249898 -0.22710085 -0.34366292 -0.2439152 0.26475748 -0.23104858
		 -0.28498608 -0.16516745 0.011609852 -0.10533106 -0.24747306 -0.10323404 -0.072979718
		 0.0091033317 -0.17995851 0.0082317395 -0.43908358 -0.24330026 -0.4395473 -0.22648597
		 -0.47403526 -0.22622931 -0.47357154 -0.2430436 -0.43999064 -0.16455251 -0.4744786
		 -0.16429591 -0.47527897 -0.31869578 -0.44069123 -0.31869578 -0.44043398 -0.10261917
		 -0.47492194 -0.10236253 -0.44123161 0.0088466685 -0.47571957 0.0091033634 0.50141567
		 -0.2436586 0.49368411 -0.22684431 0.37168327 -0.23249716 0.3848516 -0.31931078 0.47997999
		 -0.16491091 0.27920389 -0.23104864 0.46627581 -0.1029775 0.37168327 -0.10533111 0.4416115
		 0.0084883682 0.4025853 0.0091033317 -0.40569425 -0.35923338 -0.40468025 -0.32020724
		 -0.43916821 -0.32015216 -0.44028187 -0.35923338;
createNode polyAutoProj -n "polyAutoProj16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 0.58169594487919862 0.7964818308766084 -0.89066915203774955 0
		 -0.4059774458633934 1.0634245639156314 0.68582470639966775 0 1.1237691750348171 -0.028105293832289439 0.70880036067800378 0
		 17.111648400746436 11.343061095170166 -20.346061091179099 1;
	setAttr ".s" -type "double3" 13.081563721474502 13.081563721474502 13.081563721474502 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 1.0621906289353364 0.79648111092134555 0.058428805777261859 0
		 -0.79692962780876941 1.0634251004522974 -0.0086741942394214875 0 -0.05195434264462713 -0.02810539575641818 1.3276128391239823 0
		 28.372148947825835 11.34305508540386 0.70179903888398831 1;
	setAttr ".s" -type "double3" 13.081569298961874 13.081569298961874 13.081569298961874 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" -1.0621902100497449 0.79648170081086322 -0.058428379619978904 0
		 0.79693028512441022 1.0634246236526019 0.0086722579501919122 0 0.051952824014766898 -0.028106719478830724 -1.3276128705289545 0
		 -19.344339592728375 11.343009028061299 -0.84227679203724626 1;
	setAttr ".s" -type "double3" 13.081567999045076 13.081567999045076 13.081567999045076 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" -0.4804945333206504 0.796481576853732 -0.94909805540769387 0
		 0.39095399738026099 1.0634247303391009 0.69449825948861277 0 1.1757231787195774 -0.028106195632082873 -0.6188134342317767 0
		 -6.7466210187125437 11.342955016316836 -21.11813900131639 1;
	setAttr ".s" -type "double3" 13.081567701316056 13.081567701316056 13.081567701316056 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" -0.52023702166417829 -0.013717245690006818 -0.95880629828330444 0
		 0.018901868424238969 1.0904670489213766 -0.025856793185665698 0 0.95871810237792277 -0.02894290162463874 -0.51977509346397932 0
		 -9.4550036867221898 1.5969062843829516 -25.755860347867245 1;
	setAttr ".s" -type "double3" 28.7468371758915 28.7468371758915 28.7468371758915 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" -1.0904690920273776 -0.013720934035102106 -0.028864068827149432 0
		 -0.012945396732592318 1.0904669918998939 -0.029298386428289729 0 0.029220116418142948 -0.028943301696074387 -1.0901617812281379 0
		 -24.714902034638616 1.5969599061203563 -0.81560270690286596 1;
	setAttr ".s" -type "double3" 28.7468371758915 28.7468371758915 28.7468371758915 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV7";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[0:27]" -type "float2" 0.6023767 0.022919435 0.59934568
		 0.023288859 0.60214949 -0.52372348 0.64092255 -0.5284487 -0.070935845 0.30942237
		 -0.1131776 0.30927992 -0.11375553 0.15332921 -0.071513832 0.15347143 0.68418586 0.023288868
		 0.6454128 0.018563814 0.64311397 -0.52850199 0.64614511 -0.52813256 -0.11541872 0.28675869
		 -0.1184498 0.28676894 -0.11842453 0.27993289 -0.11539333 0.27992263 0.52855372 0.023286076
		 0.52171755 0.023288859 0.45363188 -0.52807939 0.59677649 -0.52813554 0.38361871 0.023288859
		 0.37678277 0.023286128 0.3764596 -0.16653395 0.38032717 -0.1665324 0.30843961 -0.52377963
		 0.33779365 -0.47604299 0.45158416 -0.52372348 0.41877925 -0.47601116;
createNode polyTweakUV -n "polyTweakUV8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[0:3]" -type "float2" -0.035300046 0.30990511 -0.18583062
		 0.30990511 -0.18583062 0.15937459 -0.035300046 0.15937459;
createNode polyTweakUV -n "polyTweakUV9";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[0:27]" -type "float2" 0.6023767 0.022919539 0.5993458
		 0.02328887 0.60214961 -0.52372336 0.64092255 -0.52844858 -0.070935726 0.30942237
		 -0.1131776 0.30928004 -0.11375547 0.15332921 -0.071513534 0.15347154 0.68418586 0.023288835
		 0.64541292 0.018563509 0.64311409 -0.52850199 0.64614499 -0.52813268 -0.11541867
		 0.28675881 -0.11844968 0.28676897 -0.11842435 0.27993289 -0.11539321 0.27992266 0.52855372
		 0.023286121 0.52171767 0.02328887 0.45363212 -0.52807927 0.59677637 -0.5281353 0.38361889
		 0.02328887 0.37678283 0.023286186 0.37645966 -0.16653383 0.38032728 -0.1665324 0.30843997
		 -0.52377951 0.33779377 -0.47604287 0.45158422 -0.52372336 0.41877943 -0.47601104;
createNode polyTweakUV -n "polyTweakUV10";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[0:27]" -type "float2" 0.6023767 0.022919539 0.5993458
		 0.02328887 0.60214961 -0.52372336 0.64092255 -0.52844858 -0.070935726 0.30942237
		 -0.1131776 0.30928004 -0.11375547 0.15332921 -0.071513534 0.15347154 0.68418586 0.023288835
		 0.64541292 0.018563509 0.64311409 -0.52850199 0.64614499 -0.52813268 -0.11541867
		 0.28675881 -0.11844968 0.28676897 -0.11842435 0.27993289 -0.11539321 0.27992266 0.52855372
		 0.023286121 0.52171767 0.02328887 0.45363212 -0.52807927 0.59677637 -0.5281353 0.38361889
		 0.02328887 0.37678283 0.023286186 0.37645966 -0.16653383 0.38032728 -0.1665324 0.30843997
		 -0.52377951 0.33779377 -0.47604287 0.45158422 -0.52372336 0.41877943 -0.47601104;
createNode polyTweakUV -n "polyTweakUV11";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[0:27]" -type "float2" 0.60237682 0.022919508 0.59934568
		 0.023288857 0.60214961 -0.52372336 0.64092255 -0.52844858 -0.070935726 0.30942237
		 -0.11317749 0.30928001 -0.11375547 0.15332933 -0.071513534 0.15347154 0.68418586
		 0.023288857 0.6454128 0.018563617 0.64311397 -0.52850211 0.64614511 -0.52813256 -0.11541867
		 0.28675872 -0.11844962 0.28676897 -0.11842435 0.27993289 -0.11539321 0.27992263 0.52855372
		 0.0232861 0.52171767 0.023288857 0.45363194 -0.52807927 0.59677637 -0.52813542 0.38361913
		 0.023288857 0.37678301 0.023286106 0.37645966 -0.16653389 0.3803274 -0.1665324 0.30844003
		 -0.52377939 0.33779389 -0.47604287 0.45158428 -0.52372336 0.41877943 -0.47601104;
createNode polyTweakUV -n "polyTweakUV12";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[0:27]" -type "float2" 0.6023767 0.022919433 0.59934568
		 0.023288859 0.60214961 -0.5237236 0.64092243 -0.5284487 -0.070935845 0.30942225 -0.11317766
		 0.30927992 -0.11375559 0.15332921 -0.071513712 0.15347143 0.68418586 0.023288865
		 0.6454128 0.018563651 0.64311397 -0.52850199 0.64614499 -0.52813268 -0.11541872 0.28675863
		 -0.1184498 0.28676894 -0.11842453 0.2799328 -0.11539333 0.27992257 0.52855372 0.023286084
		 0.52171755 0.023288859 0.45363194 -0.52807939 0.59677637 -0.52813542 0.38361889 0.023288859
		 0.37678283 0.023286132 0.37645954 -0.16653395 0.38032722 -0.1665324 0.30843997 -0.52377963
		 0.33779365 -0.47604299 0.45158422 -0.5237236 0.41877937 -0.47601116;
createNode polyTweakUV -n "polyTweakUV13";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[0:27]" -type "float2" 0.6023767 0.022919435 0.59934568
		 0.023288859 0.60214949 -0.52372348 0.64092255 -0.5284487 -0.070935845 0.30942237
		 -0.1131776 0.30927992 -0.11375553 0.15332921 -0.071513832 0.15347143 0.68418586 0.023288868
		 0.6454128 0.018563814 0.64311397 -0.52850199 0.64614511 -0.52813256 -0.11541872 0.28675869
		 -0.1184498 0.28676894 -0.11842453 0.27993289 -0.11539333 0.27992263 0.52855372 0.023286076
		 0.52171755 0.023288859 0.45363188 -0.52807939 0.59677649 -0.52813554 0.38361871 0.023288859
		 0.37678277 0.023286128 0.3764596 -0.16653395 0.38032717 -0.1665324 0.30843961 -0.52377963
		 0.33779365 -0.47604299 0.45158416 -0.52372348 0.41877925 -0.47601116;
createNode polyTweakUV -n "polyTweakUV14";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[0:27]" -type "float2" -0.022860356 0.41955453 -0.038563743
		 0.41955453 -0.058745861 0.048298664 -0.022675969 0.048298664 -0.33426332 0.41955453
		 -0.37033331 0.41943067 -0.3708359 0.28452614 -0.33476591 0.28464991 0.015482789 0.41955453
		 -0.020587154 0.41955453 -3.6153942e-005 0.048298605 0.015667276 0.048298605 -0.36867774
		 0.28383011 -0.38438118 0.28388405 -0.38424742 0.24800426 -0.3685441 0.24795038 -0.11045352
		 0.41955453 -0.14633319 0.41955453 -0.1958456 0.048298664 -0.060941041 0.048298664
		 -0.24704468 0.41955453 -0.28292453 0.41955453 -0.26502943 0.3146708 -0.26497769 0.31454411
		 -0.33250678 0.048298664 -0.30759835 0.07950563 -0.19760227 0.048298664 -0.22249556
		 0.07950563;
createNode polyTweakUV -n "polyTweakUV15";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[0:3]" -type "float2" -0.34228218 0.26052082 -0.5219022
		 0.26052082 -0.5219022 0.080900788 -0.34228218 0.080900788;
createNode polyTweakUV -n "polyTweakUV16";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[0:27]" -type "float2" -0.022860356 0.41955453 -0.038563743
		 0.41955453 -0.058745861 0.048298664 -0.022675969 0.048298664 -0.33426332 0.41955453
		 -0.37033331 0.41943067 -0.3708359 0.28452614 -0.33476591 0.28464991 0.015482789 0.41955453
		 -0.020587154 0.41955453 -3.6153942e-005 0.048298605 0.015667276 0.048298605 -0.36867774
		 0.28383011 -0.38438118 0.28388405 -0.38424742 0.24800426 -0.3685441 0.24795038 -0.11045352
		 0.41955453 -0.14633319 0.41955453 -0.1958456 0.048298664 -0.060941041 0.048298664
		 -0.24704468 0.41955453 -0.28292453 0.41955453 -0.26502943 0.3146708 -0.26497769 0.31454411
		 -0.33250678 0.048298664 -0.30759835 0.07950563 -0.19760227 0.048298664 -0.22249556
		 0.07950563;
createNode polyTweakUV -n "polyTweakUV17";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[0:27]" -type "float2" -0.022860378 0.41955447 -0.038563773
		 0.41955447 -0.058745816 0.048298664 -0.022675984 0.048298664 -0.33426332 0.41955447
		 -0.37033319 0.41943058 -0.3708359 0.28452605 -0.33476591 0.28464982 0.015482759 0.41955447
		 -0.020587191 0.41955447 -3.6120415e-005 0.048298664 0.015667282 0.048298664 -0.36867762
		 0.28382999 -0.38438106 0.28388387 -0.38424742 0.24800414 -0.3685441 0.2479502 -0.11045346
		 0.41955447 -0.14633322 0.41955447 -0.1958456 0.048298664 -0.060941055 0.048298664
		 -0.2470448 0.41955447 -0.28292441 0.41955447 -0.26502943 0.31467077 -0.26497769 0.31454411
		 -0.33250678 0.048298664 -0.30759835 0.079505689 -0.19760227 0.048298664 -0.22249556
		 0.079505689;
createNode polyTweakUV -n "polyTweakUV18";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[0:27]" -type "float2" -0.0228604 0.41955453 -0.038563773
		 0.41955453 -0.058745846 0.048298664 -0.022675984 0.048298664 -0.33426332 0.41955456
		 -0.37033331 0.4194307 -0.3708359 0.2845262 -0.33476591 0.28464997 0.015482828 0.4195545
		 -0.020587124 0.4195545 -3.6157668e-005 0.048298605 0.015667288 0.048298605 -0.36867762
		 0.28383014 -0.38438106 0.28388408 -0.38424742 0.24800432 -0.3685441 0.24795038 -0.11045358
		 0.41955453 -0.14633325 0.41955453 -0.1958456 0.048298664 -0.0609411 0.048298664 -0.24704468
		 0.41955453 -0.28292441 0.41955453 -0.26502943 0.3146708 -0.26497769 0.31454414 -0.33250666
		 0.048298664 -0.30759835 0.07950563 -0.19760227 0.048298664 -0.22249556 0.07950563;
createNode polyTweakUV -n "polyTweakUV19";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[0:27]" -type "float2" -0.022860289 0.41955453 -0.038563773
		 0.41955453 -0.058745831 0.048298605 -0.022676051 0.048298605 -0.33426332 0.41955453
		 -0.37033331 0.41943067 -0.3708359 0.28452617 -0.33476591 0.28465 0.015482789 0.41955453
		 -0.020587146 0.41955453 -3.6194921e-005 0.048298605 0.015667276 0.048298605 -0.36867762
		 0.28383014 -0.38438118 0.28388405 -0.38424742 0.24800429 -0.3685441 0.2479504 -0.11045352
		 0.41955453 -0.14633322 0.41955453 -0.1958456 0.048298605 -0.060941085 0.048298605
		 -0.24704468 0.41955453 -0.28292441 0.41955453 -0.26502931 0.3146708 -0.26497757 0.31454411
		 -0.33250666 0.048298605 -0.30759823 0.07950563 -0.19760227 0.048298605 -0.22249556
		 0.07950563;
createNode polyTweakUV -n "polyTweakUV20";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk[0:27]" -type "float2" 0.015491709 0.97411382 -0.0011040792
		 0.9741137 -0.022433206 -0.50770944 0.015686588 -0.50770944 -0.33421099 0.41955453
		 -0.37028086 0.41943067 -0.37078345 0.28452617 -0.33471346 0.28464994 -0.75737286
		 0.41955453 -0.79344273 0.41955453 -0.77289176 0.048298664 -0.75718832 0.048298664
		 -0.36862528 0.28383014 -0.38432872 0.28388405 -0.38419497 0.24800429 -0.36849165
		 0.24795038 -0.013619557 0.41955453 -0.049499273 0.41955453 -0.099011689 0.048298605
		 0.035892904 0.048298605 -0.15283763 0.41955453 -0.18871737 0.41955453 -0.17082226
		 0.3146708 -0.17077053 0.31454414 -0.23829961 0.048298605 -0.2133913 0.07950563 -0.1033951
		 0.048298605 -0.12828839 0.07950563;
createNode polyAutoProj -n "polyAutoProj22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 20.333324432373047 20.333324432373047 20.333324432373047 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV21";
	setAttr ".uopa" yes;
	setAttr -s 36 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.54552531 0.17043851 ;
	setAttr ".uvtk[1]" -type "float2" -0.72455233 0.25428265 ;
	setAttr ".uvtk[2]" -type "float2" -0.72455233 -0.24730189 ;
	setAttr ".uvtk[3]" -type "float2" -0.54552531 -0.16345787 ;
	setAttr ".uvtk[4]" -type "float2" -0.35156012 0.28652847 ;
	setAttr ".uvtk[5]" -type "float2" -0.72455239 0.47686404 ;
	setAttr ".uvtk[6]" -type "float2" -0.72455233 -0.47311264 ;
	setAttr ".uvtk[7]" -type "float2" -0.34914792 -0.28358859 ;
	setAttr ".uvtk[12]" -type "float2" -0.81522727 -0.30852818 ;
	setAttr ".uvtk[13]" -type "float2" -0.99425429 -0.22468406 ;
	setAttr ".uvtk[14]" -type "float2" -0.99425435 -0.29154766 ;
	setAttr ".uvtk[15]" -type "float2" -0.87413013 -0.34369352 ;
	setAttr ".uvtk[16]" -type "float2" -0.61884987 -0.1883975 ;
	setAttr ".uvtk[17]" -type "float2" -0.99425435 0.0011265352 ;
	setAttr ".uvtk[18]" -type "float2" -0.81522727 -0.64242476 ;
	setAttr ".uvtk[19]" -type "float2" -0.87413013 -0.60725939 ;
	setAttr ".uvtk[20]" -type "float2" -0.62126207 -0.75851458 ;
	setAttr ".uvtk[21]" -type "float2" -0.99425435 -0.65940505 ;
	setAttr ".uvtk[22]" -type "float2" -0.99425435 -0.72626877 ;
	setAttr ".uvtk[23]" -type "float2" -0.99422443 -0.94885004 ;
	setAttr ".uvtk[36]" -type "float2" -0.07630565 0.045597296 ;
	setAttr ".uvtk[37]" -type "float2" -0.07630565 0.045597296 ;
	setAttr ".uvtk[38]" -type "float2" -0.07630565 0.045597296 ;
	setAttr ".uvtk[39]" -type "float2" -0.07630565 0.045597296 ;
	setAttr ".uvtk[48]" -type "float2" -0.051180627 -2.5727786e-008 ;
	setAttr ".uvtk[49]" -type "float2" -0.051180627 -2.5727786e-008 ;
	setAttr ".uvtk[50]" -type "float2" -0.051180627 -2.5727786e-008 ;
	setAttr ".uvtk[51]" -type "float2" -0.051180627 -2.5727786e-008 ;
	setAttr ".uvtk[64]" -type "float2" -0.074444532 0.040944524 ;
	setAttr ".uvtk[65]" -type "float2" -0.074444532 0.040944524 ;
	setAttr ".uvtk[66]" -type "float2" -0.074444532 0.040944524 ;
	setAttr ".uvtk[67]" -type "float2" -0.074444532 0.040944524 ;
	setAttr ".uvtk[68]" -type "float2" -0.10143068 -0.027916677 ;
	setAttr ".uvtk[69]" -type "float2" -0.10143068 -0.027916677 ;
	setAttr ".uvtk[70]" -type "float2" -0.10143068 -0.027916677 ;
	setAttr ".uvtk[71]" -type "float2" -0.10143068 -0.027916677 ;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[36]";
	setAttr ".unm" no;
createNode lambert -n "lambert3";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
createNode groupId -n "groupId66";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:28]" "f[30:36]";
	setAttr ".irc" -type "componentList" 1 "f[29]";
createNode groupId -n "groupId67";
	setAttr ".ihi" 0;
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[29]";
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[28]" "f[30:36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 4.4115862846374512 7.2380475997924796 -0.076827049255371094 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 20.333324432373047 15.10319709777832 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV22";
	setAttr ".uopa" yes;
	setAttr -s 61 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" -0.069630809 -0.06695269 ;
	setAttr ".uvtk[9]" -type "float2" -0.069630809 -0.06695269 ;
	setAttr ".uvtk[10]" -type "float2" -0.069630809 -0.06695269 ;
	setAttr ".uvtk[11]" -type "float2" -0.069630809 -0.06695269 ;
	setAttr ".uvtk[36]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[37]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[38]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[39]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[40]" -type "float2" -0.064274602 -0.16604272 ;
	setAttr ".uvtk[41]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[42]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[43]" -type "float2" -0.064274602 -0.16604272 ;
	setAttr ".uvtk[44]" -type "float2" -0.064274602 -0.16604272 ;
	setAttr ".uvtk[45]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[46]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[47]" -type "float2" -0.064274602 -0.16604272 ;
	setAttr ".uvtk[48]" -type "float2" -0.064274602 -0.16604272 ;
	setAttr ".uvtk[49]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[50]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[51]" -type "float2" -0.064274602 -0.16604272 ;
	setAttr ".uvtk[60]" -type "float2" -0.069630809 -0.06695269 ;
	setAttr ".uvtk[61]" -type "float2" -0.069630809 -0.06695269 ;
	setAttr ".uvtk[62]" -type "float2" -0.069630809 -0.06695269 ;
	setAttr ".uvtk[63]" -type "float2" -0.069630809 -0.06695269 ;
	setAttr ".uvtk[64]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[65]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[66]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[67]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[68]" -type "float2" -0.064274602 -0.16604272 ;
	setAttr ".uvtk[69]" -type "float2" -0.064274602 -0.16604272 ;
	setAttr ".uvtk[70]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[71]" -type "float2" -0.064274602 -0.16604269 ;
	setAttr ".uvtk[72]" -type "float2" -0.17849123 0.48483354 ;
	setAttr ".uvtk[75]" -type "float2" 0.003005445 0.13708882 ;
	setAttr ".uvtk[78]" -type "float2" -0.78089648 0.13708888 ;
	setAttr ".uvtk[79]" -type "float2" -0.59682065 0.48483354 ;
	setAttr ".uvtk[80]" -type "float2" -0.59682065 -0.29906845 ;
	setAttr ".uvtk[81]" -type "float2" -0.78089648 0.048676096 ;
	setAttr ".uvtk[82]" -type "float2" -0.54231483 -0.25234553 ;
	setAttr ".uvtk[83]" -type "float2" -0.54231483 -0.29906845 ;
	setAttr ".uvtk[84]" -type "float2" -0.232997 -0.25234553 ;
	setAttr ".uvtk[85]" -type "float2" -0.78089648 0.048676096 ;
	setAttr ".uvtk[86]" -type "float2" 0.003005445 0.048676096 ;
	setAttr ".uvtk[87]" -type "float2" 0.003005445 0.048676096 ;
	setAttr ".uvtk[88]" -type "float2" -0.17849123 -0.29906845 ;
	setAttr ".uvtk[89]" -type "float2" -0.232997 -0.29906845 ;
	setAttr ".uvtk[90]" -type "float2" -0.18321532 -0.29906845 ;
	setAttr ".uvtk[91]" -type "float2" 0.00086075068 0.048676096 ;
	setAttr ".uvtk[92]" -type "float2" -0.23772109 -0.25234553 ;
	setAttr ".uvtk[93]" -type "float2" -0.23772109 -0.29906845 ;
	setAttr ".uvtk[94]" -type "float2" 0.00086075068 0.13708888 ;
	setAttr ".uvtk[95]" -type "float2" -0.18321532 0.48483354 ;
	setAttr ".uvtk[96]" -type "float2" -0.59209651 0.48483354 ;
	setAttr ".uvtk[97]" -type "float2" -0.77353996 0.13708888 ;
	setAttr ".uvtk[98]" -type "float2" -0.77353996 0.048676096 ;
	setAttr ".uvtk[99]" -type "float2" -0.59209651 -0.29906845 ;
	setAttr ".uvtk[100]" -type "float2" -0.53759068 -0.29906845 ;
	setAttr ".uvtk[101]" -type "float2" -0.53759068 -0.25234553 ;
	setAttr ".uvtk[102]" -type "float2" -0.77353996 0.048676096 ;
	setAttr ".uvtk[103]" -type "float2" 0.00086075068 0.048676096 ;
createNode polyChipOff -n "polyChipOff7";
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 1710686820;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate7";
	setAttr ".ic" 5;
	setAttr ".rs" -type "Int32Array" 1 4 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode polyAutoProj -n "polyAutoProj23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:20]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.4039856847643546e-014 -2.8618877199575653e-015 0 -2.4230649362307385e-014 -1.7014357375838711 -0.24161948635345035 0
		 4.5704837874036537 7.0625298117892177 0.4449354634120582 1;
	setAttr ".s" -type "double3" 14.527562505956096 14.527562505956096 14.527562505956096 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:20]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.4039856847643546e-014 -2.8618877199575653e-015 0 -2.4230649362307385e-014 -1.7014357375838711 -0.24161948635345035 0
		 4.5704837874036537 7.0625298117892177 0.4449354634120582 1;
	setAttr ".s" -type "double3" 7.567383974167023 7.567383974167023 7.567383974167023 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode groupParts -n "groupParts45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
	setAttr ".gi" 92;
createNode polyAutoProj -n "polyAutoProj25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:20]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.4039856847643546e-014 -2.8618877199575653e-015 0 -2.4230649362307385e-014 -1.7014357375838711 -0.24161948635345035 0
		 4.5704837874036537 7.0625298117892177 0.4449354634120582 1;
	setAttr ".s" -type "double3" 14.527562505956096 14.527562505956096 14.527562505956096 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 1 "f[5:14]";
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 1 "f[14:20]";
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[3:4]" "e[10:11]" "e[18]" "e[25]";
createNode deleteComponent -n "deleteComponent13";
	setAttr ".dc" -type "componentList" 1 "f[3:4]";
createNode polyBridgeEdge -n "polyBridgeEdge12";
	setAttr ".ics" -type "componentList" 1 "e[15:16]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.3276686788988199e-014 -2.8618877199575653e-015 0 -2.3467479303652031e-014 -1.7014357375838711 -0.24161948635345035 0
		 4.5704837874035693 0.92702540979308956 -0.42636245832714648 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 9;
	setAttr ".sv2" 4;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
	setAttr ".gi" 94;
createNode polyBridgeEdge -n "polyBridgeEdge13";
	setAttr ".ics" -type "componentList" 1 "e[2:3]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.3276686788988199e-014 -2.8618877199575653e-015 0 -2.3467479303652031e-014 -1.7014357375838711 -0.24161948635345035 0
		 4.5704837874035693 0.92702540979308956 -0.42636245832714648 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 3;
	setAttr ".sv2" 5;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
	setAttr ".gi" 95;
createNode polyBridgeEdge -n "polyBridgeEdge14";
	setAttr ".ics" -type "componentList" 2 "e[1]" "e[4]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.3276686788988199e-014 -2.8618877199575653e-015 0 -2.3467479303652031e-014 -1.7014357375838711 -0.24161948635345035 0
		 4.5704837874035693 0.92702540979308956 -0.42636245832714648 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 2;
	setAttr ".sv2" 0;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
	setAttr ".gi" 96;
createNode deleteComponent -n "deleteComponent14";
	setAttr ".dc" -type "componentList" 1 "f[5:11]";
createNode polyBridgeEdge -n "polyBridgeEdge15";
	setAttr ".ics" -type "componentList" 1 "e[7:8]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.3276686788988199e-014 -2.8618877199575653e-015 0 -2.3467479303652031e-014 -1.7014357375838711 -0.24161948635345035 0
		 4.5704837874035693 0.92702540979308956 -0.42636245832714648 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 8;
	setAttr ".sv2" 10;
	setAttr ".sma" 99.3103;
createNode groupParts -n "groupParts49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
	setAttr ".gi" 97;
createNode polyBridgeEdge -n "polyBridgeEdge16";
	setAttr ".ics" -type "componentList" 2 "e[6]" "e[9]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.3276686788988199e-014 -2.8618877199575653e-015 0 -2.3467479303652031e-014 -1.7014357375838711 -0.24161948635345035 0
		 4.5704837874035693 0.92702540979308956 -0.42636245832714648 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 7;
	setAttr ".sv2" 11;
	setAttr ".sma" 99.3103;
createNode polyAutoProj -n "polyAutoProj26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:9]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.4039856847643546e-014 -2.8618877199575653e-015 0 -2.4230649362307394e-014 -1.7014357375838718 -0.24161948635345043 0
		 4.5704837874036537 6.9231144317428557 0.42513720023204049 1;
	setAttr ".s" -type "double3" 7.5546103630080736 7.5546103630080736 7.5546103630080736 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:9]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.4039856847643546e-014 -2.8618877199575653e-015 0 -2.4230649362307394e-014 -1.7014357375838718 -0.24161948635345043 0
		 4.5704837874036537 6.9231144317428557 0.42513720023204049 1;
	setAttr ".s" -type "double3" 7.5546103630080736 7.5546103630080736 7.5546103630080736 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV23";
	setAttr ".uopa" yes;
	setAttr -s 32 ".uvtk[0:31]" -type "float2" -0.40053257 -0.0027930373
		 -0.4664003 -0.0036621839 -0.45744589 -0.64733756 -0.39157817 -0.64646959 -0.50743937
		 0.0066716466 -0.49848506 -0.63700402 -0.35943624 0.0086245416 -0.35048196 -0.63505089
		 0.0063204849 -0.0056966692 -0.066632621 0.0086244997 -0.16814816 -0.63589835 -0.10151997
		 -0.64937234 -0.27366844 0.0086245537 -0.34704623 -0.005352838 -0.23920581 -0.64902818
		 -0.17215264 -0.63589823 -0.52051401 -0.63750732 -0.51155365 0.0070153857 -0.63024294
		 0.0086246375 -0.63920319 -0.63589835 -0.77035552 -0.60961241 -0.70910937 -0.62194377
		 -0.70866472 -0.49769107 -0.77026778 -0.50996953 -0.6626814 -0.58749026 -0.66248351
		 -0.53219253 -0.61353737 -0.63019639 -0.55760115 -0.61786002 -0.55768877 -0.51821727
		 -0.61398178 -0.50594372 -0.65996498 -0.59574288 -0.66016287 -0.54044515;
createNode polyAutoProj -n "polyAutoProj28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:20]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.4039856847643546e-014 -2.8618877199575653e-015 0 -2.4230649362307394e-014 -1.7014357375838718 -0.24161948635345043 0
		 4.5704837874036546 7.0625298117892177 0.4449354634120582 1;
	setAttr ".s" -type "double3" 14.527562505956096 14.527562505956096 14.527562505956096 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV24";
	setAttr ".uopa" yes;
	setAttr -s 44 ".uvtk[0:43]" -type "float2" 0.13144284 0.017111477 0.071477249
		 0.017928192 0.06328465 -0.5696013 0.12325019 -0.570418 0.034198999 0.014740977 0.026006222
		 -0.57278848 0.16894031 0.012905605 0.16074742 -0.57462388 -0.063350201 0.017928278
		 -0.13098609 0.012620348 -0.038443089 -0.57413632 0.023434639 -0.5696013 -0.30016589
		 0.016958589 -0.35428166 0.017928256 -0.34609485 -0.56882846 -0.29197907 -0.56979805
		 -0.40821981 0.015447577 -0.400033 -0.57130909 -0.13362312 0.012944627 -0.20164585
		 0.017928192 -0.28843057 -0.5696013 -0.22616613 -0.57381207 -0.23309672 -0.34194314
		 -0.2781595 -0.25981402 -0.34880859 -0.35183096 -0.37642258 -0.24697547 -0.27516738
		 -0.43151802 -0.45127061 -0.31167275 -0.37047014 -0.45988154 -0.41117775 -0.3861025
		 -0.60266173 -0.43190485 -0.55818713 -0.51435405 -0.55053341 -0.50323403 -0.58937919
		 -0.43121964 -0.46012756 -0.52769244 -0.46488425 -0.51488417 -0.56006086 -0.34243071
		 -0.55217016 -0.35306925 -0.37664509 -0.45877898 -0.39692721 -0.45739722 -0.4571853
		 -0.3104288 -0.46692523 -0.32763195 -0.416475 -0.38452256 -0.43316564 -0.39332914;
createNode polyTweakUV -n "polyTweakUV25";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" -1.17718995 -0.018726826
		 -1.26009142 -0.018726826 -1.17718995 -0.1016283 -1.26009142 -0.1016283 -1.17718995
		 -0.1845299 -1.26009142 -0.1845299 -1.17718995 -0.2674315 -1.26009142 -0.2674315 -1.17718995
		 -0.35033298 -1.26009142 -0.35033298 -1.34299314 -0.018726826 -1.34299314 -0.1016283
		 -1.09428823 -0.018726826 -1.09428823 -0.1016283;
createNode polyTweakUV -n "polyTweakUV26";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" -0.016516119 0.39647281 -0.038623184
		 0.39647281 -0.060730241 0.39647281 -0.082837306 0.39647281 -0.10494443 0.39647281
		 -0.12705147 0.39647281 -0.016516119 0.23025399 -0.038623184 0.23025399 -0.060730241
		 0.23025399 -0.082837306 0.23025399 -0.10494443 0.23025399 -0.12705147 0.23025399;
createNode polyTweakUV -n "polyTweakUV27";
	setAttr ".uopa" yes;
	setAttr -s 100 ".uvtk[0:99]" -type "float2" 0.59279859 0.51543772 0.59712124
		 0.51341307 0.59712124 0.52552378 0.59279859 0.52349931 0.58811533 0.5126344 0.59712124
		 0.50803876 0.59712124 0.53097576 0.58805716 0.52639973 0.23450714 0.2518872 0.23160708
		 0.25314617 0.23160708 0.24426433 0.23450714 0.24552348 0.60216451 0.51547432 0.60648704
		 0.51345003 0.60648704 0.51506442 0.60358655 0.51632333 0.59742296 0.51257366 0.60648704
		 0.50799781 0.60216451 0.52353615 0.60358655 0.52268726 0.59748113 0.52633905 0.60648704
		 0.52394617 0.60648704 0.52556044 0.6064862 0.53093463 0.60210657 0.52352649 0.60210657
		 0.5154646 0.60352886 0.51631355 0.60352886 0.52267742 0.5974232 0.5263294 0.59736514
		 0.51256406 0.60668707 0.51330012 0.60668707 0.51491457 0.60668707 0.52407628 0.60668707
		 0.52569067 0.60668707 0.50784832 0.60668707 0.53106636 0.1906704 0.23008218 0.1906704
		 0.23298243 0.18964234 0.23298243 0.18964234 0.23008218 0.18962803 0.23641561 0.18962803
		 0.23005185 0.19065598 0.23005185 0.19065598 0.23641561 0.19085133 0.23641561 0.19085133
		 0.23005185 0.19187933 0.23005185 0.19187933 0.23641561 0.19903782 0.47818777 0.15591326
		 0.31223869 0.16007695 0.31223869 0.20006594 0.47818777 0.59717214 0.51322365 0.59717214
		 0.52561426 0.59259176 0.52345002 0.59259176 0.51538813 0.59717214 0.53106636 0.58785009
		 0.52635044 0.58790851 0.51258516 0.59717214 0.50784808 0.23142624 0.24398449 0.23142624
		 0.25314617 0.22826785 0.25174725 0.22826785 0.24538359 0.19077629 0.23004898 0.19180381
		 0.23004898 0.19180381 0.2332072 0.19077629 0.2332072 0.19882184 0.47802451 0.1977939
		 0.47802451 0.15087515 0.31262273 0.1550386 0.31262273 0.19107349 0.19895163 0.19348951
		 0.19432256 0.18305419 0.19432256 0.18550478 0.19895163 0.18550478 0.18851635 0.18305419
		 0.1931456 0.18623026 0.18913832 0.18623026 0.18851635 0.19034787 0.18913832 0.18305419
		 0.1931456 0.19348951 0.1931456 0.19348951 0.1931456 0.19107349 0.18851635 0.19034787
		 0.18851635 0.19101055 0.18851635 0.1934609 0.1931456 0.19028504 0.18913832 0.19028504
		 0.18851635 0.1934609 0.19432256 0.19101055 0.19895163 0.18556748 0.19895163 0.18315218
		 0.19432256 0.18315218 0.1931456 0.18556748 0.18851635 0.1862932 0.18851635 0.1862932
		 0.18913832 0.18315218 0.1931456 0.1934609 0.1931456;
createNode polyAutoProj -n "polyAutoProj29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.4039856847643546e-014 -2.8618877199575653e-015 0 -2.4230649362307394e-014 -1.701435737583872 -0.24161948635345049 0
		 4.5704837874036555 7.0625298117892177 0.4449354634120582 1;
	setAttr ".s" -type "double3" 5.5197731330083535 5.5197731330083535 5.5197731330083535 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.4039856847643546e-014 -2.8618877199575653e-015 0 -2.4230649362307394e-014 -1.701435737583872 -0.24161948635345049 0
		 4.5704837874036555 7.0625298117892177 0.4449354634120582 1;
	setAttr ".s" -type "double3" 5.5197731330083535 5.5197731330083535 5.5197731330083535 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV28";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" -0.3900128 0.098145105 -0.46958113
		 0.098077275 -0.4704448 -0.76266319 -0.39087605 -0.76259512 -0.64071006 -0.0067397952
		 -0.56114155 -0.0078390762 -0.55967778 0.0970456 -0.63924611 0.098145053 -0.47570854
		 0.098077565 -0.55527705 0.098145105 -0.55441362 -0.76259512 -0.47484511 -0.76266271
		 -0.64597368 0.098145105 -0.72554219 0.097045623 -0.72407877 -0.0078388304 -0.64451045
		 -0.0067393407 0.059442982 0.081602834 -0.04544124 0.098145328 -0.16097239 -0.76259488
		 -0.056088105 -0.77913755 -0.27024782 -0.77913755 -0.1653633 -0.76259524 -0.28089416
		 0.098145105 -0.38577896 0.08160273;
createNode polyTweakUV -n "polyTweakUV29";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" -0.47484571 0.098145105 -0.55441409
		 0.09807732 -0.55527788 -0.76266253 -0.47570902 -0.76259482 -0.64071053 -0.006739825
		 -0.56114161 -0.0078390837 -0.55967826 0.0970456 -0.63924676 0.098145053 -0.39087662
		 0.098077275 -0.47044474 0.098145105 -0.46958107 -0.76259631 -0.39001283 -0.76266402
		 -0.6459744 0.098145105 -0.7255426 0.0970456 -0.72407913 -0.0078386292 -0.64451092
		 -0.0067392811 0.059442982 0.081602238 -0.045441374 0.098145328 -0.16097331 -0.76259619
		 -0.056088559 -0.77913755 -0.27024797 -0.77913755 -0.16536354 -0.76259482 -0.28089476
		 0.098145105 -0.38577971 0.081603423;
createNode blinn -n "blinn1";
	setAttr ".c" -type "float3" 0.29913786 0.29913786 0.29913786 ;
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode lambert -n "SeekrBlacklambertq";
	setAttr ".c" -type "float3" 0.15384147 0.15384147 0.15384147 ;
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo4";
createNode polyMapCut -n "polyMapCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[14:20]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.4039856847643546e-014 -2.8618877199575653e-015 0 -2.4230649362307394e-014 -1.701435737583872 -0.24161948635345049 0
		 4.5704837874036555 7.0625298117892177 0.4449354634120582 1;
	setAttr ".wt" 0.83604979515075684;
	setAttr ".dr" no;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[21:27]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.4039856847643546e-014 -2.8618877199575653e-015 0 -2.4230649362307394e-014 -1.701435737583872 -0.24161948635345049 0
		 4.5704837874036555 7.0625298117892177 0.4449354634120582 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.2829299 7.1491342 14.894833 ;
	setAttr ".rs" 54789042;
	setAttr ".lt" -type "double3" 5.1526556046140888e-016 -2.9967348047499343e-016 0.53469242367087844 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.6464699640953988 5.7699233677989712 13.584081421991389 ;
	setAttr ".cbx" -type "double3" 5.919390020431722 8.5327686615465517 16.168984466586505 ;
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:6]" "f[14:20]" "f[28:41]";
	setAttr ".irc" -type "componentList" 2 "f[7:13]" "f[21:27]";
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[7:13]" "f[21:27]";
createNode polyChipOff -n "polyChipOff8";
	setAttr ".ics" -type "componentList" 2 "f[7:13]" "f[21:27]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.4039856847643546e-014 -2.8618877199575653e-015 0 -2.4230649362307394e-014 -1.701435737583872 -0.24161948635345049 0
		 4.5704837874036555 7.0625298117892177 0.4449354634120582 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.2828197 7.0969853 14.881643 ;
	setAttr ".rs" 1372563029;
	setAttr ".dup" no;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[7:14]" -type "float3"  -0.019369304 -0.19480914 0.37064344
		 -0.02469608 0.19623636 0.36924574 -0.003911254 0.43933585 0.034547202 0.025661921
		 0.35141757 -0.36896864 0.019339802 -0.0014812429 -0.20864379 0.035515975 -0.35322037
		 -0.3683503 0.0080575002 -0.43933585 0.037687615 0.0099798972 -0.00023399146 -0.07337296;
createNode polySeparate -n "polySeparate8";
	setAttr ".ic" 4;
	setAttr ".rs" -type "Int32Array" 2 1 2 ;
	setAttr -s 3 ".out";
createNode displayLayer -n "RedGlowLayer";
	setAttr ".dt" 2;
	setAttr ".do" 4;
createNode blinn -n "SeekrBlinnMaterial";
createNode shadingEngine -n "blinn2SG";
	setAttr ".ihi" 0;
	setAttr -s 19 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "D:/Documents/GitHub/The-Runners/Assets/Models/Characters/Seeker/SeekerUV.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode polyAutoProj -n "polyAutoProj31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[15]" "f[17]" "f[19]" "f[21]" "f[23]" "f[25]" "f[27]";
	setAttr ".ix" -type "matrix" 3.8158502932767551e-016 0.2416194863534504 -1.7014357375838718 0
		 1.718506195890279 -2.4039856847643546e-014 -2.8618877199575653e-015 0 -2.4230649362307394e-014 -1.701435737583872 -0.24161948635345049 0
		 4.5704837874036555 7.0625298117892177 0.4449354634120582 1;
	setAttr ".s" -type "double3" 4.195176178976137 4.195176178976137 4.195176178976137 ;
	setAttr ".ps" 0.080300003290176392;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV30";
	setAttr ".uopa" yes;
	setAttr -s 47 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.10189589 0.59524238 ;
	setAttr ".uvtk[1]" -type "float2" -0.083375596 0.59499013 ;
	setAttr ".uvtk[2]" -type "float2" -0.071862072 0.59597445 ;
	setAttr ".uvtk[3]" -type "float2" -0.11347689 0.59654135 ;
	setAttr ".uvtk[4]" -type "float2" -0.041734122 0.59499013 ;
	setAttr ".uvtk[5]" -type "float2" -0.020844886 0.59662938 ;
	setAttr ".uvtk[6]" -type "float2" 0.031406201 0.59528959 ;
	setAttr ".uvtk[7]" -type "float2" 0.048120014 0.59499013 ;
	setAttr ".uvtk[8]" -type "float2" 0.064778604 0.59575629 ;
	setAttr ".uvtk[9]" -type "float2" -0.020030344 0.59652936 ;
	setAttr ".uvtk[10]" -type "float2" 0.00097828172 0.59499013 ;
	setAttr ".uvtk[25]" -type "float2" -0.081260152 0.74669826 ;
	setAttr ".uvtk[26]" -type "float2" -0.099780463 0.74695051 ;
	setAttr ".uvtk[27]" -type "float2" 0.023387467 0.74669826 ;
	setAttr ".uvtk[28]" -type "float2" -0.11136138 0.74824953 ;
	setAttr ".uvtk[29]" -type "float2" 0.062664576 0.7472648 ;
	setAttr ".uvtk[30]" -type "float2" 0.0038653668 0.74803782 ;
	setAttr ".uvtk[31]" -type "float2" 0.046006016 0.74649858 ;
	setAttr ".uvtk[32]" -type "float2" -0.044740677 0.74813795 ;
	setAttr ".uvtk[33]" -type "float2" 0.029292291 0.7467981 ;
	setAttr ".uvtk[34]" -type "float2" -0.069746718 0.74768257 ;
	setAttr ".uvtk[35]" -type "float2" -0.064143181 0.74669826 ;
	setAttr ".uvtk[36]" -type "float2" -0.099780463 0.74695051 ;
	setAttr ".uvtk[37]" -type "float2" -0.081260152 0.74669826 ;
	setAttr ".uvtk[38]" -type "float2" -0.11136138 0.74824953 ;
	setAttr ".uvtk[39]" -type "float2" 0.0038653668 0.74803782 ;
	setAttr ".uvtk[40]" -type "float2" 0.023387467 0.74669826 ;
	setAttr ".uvtk[41]" -type "float2" 0.046006016 0.74649858 ;
	setAttr ".uvtk[42]" -type "float2" 0.062664576 0.7472648 ;
	setAttr ".uvtk[43]" -type "float2" 0.029292291 0.7467981 ;
	setAttr ".uvtk[44]" -type "float2" -0.064143181 0.74669826 ;
	setAttr ".uvtk[45]" -type "float2" -0.044740677 0.74813795 ;
	setAttr ".uvtk[46]" -type "float2" -0.069746718 0.74768257 ;
	setAttr ".uvtk[47]" -type "float2" 0.052037947 0.28906971 ;
	setAttr ".uvtk[48]" -type "float2" 0.052562736 0.14222276 ;
	setAttr ".uvtk[49]" -type "float2" 0.25431094 0.037354477 ;
	setAttr ".uvtk[50]" -type "float2" 0.25305986 0.39463884 ;
	setAttr ".uvtk[51]" -type "float2" -0.072470129 0.050397404 ;
	setAttr ".uvtk[52]" -type "float2" -0.040581767 -0.18453071 ;
	setAttr ".uvtk[53]" -type "float2" -0.073649436 0.38035917 ;
	setAttr ".uvtk[54]" -type "float2" -0.043422524 0.61532921 ;
	setAttr ".uvtk[55]" -type "float2" -0.22494689 0.082735784 ;
	setAttr ".uvtk[56]" -type "float2" -0.40632924 -0.08279261 ;
	setAttr ".uvtk[57]" -type "float2" -0.22517905 0.34734386 ;
	setAttr ".uvtk[58]" -type "float2" -0.40712777 0.51238137 ;
	setAttr ".uvtk[59]" -type "float2" -0.2787416 0.21482207 ;
	setAttr ".uvtk[60]" -type "float2" -0.4478052 0.21447052 ;
createNode polyTweakUV -n "polyTweakUV31";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk[0:21]" -type "float2" 0.10571595 0.45422328 0.087831549
		 0.45446682 0.087430917 0.42573822 0.10531535 0.42549461 0.11689928 0.45296896 0.11649868
		 0.42424029 0.005628787 0.45317322 -0.013222996 0.45446682 -0.017466549 0.42573822
		 0.0011036918 0.42448241 -0.03506491 0.45465958 -0.051151548 0.45391971 -0.050751243
		 0.42522889 -0.034664545 0.42596877 -0.018925011 0.45437038 -0.018524677 0.4256795
		 0.071302287 0.45446682 0.052565984 0.45307654 0.05709108 0.42438567 0.07554584 0.42573822
		 0.076713435 0.4535163 0.076312833 0.42478764;
createNode lambert -n "SeekrGunLambert";
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "D:/Documents/GitHub/The-Runners/Assets/Models/Characters/Seeker/SeekerUV.jpg";
createNode place2dTexture -n "place2dTexture2";
createNode polyTweakUV -n "polyTweakUV32";
	setAttr ".uopa" yes;
	setAttr -s 40 ".uvtk[0:39]" -type "float2" 0.22127837 0.016840257 0.22525898
		 0.016892776 0.22471783 0.055792272 0.22073722 0.05573979 0.2277391 0.016268272 0.22719799
		 0.055167764 0.21879479 0.016150255 0.21825364 0.055049732 0.19669089 0.01701574 0.20109969
		 0.016150255 0.20723459 0.055100918 0.20320804 0.055915236 0.21361151 0.016150247
		 0.21804604 0.016994949 0.21152884 0.055894434 0.2074766 0.055100918 0.22852927 0.055198193
		 0.22798774 0.016247492 0.23516056 0.016150247 0.23570201 0.055100977 0.051793568
		 -0.036264159 0.039755695 -0.033840455 0.039668418 -0.058262177 0.051776223 -0.055848874
		 0.030630423 -0.040612198 0.030591531 -0.051480986 0.020971069 -0.032218374 0.0099768592
		 -0.034643091 0.0099941222 -0.054227747 0.021058446 -0.056640126 0.030096365 -0.038990237
		 0.030135317 -0.049858905 0.020971069 -0.032218374 0.021058446 -0.056640126 0.039755695
		 -0.033840455 0.039668418 -0.058262177 0.22525898 0.016892776 0.22471783 0.055792272
		 0.22127837 0.016840257 0.22073722 0.05573979;
createNode animCurveTL -n "GCtrl_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 114 0 142 -0.010434254043047986 155 0
		 165 0 174 -1.5485277597731617 185 -1.0693499316816779 190 -0.60954676540496777 192 0.45161612114771166
		 193 1.0913817068337834 207 0 221 0 266 0;
	setAttr -s 13 ".kit[0:12]"  2 16 16 16 16 16 16 16 
		16 16 16 16 16;
	setAttr -s 13 ".kot[0:12]"  2 16 16 16 16 16 16 16 
		16 16 16 16 16;
createNode animCurveTL -n "GCtrl_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 0 114 0 115 0 128 -3.7404255763036431
		 131 8.0323856518258285 135 16.682457889912381 142 -2.5224377701237461 149 4.8460780571426163
		 155 0 165 0 174 3.7448462213948943 185 13.839498691660062 190 -6.3312319469686145
		 192 -6.8146407971387228 193 -8.3325795043371489 207 0 209 10.712297738732929 212 19.905070420474299
		 218 -1.3738998740651951 221 -0.0020503681646175664 235 96.681234772611319 252 0 258 -7.4770990823037877
		 266 0;
	setAttr -s 24 ".kit[0:23]"  2 16 16 18 16 18 18 16 
		16 16 16 16 16 16 16 16 16 16 1 1 16 1 16 16;
	setAttr -s 24 ".kot[0:23]"  2 16 16 18 16 18 18 16 
		16 16 16 16 16 16 16 16 16 16 1 1 16 1 16 16;
	setAttr -s 24 ".ktl[21:23]" no yes yes;
	setAttr -s 24 ".kix[18:23]"  0.010491547174751759 0.0028532824944704771 
		1 0.0043161273933947086 1 1;
	setAttr -s 24 ".kiy[18:23]"  -0.99994498491287231 0.99999600648880005 
		0 -0.99999070167541504 0 0;
	setAttr -s 24 ".kox[18:23]"  0.010491545312106609 0.0028532815631479025 
		1 0.0065761231817305088 1 1;
	setAttr -s 24 ".koy[18:23]"  -0.99994498491287231 0.99999594688415527 
		0 -0.99997836351394653 0 0;
createNode animCurveTL -n "GCtrl_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 50 50 100 100 114 100 115 0 128 27.966489817441364
		 131 32.581552166218657 135 17.223561256302091 142 -15.20423799807768 149 -5.9249770920140463
		 155 0 165 0 166 0 174 -10.392353241838649 185 -14.839428988537684 187 -11.764498988177261
		 190 0.25204847666637065 192 13.823941670053941 193 7.0679485577770231 196 2.6778112527928064
		 207 0 221 0 266 0;
	setAttr -s 23 ".kit[0:22]"  2 2 2 16 16 18 16 18 
		18 16 16 16 16 16 16 16 16 16 16 16 16 16 16;
	setAttr -s 23 ".kot[0:22]"  2 2 2 16 16 18 16 18 
		18 16 16 16 16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 23 ".ktl[17:22]" no yes yes yes yes yes;
	setAttr -s 23 ".kox[17:22]"  0.0029130878392606974 0.014951229095458984 
		0.08225250244140625 1 1 1;
	setAttr -s 23 ".koy[17:22]"  -0.99999576807022095 -0.99988824129104614 
		-0.99661153554916382 0 0 0;
createNode animCurveTU -n "GCtrl_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 114 1 155 1 165 1 221 1 266 1;
	setAttr -s 6 ".kit[0:5]"  2 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  2 5 5 5 5 5;
createNode animCurveTA -n "GCtrl_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 114 0 128 53.04040362567342 142 -2.3367327356433991
		 155 0 165 0 184 0 187 30.089690048387439 189 36.054467257246905 192 0 221 0 266 0;
	setAttr -s 12 ".kit[0:11]"  2 16 18 16 16 16 16 16 
		16 16 16 16;
	setAttr -s 12 ".kot[0:11]"  2 16 18 16 16 16 16 16 
		16 16 16 16;
createNode animCurveTA -n "GCtrl_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 114 0 155 0 165 0 184 0 221 0 266 0;
	setAttr -s 7 ".kit[0:6]"  2 16 16 16 16 16 16;
	setAttr -s 7 ".kot[0:6]"  2 16 16 16 16 16 16;
createNode animCurveTA -n "GCtrl_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 114 0 155 0 165 0 184 0 221 0 266 0;
	setAttr -s 7 ".kit[0:6]"  2 16 16 16 16 16 16;
	setAttr -s 7 ".kot[0:6]"  2 16 16 16 16 16 16;
createNode animCurveTU -n "GCtrl_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 114 1 155 1 165 1 221 1 266 1;
	setAttr -s 6 ".kit[0:5]"  2 16 16 16 16 16;
	setAttr -s 6 ".kot[0:5]"  2 16 16 16 16 16;
createNode animCurveTU -n "GCtrl_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 114 1 155 1 165 1 221 1 266 1;
	setAttr -s 6 ".kit[0:5]"  2 16 16 16 16 16;
	setAttr -s 6 ".kot[0:5]"  2 16 16 16 16 16;
createNode animCurveTU -n "GCtrl_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 114 1 155 1 165 1 221 1 266 1;
	setAttr -s 6 ".kit[0:5]"  2 16 16 16 16 16;
	setAttr -s 6 ".kot[0:5]"  2 16 16 16 16 16;
createNode animCurveTU -n "Leg7_visibility";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 4 1 12 1 27 1 38 1 53 1 64 1 79 1 90 1
		 114 1 155 1 165 1 208 1 241 1 243 1 266 1;
	setAttr -s 16 ".kit[9:15]"  9 9 9 9 9 9 9;
	setAttr -s 16 ".kot[9:15]"  5 5 5 5 5 5 5;
createNode animCurveTL -n "Leg7_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 4 0 12 0 15 0.39796441692226381 27 0
		 38 0 41 0.39796441692226381 53 0.39796441692226381 64 0.39796441692226381 79 0.39796441692226381
		 90 0.39796441692226381 114 0.39796441692226381 115 0 149 1.3426143337217127 155 0
		 165 0 166 0 208 0 216 10.480834669119206 229 10.480834669119206 232 -11.72477385167549
		 241 -6.3247829322505336 243 -4.8771330475456889 251 0 266 0;
	setAttr -s 25 ".kit[0:24]"  2 2 2 2 2 2 2 2 
		2 2 2 16 16 16 16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 25 ".kot[0:24]"  2 2 2 2 2 2 2 2 
		2 2 2 16 16 16 16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 25 ".kix[19:24]"  1 1 0.06678355485200882 0.065735816955566406 
		1 1;
	setAttr -s 25 ".kiy[19:24]"  0 0 0.99776750802993774 0.99783706665039063 
		0 0;
	setAttr -s 25 ".kox[19:24]"  1 1 0.06678355485200882 0.065735816955566406 
		1 1;
	setAttr -s 25 ".koy[19:24]"  0 0 0.99776750802993774 0.99783706665039063 
		0 0;
createNode animCurveTL -n "Leg7_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 4 15 12 15 15 0 27 0 30 15 38 15 41 0
		 53 0 56 15 64 15 67 0 79 0 82 15 90 15 93 0 114 0 122 3.3989657181646109 127 0 128 0.26908616469355806
		 142 -5.9469722633169351 143 -11.873543273440468 149 3.4754942986899753 155 0 165 0
		 208 0 212 4 216 0 229 0 232 96.544601692886715 236 99.089022921641458 241 100.54117232364537
		 243 100.54117232364537 248 33.94433752264338 251 0 266 0;
	setAttr -s 36 ".kit[0:35]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 16 16 1 16 16 16 16 16 16 16;
	setAttr -s 36 ".kot[0:35]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 16 16 1 16 16 16 16 16 16 16;
	setAttr -s 36 ".kix[28:35]"  1 1 0.093420110642910004 1 1 0.0033153700642287731 
		1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0.99562680721282959 0 0 -0.99999451637268066 
		0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 0.093420110642910004 1 1 0.0033153700642287731 
		1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0.99562680721282959 0 0 -0.99999451637268066 
		0 0;
createNode animCurveTL -n "Leg7_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0 4 6 12 20 15 26 27 26 30 35 38 46 41 52
		 53 52 56 58 64 72 67 78 79 78 82 86 90 98 93 100 114 100 115 0 128 41.655702111920775
		 142 -2.6119487855640493 143 -3.1298114759073035 149 -4.5497492267735833 155 0 165 0
		 166 0 208 0 216 16.451441259190506 229 16.451441259190506 232 -12.041659631450514
		 241 -6.4957230115005524 243 -5.0089474815632125 251 0 266 0;
	setAttr -s 33 ".kit[0:32]"  2 2 2 2 2 2 2 2 
		2 16 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 16 1 16 16 16 16 16;
	setAttr -s 33 ".kot[0:32]"  2 2 2 2 2 2 2 2 
		2 16 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 16 1 16 16 16 16 16;
	setAttr -s 33 ".kix[27:32]"  1 1 0.065033629536628723 0.064013116061687469 
		1 1;
	setAttr -s 33 ".kiy[27:32]"  0 0 0.99788308143615723 0.99794906377792358 
		0 0;
	setAttr -s 33 ".kox[27:32]"  1 1 0.065033629536628723 0.064013116061687469 
		1 1;
	setAttr -s 33 ".koy[27:32]"  0 0 0.99788308143615723 0.99794906377792358 
		0 0;
createNode animCurveTA -n "Leg7_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 4 0 12 0 27 0 38 0 53 0 64 0 79 0 90 0
		 114 0 155 0 165 0 208 0 241 0 243 0 266 0;
	setAttr -s 16 ".kit[9:15]"  16 16 16 16 16 16 16;
	setAttr -s 16 ".kot[9:15]"  16 16 16 16 16 16 16;
createNode animCurveTA -n "Leg7_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 4 0 12 0 27 0 38 0 53 0 64 0 79 0 90 0
		 114 0 155 0 165 0 208 0 241 0 243 0 266 0;
	setAttr -s 16 ".kit[9:15]"  16 16 16 16 16 16 16;
	setAttr -s 16 ".kot[9:15]"  16 16 16 16 16 16 16;
createNode animCurveTA -n "Leg7_rotateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 4 0 12 0 27 0 38 0 53 0 64 0 79 0 90 0
		 114 0 155 0 165 0 208 0 241 0 243 0 266 0;
	setAttr -s 16 ".kit[9:15]"  16 16 16 16 16 16 16;
	setAttr -s 16 ".kot[9:15]"  16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg7_scaleX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 4 1 12 1 27 1 38 1 53 1 64 1 79 1 90 1
		 114 1 155 1 165 1 208 1 241 1 243 1 266 1;
	setAttr -s 16 ".kit[9:15]"  16 16 16 16 16 16 16;
	setAttr -s 16 ".kot[9:15]"  16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg7_scaleY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 4 1 12 1 27 1 38 1 53 1 64 1 79 1 90 1
		 114 1 155 1 165 1 208 1 241 1 243 1 266 1;
	setAttr -s 16 ".kit[9:15]"  16 16 16 16 16 16 16;
	setAttr -s 16 ".kot[9:15]"  16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg7_scaleZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 4 1 12 1 27 1 38 1 53 1 64 1 79 1 90 1
		 114 1 155 1 165 1 208 1 241 1 243 1 266 1;
	setAttr -s 16 ".kit[9:15]"  16 16 16 16 16 16 16;
	setAttr -s 16 ".kot[9:15]"  16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg1_visibility";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  21 1 47 1 58 1 72 1 84 1 99 1 114 1 129 1
		 155 1 165 1 182 1 186 1 208 1 241 1 243 1 266 1;
	setAttr -s 16 ".kit[6:15]"  9 9 9 9 9 9 9 9 
		9 9;
	setAttr -s 16 ".kot[6:15]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTL -n "Leg1_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  21 0 47 0 58 0 72 0 84 0 99 0 114 0 129 0
		 155 0 165 0 175 -0.64315862185424066 182 -0.19328634351532031 186 0 208 0 216 -7.3878983098191746
		 229 -7.3878983098191746 232 12.857680191221743 241 6.9359151187512236 243 5.3483861171252318
		 251 0 266 0;
	setAttr -s 21 ".kit[0:20]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 21 ".kot[0:20]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 21 ".kix[15:20]"  1 1 0.060922060161828995 0.0599655881524086 
		1 1;
	setAttr -s 21 ".kiy[15:20]"  0 0 -0.9981425404548645 -0.99820041656494141 
		0 0;
	setAttr -s 21 ".kox[15:20]"  1 1 0.060922060161828995 0.0599655881524086 
		1 1;
	setAttr -s 21 ".koy[15:20]"  0 0 -0.9981425404548645 -0.99820041656494141 
		0 0;
createNode animCurveTL -n "Leg1_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  21 0 24 15 32 15 35 0 47 0 50 15 58 15 61 0
		 72 0 76 15 84 15 87 0 99 0 102 15 110 15 114 0 129 0 155 0 165 0 175 36.386538556838985
		 182 35.155447545790039 186 38.671477522516625 189 0 208 0 212 4 216 0 229 0 232 96.544601692886715
		 236 99.089022921641458 241 100.54117232364537 243 100.54117232364537 248 33.94433752264338
		 251 0 266 0;
	setAttr -s 34 ".kit[0:33]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 1 16 16 16 16 16 16 16;
	setAttr -s 34 ".kot[0:33]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 1 16 16 16 16 16 16 16;
	setAttr -s 34 ".kix[26:33]"  1 1 0.093420110642910004 1 1 0.0033153700642287731 
		1 1;
	setAttr -s 34 ".kiy[26:33]"  0 0 0.99562680721282959 0 0 -0.99999451637268066 
		0 0;
	setAttr -s 34 ".kox[26:33]"  1 1 0.093420110642910004 1 1 0.0033153700642287731 
		1 1;
	setAttr -s 34 ".koy[26:33]"  0 0 0.99562680721282959 0 0 -0.99999451637268066 
		0 0;
createNode animCurveTL -n "Leg1_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  21 0 24 23 32 34 35 37 47 37 50 49 58 60
		 61 63 72 63 76 75 84 86 87 89 99 89 102 100 114 100 115 0 129 0 155 0 165 0 166 0
		 175 -7.7983607969469304 182 -10.838400076429528 186 -11.390860692019439 189 0 208 0
		 216 -14.625447443507415 229 -14.625447443507415 232 12.200102521338032 241 6.581193051125565
		 243 5.0748547708798037 251 0 266 0;
	setAttr -s 32 ".kit[0:31]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 16 
		16 1 16 16 16 16 16;
	setAttr -s 32 ".kot[0:31]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 16 
		16 1 16 16 16 16 16;
	setAttr -s 32 ".kix[26:31]"  1 1 0.064192533493041992 0.063185118138790131 
		1 1;
	setAttr -s 32 ".kiy[26:31]"  0 0 -0.99793756008148193 -0.99800187349319458 
		0 0;
	setAttr -s 32 ".kox[26:31]"  1 1 0.064192533493041992 0.063185118138790131 
		1 1;
	setAttr -s 32 ".koy[26:31]"  0 0 -0.99793756008148193 -0.99800187349319458 
		0 0;
createNode animCurveTA -n "Leg1_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  21 0 47 0 58 0 72 0 84 0 99 0 114 0 129 0
		 155 0 165 0 182 0 186 0 208 0 241 0 243 0 266 0;
	setAttr -s 16 ".kit[0:15]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16;
	setAttr -s 16 ".kot[0:15]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16;
createNode animCurveTA -n "Leg1_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  21 0 47 0 58 0 72 0 84 0 99 0 114 0 129 0
		 155 0 165 0 182 0 186 0 208 0 241 0 243 0 266 0;
	setAttr -s 16 ".kit[0:15]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16;
	setAttr -s 16 ".kot[0:15]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16;
createNode animCurveTA -n "Leg1_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  21 0 47 0 58 0 72 0 84 0 99 0 114 0 129 0
		 155 0 165 0 182 0 186 0 208 0 241 0 243 0 266 0;
	setAttr -s 16 ".kit[0:15]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16;
	setAttr -s 16 ".kot[0:15]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg1_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  21 1 47 1 58 1 72 1 84 1 99 1 114 1 129 1
		 155 1 165 1 182 1 186 1 208 1 241 1 243 1 266 1;
	setAttr -s 16 ".kit[0:15]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16;
	setAttr -s 16 ".kot[0:15]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg1_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  21 1 47 1 58 1 72 1 84 1 99 1 114 1 129 1
		 155 1 165 1 182 1 186 1 208 1 241 1 243 1 266 1;
	setAttr -s 16 ".kit[0:15]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16;
	setAttr -s 16 ".kot[0:15]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg1_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  21 1 47 1 58 1 72 1 84 1 99 1 114 1 129 1
		 155 1 165 1 182 1 186 1 208 1 241 1 243 1 266 1;
	setAttr -s 16 ".kit[0:15]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16;
	setAttr -s 16 ".kot[0:15]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg3_visibility";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  9 1 35 1 46 1 61 1 72 1 87 1 98 1 114 1
		 155 1 165 1 208 1 241 1 243 1 266 1;
	setAttr -s 14 ".kit[7:13]"  9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[7:13]"  5 5 5 5 5 5 5;
createNode animCurveTL -n "Leg3_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  9 0 35 0 46 0 61 0 72 0 87 0 98 0 114 0
		 149 1.3426143337217127 155 0 165 0 208 0 216 -9.0864531567881706 229 -9.0864531567881706
		 232 9.6650162831379305 241 5.2136724171254532 243 4.0203394036243205 251 0 266 0;
	setAttr -s 19 ".kit[0:18]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 19 ".kot[0:18]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 19 ".kix[13:18]"  1 1 0.080931037664413452 0.079663962125778198 
		1 1;
	setAttr -s 19 ".kiy[13:18]"  0 0 -0.99671971797943115 -0.9968218207359314 
		0 0;
	setAttr -s 19 ".kox[13:18]"  1 1 0.080931037664413452 0.079663962125778198 
		1 1;
	setAttr -s 19 ".koy[13:18]"  0 0 -0.99671971797943115 -0.9968218207359314 
		0 0;
createNode animCurveTL -n "Leg3_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  9 0 12 15 20 28 23 0 35 0 38 15 46 15 49 0
		 61 0 64 15 72 15 75 0 87 0 90 15 98 15 101 0 114 0 122 3.3989657181646109 127 0 128 0.26139524005863102
		 142 -11.14552500245258 149 3.8078503013853053 155 0 165 0 208 0 212 4 216 0 229 0
		 232 96.544601692886715 236 99.089022921641458 241 100.54117232364537 243 100.54117232364537
		 248 33.94433752264338 251 0 266 0;
	setAttr -s 35 ".kit[0:34]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 16 1 16 16 16 16 16 16 16;
	setAttr -s 35 ".kot[0:34]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 16 1 16 16 16 16 16 16 16;
	setAttr -s 35 ".kix[27:34]"  1 1 0.093420110642910004 1 1 0.0033153700642287731 
		1 1;
	setAttr -s 35 ".kiy[27:34]"  0 0 0.99562680721282959 0 0 -0.99999451637268066 
		0 0;
	setAttr -s 35 ".kox[27:34]"  1 1 0.093420110642910004 1 1 0.0033153700642287731 
		1 1;
	setAttr -s 35 ".koy[27:34]"  0 0 0.99562680721282959 0 0 -0.99999451637268066 
		0 0;
createNode animCurveTL -n "Leg3_translateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  9 0 12 15.174229880167973 20 22.83707576683527
		 23 34 35 34 38 40 46 54 49 60 61 60 64 66 72 80 75 86 87 86 90 92 98 100 101 100
		 114 100 115 0 128 40.883186247095495 142 -3.7677190799346398 149 -4.5683333079636901
		 155 0 165 0 166 0 208 0 216 17.186265308865348 229 17.186265308865348 232 -12.509052931001801
		 241 -6.7478524940003624 243 -5.2033682349061516 251 0 266 0;
	setAttr -s 32 ".kit[16:31]"  16 16 16 16 16 16 16 16 
		16 16 1 16 16 16 16 16;
	setAttr -s 32 ".kot[16:31]"  16 16 16 16 16 16 16 16 
		16 16 1 16 16 16 16 16;
	setAttr -s 32 ".kix[26:31]"  1 1 0.062613397836685181 0.061630569398403168 
		1 1;
	setAttr -s 32 ".kiy[26:31]"  0 0 0.99803787469863892 0.99809908866882324 
		0 0;
	setAttr -s 32 ".kox[26:31]"  1 1 0.062613397836685181 0.061630569398403168 
		1 1;
	setAttr -s 32 ".koy[26:31]"  0 0 0.99803787469863892 0.99809908866882324 
		0 0;
createNode animCurveTA -n "Leg3_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  9 0 35 0 46 0 61 0 72 0 87 0 98 0 114 0
		 155 0 165 0 208 0 241 0 243 0 266 0;
	setAttr -s 14 ".kit[7:13]"  16 16 16 16 16 16 16;
	setAttr -s 14 ".kot[7:13]"  16 16 16 16 16 16 16;
createNode animCurveTA -n "Leg3_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  9 0 35 0 46 0 61 0 72 0 87 0 98 0 114 0
		 155 0 165 0 208 0 241 0 243 0 266 0;
	setAttr -s 14 ".kit[7:13]"  16 16 16 16 16 16 16;
	setAttr -s 14 ".kot[7:13]"  16 16 16 16 16 16 16;
createNode animCurveTA -n "Leg3_rotateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  9 0 35 0 46 0 61 0 72 0 87 0 98 0 114 0
		 155 0 165 0 208 0 241 0 243 0 266 0;
	setAttr -s 14 ".kit[7:13]"  16 16 16 16 16 16 16;
	setAttr -s 14 ".kot[7:13]"  16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg3_scaleX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  9 1 35 1 46 1 61 1 72 1 87 1 98 1 114 1
		 155 1 165 1 208 1 241 1 243 1 266 1;
	setAttr -s 14 ".kit[7:13]"  16 16 16 16 16 16 16;
	setAttr -s 14 ".kot[7:13]"  16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg3_scaleY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  9 1 35 1 46 1 61 1 72 1 87 1 98 1 114 1
		 155 1 165 1 208 1 241 1 243 1 266 1;
	setAttr -s 14 ".kit[7:13]"  16 16 16 16 16 16 16;
	setAttr -s 14 ".kot[7:13]"  16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg3_scaleZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  9 1 35 1 46 1 61 1 72 1 87 1 98 1 114 1
		 155 1 165 1 208 1 241 1 243 1 266 1;
	setAttr -s 14 ".kit[7:13]"  16 16 16 16 16 16 16;
	setAttr -s 14 ".kot[7:13]"  16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg8_visibility";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  13 1 39 1 65 1 76 1 91 1 102 1 114 1 125 1
		 143 1 165 1 185 1 208 1 241 1 243 1 266 1;
	setAttr -s 15 ".kit[6:14]"  9 9 9 9 9 9 9 9 
		9;
	setAttr -s 15 ".kot[6:14]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "Leg8_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  13 0 39 0 65 0 76 0 91 0 102 0 114 0 125 0
		 146 0.46107324378650105 151 0 165 0 173 0 181 -7.282849732438061 185 -3.0754513368645107
		 190 0 208 0 216 16.666863239087441 229 16.666863239087441 232 -15.685846098863159
		 241 -8.4615339228757129 243 -6.5248132354081614 251 0 266 0;
	setAttr -s 23 ".kit[0:22]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 23 ".kot[0:22]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 23 ".kix[17:22]"  1 1 0.049968216568231583 0.049182780086994171 
		1 1;
	setAttr -s 23 ".kiy[17:22]"  0 0 0.99875080585479736 0.99878978729248047 
		0 0;
	setAttr -s 23 ".kox[17:22]"  1 1 0.049968216568231583 0.049182780086994171 
		1 1;
	setAttr -s 23 ".koy[17:22]"  0 0 0.99875080585479736 0.99878978729248047 
		0 0;
createNode animCurveTL -n "Leg8_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  13 0 16 15 24 15 27 0 39 0 42 15 50 15 53 0
		 65 0 68 15 76 15 79 0 91 0 94 15 102 15 105 0 114 0 125 0 128 0.08892007905772914
		 137 20.493716581135608 141 0.42991466316382976 143 -0.18952632337561393 146 3.944480173409298
		 151 0 165 0 173 0 181 19.056675175013929 185 26.01224007361013 188 12.96940227317041
		 190 0 208 0 212 4 216 0 229 0 232 96.544601692886715 236 99.089022921641458 241 100.54117232364537
		 243 100.54117232364537 248 33.94433752264338 251 0 266 0;
	setAttr -s 41 ".kit[0:40]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 16 16 16 16 16 16 16 1 16 16 16 16 16 16 16;
	setAttr -s 41 ".kot[0:40]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 16 16 16 16 16 16 16 1 16 16 16 16 16 16 16;
	setAttr -s 41 ".kix[33:40]"  1 1 0.093420110642910004 1 1 0.0033153700642287731 
		1 1;
	setAttr -s 41 ".kiy[33:40]"  0 0 0.99562680721282959 0 0 -0.99999451637268066 
		0 0;
	setAttr -s 41 ".kox[33:40]"  1 1 0.093420110642910004 1 1 0.0033153700642287731 
		1 1;
	setAttr -s 41 ".koy[33:40]"  0 0 0.99562680721282959 0 0 -0.99999451637268066 
		0 0;
createNode animCurveTL -n "Leg8_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  13 0 16 16 24 26 27 29 39 29 42 44 50 52
		 53 55 65 55 68 68 76 78 79 81 91 81 94 94 102 100 114 100 115 0 125 0 128 27.856765904233605
		 137 -4.4730638773457576 141 -26.529942332728975 143 -27.403851499116634 146 -15.385755727969739
		 151 0 165 0 166 0 173 0 181 -3.2033912415215866 185 -5.0433948108394233 190 0 208 0
		 241 0 243 0 266 0;
	setAttr -s 34 ".kit[0:33]"  2 2 2 16 2 2 2 2 
		2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 16 
		16 16 16 16 16 16 16 16 16;
	setAttr -s 34 ".kot[0:33]"  2 2 2 16 2 2 2 2 
		2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 16 
		16 16 16 16 16 16 16 16 16;
createNode animCurveTA -n "Leg8_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  13 0 39 0 65 0 76 0 91 0 102 0 114 0 125 0
		 165 0 185 0 208 0 241 0 243 0 266 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16;
createNode animCurveTA -n "Leg8_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  13 0 39 0 65 0 76 0 91 0 102 0 114 0 125 0
		 165 0 185 0 208 0 241 0 243 0 266 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16;
createNode animCurveTA -n "Leg8_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  13 0 39 0 65 0 76 0 91 0 102 0 114 0 125 0
		 165 0 185 0 208 0 241 0 243 0 266 0;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16;
createNode animCurveTU -n "Leg8_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  13 1 39 1 65 1 76 1 91 1 102 1 114 1 125 1
		 165 1 185 1 208 1 241 1 243 1 266 1;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16;
createNode animCurveTU -n "Leg8_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  13 1 39 1 65 1 76 1 91 1 102 1 114 1 125 1
		 165 1 185 1 208 1 241 1 243 1 266 1;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16;
createNode animCurveTU -n "Leg8_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  13 1 39 1 65 1 76 1 91 1 102 1 114 1 125 1
		 165 1 185 1 208 1 241 1 243 1 266 1;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 2 2 16 16 
		16 16 16 16 16 16;
createNode animCurveTU -n "Leg9_visibility";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  17 1 28 1 43 1 54 1 69 1 72 1 95 1 114 1
		 129 1 155 1 165 1 208 1 241 1 243 1 266 1;
	setAttr -s 15 ".kit[7:14]"  9 9 9 9 9 9 9 9;
	setAttr -s 15 ".kot[7:14]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Leg9_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  17 0 28 0 43 0 54 0 69 0 72 0 95 0 114 0
		 129 0 155 0 165 0 181 0.75663080071316813 185 0 208 0 216 7.3802367878752912 229 7.3802367878752912
		 232 -3.1688577977501318 241 -1.7094007925001433 243 -1.3181440814094185 251 0 266 0;
	setAttr -s 21 ".kit[0:20]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 21 ".kot[0:20]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 21 ".kix[15:20]"  1 1 0.24038997292518616 0.2368161529302597 
		1 1;
	setAttr -s 21 ".kiy[15:20]"  0 0 0.97067636251449585 0.97155439853668213 
		0 0;
	setAttr -s 21 ".kox[15:20]"  1 1 0.24038997292518616 0.2368161529302597 
		1 1;
	setAttr -s 21 ".koy[15:20]"  0 0 0.97067636251449585 0.97155439853668213 
		0 0;
createNode animCurveTL -n "Leg9_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  17 0 20 15 28 15 31 0 43 0 46 15 54 15 57 0
		 69 0 72 15 80 15 83 0 95 0 98 15 106 15 109 0 114 0 129 0 155 0 165 0 181 31.633142776352813
		 185 45.287838899738958 187 0 208 0 212 4 216 0 229 0 232 96.544601692886715 236 99.089022921641458
		 241 100.54117232364537 243 100.54117232364537 248 33.94433752264338 251 0 266 0;
	setAttr -s 34 ".kit[0:33]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 1 16 16 16 16 16 16 16;
	setAttr -s 34 ".kot[0:33]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 1 16 16 16 16 16 16 16;
	setAttr -s 34 ".kix[26:33]"  1 1 0.093420110642910004 1 1 0.0033153700642287731 
		1 1;
	setAttr -s 34 ".kiy[26:33]"  0 0 0.99562680721282959 0 0 -0.99999451637268066 
		0 0;
	setAttr -s 34 ".kox[26:33]"  1 1 0.093420110642910004 1 1 0.0033153700642287731 
		1 1;
	setAttr -s 34 ".koy[26:33]"  0 0 0.99562680721282959 0 0 -0.99999451637268066 
		0 0;
createNode animCurveTL -n "Leg9_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  17 0 20 19 28 31 31 33 43 33 46 45 54 56
		 57 59 69 59 72 71 80 82 83 85 95 83 98 97 106 100 114 100 115 0 129 0 155 0 165 0
		 166 0 181 -16.023743543340231 185 0 208 0 216 -14.012403704343853 229 -14.012403704343853
		 232 15.869682173106586 241 8.5607019989013864 243 6.6012831654606927 251 0 266 0;
	setAttr -s 31 ".kit[0:30]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 16 16 
		1 16 16 16 16 16;
	setAttr -s 31 ".kot[0:30]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 16 16 
		1 16 16 16 16 16;
	setAttr -s 31 ".kix[25:30]"  1 1 0.049390800297260284 0.048614401370286942 
		1 1;
	setAttr -s 31 ".kiy[25:30]"  0 0 -0.99877959489822388 -0.99881768226623535 
		0 0;
	setAttr -s 31 ".kox[25:30]"  1 1 0.049390800297260284 0.048614401370286942 
		1 1;
	setAttr -s 31 ".koy[25:30]"  0 0 -0.99877959489822388 -0.99881768226623535 
		0 0;
createNode animCurveTA -n "Leg9_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  17 0 28 0 43 0 54 0 69 0 72 0 95 0 114 0
		 129 0 155 0 165 0 208 0 241 0 243 0 266 0;
	setAttr -s 15 ".kit[0:14]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16;
	setAttr -s 15 ".kot[0:14]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16;
createNode animCurveTA -n "Leg9_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  17 0 28 0 43 0 54 0 69 0 72 0 95 0 114 0
		 129 0 155 0 165 0 208 0 241 0 243 0 266 0;
	setAttr -s 15 ".kit[0:14]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16;
	setAttr -s 15 ".kot[0:14]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16;
createNode animCurveTA -n "Leg9_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  17 0 28 0 43 0 54 0 69 0 72 0 95 0 114 0
		 129 0 155 0 165 0 208 0 241 0 243 0 266 0;
	setAttr -s 15 ".kit[0:14]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16;
	setAttr -s 15 ".kot[0:14]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg9_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  17 1 28 1 43 1 54 1 69 1 72 1 95 1 114 1
		 129 1 155 1 165 1 208 1 241 1 243 1 266 1;
	setAttr -s 15 ".kit[0:14]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16;
	setAttr -s 15 ".kot[0:14]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg9_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  17 1 28 1 43 1 54 1 69 1 72 1 95 1 114 1
		 129 1 155 1 165 1 208 1 241 1 243 1 266 1;
	setAttr -s 15 ".kit[0:14]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16;
	setAttr -s 15 ".kot[0:14]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg9_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  17 1 28 1 43 1 54 1 69 1 72 1 95 1 114 1
		 129 1 155 1 165 1 208 1 241 1 243 1 266 1;
	setAttr -s 15 ".kit[0:14]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16;
	setAttr -s 15 ".kot[0:14]"  2 2 2 2 2 2 2 16 
		16 16 16 16 16 16 16;
createNode animCurveTU -n "Leg2_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  5 1 31 1 57 1 83 1 114 1 125 1 151 1 165 1
		 182 1 208 1 241 1 243 1 266 1;
	setAttr -s 13 ".kit[0:12]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16;
	setAttr -s 13 ".kot[0:12]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16;
createNode animCurveTU -n "Leg2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  5 1 31 1 57 1 83 1 114 1 125 1 143 1 151 1
		 165 1 182 1 208 1 241 1 243 1 266 1;
	setAttr -s 14 ".kit[0:13]"  2 2 2 2 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  2 2 2 2 5 5 5 5 
		5 5 5 5 5 5;
createNode animCurveTL -n "Leg2_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  5 0 8 8 16 18 19 21 31 21 34 34 42 44 45 47
		 57 47 60 60 68 70 71 73 83 73 86 86 94 96 97 100 114 100 115 0 125 0 128 27.856765904233605
		 137 -4.4730638773457576 141 -26.529942332728975 143 -28.790040001148775 146 -21.364506906510496
		 151 0 165 0 166 0 182 3.0172730278460449 185 -3.7608888316394697 188 0 208 0 216 0.090383748219085902
		 229 0.090383748219085902 232 0.31847285379726442 241 0.17179620652505928 243 0.13247458001608708
		 251 0 266 0;
	setAttr -s 38 ".kit[0:37]"  2 2 2 16 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 16 16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 38 ".kot[0:37]"  2 2 2 16 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 16 16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 38 ".kix[32:37]"  1 1 0.92660719156265259 0.9244999885559082 
		1 1;
	setAttr -s 38 ".kiy[32:37]"  0 0 -0.37603080272674561 -0.38118201494216919 
		0 0;
	setAttr -s 38 ".kox[32:37]"  1 1 0.92660719156265259 0.9244999885559082 
		1 1;
	setAttr -s 38 ".koy[32:37]"  0 0 -0.37603080272674561 -0.38118201494216919 
		0 0;
createNode animCurveTU -n "Leg2_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  5 1 31 1 57 1 83 1 114 1 125 1 151 1 165 1
		 182 1 208 1 241 1 243 1 266 1;
	setAttr -s 13 ".kit[0:12]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16;
	setAttr -s 13 ".kot[0:12]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16;
createNode animCurveTL -n "Leg2_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  5 0 31 0 57 0 83 0 114 0 125 0 146 0.46107324378650105
		 151 0 165 0 175 5.646818981289087 182 -1.4368568003777247 185 3.0792747151976165
		 188 0 208 0 216 -18.733704310202263 229 -18.733704310202263 232 15.207343281156149
		 241 8.2034115494506086 243 6.3257712067304528 251 0 266 0;
	setAttr -s 21 ".kit[0:20]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 21 ".kot[0:20]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16 16 16 1 16 16 16 16 16;
	setAttr -s 21 ".kix[15:20]"  1 1 0.05153636634349823 0.050726410001516342 
		1 1;
	setAttr -s 21 ".kiy[15:20]"  0 0 -0.99867111444473267 -0.99871259927749634 
		0 0;
	setAttr -s 21 ".kox[15:20]"  1 1 0.05153636634349823 0.050726410001516342 
		1 1;
	setAttr -s 21 ".koy[15:20]"  0 0 -0.99867111444473267 -0.99871259927749634 
		0 0;
createNode animCurveTU -n "Leg2_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  5 1 31 1 57 1 83 1 114 1 125 1 151 1 165 1
		 182 1 208 1 241 1 243 1 266 1;
	setAttr -s 13 ".kit[0:12]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16;
	setAttr -s 13 ".kot[0:12]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16;
createNode animCurveTL -n "Leg2_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  5 0 8 15 16 15 19 0 31 0 34 15 42 15 45 0
		 57 0 60 15 68 17 71 0 83 0 86 15 94 15 97 0 114 0 125 0 128 0.08892007905772914 137 20.493716581135608
		 141 0.42991466316382976 143 0.55095454018480261 146 4.4158721382183863 151 0 165 0
		 170 0 175 13.515591710564665 182 10.783121869808742 185 18.967289267621268 188 0
		 208 0 212 4 216 0 229 0 232 96.544601692886715 236 99.089022921641458 241 100.54117232364537
		 243 100.54117232364537 248 33.94433752264338 251 0 266 0;
	setAttr -s 41 ".kit[0:40]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 16 16 16 16 16 16 16 1 16 16 16 16 16 16 16;
	setAttr -s 41 ".kot[0:40]"  2 2 2 2 2 2 2 2 
		2 2 2 2 2 2 2 2 16 16 16 16 16 16 16 16 16 
		16 16 16 16 16 16 16 16 1 16 16 16 16 16 16 16;
	setAttr -s 41 ".kix[33:40]"  1 1 0.093420110642910004 1 1 0.0033153700642287731 
		1 1;
	setAttr -s 41 ".kiy[33:40]"  0 0 0.99562680721282959 0 0 -0.99999451637268066 
		0 0;
	setAttr -s 41 ".kox[33:40]"  1 1 0.093420110642910004 1 1 0.0033153700642287731 
		1 1;
	setAttr -s 41 ".koy[33:40]"  0 0 0.99562680721282959 0 0 -0.99999451637268066 
		0 0;
createNode animCurveTA -n "Leg2_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  5 0 31 0 57 0 83 0 114 0 125 0 151 0 165 0
		 182 0 208 0 241 0 243 0 266 0;
	setAttr -s 13 ".kit[0:12]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16;
	setAttr -s 13 ".kot[0:12]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16;
createNode animCurveTA -n "Leg2_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  5 0 31 0 57 0 83 0 114 0 125 0 151 0 165 0
		 182 0 208 0 241 0 243 0 266 0;
	setAttr -s 13 ".kit[0:12]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16;
	setAttr -s 13 ".kot[0:12]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16;
createNode animCurveTA -n "Leg2_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  5 0 31 0 57 0 83 0 114 0 125 0 151 0 165 0
		 182 0 208 0 241 0 243 0 266 0;
	setAttr -s 13 ".kit[0:12]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16;
	setAttr -s 13 ".kot[0:12]"  2 2 2 2 16 16 16 16 
		16 16 16 16 16;
createNode animCurveTU -n "pointLight3_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  114 1 165 1 208 1 266 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "pointLight3_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  114 16.429712905404557 115 0 165 0 166 0
		 208 0 266 0;
createNode animCurveTL -n "pointLight3_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  114 -6.1279921100001573 115 0 165 0 166 0
		 208 0 266 0;
createNode animCurveTL -n "pointLight3_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  114 105.0605776541162 115 0 165 0 166 0
		 208 0 266 0;
createNode animCurveTA -n "pointLight3_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  114 0 165 0 208 0 266 0;
createNode animCurveTA -n "pointLight3_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  114 0 165 0 208 0 266 0;
createNode animCurveTA -n "pointLight3_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  114 0 165 0 208 0 266 0;
createNode animCurveTU -n "pointLight3_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  114 1 165 1 208 1 266 1;
createNode animCurveTU -n "pointLight3_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  114 1 165 1 208 1 266 1;
createNode animCurveTU -n "pointLight3_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  114 1 165 1 208 1 266 1;
createNode displayLayer -n "Corner";
	setAttr ".v" no;
	setAttr ".do" 5;
createNode animCurveTL -n "GlobalCTRL_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  115 0 128 0 142 0 155 0 159 0 266 0;
	setAttr -s 6 ".kit[1:5]"  1 1 16 16 16;
	setAttr -s 6 ".kot[1:5]"  1 1 16 16 16;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "GlobalCTRL_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  115 0 128 0 142 -34.038504190451029 155 -34.038504190451029
		 159 -34.038504190451029 160 0 266 0;
	setAttr -s 7 ".kit[1:6]"  1 1 16 16 16 16;
	setAttr -s 7 ".kot[1:6]"  1 1 16 16 16 16;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "GlobalCTRL_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  115 0 128 0 142 33.467792105640747 155 33.467792105640747
		 159 33.467792105640747 160 0 266 0;
	setAttr -s 7 ".kit[1:6]"  1 1 16 16 16 16;
	setAttr -s 7 ".kot[1:6]"  1 1 16 16 16 16;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "GlobalCTRL_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  115 1 128 1 142 1 155 1 159 1 266 1;
	setAttr -s 6 ".kit[0:5]"  9 1 1 9 9 9;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "GlobalCTRL_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  115 0 128 0 142 90 155 90 159 90 160 0 266 0;
	setAttr -s 7 ".kit[1:6]"  1 1 16 16 16 16;
	setAttr -s 7 ".kot[1:6]"  1 1 16 16 16 16;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "GlobalCTRL_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  115 0 128 0 142 0 155 0 159 0 266 0;
	setAttr -s 6 ".kit[1:5]"  1 1 16 16 16;
	setAttr -s 6 ".kot[1:5]"  1 1 16 16 16;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "GlobalCTRL_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  115 0 128 0 142 0 155 0 159 0 266 0;
	setAttr -s 6 ".kit[1:5]"  1 1 16 16 16;
	setAttr -s 6 ".kot[1:5]"  1 1 16 16 16;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "GlobalCTRL_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  115 1 128 1 142 1 155 1 159 1 266 1;
	setAttr -s 6 ".kit[1:5]"  1 1 16 16 16;
	setAttr -s 6 ".kot[1:5]"  1 1 16 16 16;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "GlobalCTRL_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  115 1 128 1 142 1 155 1 159 1 266 1;
	setAttr -s 6 ".kit[1:5]"  1 1 16 16 16;
	setAttr -s 6 ".kot[1:5]"  1 1 16 16 16;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "GlobalCTRL_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  115 1 128 1 142 1 155 1 159 1 266 1;
	setAttr -s 6 ".kit[1:5]"  1 1 16 16 16;
	setAttr -s 6 ".kot[1:5]"  1 1 16 16 16;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "Leg7_blendPoint1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  127 0 128 1 142 1 143 0 266 0;
createNode animCurveTU -n "Leg3_blendPoint1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  127 0 128 1 142 1 143 0 266 0;
createNode pairBlend -n "pairBlend2";
	setAttr ".rm" 2;
createNode pairBlend -n "pairBlend1";
	setAttr ".rm" 2;
createNode polyCube -n "polyCube4";
	setAttr ".w" 3.8057362649364137;
	setAttr ".h" 3.7267307014977149;
	setAttr ".d" 3.6638546489051791;
	setAttr ".cuv" 4;
createNode pairBlend -n "pairBlend3";
	setAttr ".rm" 2;
createNode pairBlend -n "pairBlend4";
	setAttr ".rm" 2;
createNode animCurveTU -n "Leg8_blendPoint1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  127 0 128 1 142 1 143 0 266 0;
createNode animCurveTU -n "Leg2_blendPoint1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  127 0 128 1 142 1 143 0 266 0;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 2.1866943064599491 0 0 0 0 1 0 0 0 0 4.3560243056753496 0
		 1.2390009296763083 -14.159491719587177 -95.59068137540163 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.2390009 -38.01775 27.3603 ;
	setAttr ".rs" 49975;
	setAttr ".lt" -type "double3" 0 -36.576979170629365 133.73136052339987 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -59.771483580429269 -67.939883412702414 27.360299746625557 ;
	setAttr ".cbx" -type "double3" 62.249485439781886 -8.095619382245868 27.360299746625557 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 -44.015003204 -3.82028437
		 0 -44.015003204 -3.82028437 -3.5527137e-015 -3.70151711 -3.82028437 -3.5527137e-015
		 -3.70151711 -3.82028437 -3.5527137e-015 -3.70151711 0 -3.5527137e-015 -3.70151711
		 0 0 -44.015003204 0 0 -44.015003204 0;
createNode polyCube -n "polyCube3";
	setAttr ".w" 55.801566703383571;
	setAttr ".h" 19.530777997979353;
	setAttr ".d" 64.091573058601426;
	setAttr ".cuv" 4;
select -ne :time1;
	setAttr ".o" 303;
	setAttr ".unw" 303;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :initialShadingGroup;
	setAttr -s 17 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 12 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :lightList1;
	setAttr -s 4 ".l";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 4 ".dsm";
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
connectAttr "groupParts5.og" "polySurfaceShape3.i";
connectAttr "groupId7.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts6.og" "polySurfaceShape4.i";
connectAttr "groupId8.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupId5.id" "pCubeShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "groupParts4.og" "pCubeShape8.i";
connectAttr "groupId6.id" "pCubeShape8.ciog.cog[0].cgid";
connectAttr "polyChipOff4.out" "polySurfaceShape9.i";
connectAttr "groupId15.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupId13.id" "pCubeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupParts21.og" "pCubeShape6.i";
connectAttr "groupId14.id" "pCubeShape6.ciog.cog[0].cgid";
connectAttr "groupId19.id" "pCubeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupParts26.og" "pCubeShape7.i";
connectAttr "groupId20.id" "pCubeShape7.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCylinderShape1.i";
connectAttr "groupId2.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "pointLight3_visibility.o" "pointLight3.v";
connectAttr "pointLight3_translateX.o" "pointLight3.tx";
connectAttr "pointLight3_translateY.o" "pointLight3.ty";
connectAttr "pointLight3_translateZ.o" "pointLight3.tz";
connectAttr "pointLight3_rotateX.o" "pointLight3.rx";
connectAttr "pointLight3_rotateY.o" "pointLight3.ry";
connectAttr "pointLight3_rotateZ.o" "pointLight3.rz";
connectAttr "pointLight3_scaleX.o" "pointLight3.sx";
connectAttr "pointLight3_scaleY.o" "pointLight3.sy";
connectAttr "pointLight3_scaleZ.o" "pointLight3.sz";
connectAttr "Corner.di" "pCube11.do";
connectAttr "polyExtrudeFace9.out" "pCubeShape11.i";
connectAttr "GlobalCTRL_translateX.o" "GlobalCTRL.tx";
connectAttr "GlobalCTRL_translateY.o" "GlobalCTRL.ty";
connectAttr "GlobalCTRL_translateZ.o" "GlobalCTRL.tz";
connectAttr "GlobalCTRL_rotateX.o" "GlobalCTRL.rx";
connectAttr "GlobalCTRL_rotateY.o" "GlobalCTRL.ry";
connectAttr "GlobalCTRL_rotateZ.o" "GlobalCTRL.rz";
connectAttr "GlobalCTRL_scaleX.o" "GlobalCTRL.sx";
connectAttr "GlobalCTRL_scaleY.o" "GlobalCTRL.sy";
connectAttr "GlobalCTRL_scaleZ.o" "GlobalCTRL.sz";
connectAttr "GlobalCTRL_visibility.o" "GlobalCTRL.v";
connectAttr "CenterJoint_parentConstraint1.ctx" "CenterJoint.tx";
connectAttr "CenterJoint_parentConstraint1.cty" "CenterJoint.ty";
connectAttr "CenterJoint_parentConstraint1.ctz" "CenterJoint.tz";
connectAttr "CenterJoint_parentConstraint1.crx" "CenterJoint.rx";
connectAttr "CenterJoint_parentConstraint1.cry" "CenterJoint.ry";
connectAttr "CenterJoint_parentConstraint1.crz" "CenterJoint.rz";
connectAttr "CenterJoint.s" "joint1.is";
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint1|FirstLeg.do";
connectAttr "polyTweakUV3.out" "|GlobalCTRL|CenterJoint|joint1|FirstLeg|FirstLegShape.i"
		;
connectAttr "polyTweakUV3.uvtk[0]" "|GlobalCTRL|CenterJoint|joint1|FirstLeg|FirstLegShape.uvst[0].uvtw"
		;
connectAttr "joint1.s" "|GlobalCTRL|CenterJoint|joint1|joint2.is";
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint1|joint2|SecondLeg.do"
		;
connectAttr "polyTweakUV14.out" "|GlobalCTRL|CenterJoint|joint1|joint2|SecondLeg|SecondLegShape.i"
		;
connectAttr "polyTweakUV14.uvtk[0]" "|GlobalCTRL|CenterJoint|joint1|joint2|SecondLeg|SecondLegShape.uvst[0].uvtw"
		;
connectAttr "RedGlowLayer.di" "|GlobalCTRL|CenterJoint|joint1|joint2|SecondLeg|SecondLegGlow.do"
		;
connectAttr "polyTweakUV15.out" "|GlobalCTRL|CenterJoint|joint1|joint2|SecondLeg|SecondLegGlow|SecondLegGlowShape.i"
		;
connectAttr "polyTweakUV15.uvtk[0]" "|GlobalCTRL|CenterJoint|joint1|joint2|SecondLeg|SecondLegGlow|SecondLegGlowShape.uvst[0].uvtw"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint1|joint2.s" "|GlobalCTRL|CenterJoint|joint1|joint2|joint3.is"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint1|joint2|joint3.s" "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|joint4.is"
		;
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|ThirdLeg.do"
		;
connectAttr "polyTweakUV7.out" "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|ThirdLeg|ThirdLegShape.i"
		;
connectAttr "polyTweakUV7.uvtk[0]" "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|ThirdLeg|ThirdLegShape.uvst[0].uvtw"
		;
connectAttr "RedGlowLayer.di" "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|ThirdLeg|ThirdLegGlow.do"
		;
connectAttr "polyTweakUV8.out" "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|ThirdLeg|ThirdLegGlow|ThirdLegGlowShape.i"
		;
connectAttr "polyTweakUV8.uvtk[0]" "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|ThirdLeg|ThirdLegGlow|ThirdLegGlowShape.uvst[0].uvtw"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|joint4.tx" "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|effector1.tx"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|joint4.ty" "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|effector1.ty"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|joint4.tz" "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|effector1.tz"
		;
connectAttr "CenterJoint.s" "joint5.is";
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint5|FirstLeg.do";
connectAttr "polyTweakUV5.out" "|GlobalCTRL|CenterJoint|joint5|FirstLeg|FirstLegShape.i"
		;
connectAttr "polyTweakUV5.uvtk[0]" "|GlobalCTRL|CenterJoint|joint5|FirstLeg|FirstLegShape.uvst[0].uvtw"
		;
connectAttr "joint5.s" "|GlobalCTRL|CenterJoint|joint5|joint2.is";
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint5|joint2|SecondLeg.do"
		;
connectAttr "polyTweakUV19.out" "|GlobalCTRL|CenterJoint|joint5|joint2|SecondLeg|SecondLegShape.i"
		;
connectAttr "polyTweakUV19.uvtk[0]" "|GlobalCTRL|CenterJoint|joint5|joint2|SecondLeg|SecondLegShape.uvst[0].uvtw"
		;
connectAttr "RedGlowLayer.di" "|GlobalCTRL|CenterJoint|joint5|joint2|SecondLeg|SecondLegGlow.do"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint5|joint2.s" "|GlobalCTRL|CenterJoint|joint5|joint2|joint3.is"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint5|joint2|joint3.s" "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|joint4.is"
		;
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|ThirdLeg.do"
		;
connectAttr "polyTweakUV10.out" "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|ThirdLeg|ThirdLegShape.i"
		;
connectAttr "polyTweakUV10.uvtk[0]" "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|ThirdLeg|ThirdLegShape.uvst[0].uvtw"
		;
connectAttr "RedGlowLayer.di" "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|ThirdLeg|ThirdLegGlow.do"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|joint4.tx" "effector5.tx"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|joint4.ty" "effector5.ty"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|joint4.tz" "effector5.tz"
		;
connectAttr "CenterJoint.s" "joint6.is";
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint6|FirstLeg.do";
connectAttr "polyTweakUV6.out" "|GlobalCTRL|CenterJoint|joint6|FirstLeg|FirstLegShape.i"
		;
connectAttr "polyTweakUV6.uvtk[0]" "|GlobalCTRL|CenterJoint|joint6|FirstLeg|FirstLegShape.uvst[0].uvtw"
		;
connectAttr "joint6.s" "|GlobalCTRL|CenterJoint|joint6|joint2.is";
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint6|joint2|SecondLeg.do"
		;
connectAttr "polyTweakUV18.out" "|GlobalCTRL|CenterJoint|joint6|joint2|SecondLeg|SecondLegShape.i"
		;
connectAttr "polyTweakUV18.uvtk[0]" "|GlobalCTRL|CenterJoint|joint6|joint2|SecondLeg|SecondLegShape.uvst[0].uvtw"
		;
connectAttr "RedGlowLayer.di" "|GlobalCTRL|CenterJoint|joint6|joint2|SecondLeg|SecondLegGlow.do"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint6|joint2.s" "|GlobalCTRL|CenterJoint|joint6|joint2|joint3.is"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint6|joint2|joint3.s" "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|joint4.is"
		;
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|ThirdLeg.do"
		;
connectAttr "polyTweakUV11.out" "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|ThirdLeg|ThirdLegShape.i"
		;
connectAttr "polyTweakUV11.uvtk[0]" "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|ThirdLeg|ThirdLegShape.uvst[0].uvtw"
		;
connectAttr "RedGlowLayer.di" "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|ThirdLeg|ThirdLegGlow.do"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|joint4.tx" "effector4.tx"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|joint4.ty" "effector4.ty"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|joint4.tz" "effector4.tz"
		;
connectAttr "CenterJoint.s" "joint7.is";
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint7|FirstLeg.do";
connectAttr "polyTweakUV1.out" "|GlobalCTRL|CenterJoint|joint7|FirstLeg|FirstLegShape.i"
		;
connectAttr "polyTweakUV1.uvtk[0]" "|GlobalCTRL|CenterJoint|joint7|FirstLeg|FirstLegShape.uvst[0].uvtw"
		;
connectAttr "joint7.s" "|GlobalCTRL|CenterJoint|joint7|joint2.is";
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint7|joint2|SecondLeg.do"
		;
connectAttr "polyTweakUV17.out" "|GlobalCTRL|CenterJoint|joint7|joint2|SecondLeg|SecondLegShape.i"
		;
connectAttr "polyTweakUV17.uvtk[0]" "|GlobalCTRL|CenterJoint|joint7|joint2|SecondLeg|SecondLegShape.uvst[0].uvtw"
		;
connectAttr "RedGlowLayer.di" "|GlobalCTRL|CenterJoint|joint7|joint2|SecondLeg|SecondLegGlow.do"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint7|joint2.s" "|GlobalCTRL|CenterJoint|joint7|joint2|joint3.is"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint7|joint2|joint3.s" "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|joint4.is"
		;
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|ThirdLeg.do"
		;
connectAttr "polyTweakUV12.out" "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|ThirdLeg|ThirdLegShape.i"
		;
connectAttr "polyTweakUV12.uvtk[0]" "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|ThirdLeg|ThirdLegShape.uvst[0].uvtw"
		;
connectAttr "RedGlowLayer.di" "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|ThirdLeg|ThirdLegGlow.do"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|joint4.tx" "effector3.tx"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|joint4.ty" "effector3.ty"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|joint4.tz" "effector3.tz"
		;
connectAttr "CenterJoint.s" "joint8.is";
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint8|FirstLeg.do";
connectAttr "polyTweakUV2.out" "|GlobalCTRL|CenterJoint|joint8|FirstLeg|FirstLegShape.i"
		;
connectAttr "polyTweakUV2.uvtk[0]" "|GlobalCTRL|CenterJoint|joint8|FirstLeg|FirstLegShape.uvst[0].uvtw"
		;
connectAttr "joint8.s" "|GlobalCTRL|CenterJoint|joint8|joint2.is";
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint8|joint2|SecondLeg.do"
		;
connectAttr "polyTweakUV16.out" "|GlobalCTRL|CenterJoint|joint8|joint2|SecondLeg|SecondLegShape.i"
		;
connectAttr "polyTweakUV16.uvtk[0]" "|GlobalCTRL|CenterJoint|joint8|joint2|SecondLeg|SecondLegShape.uvst[0].uvtw"
		;
connectAttr "RedGlowLayer.di" "|GlobalCTRL|CenterJoint|joint8|joint2|SecondLeg|SecondLegGlow.do"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint8|joint2.s" "|GlobalCTRL|CenterJoint|joint8|joint2|joint3.is"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint8|joint2|joint3.s" "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|joint4.is"
		;
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|ThirdLeg.do"
		;
connectAttr "polyTweakUV13.out" "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|ThirdLeg|ThirdLegShape.i"
		;
connectAttr "polyTweakUV13.uvtk[0]" "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|ThirdLeg|ThirdLegShape.uvst[0].uvtw"
		;
connectAttr "RedGlowLayer.di" "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|ThirdLeg|ThirdLegGlow.do"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|joint4.tx" "effector2.tx"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|joint4.ty" "effector2.ty"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|joint4.tz" "effector2.tz"
		;
connectAttr "SeekrPlygns.di" "pCylinder2.do";
connectAttr "polyTweakUV26.out" "pCylinderShape2.i";
connectAttr "polyTweakUV26.uvtk[0]" "pCylinderShape2.uvst[0].uvtw";
connectAttr "SeekrPlygns.di" "polySurface1.do";
connectAttr "SeekrPlygns.di" "pCube10.do";
connectAttr "polyTweakUV29.out" "pCubeShape10.i";
connectAttr "polyTweakUV29.uvtk[0]" "pCubeShape10.uvst[0].uvtw";
connectAttr "SeekrPlygns.di" "pCube9.do";
connectAttr "polyTweakUV28.out" "pCubeShape9.i";
connectAttr "polyTweakUV28.uvtk[0]" "pCubeShape9.uvst[0].uvtw";
connectAttr "SeekrPlygns.di" "polySurface6.do";
connectAttr "polyTweakUV32.out" "polySurfaceShape6.i";
connectAttr "polyTweakUV32.uvtk[0]" "polySurfaceShape6.uvst[0].uvtw";
connectAttr "RedGlowLayer.di" "polySurface13.do";
connectAttr "polySeparate8.out[0]" "polySurfaceShape33.i";
connectAttr "polyTweakUV30.out" "polySurfaceShape35.i";
connectAttr "polyTweakUV30.uvtk[0]" "polySurfaceShape35.uvst[0].uvtw";
connectAttr "RedGlowLayer.di" "polySurface14.do";
connectAttr "polyTweakUV31.out" "polySurfaceShape34.i";
connectAttr "polyTweakUV31.uvtk[0]" "polySurfaceShape34.uvst[0].uvtw";
connectAttr "polyChipOff8.out" "polySurfaceShape1.i";
connectAttr "groupId70.id" "polySurfaceShape1.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape1.iog.og[1].gco";
connectAttr "groupId72.id" "polySurfaceShape1.iog.og[2].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape1.iog.og[2].gco";
connectAttr "polyTweakUV24.uvtk[0]" "polySurfaceShape1.uvst[0].uvtw";
connectAttr "groupId71.id" "polySurfaceShape1.ciog.cog[0].cgid";
connectAttr "SeekrPlygns.di" "polySurface5.do";
connectAttr "RedGlowLayer.di" "polySurface8.do";
connectAttr "polySeparate6.out[0]" "polySurfaceShape10.i";
connectAttr "RedGlowLayer.di" "polySurface9.do";
connectAttr "polySeparate6.out[1]" "polySurfaceShape11.i";
connectAttr "groupParts43.og" "polySurfaceShape29.i";
connectAttr "groupId69.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "polyTweakUV27.out" "polySurfaceShape30.i";
connectAttr "polyTweakUV27.uvtk[0]" "polySurfaceShape30.uvst[0].uvtw";
connectAttr "polyChipOff7.out" "polySurfaceShape12.i";
connectAttr "groupId66.id" "polySurfaceShape12.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape12.iog.og[1].gco";
connectAttr "groupId68.id" "polySurfaceShape12.iog.og[2].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape12.iog.og[2].gco";
connectAttr "polyTweakUV22.uvtk[0]" "polySurfaceShape12.uvst[0].uvtw";
connectAttr "groupId67.id" "polySurfaceShape12.ciog.cog[0].cgid";
connectAttr "polyChipOff6.out" "polySurfaceShape5.i";
connectAttr "groupId11.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "CenterJoint.s" "joint9.is";
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint9|FirstLeg.do";
connectAttr "polyTweakUV4.out" "|GlobalCTRL|CenterJoint|joint9|FirstLeg|FirstLegShape.i"
		;
connectAttr "polyTweakUV4.uvtk[0]" "|GlobalCTRL|CenterJoint|joint9|FirstLeg|FirstLegShape.uvst[0].uvtw"
		;
connectAttr "joint9.s" "|GlobalCTRL|CenterJoint|joint9|joint2.is";
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint9|joint2|SecondLeg.do"
		;
connectAttr "polyTweakUV20.out" "|GlobalCTRL|CenterJoint|joint9|joint2|SecondLeg|SecondLegShape.i"
		;
connectAttr "polyTweakUV20.uvtk[0]" "|GlobalCTRL|CenterJoint|joint9|joint2|SecondLeg|SecondLegShape.uvst[0].uvtw"
		;
connectAttr "RedGlowLayer.di" "|GlobalCTRL|CenterJoint|joint9|joint2|SecondLeg|SecondLegGlow.do"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint9|joint2.s" "|GlobalCTRL|CenterJoint|joint9|joint2|joint3.is"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint9|joint2|joint3.s" "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|joint4.is"
		;
connectAttr "SeekrPlygns.di" "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|ThirdLeg.do"
		;
connectAttr "polyTweakUV9.out" "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|ThirdLeg|ThirdLegShape.i"
		;
connectAttr "polyTweakUV9.uvtk[0]" "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|ThirdLeg|ThirdLegShape.uvst[0].uvtw"
		;
connectAttr "RedGlowLayer.di" "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|ThirdLeg|ThirdLegGlow.do"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|joint4.tx" "effector6.tx"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|joint4.ty" "effector6.ty"
		;
connectAttr "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|joint4.tz" "effector6.tz"
		;
connectAttr "CenterJoint.ro" "CenterJoint_parentConstraint1.cro";
connectAttr "CenterJoint.pim" "CenterJoint_parentConstraint1.cpim";
connectAttr "CenterJoint.rp" "CenterJoint_parentConstraint1.crp";
connectAttr "CenterJoint.rpt" "CenterJoint_parentConstraint1.crt";
connectAttr "CenterJoint.jo" "CenterJoint_parentConstraint1.cjo";
connectAttr "GCtrl.t" "CenterJoint_parentConstraint1.tg[0].tt";
connectAttr "GCtrl.rp" "CenterJoint_parentConstraint1.tg[0].trp";
connectAttr "GCtrl.rpt" "CenterJoint_parentConstraint1.tg[0].trt";
connectAttr "GCtrl.r" "CenterJoint_parentConstraint1.tg[0].tr";
connectAttr "GCtrl.ro" "CenterJoint_parentConstraint1.tg[0].tro";
connectAttr "GCtrl.s" "CenterJoint_parentConstraint1.tg[0].ts";
connectAttr "GCtrl.pm" "CenterJoint_parentConstraint1.tg[0].tpm";
connectAttr "CenterJoint_parentConstraint1.w0" "CenterJoint_parentConstraint1.tg[0].tw"
		;
connectAttr "joint1.msg" "ikHandle1.hsj";
connectAttr "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|effector1.hp" "ikHandle1.hee"
		;
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_pointConstraint1.ctx" "ikHandle1.tx";
connectAttr "ikHandle1_pointConstraint1.cty" "ikHandle1.ty";
connectAttr "ikHandle1_pointConstraint1.ctz" "ikHandle1.tz";
connectAttr "ikHandle1.pim" "ikHandle1_pointConstraint1.cpim";
connectAttr "ikHandle1.rp" "ikHandle1_pointConstraint1.crp";
connectAttr "ikHandle1.rpt" "ikHandle1_pointConstraint1.crt";
connectAttr "Leg7.t" "ikHandle1_pointConstraint1.tg[0].tt";
connectAttr "Leg7.rp" "ikHandle1_pointConstraint1.tg[0].trp";
connectAttr "Leg7.rpt" "ikHandle1_pointConstraint1.tg[0].trt";
connectAttr "Leg7.pm" "ikHandle1_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle1_pointConstraint1.w0" "ikHandle1_pointConstraint1.tg[0].tw"
		;
connectAttr "joint8.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikRPsolver.msg" "ikHandle2.hsv";
connectAttr "ikHandle2_pointConstraint1.ctx" "ikHandle2.tx";
connectAttr "ikHandle2_pointConstraint1.cty" "ikHandle2.ty";
connectAttr "ikHandle2_pointConstraint1.ctz" "ikHandle2.tz";
connectAttr "ikHandle2.pim" "ikHandle2_pointConstraint1.cpim";
connectAttr "ikHandle2.rp" "ikHandle2_pointConstraint1.crp";
connectAttr "ikHandle2.rpt" "ikHandle2_pointConstraint1.crt";
connectAttr "Leg8.t" "ikHandle2_pointConstraint1.tg[0].tt";
connectAttr "Leg8.rp" "ikHandle2_pointConstraint1.tg[0].trp";
connectAttr "Leg8.rpt" "ikHandle2_pointConstraint1.tg[0].trt";
connectAttr "Leg8.pm" "ikHandle2_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle2_pointConstraint1.w0" "ikHandle2_pointConstraint1.tg[0].tw"
		;
connectAttr "joint7.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikRPsolver.msg" "ikHandle3.hsv";
connectAttr "ikHandle3_pointConstraint1.ctx" "ikHandle3.tx";
connectAttr "ikHandle3_pointConstraint1.cty" "ikHandle3.ty";
connectAttr "ikHandle3_pointConstraint1.ctz" "ikHandle3.tz";
connectAttr "ikHandle3.pim" "ikHandle3_pointConstraint1.cpim";
connectAttr "ikHandle3.rp" "ikHandle3_pointConstraint1.crp";
connectAttr "ikHandle3.rpt" "ikHandle3_pointConstraint1.crt";
connectAttr "Leg9.t" "ikHandle3_pointConstraint1.tg[0].tt";
connectAttr "Leg9.rp" "ikHandle3_pointConstraint1.tg[0].trp";
connectAttr "Leg9.rpt" "ikHandle3_pointConstraint1.tg[0].trt";
connectAttr "Leg9.pm" "ikHandle3_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle3_pointConstraint1.w0" "ikHandle3_pointConstraint1.tg[0].tw"
		;
connectAttr "joint6.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikRPsolver.msg" "ikHandle4.hsv";
connectAttr "ikHandle4_pointConstraint1.ctx" "ikHandle4.tx";
connectAttr "ikHandle4_pointConstraint1.cty" "ikHandle4.ty";
connectAttr "ikHandle4_pointConstraint1.ctz" "ikHandle4.tz";
connectAttr "ikHandle4.pim" "ikHandle4_pointConstraint1.cpim";
connectAttr "ikHandle4.rp" "ikHandle4_pointConstraint1.crp";
connectAttr "ikHandle4.rpt" "ikHandle4_pointConstraint1.crt";
connectAttr "|GlobalCTRL|Leg1.t" "ikHandle4_pointConstraint1.tg[0].tt";
connectAttr "|GlobalCTRL|Leg1.rp" "ikHandle4_pointConstraint1.tg[0].trp";
connectAttr "|GlobalCTRL|Leg1.rpt" "ikHandle4_pointConstraint1.tg[0].trt";
connectAttr "|GlobalCTRL|Leg1.pm" "ikHandle4_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle4_pointConstraint1.w0" "ikHandle4_pointConstraint1.tg[0].tw"
		;
connectAttr "joint5.msg" "ikHandle5.hsj";
connectAttr "effector5.hp" "ikHandle5.hee";
connectAttr "ikRPsolver.msg" "ikHandle5.hsv";
connectAttr "ikHandle5_pointConstraint1.ctx" "ikHandle5.tx";
connectAttr "ikHandle5_pointConstraint1.cty" "ikHandle5.ty";
connectAttr "ikHandle5_pointConstraint1.ctz" "ikHandle5.tz";
connectAttr "ikHandle5.pim" "ikHandle5_pointConstraint1.cpim";
connectAttr "ikHandle5.rp" "ikHandle5_pointConstraint1.crp";
connectAttr "ikHandle5.rpt" "ikHandle5_pointConstraint1.crt";
connectAttr "|GlobalCTRL|Leg2.t" "ikHandle5_pointConstraint1.tg[0].tt";
connectAttr "|GlobalCTRL|Leg2.rp" "ikHandle5_pointConstraint1.tg[0].trp";
connectAttr "|GlobalCTRL|Leg2.rpt" "ikHandle5_pointConstraint1.tg[0].trt";
connectAttr "|GlobalCTRL|Leg2.pm" "ikHandle5_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle5_pointConstraint1.w0" "ikHandle5_pointConstraint1.tg[0].tw"
		;
connectAttr "joint9.msg" "ikHandle6.hsj";
connectAttr "effector6.hp" "ikHandle6.hee";
connectAttr "ikRPsolver.msg" "ikHandle6.hsv";
connectAttr "ikHandle6_pointConstraint1.ctx" "ikHandle6.tx";
connectAttr "ikHandle6_pointConstraint1.cty" "ikHandle6.ty";
connectAttr "ikHandle6_pointConstraint1.ctz" "ikHandle6.tz";
connectAttr "ikHandle6.pim" "ikHandle6_pointConstraint1.cpim";
connectAttr "ikHandle6.rp" "ikHandle6_pointConstraint1.crp";
connectAttr "ikHandle6.rpt" "ikHandle6_pointConstraint1.crt";
connectAttr "|GlobalCTRL|Leg3.t" "ikHandle6_pointConstraint1.tg[0].tt";
connectAttr "|GlobalCTRL|Leg3.rp" "ikHandle6_pointConstraint1.tg[0].trp";
connectAttr "|GlobalCTRL|Leg3.rpt" "ikHandle6_pointConstraint1.tg[0].trt";
connectAttr "|GlobalCTRL|Leg3.pm" "ikHandle6_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle6_pointConstraint1.w0" "ikHandle6_pointConstraint1.tg[0].tw"
		;
connectAttr "GCtrl_translateX.o" "GCtrl.tx";
connectAttr "GCtrl_translateY.o" "GCtrl.ty";
connectAttr "GCtrl_translateZ.o" "GCtrl.tz";
connectAttr "GCtrl_rotateX.o" "GCtrl.rx";
connectAttr "GCtrl_rotateY.o" "GCtrl.ry";
connectAttr "GCtrl_rotateZ.o" "GCtrl.rz";
connectAttr "GCtrl_scaleX.o" "GCtrl.sx";
connectAttr "GCtrl_scaleY.o" "GCtrl.sy";
connectAttr "GCtrl_scaleZ.o" "GCtrl.sz";
connectAttr "GCtrl_visibility.o" "GCtrl.v";
connectAttr "transformGeometry7.og" "GCtrlShape.cr";
connectAttr "pairBlend4.otx" "|GlobalCTRL|Leg2.tx";
connectAttr "pairBlend4.oty" "|GlobalCTRL|Leg2.ty";
connectAttr "pairBlend4.otz" "|GlobalCTRL|Leg2.tz";
connectAttr "Leg2_visibility.o" "|GlobalCTRL|Leg2.v";
connectAttr "Leg2_rotateX.o" "|GlobalCTRL|Leg2.rx";
connectAttr "Leg2_rotateY.o" "|GlobalCTRL|Leg2.ry";
connectAttr "Leg2_rotateZ.o" "|GlobalCTRL|Leg2.rz";
connectAttr "Leg2_scaleX.o" "|GlobalCTRL|Leg2.sx";
connectAttr "Leg2_scaleY.o" "|GlobalCTRL|Leg2.sy";
connectAttr "Leg2_scaleZ.o" "|GlobalCTRL|Leg2.sz";
connectAttr "Leg2_blendPoint1.o" "|GlobalCTRL|Leg2.blendPoint1";
connectAttr "|GlobalCTRL|Leg2.pim" "Leg2_pointConstraint1.cpim";
connectAttr "|GlobalCTRL|Leg2.rp" "Leg2_pointConstraint1.crp";
connectAttr "|GlobalCTRL|Leg2.rpt" "Leg2_pointConstraint1.crt";
connectAttr "pCube14.t" "Leg2_pointConstraint1.tg[0].tt";
connectAttr "pCube14.rp" "Leg2_pointConstraint1.tg[0].trp";
connectAttr "pCube14.rpt" "Leg2_pointConstraint1.tg[0].trt";
connectAttr "pCube14.pm" "Leg2_pointConstraint1.tg[0].tpm";
connectAttr "Leg2_pointConstraint1.w0" "Leg2_pointConstraint1.tg[0].tw";
connectAttr "pairBlend2.otx" "|GlobalCTRL|Leg3.tx";
connectAttr "pairBlend2.oty" "|GlobalCTRL|Leg3.ty";
connectAttr "pairBlend2.otz" "|GlobalCTRL|Leg3.tz";
connectAttr "Leg3_visibility.o" "|GlobalCTRL|Leg3.v";
connectAttr "Leg3_rotateX.o" "|GlobalCTRL|Leg3.rx";
connectAttr "Leg3_rotateY.o" "|GlobalCTRL|Leg3.ry";
connectAttr "Leg3_rotateZ.o" "|GlobalCTRL|Leg3.rz";
connectAttr "Leg3_scaleX.o" "|GlobalCTRL|Leg3.sx";
connectAttr "Leg3_scaleY.o" "|GlobalCTRL|Leg3.sy";
connectAttr "Leg3_scaleZ.o" "|GlobalCTRL|Leg3.sz";
connectAttr "Leg3_blendPoint1.o" "|GlobalCTRL|Leg3.blendPoint1";
connectAttr "|GlobalCTRL|Leg3.pim" "Leg3_pointConstraint1.cpim";
connectAttr "|GlobalCTRL|Leg3.rp" "Leg3_pointConstraint1.crp";
connectAttr "|GlobalCTRL|Leg3.rpt" "Leg3_pointConstraint1.crt";
connectAttr "pCube13.t" "Leg3_pointConstraint1.tg[0].tt";
connectAttr "pCube13.rp" "Leg3_pointConstraint1.tg[0].trp";
connectAttr "pCube13.rpt" "Leg3_pointConstraint1.tg[0].trt";
connectAttr "pCube13.pm" "Leg3_pointConstraint1.tg[0].tpm";
connectAttr "Leg3_pointConstraint1.w0" "Leg3_pointConstraint1.tg[0].tw";
connectAttr "pairBlend1.otx" "Leg7.tx";
connectAttr "pairBlend1.oty" "Leg7.ty";
connectAttr "pairBlend1.otz" "Leg7.tz";
connectAttr "Leg7_visibility.o" "Leg7.v";
connectAttr "Leg7_rotateX.o" "Leg7.rx";
connectAttr "Leg7_rotateY.o" "Leg7.ry";
connectAttr "Leg7_rotateZ.o" "Leg7.rz";
connectAttr "Leg7_scaleX.o" "Leg7.sx";
connectAttr "Leg7_scaleY.o" "Leg7.sy";
connectAttr "Leg7_scaleZ.o" "Leg7.sz";
connectAttr "Leg7_blendPoint1.o" "Leg7.blendPoint1";
connectAttr "Leg7.pim" "Leg7_pointConstraint1.cpim";
connectAttr "Leg7.rp" "Leg7_pointConstraint1.crp";
connectAttr "Leg7.rpt" "Leg7_pointConstraint1.crt";
connectAttr "pCube12.t" "Leg7_pointConstraint1.tg[0].tt";
connectAttr "pCube12.rp" "Leg7_pointConstraint1.tg[0].trp";
connectAttr "pCube12.rpt" "Leg7_pointConstraint1.tg[0].trt";
connectAttr "pCube12.pm" "Leg7_pointConstraint1.tg[0].tpm";
connectAttr "Leg7_pointConstraint1.w0" "Leg7_pointConstraint1.tg[0].tw";
connectAttr "pairBlend3.otx" "Leg8.tx";
connectAttr "pairBlend3.oty" "Leg8.ty";
connectAttr "pairBlend3.otz" "Leg8.tz";
connectAttr "Leg8_visibility.o" "Leg8.v";
connectAttr "Leg8_rotateX.o" "Leg8.rx";
connectAttr "Leg8_rotateY.o" "Leg8.ry";
connectAttr "Leg8_rotateZ.o" "Leg8.rz";
connectAttr "Leg8_scaleX.o" "Leg8.sx";
connectAttr "Leg8_scaleY.o" "Leg8.sy";
connectAttr "Leg8_scaleZ.o" "Leg8.sz";
connectAttr "Leg8_blendPoint1.o" "Leg8.blendPoint1";
connectAttr "Leg8.pim" "Leg8_pointConstraint1.cpim";
connectAttr "Leg8.rp" "Leg8_pointConstraint1.crp";
connectAttr "Leg8.rpt" "Leg8_pointConstraint1.crt";
connectAttr "pCube15.t" "Leg8_pointConstraint1.tg[0].tt";
connectAttr "pCube15.rp" "Leg8_pointConstraint1.tg[0].trp";
connectAttr "pCube15.rpt" "Leg8_pointConstraint1.tg[0].trt";
connectAttr "pCube15.pm" "Leg8_pointConstraint1.tg[0].tpm";
connectAttr "Leg8_pointConstraint1.w0" "Leg8_pointConstraint1.tg[0].tw";
connectAttr "Leg9_translateX.o" "Leg9.tx";
connectAttr "Leg9_translateY.o" "Leg9.ty";
connectAttr "Leg9_translateZ.o" "Leg9.tz";
connectAttr "Leg9_visibility.o" "Leg9.v";
connectAttr "Leg9_rotateX.o" "Leg9.rx";
connectAttr "Leg9_rotateY.o" "Leg9.ry";
connectAttr "Leg9_rotateZ.o" "Leg9.rz";
connectAttr "Leg9_scaleX.o" "Leg9.sx";
connectAttr "Leg9_scaleY.o" "Leg9.sy";
connectAttr "Leg9_scaleZ.o" "Leg9.sz";
connectAttr "Leg1_translateX.o" "|GlobalCTRL|Leg1.tx";
connectAttr "Leg1_translateY.o" "|GlobalCTRL|Leg1.ty";
connectAttr "Leg1_translateZ.o" "|GlobalCTRL|Leg1.tz";
connectAttr "Leg1_visibility.o" "|GlobalCTRL|Leg1.v";
connectAttr "Leg1_rotateX.o" "|GlobalCTRL|Leg1.rx";
connectAttr "Leg1_rotateY.o" "|GlobalCTRL|Leg1.ry";
connectAttr "Leg1_rotateZ.o" "|GlobalCTRL|Leg1.rz";
connectAttr "Leg1_scaleX.o" "|GlobalCTRL|Leg1.sx";
connectAttr "Leg1_scaleY.o" "|GlobalCTRL|Leg1.sy";
connectAttr "Leg1_scaleZ.o" "|GlobalCTRL|Leg1.sz";
connectAttr "polyCube4.out" "pCubeShape12.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace2.out" "polySoftEdge1.ip";
connectAttr "pCubeShape8.wm" "polySoftEdge1.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyCylinder1.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyChipOff1.ip";
connectAttr "pCylinderShape1.wm" "polyChipOff1.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "pCylinderShape1.o" "polySeparate1.ip";
connectAttr "polyChipOff1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySoftEdge1.out" "polyChipOff2.ip";
connectAttr "pCubeShape8.wm" "polyChipOff2.mp";
connectAttr "pCubeShape8.o" "polySeparate2.ip";
connectAttr "polyChipOff2.out" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "polySeparate2.out[0]" "groupParts5.ig";
connectAttr "groupId7.id" "groupParts5.gi";
connectAttr "polySeparate2.out[1]" "groupParts6.ig";
connectAttr "groupId8.id" "groupParts6.gi";
connectAttr "polySurfaceShape3.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape4.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape3.wm" "polyUnite1.im[0]";
connectAttr "polySurfaceShape4.wm" "polyUnite1.im[1]";
connectAttr "polyUnite1.out" "groupParts7.ig";
connectAttr "groupParts7.og" "polyCut1.ip";
connectAttr "polySurfaceShape5.wm" "polyCut1.mp";
connectAttr "polyCut1.out" "polyCut2.ip";
connectAttr "polySurfaceShape5.wm" "polyCut2.mp";
connectAttr "polyCut2.out" "polyExtrudeFace5.ip";
connectAttr "polySurfaceShape5.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyTweak7.ip";
connectAttr "polyTweak7.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyExtrudeEdge1.ip";
connectAttr "polySurfaceShape5.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "groupParts8.ig";
connectAttr "polyTweak8.out" "polyExtrudeEdge2.ip";
connectAttr "polySurfaceShape5.wm" "polyExtrudeEdge2.mp";
connectAttr "groupParts8.og" "polyTweak8.ip";
connectAttr "polyExtrudeEdge2.out" "groupParts9.ig";
connectAttr "groupParts9.og" "polyTweak9.ip";
connectAttr "polyTweak9.out" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "polyBridgeEdge1.ip";
connectAttr "polySurfaceShape5.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "groupParts10.ig";
connectAttr "groupParts10.og" "polyBridgeEdge2.ip";
connectAttr "polySurfaceShape5.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "groupParts11.ig";
connectAttr "groupParts11.og" "polyBridgeEdge3.ip";
connectAttr "polySurfaceShape5.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "groupParts12.ig";
connectAttr "groupParts12.og" "polyBridgeEdge4.ip";
connectAttr "polySurfaceShape5.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "groupParts13.ig";
connectAttr "groupParts13.og" "groupParts14.ig";
connectAttr "groupParts14.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "polyBridgeEdge6.ip";
connectAttr "polySurfaceShape5.wm" "polyBridgeEdge6.mp";
connectAttr "polyBridgeEdge6.out" "groupParts15.ig";
connectAttr "groupParts15.og" "polyBridgeEdge7.ip";
connectAttr "polySurfaceShape5.wm" "polyBridgeEdge7.mp";
connectAttr "polyBridgeEdge7.out" "groupParts16.ig";
connectAttr "groupParts16.og" "polyBridgeEdge8.ip";
connectAttr "polySurfaceShape5.wm" "polyBridgeEdge8.mp";
connectAttr "polyBridgeEdge8.out" "groupParts17.ig";
connectAttr "groupParts17.og" "polyBridgeEdge9.ip";
connectAttr "polySurfaceShape5.wm" "polyBridgeEdge9.mp";
connectAttr "polyBridgeEdge9.out" "groupParts18.ig";
connectAttr "groupParts18.og" "polyBridgeEdge10.ip";
connectAttr "polySurfaceShape5.wm" "polyBridgeEdge10.mp";
connectAttr "polyBridgeEdge10.out" "groupParts19.ig";
connectAttr "groupParts19.og" "polyBridgeEdge11.ip";
connectAttr "polySurfaceShape5.wm" "polyBridgeEdge11.mp";
connectAttr "polyBridgeEdge11.out" "groupParts20.ig";
connectAttr "groupId11.id" "groupParts20.gi";
connectAttr "polySeparate1.out[0]" "polyTweak10.ip";
connectAttr "polyTweak10.out" "transformGeometry1.ig";
connectAttr "polyCube2.out" "transformGeometry2.ig";
connectAttr "polySurfaceShape7.o" "polyExtrudeFace6.ip";
connectAttr "pCubeShape6.wm" "polyExtrudeFace6.mp";
connectAttr "polySurfaceShape8.o" "polyExtrudeFace7.ip";
connectAttr "pCubeShape7.wm" "polyExtrudeFace7.mp";
connectAttr "polyTweak11.out" "polyChipOff3.ip";
connectAttr "pCubeShape6.wm" "polyChipOff3.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak11.ip";
connectAttr "pCubeShape6.o" "polySeparate3.ip";
connectAttr "polyChipOff3.out" "groupParts21.ig";
connectAttr "groupId13.id" "groupParts21.gi";
connectAttr "polySeparate3.out[0]" "groupParts22.ig";
connectAttr "groupId15.id" "groupParts22.gi";
connectAttr "groupParts22.og" "polyChipOff4.ip";
connectAttr "polySurfaceShape9.wm" "polyChipOff4.mp";
connectAttr "polySurfaceShape9.o" "polySeparate4.ip";
connectAttr "polyTweak12.out" "polyChipOff5.ip";
connectAttr "pCubeShape7.wm" "polyChipOff5.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak12.ip";
connectAttr "pCubeShape7.o" "polySeparate5.ip";
connectAttr "polyChipOff5.out" "groupParts26.ig";
connectAttr "groupId19.id" "groupParts26.gi";
connectAttr "layerManager.dli[1]" "CenterLaye.id";
connectAttr "layerManager.dli[2]" "Leg.id";
connectAttr "transformGeometry1.og" "polyTweak13.ip";
connectAttr "polyTweak13.out" "transformGeometry3.ig";
connectAttr "transformGeometry2.og" "polyTweak14.ip";
connectAttr "polyTweak14.out" "transformGeometry4.ig";
connectAttr "transformGeometry3.og" "transformGeometry5.ig";
connectAttr "transformGeometry4.og" "transformGeometry6.ig";
connectAttr "layerManager.dli[3]" "SeekrPlygns.id";
connectAttr "makeNurbCircle1.oc" "transformGeometry7.ig";
connectAttr "SeekrGlow.oc" "lambert2SG.ss";
connectAttr "polySurfaceShape11.iog" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape10.iog" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[2]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[2]" "lambert2SG.dsm" -na;
connectAttr "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|ThirdLeg|ThirdLegGlow|ThirdLegGlowShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint5|joint2|SecondLeg|SecondLegGlow|SecondLegGlowShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|ThirdLeg|ThirdLegGlow|ThirdLegGlowShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|ThirdLeg|ThirdLegGlow|ThirdLegGlowShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint9|joint2|SecondLeg|SecondLegGlow|SecondLegGlowShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint1|joint2|SecondLeg|SecondLegGlow|SecondLegGlowShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|ThirdLeg|ThirdLegGlow|ThirdLegGlowShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint8|joint2|SecondLeg|SecondLegGlow|SecondLegGlowShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|ThirdLeg|ThirdLegGlow|ThirdLegGlowShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|ThirdLeg|ThirdLegGlow|ThirdLegGlowShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint7|joint2|SecondLeg|SecondLegGlow|SecondLegGlowShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint6|joint2|SecondLeg|SecondLegGlow|SecondLegGlowShape.iog" "lambert2SG.dsm"
		 -na;
connectAttr "polySurfaceShape34.iog" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape33.iog" "lambert2SG.dsm" -na;
connectAttr "groupId68.msg" "lambert2SG.gn" -na;
connectAttr "groupId69.msg" "lambert2SG.gn" -na;
connectAttr "groupId72.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "SeekrGlow.msg" "materialInfo1.m";
connectAttr "polyTweak15.out" "polyChipOff6.ip";
connectAttr "polySurfaceShape5.wm" "polyChipOff6.mp";
connectAttr "groupParts20.og" "polyTweak15.ip";
connectAttr "polySurfaceShape5.o" "polySeparate6.ip";
connectAttr "polySurfaceShape13.o" "polyAutoProj1.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint7|joint2|SecondLeg|SecondLegShape.wm" "polyAutoProj1.mp"
		;
connectAttr "polySurfaceShape14.o" "polyAutoProj2.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|ThirdLeg|ThirdLegShape.wm" "polyAutoProj2.mp"
		;
connectAttr "polySurfaceShape15.o" "polyAutoProj3.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint7|FirstLeg|FirstLegShape.wm" "polyAutoProj3.mp"
		;
connectAttr "polySurfaceShape16.o" "polyAutoProj4.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint6|joint2|SecondLeg|SecondLegShape.wm" "polyAutoProj4.mp"
		;
connectAttr "polySurfaceShape17.o" "polyAutoProj5.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|ThirdLeg|ThirdLegShape.wm" "polyAutoProj5.mp"
		;
connectAttr "polySurfaceShape18.o" "polyAutoProj6.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint6|FirstLeg|FirstLegShape.wm" "polyAutoProj6.mp"
		;
connectAttr "polySurfaceShape19.o" "polyAutoProj7.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint9|FirstLeg|FirstLegShape.wm" "polyAutoProj7.mp"
		;
connectAttr "polySurfaceShape20.o" "polyAutoProj8.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint9|joint2|SecondLeg|SecondLegShape.wm" "polyAutoProj8.mp"
		;
connectAttr "polySurfaceShape21.o" "polyAutoProj9.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|ThirdLeg|ThirdLegShape.wm" "polyAutoProj9.mp"
		;
connectAttr "polySurfaceShape22.o" "polyAutoProj10.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|ThirdLeg|ThirdLegShape.wm" "polyAutoProj10.mp"
		;
connectAttr "polySurfaceShape23.o" "polyAutoProj11.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint5|joint2|SecondLeg|SecondLegShape.wm" "polyAutoProj11.mp"
		;
connectAttr "polySurfaceShape24.o" "polyAutoProj12.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint5|FirstLeg|FirstLegShape.wm" "polyAutoProj12.mp"
		;
connectAttr "polySurfaceShape25.o" "polyAutoProj13.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint1|FirstLeg|FirstLegShape.wm" "polyAutoProj13.mp"
		;
connectAttr "polySurfaceShape26.o" "polyAutoProj14.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint8|FirstLeg|FirstLegShape.wm" "polyAutoProj14.mp"
		;
connectAttr "polyAutoProj3.out" "polyAutoProj15.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint7|FirstLeg|FirstLegShape.wm" "polyAutoProj15.mp"
		;
connectAttr "polyAutoProj15.out" "polyTweakUV1.ip";
connectAttr "polyAutoProj14.out" "polyTweakUV2.ip";
connectAttr "polyAutoProj13.out" "polyTweakUV3.ip";
connectAttr "polyAutoProj7.out" "polyTweakUV4.ip";
connectAttr "polyAutoProj12.out" "polyTweakUV5.ip";
connectAttr "polyAutoProj6.out" "polyTweakUV6.ip";
connectAttr "polyAutoProj8.out" "polyAutoProj16.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint9|joint2|SecondLeg|SecondLegShape.wm" "polyAutoProj16.mp"
		;
connectAttr "polyAutoProj11.out" "polyAutoProj17.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint5|joint2|SecondLeg|SecondLegShape.wm" "polyAutoProj17.mp"
		;
connectAttr "polySurfaceShape27.o" "polyAutoProj18.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint8|joint2|SecondLeg|SecondLegShape.wm" "polyAutoProj18.mp"
		;
connectAttr "polySeparate4.out[0]" "polyAutoProj19.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint1|joint2|SecondLeg|SecondLegShape.wm" "polyAutoProj19.mp"
		;
connectAttr "polySeparate5.out[0]" "polyAutoProj20.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|ThirdLeg|ThirdLegShape.wm" "polyAutoProj20.mp"
		;
connectAttr "polySurfaceShape28.o" "polyAutoProj21.ip";
connectAttr "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|ThirdLeg|ThirdLegShape.wm" "polyAutoProj21.mp"
		;
connectAttr "polyAutoProj20.out" "polyTweakUV7.ip";
connectAttr "polySeparate5.out[1]" "polyTweakUV8.ip";
connectAttr "polyAutoProj9.out" "polyTweakUV9.ip";
connectAttr "polyAutoProj10.out" "polyTweakUV10.ip";
connectAttr "polyAutoProj5.out" "polyTweakUV11.ip";
connectAttr "polyAutoProj2.out" "polyTweakUV12.ip";
connectAttr "polyAutoProj21.out" "polyTweakUV13.ip";
connectAttr "polyAutoProj19.out" "polyTweakUV14.ip";
connectAttr "polySeparate4.out[1]" "polyTweakUV15.ip";
connectAttr "polyAutoProj18.out" "polyTweakUV16.ip";
connectAttr "polyAutoProj1.out" "polyTweakUV17.ip";
connectAttr "polyAutoProj4.out" "polyTweakUV18.ip";
connectAttr "polyAutoProj17.out" "polyTweakUV19.ip";
connectAttr "polyAutoProj16.out" "polyTweakUV20.ip";
connectAttr "polySeparate6.out[2]" "polyAutoProj22.ip";
connectAttr "polySurfaceShape12.wm" "polyAutoProj22.mp";
connectAttr "polyAutoProj22.out" "polyTweakUV21.ip";
connectAttr "polyTweakUV21.out" "polyNormal1.ip";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "polySurfaceShape12.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape12.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "groupId66.msg" "lambert3SG.gn" -na;
connectAttr "groupId67.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "polyNormal1.out" "groupParts41.ig";
connectAttr "groupId66.id" "groupParts41.gi";
connectAttr "groupParts41.og" "groupParts42.ig";
connectAttr "groupId68.id" "groupParts42.gi";
connectAttr "groupParts42.og" "polyPlanarProj1.ip";
connectAttr "polySurfaceShape12.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyTweakUV22.ip";
connectAttr "polyTweakUV22.out" "polyChipOff7.ip";
connectAttr "polySurfaceShape12.wm" "polyChipOff7.mp";
connectAttr "polySurfaceShape12.o" "polySeparate7.ip";
connectAttr "polySeparate7.out[0]" "groupParts43.ig";
connectAttr "groupId69.id" "groupParts43.gi";
connectAttr "transformGeometry5.og" "polyAutoProj23.ip";
connectAttr "polySurfaceShape1.wm" "polyAutoProj23.mp";
connectAttr "groupParts45.og" "polyAutoProj24.ip";
connectAttr "polySurfaceShape6.wm" "polyAutoProj24.mp";
connectAttr "polySurfaceShape31.o" "groupParts45.ig";
connectAttr "polyAutoProj23.out" "polyAutoProj25.ip";
connectAttr "polySurfaceShape1.wm" "polyAutoProj25.mp";
connectAttr "polyCylinder2.out" "deleteComponent11.ig";
connectAttr "polyAutoProj24.out" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "polyBridgeEdge12.ip";
connectAttr "polySurfaceShape6.wm" "polyBridgeEdge12.mp";
connectAttr "polyBridgeEdge12.out" "groupParts46.ig";
connectAttr "groupParts46.og" "polyBridgeEdge13.ip";
connectAttr "polySurfaceShape6.wm" "polyBridgeEdge13.mp";
connectAttr "polyBridgeEdge13.out" "groupParts47.ig";
connectAttr "groupParts47.og" "polyBridgeEdge14.ip";
connectAttr "polySurfaceShape6.wm" "polyBridgeEdge14.mp";
connectAttr "polyBridgeEdge14.out" "groupParts48.ig";
connectAttr "groupParts48.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "polyBridgeEdge15.ip";
connectAttr "polySurfaceShape6.wm" "polyBridgeEdge15.mp";
connectAttr "polyBridgeEdge15.out" "groupParts49.ig";
connectAttr "groupParts49.og" "polyBridgeEdge16.ip";
connectAttr "polySurfaceShape6.wm" "polyBridgeEdge16.mp";
connectAttr "polyBridgeEdge16.out" "polyAutoProj26.ip";
connectAttr "polySurfaceShape6.wm" "polyAutoProj26.mp";
connectAttr "polyAutoProj26.out" "polyAutoProj27.ip";
connectAttr "polySurfaceShape6.wm" "polyAutoProj27.mp";
connectAttr "polyAutoProj27.out" "polyTweakUV23.ip";
connectAttr "polyAutoProj25.out" "polyAutoProj28.ip";
connectAttr "polySurfaceShape1.wm" "polyAutoProj28.mp";
connectAttr "polyAutoProj28.out" "polyTweakUV24.ip";
connectAttr "transformGeometry6.og" "polyTweakUV25.ip";
connectAttr "deleteComponent11.og" "polyTweakUV26.ip";
connectAttr "polySeparate7.out[1]" "polyTweakUV27.ip";
connectAttr "polyTweakUV25.out" "polyAutoProj29.ip";
connectAttr "pCubeShape9.wm" "polyAutoProj29.mp";
connectAttr "polySurfaceShape32.o" "polyAutoProj30.ip";
connectAttr "pCubeShape10.wm" "polyAutoProj30.mp";
connectAttr "polyAutoProj29.out" "polyTweakUV28.ip";
connectAttr "polyAutoProj30.out" "polyTweakUV29.ip";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo3.sg";
connectAttr "blinn1.msg" "materialInfo3.m";
connectAttr "SeekrBlacklambertq.oc" "lambert4SG.ss";
connectAttr "polySurfaceShape1.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape1.ciog.cog[0]" "lambert4SG.dsm" -na;
connectAttr "groupId70.msg" "lambert4SG.gn" -na;
connectAttr "groupId71.msg" "lambert4SG.gn" -na;
connectAttr "lambert4SG.msg" "materialInfo4.sg";
connectAttr "SeekrBlacklambertq.msg" "materialInfo4.m";
connectAttr "polyTweakUV23.out" "polyMapCut2.ip";
connectAttr "polyTweakUV24.out" "polySplitRing1.ip";
connectAttr "polySurfaceShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polyExtrudeFace8.ip";
connectAttr "polySurfaceShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "groupParts50.ig";
connectAttr "groupId70.id" "groupParts50.gi";
connectAttr "groupParts50.og" "groupParts51.ig";
connectAttr "groupId72.id" "groupParts51.gi";
connectAttr "polyTweak16.out" "polyChipOff8.ip";
connectAttr "polySurfaceShape1.wm" "polyChipOff8.mp";
connectAttr "groupParts51.og" "polyTweak16.ip";
connectAttr "polySurfaceShape1.o" "polySeparate8.ip";
connectAttr "layerManager.dli[4]" "RedGlowLayer.id";
connectAttr "file1.oc" "SeekrBlinnMaterial.c";
connectAttr "SeekrBlinnMaterial.oc" "blinn2SG.ss";
connectAttr "|GlobalCTRL|CenterJoint|joint9|joint2|joint3|ThirdLeg|ThirdLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint9|joint2|SecondLeg|SecondLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint9|FirstLeg|FirstLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "polySurfaceShape30.iog" "blinn2SG.dsm" -na;
connectAttr "|GlobalCTRL|CenterJoint|joint8|joint2|joint3|ThirdLeg|ThirdLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint8|joint2|SecondLeg|SecondLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint8|FirstLeg|FirstLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint7|joint2|joint3|ThirdLeg|ThirdLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint7|joint2|SecondLeg|SecondLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint7|FirstLeg|FirstLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint6|joint2|joint3|ThirdLeg|ThirdLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint6|joint2|SecondLeg|SecondLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint6|FirstLeg|FirstLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint5|joint2|joint3|ThirdLeg|ThirdLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint5|joint2|SecondLeg|SecondLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint5|FirstLeg|FirstLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint1|joint2|joint3|ThirdLeg|ThirdLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint1|joint2|SecondLeg|SecondLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "|GlobalCTRL|CenterJoint|joint1|FirstLeg|FirstLegShape.iog" "blinn2SG.dsm"
		 -na;
connectAttr "blinn2SG.msg" "materialInfo5.sg";
connectAttr "SeekrBlinnMaterial.msg" "materialInfo5.m";
connectAttr "file1.msg" "materialInfo5.t" -na;
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
connectAttr "polySeparate8.out[2]" "polyAutoProj31.ip";
connectAttr "polySurfaceShape35.wm" "polyAutoProj31.mp";
connectAttr "polyAutoProj31.out" "polyTweakUV30.ip";
connectAttr "polySeparate8.out[1]" "polyTweakUV31.ip";
connectAttr "file2.oc" "SeekrGunLambert.c";
connectAttr "SeekrGunLambert.oc" "lambert5SG.ss";
connectAttr "polySurfaceShape35.iog" "lambert5SG.dsm" -na;
connectAttr "polySurfaceShape6.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape9.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape10.iog" "lambert5SG.dsm" -na;
connectAttr "pCylinderShape2.iog" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo6.sg";
connectAttr "SeekrGunLambert.msg" "materialInfo6.m";
connectAttr "file2.msg" "materialInfo6.t" -na;
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
connectAttr "polyMapCut2.out" "polyTweakUV32.ip";
connectAttr "layerManager.dli[5]" "Corner.id";
connectAttr "Leg3_translateX.o" "pairBlend2.itx1";
connectAttr "Leg3_translateY.o" "pairBlend2.ity1";
connectAttr "Leg3_translateZ.o" "pairBlend2.itz1";
connectAttr "|GlobalCTRL|Leg3.blendPoint1" "pairBlend2.w";
connectAttr "Leg3_pointConstraint1.ctx" "pairBlend2.itx2";
connectAttr "Leg3_pointConstraint1.cty" "pairBlend2.ity2";
connectAttr "Leg3_pointConstraint1.ctz" "pairBlend2.itz2";
connectAttr "Leg7_translateX.o" "pairBlend1.itx1";
connectAttr "Leg7_translateY.o" "pairBlend1.ity1";
connectAttr "Leg7_translateZ.o" "pairBlend1.itz1";
connectAttr "Leg7.blendPoint1" "pairBlend1.w";
connectAttr "Leg7_pointConstraint1.ctx" "pairBlend1.itx2";
connectAttr "Leg7_pointConstraint1.cty" "pairBlend1.ity2";
connectAttr "Leg7_pointConstraint1.ctz" "pairBlend1.itz2";
connectAttr "Leg8_translateX.o" "pairBlend3.itx1";
connectAttr "Leg8_translateY.o" "pairBlend3.ity1";
connectAttr "Leg8_translateZ.o" "pairBlend3.itz1";
connectAttr "Leg8.blendPoint1" "pairBlend3.w";
connectAttr "Leg8_pointConstraint1.ctx" "pairBlend3.itx2";
connectAttr "Leg8_pointConstraint1.cty" "pairBlend3.ity2";
connectAttr "Leg8_pointConstraint1.ctz" "pairBlend3.itz2";
connectAttr "Leg2_translateX.o" "pairBlend4.itx1";
connectAttr "Leg2_translateY.o" "pairBlend4.ity1";
connectAttr "Leg2_translateZ.o" "pairBlend4.itz1";
connectAttr "|GlobalCTRL|Leg2.blendPoint1" "pairBlend4.w";
connectAttr "Leg2_pointConstraint1.ctx" "pairBlend4.itx2";
connectAttr "Leg2_pointConstraint1.cty" "pairBlend4.ity2";
connectAttr "Leg2_pointConstraint1.ctz" "pairBlend4.itz2";
connectAttr "polyTweak17.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace9.mp";
connectAttr "polyCube3.out" "polyTweak17.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "SeekrGlow.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "SeekrBlacklambertq.msg" ":defaultShaderList1.s" -na;
connectAttr "SeekrBlinnMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "SeekrGunLambert.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape2.ltd" ":lightList1.l" -na;
connectAttr "ambientLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape3.ltd" ":lightList1.l" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "ambientLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight3.iog" ":defaultLightSet.dsm" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Seeker.ma
