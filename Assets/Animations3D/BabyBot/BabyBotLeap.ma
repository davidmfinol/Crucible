//Maya ASCII 2014 scene
//Name: BabyBotLeap.ma
//Last modified: Wed, Apr 09, 2014 01:43:46 PM
//Codeset: UTF-8
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010035-864206";
fileInfo "osv" "Mac OS X 10.9.2";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".t" -type "double3" -117.11605164607505 12.512689660110698 70.933456012932666 ;
	setAttr ".r" -type "double3" -3.5999999999999206 -59.200000000000543 0 ;
	setAttr ".rp" -type "double3" -5.287437154777308e-15 0 0 ;
	setAttr ".rpt" -type "double3" -2.0685452569705755e-15 5.6770762158879519e-16 -3.2505529637096445e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v";
	setAttr ".fl" 37.165468299920136;
	setAttr ".coi" 136.4026651286527;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.18282968368549568 3.9478954514998663 1.2272657866843262 ;
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
	setAttr ".t" -type "double3" -85.3301236126063 6.4246506679424797 4.3118414400123086 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rpt" -type "double3" 1.7712054407178278e-16 0 -3.0644862347585795e-16 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 15.448630499940505;
	setAttr ".ow" 124.49471206234908;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -0.46422840749489858 3.8222667351995585 -1.0696890034908575 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" -94.001907581786455 27.74380415083882 86.262277802305817 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 -3.5527136788005009e-15 0 ;
	setAttr ".rpt" -type "double3" 1.621955225074109e-14 0 -1.5603508098257016e-14 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 29.120660985254524;
	setAttr ".ow" 85.44095463903335;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -0.0004592647552428275 24.614751956881435 104.05592897018896 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "anim_global01";
	setAttr ".rp" -type "double3" -0.20216699170455499 -8.318665524619453 1.1218702414893189 ;
	setAttr ".sp" -type "double3" -0.20216699170455499 -8.318665524619453 1.1218702414893189 ;
createNode nurbsCurve -n "anim_global01Shape" -p "anim_global01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.20216699170456187 -8.318665524619453 10.804312314856958
		-9.8846090650722171 -8.318665524619453 1.1218702414893067
		-0.20216699170456809 -8.318665524619453 -8.5605718318783417
		9.4802750816630859 -8.318665524619453 1.1218702414893111
		-0.20216699170456187 -8.318665524619453 10.804312314856958
		;
createNode joint -n "Root" -p "anim_global01";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0 89.999999999999986 ;
	setAttr -k on ".blendParent1";
createNode joint -n "Torso" -p "Root";
	addAttr -ci true -k true -sn "blendOrient1" -ln "blendOrient1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".t" -type "double3" 5.754824063564131 -0.88896274166850353 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k on ".blendOrient1";
createNode joint -n "RightShoulder" -p "Torso";
	addAttr -ci true -k true -sn "blendOrient1" -ln "blendOrient1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".t" -type "double3" 2.8603859250851298 6.6613381477509392e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".blendOrient1";
createNode joint -n "RightElbow" -p "RightShoulder";
	addAttr -ci true -k true -sn "blendOrient1" -ln "blendOrient1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".t" -type "double3" 3.2635746465056341 3.9159223563914542e-16 6.8936812486021201e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".blendOrient1";
createNode joint -n "RightHand" -p "RightElbow";
	setAttr ".t" -type "double3" 4.2224744608399529 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000014 0 180 ;
createNode transform -n "RightHand" -p "|anim_global01|Root|Torso|RightShoulder|RightElbow|RightHand";
	setAttr ".rp" -type "double3" 0.031375181140608888 -0.096584519309409242 -0.040345098349516051 ;
	setAttr ".sp" -type "double3" 0.031375181140608888 -0.096584519309409242 -0.040345098349516051 ;
createNode mesh -n "RightHandShape" -p "|anim_global01|Root|Torso|RightShoulder|RightElbow|RightHand|RightHand";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RElbow" -p "RightElbow";
	setAttr ".rp" -type "double3" 0.021854079131811588 -0.040345098349515607 -0.16013443398825222 ;
	setAttr ".sp" -type "double3" 0.021854079131811588 -0.040345098349515607 -0.16013443398825222 ;
createNode mesh -n "RElbowShape" -p "RElbow";
	setAttr -k off ".v";
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
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.62891948 0.56672031 -0.76719987 
		-0.58521134 0.56672031 -0.76719987 0.62891948 0.20988409 0.09009476 -0.58521134 0.20988409 
		0.09009476 0.62891948 -0.64741051 0.446931 -0.58521134 -0.64741051 0.446931 0.62891948 
		-0.29057428 -0.41036361 -0.58521134 -0.29057428 -0.41036361 -0.79205179 0.19886395 
		-0.73483121 0.83575994 0.19886395 -0.73483121 -0.79205179 -0.61504191 0.079074621 
		0.83575994 -0.61504191 0.079074621 -0.79205179 -0.27955416 0.41456234 0.83575994 
		-0.27955416 0.41456234 -0.79205179 0.53435171 -0.39934349 0.83575994 0.53435171 -0.39934349 
		0.021854078 -0.37583283 -0.49562216 0.021854078 -0.85425097 0.6537714 0.021854078 
		0.29514265 0.1753533 0.021854078 0.77356076 -0.97404027 1.1115162 -0.040345099 -0.16013443 
		-1.0678082 -0.040345099 -0.16013443 0.021854078 0.27990946 -0.92954206 0.021854078 
		-0.8097527 0.16012013 0.021854078 -0.36059967 0.6092732 0.021854078 0.7290625 -0.480389;
	setAttr -s 26 ".vt[0:25]"  -0.17841811 -0.17841811 0.17841811 0.17841811 -0.17841811 0.17841811
		 -0.17841811 0.17841811 0.17841811 0.17841811 0.17841811 0.17841811 -0.17841811 0.17841811 -0.17841811
		 0.17841811 0.17841811 -0.17841811 -0.17841811 -0.17841811 -0.17841811 0.17841811 -0.17841811 -0.17841811
		 0.23920906 -0.23920906 0 -0.23920906 -0.23920906 0 0.23920906 0 -0.23920906 -0.23920906 0 -0.23920906
		 0.23920906 0.23920906 0 -0.23920906 0.23920906 0 0.23920906 0 0.23920906 -0.23920906 0 0.23920906
		 0 -0.23920906 -0.23920906 0 0.23920906 -0.23920906 0 0.23920906 0.23920906 0 -0.23920906 0.23920906
		 -0.32025456 0 0 0.32025456 0 0 0 -0.32025456 0 0 0 -0.32025456 0 0.32025456 0 0 0 0.32025456;
	setAttr -s 48 ".ed[0:47]"  0 19 1 2 18 1 4 17 1 6 16 1 0 15 1 1 14 1
		 2 13 1 3 12 1 4 11 1 5 10 1 6 9 1 7 8 1 8 1 1 9 0 1 10 7 1 11 6 1 12 5 1 13 4 1 14 3 1
		 15 2 1 16 7 1 17 5 1 18 3 1 19 1 1 9 20 1 20 13 1 20 15 1 20 11 1 8 21 1 21 12 1
		 21 10 1 21 14 1 16 22 1 22 19 1 22 8 1 22 9 1 17 23 1 23 16 1 23 10 1 23 11 1 18 24 1
		 24 17 1 24 12 1 24 13 1 19 25 1 25 18 1 25 14 1 25 15 1;
	setAttr -s 26 ".n[0:25]" -type "float3"  0.24031354 0.24031354 -0.24031354
		 -1.6674975e-16 0.29432279 -0.29432279 -2.3581974e-16 0.41623527 1.7329276e-16 0.29432279
		 0.29432279 1.225365e-16 0.24031354 0.24031354 0.24031354 -1.6674974e-16 0.29432279
		 0.29432279 6.2623492e-32 -9.2422796e-17 0.41623527 0.29432279 -3.3366367e-09 0.29432279
		 0.24031354 -0.24031354 0.24031354 1.6674975e-16 -0.29432279 0.29432279 2.3581974e-16
		 -0.41623527 -1.7329276e-16 0.29432279 -0.29432279 -1.225365e-16 0.24031354 -0.24031354
		 -0.24031354 1.6674974e-16 -0.29432279 -0.29432279 -6.2623492e-32 9.2422796e-17 -0.41623527
		 0.29432279 3.336637e-09 -0.29432279 -0.24031354 0.24031354 -0.24031354 -0.29432279
		 -1.0139696e-16 -0.29432279 -0.41623527 -2.3581974e-16 -4.6874739e-32 -0.29432279
		 0.29432279 1.225365e-16 0.41623527 2.3581974e-16 4.6874739e-32 -0.29432279 -2.3210254e-16
		 0.29432279 -0.29432279 -0.29432279 -1.225365e-16 -0.24031354 -0.24031354 0.24031354
		 -0.24031354 -0.24031354 -0.24031354 -0.24031354 0.24031354 0.24031354;
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
createNode transform -n "BabyBotMon:pCylinder17" -p "RightElbow";
	setAttr ".rp" -type "double3" 1.4124488204197607 -0.093988351081840449 -0.16506177648423748 ;
	setAttr ".sp" -type "double3" 1.4124488204197607 -0.093988351081840449 -0.16506177648423748 ;
createNode mesh -n "BabyBotMon:pCylinderShape17" -p "BabyBotMon:pCylinder17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.54828393 0.00764741
		 0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625
		 0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125
		 0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004
		 0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911
		 0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375 0.5 0.15000001
		 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.45553327 0.15430087 0.042676561 
		0.54950011 0.30454504 -0.45025918 0.54950011 0.79074544 -0.54906178 0.45553327 0.94098967 
		-0.1171894 0.39745858 0.54764527 0.24852496 3.4104917 -1.1289663 0.042676561 3.5044584 
		-0.97872221 -0.45025918 3.5044584 -0.49252182 -0.54906178 3.4104917 -0.34227762 -0.1171894 
		3.352417 -0.73562199 0.24852496 0.48150507 0.54764527 -0.16506177 3.4364634 -0.73562199 
		-0.16506177;
	setAttr -s 12 ".vt[0:11]"  0.025971798 -0.64163363 -0.07993295 -0.067995019 -0.64163363 -0.049401283
		 -0.067995027 -0.64163363 0.049401272 0.025971785 -0.64163363 0.079932943 0.084046468 -0.64163363 0
		 0.025971798 0.64163363 -0.07993295 -0.067995019 0.64163363 -0.049401283 -0.067995027 0.64163363 0.049401272
		 0.025971785 0.64163363 0.079932943 0.084046468 0.64163363 0 0 -0.64163363 0 0 0.64163363 0;
	setAttr -s 25 ".ed[0:24]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 10 0 1 10 1 1 10 2 1 10 3 1 10 4 1
		 5 11 1 6 11 1 7 11 1 8 11 1 9 11 1;
	setAttr -s 15 -ch 50 ".fc[0:14]" -type "polyFaces" 
		f 4 0 11 -6 -11
		mu 0 4 5 6 12 11
		f 4 1 12 -7 -12
		mu 0 4 6 7 13 12
		f 4 2 13 -8 -13
		mu 0 4 7 8 14 13
		f 4 3 14 -9 -14
		mu 0 4 8 9 15 14
		f 4 4 10 -10 -15
		mu 0 4 9 10 16 15
		f 3 -1 -16 16
		mu 0 3 1 0 22
		f 3 -2 -17 17
		mu 0 3 2 1 22
		f 3 -3 -18 18
		mu 0 3 3 2 22
		f 3 -4 -19 19
		mu 0 3 4 3 22
		f 3 -5 -20 15
		mu 0 3 0 4 22
		f 3 5 21 -21
		mu 0 3 20 19 23
		f 3 6 22 -22
		mu 0 3 19 18 23
		f 3 7 23 -23
		mu 0 3 18 17 23
		f 3 8 24 -24
		mu 0 3 17 21 23
		f 3 9 20 -25
		mu 0 3 21 20 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode orientConstraint -n "RightElbow_orientConstraint1" -p "RightElbow";
	addAttr -ci true -k true -sn "w0" -ln "curve9W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 89.999999999999986 0 180.00000000000003 ;
	setAttr ".o" -type "double3" 89.999999999999972 0 180 ;
	setAttr ".rsrr" -type "double3" -3.5456944172838508e-30 -7.0167092985348775e-15 
		5.7905584201951133e-14 ;
	setAttr -k on ".w0";
createNode transform -n "BabyBotMon:pCylinder16" -p "RightShoulder";
	setAttr ".rp" -type "double3" 0.84605021435402428 -0.093988351081840671 -0.16506177648423792 ;
	setAttr ".sp" -type "double3" 0.84605021435402428 -0.093988351081840671 -0.16506177648423792 ;
createNode mesh -n "BabyBotMon:pCylinderShape16" -p "BabyBotMon:pCylinder16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.54828393 0.00764741
		 0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625
		 0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125
		 0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004
		 0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911
		 0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375 0.5 0.15000001
		 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.11086534 0.15430087 0.042676561 
		-0.016898522 0.30454504 -0.45025918 -0.016898515 0.79074544 -0.54906178 -0.11086532 
		0.94098967 -0.1171894 -0.16894001 0.54764527 0.24852496 2.8440931 -1.1289663 0.042676561 
		2.9380598 -0.97872221 -0.45025918 2.9380598 -0.49252182 -0.54906178 2.8440931 -0.34227762 
		-0.1171894 2.7860184 -0.73562199 0.24852496 -0.08489354 0.54764527 -0.16506177 2.8700647 
		-0.73562199 -0.16506177;
	setAttr -s 12 ".vt[0:11]"  0.025971798 -0.64163363 -0.07993295 -0.067995019 -0.64163363 -0.049401283
		 -0.067995027 -0.64163363 0.049401272 0.025971785 -0.64163363 0.079932943 0.084046468 -0.64163363 0
		 0.025971798 0.64163363 -0.07993295 -0.067995019 0.64163363 -0.049401283 -0.067995027 0.64163363 0.049401272
		 0.025971785 0.64163363 0.079932943 0.084046468 0.64163363 0 0 -0.64163363 0 0 0.64163363 0;
	setAttr -s 25 ".ed[0:24]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 10 0 1 10 1 1 10 2 1 10 3 1 10 4 1
		 5 11 1 6 11 1 7 11 1 8 11 1 9 11 1;
	setAttr -s 15 -ch 50 ".fc[0:14]" -type "polyFaces" 
		f 4 0 11 -6 -11
		mu 0 4 5 6 12 11
		f 4 1 12 -7 -12
		mu 0 4 6 7 13 12
		f 4 2 13 -8 -13
		mu 0 4 7 8 14 13
		f 4 3 14 -9 -14
		mu 0 4 8 9 15 14
		f 4 4 10 -10 -15
		mu 0 4 9 10 16 15
		f 3 -1 -16 16
		mu 0 3 1 0 22
		f 3 -2 -17 17
		mu 0 3 2 1 22
		f 3 -3 -18 18
		mu 0 3 3 2 22
		f 3 -4 -19 19
		mu 0 3 4 3 22
		f 3 -5 -20 15
		mu 0 3 0 4 22
		f 3 5 21 -21
		mu 0 3 20 19 23
		f 3 6 22 -22
		mu 0 3 19 18 23
		f 3 7 23 -23
		mu 0 3 18 17 23
		f 3 8 24 -24
		mu 0 3 17 21 23
		f 3 9 20 -25
		mu 0 3 21 20 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode orientConstraint -n "RightShoulder_orientConstraint1" -p "RightShoulder";
	addAttr -ci true -k true -sn "w0" -ln "curve1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 89.999999999999986 0 180.00000000000003 ;
	setAttr ".o" -type "double3" 450 -1.4124500153760511e-30 540 ;
	setAttr ".rsrr" -type "double3" 720 -2.1050127895604626e-14 720 ;
	setAttr -k on ".w0";
createNode joint -n "LeftShoulder" -p "Torso";
	addAttr -ci true -k true -sn "blendOrient1" -ln "blendOrient1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".t" -type "double3" -2.4777457588711642 -3.2812547320818814e-16 8.2525511719982878e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999997 -4.4527765540489247e-14 -1.4124500153760516e-30 ;
	setAttr -k on ".blendOrient1";
createNode joint -n "LeftElbow" -p "LeftShoulder";
	setAttr ".t" -type "double3" -3.1510303616423982 -4.7028595203837175e-16 -3.5134185655180344e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "LeftHand" -p "LeftElbow";
	setAttr ".t" -type "double3" -4.2224700000000013 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999972 1.1515556846829452e-13 -179.99999999999994 ;
createNode transform -n "BabyBotMon:pCube1" -p "LeftHand";
	setAttr ".rp" -type "double3" -0.20709587432397925 0.096586380830415486 0.04034484001801697 ;
	setAttr ".sp" -type "double3" -0.20709587432397925 0.096586380830415486 0.04034484001801697 ;
createNode mesh -n "BabyBotMon:pCubeShape1" -p "BabyBotMon:pCube1";
	setAttr -k off ".v";
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
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.85280406 1.1564863 -1.0195551 
		-1.2669958 1.1564863 -1.0195551 0.85280406 -0.96331352 -1.0195551 -1.2669958 -0.96331352 
		-1.0195551 0.85280406 -0.96331352 1.1002448 -1.2669958 -0.96331352 1.1002448 0.85280406 
		1.1564863 1.1002448 -1.2669958 1.1564863 1.1002448 -1.6281267 1.5176173 0.040344842 
		1.213935 1.5176173 0.040344842 -1.6281267 0.096586384 1.4613757 1.213935 0.096586384 
		1.4613757 -1.6281267 -1.3244445 0.040344842 1.213935 -1.3244445 0.040344842 -1.6281267 
		0.096586384 -1.380686 1.213935 0.096586384 -1.380686 -0.20709588 1.5176173 1.4613757 
		-0.20709588 -1.3244445 1.4613757 -0.20709588 -1.3244445 -1.380686 -0.20709588 1.5176173 
		-1.380686 1.6953892 0.096586384 0.040344842 -2.1095808 0.096586384 0.040344842 -0.20709588 
		1.9990714 0.040344842 -0.20709588 0.096586384 1.9428298 -0.20709588 -1.8058987 0.040344842 
		-0.20709588 0.096586384 -1.8621402;
	setAttr -s 26 ".vt[0:25]"  -0.17841811 -0.17841811 0.17841811 0.17841811 -0.17841811 0.17841811
		 -0.17841811 0.17841811 0.17841811 0.17841811 0.17841811 0.17841811 -0.17841811 0.17841811 -0.17841811
		 0.17841811 0.17841811 -0.17841811 -0.17841811 -0.17841811 -0.17841811 0.17841811 -0.17841811 -0.17841811
		 0.23920906 -0.23920906 0 -0.23920906 -0.23920906 0 0.23920906 0 -0.23920906 -0.23920906 0 -0.23920906
		 0.23920906 0.23920906 0 -0.23920906 0.23920906 0 0.23920906 0 0.23920906 -0.23920906 0 0.23920906
		 0 -0.23920906 -0.23920906 0 0.23920906 -0.23920906 0 0.23920906 0.23920906 0 -0.23920906 0.23920906
		 -0.32025456 0 0 0.32025456 0 0 0 -0.32025456 0 0 0 -0.32025456 0 0.32025456 0 0 0 0.32025456;
	setAttr -s 48 ".ed[0:47]"  0 19 1 2 18 1 4 17 1 6 16 1 0 15 1 1 14 1
		 2 13 1 3 12 1 4 11 1 5 10 1 6 9 1 7 8 1 8 1 1 9 0 1 10 7 1 11 6 1 12 5 1 13 4 1 14 3 1
		 15 2 1 16 7 1 17 5 1 18 3 1 19 1 1 9 20 1 20 13 1 20 15 1 20 11 1 8 21 1 21 12 1
		 21 10 1 21 14 1 16 22 1 22 19 1 22 8 1 22 9 1 17 23 1 23 16 1 23 10 1 23 11 1 18 24 1
		 24 17 1 24 12 1 24 13 1 19 25 1 25 18 1 25 14 1 25 15 1;
	setAttr -s 26 ".n[0:25]" -type "float3"  0.11685975 0.11685975 -0.11685975
		 0.14312339 -7.7114641e-17 -0.14312339 0 5.6179237e-18 -0.20240703 8.1087113e-17 0.14312339
		 -0.14312339 0.11685975 -0.11685975 -0.11685975 0.14312339 -0.14312339 1.6225409e-09
		 -1.1467448e-16 -0.20240703 0 -8.1087113e-17 -0.14312339 -0.14312339 0.11685975 -0.11685975
		 0.11685975 0.14312339 -8.5059585e-17 0.14312339 0 -5.6179237e-18 0.20240703 -8.1087113e-17
		 -0.14312339 0.14312339 0.11685975 0.11685975 0.11685975 0.14312339 0.14312339 -1.6225409e-09
		 1.1467448e-16 0.20240703 0 8.1087113e-17 0.14312339 0.14312339 -0.11685975 0.11685975
		 -0.11685975 -0.14312339 8.5059585e-17 -0.14312339 -0.20240703 1.1467448e-16 -3.9917749e-32
		 -0.14312339 0.14312339 -2.8226111e-32 0.20240703 -1.1467448e-16 3.9917749e-32 -0.14312339
		 -0.14312339 -2.8226111e-32 -0.11685975 -0.11685975 0.11685975 -0.14312339 7.7114641e-17
		 0.14312339 -0.11685975 0.11685975 0.11685975 -0.11685975 -0.11685975 -0.11685975;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 4 -48 -45 -1
		mu 0 4 0 27 38 31
		f 4 6 -44 -41 -2
		mu 0 4 2 25 37 30
		f 4 8 -40 -37 -3
		mu 0 4 4 21 36 29
		f 4 10 -36 -33 -4
		mu 0 4 6 17 35 28
		f 4 5 -32 -29 12
		mu 0 4 1 26 34 15
		f 4 -16 -28 -25 -11
		mu 0 4 12 20 33 16
		f 4 -7 -20 -27 25
		mu 0 4 24 2 27 33
		f 4 -5 -14 24 26
		mu 0 4 27 0 16 33
		f 4 -9 -18 -26 27
		mu 0 4 20 13 24 33
		f 4 16 9 -31 29
		mu 0 4 23 11 19 34
		f 4 14 11 28 30
		mu 0 4 19 10 15 34
		f 4 18 7 -30 31
		mu 0 4 26 3 23 34
		f 4 23 -13 -35 33
		mu 0 4 32 9 14 35
		f 4 -12 -21 32 34
		mu 0 4 14 7 28 35
		f 4 13 0 -34 35
		mu 0 4 17 8 32 35
		f 4 20 -15 -39 37
		mu 0 4 28 7 18 36
		f 4 -10 -22 36 38
		mu 0 4 18 5 29 36
		f 4 15 3 -38 39
		mu 0 4 21 6 28 36
		f 4 21 -17 -43 41
		mu 0 4 29 5 22 37
		f 4 -8 -23 40 42
		mu 0 4 22 3 30 37
		f 4 17 2 -42 43
		mu 0 4 25 4 29 37
		f 4 22 -19 -47 45
		mu 0 4 30 3 26 38
		f 4 -6 -24 44 46
		mu 0 4 26 1 31 38
		f 4 19 1 -46 47
		mu 0 4 27 2 30 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BabyBotMon:pCube17" -p "LeftElbow";
	setAttr ".rp" -type "double3" 0.15387107489151133 0.04034484001801808 0.16013629550925623 ;
	setAttr ".sp" -type "double3" 0.15387107489151133 0.04034484001801808 0.16013629550925623 ;
createNode mesh -n "BabyBotMon:pCubeShape17" -p "BabyBotMon:pCube17";
	setAttr -k off ".v";
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
	setAttr -s 26 ".pt[0:25]" -type "float3"  -0.09635812 -0.20988436 0.41036549 
		0.40410027 -0.20988436 0.41036549 -0.09635812 -0.5667206 -0.44692913 0.40410027 -0.5667206 
		-0.44692913 -0.09635812 0.29057404 -0.090092897 0.40410027 0.29057404 -0.090092897 
		-0.09635812 0.64741027 0.76720172 0.40410027 0.64741027 0.76720172 0.48935881 0.27955389 
		0.73483306 -0.18161666 0.27955389 0.73483306 0.48935881 0.61504161 0.39934534 -0.18161666 
		0.61504161 0.39934534 0.48935881 -0.19886422 -0.4145605 -0.18161666 -0.19886422 -0.4145605 
		0.48935881 -0.53435194 -0.079072759 -0.18161666 -0.53435194 -0.079072759 0.15387107 
		0.85425067 0.97404212 0.15387107 0.37583259 -0.17535144 0.15387107 -0.773561 -0.65376955 
		0.15387107 -0.29514289 0.49562404 -0.29528198 0.040344842 0.1601363 0.60302413 0.040344842 
		0.1601363 0.15387107 0.3605994 0.92954391 0.15387107 0.80975246 0.48039085 0.15387107 
		-0.27990973 -0.60927135 0.15387107 -0.7290628 -0.16011827;
	setAttr -s 26 ".vt[0:25]"  -0.17841811 -0.17841811 0.17841811 0.17841811 -0.17841811 0.17841811
		 -0.17841811 0.17841811 0.17841811 0.17841811 0.17841811 0.17841811 -0.17841811 0.17841811 -0.17841811
		 0.17841811 0.17841811 -0.17841811 -0.17841811 -0.17841811 -0.17841811 0.17841811 -0.17841811 -0.17841811
		 0.23920906 -0.23920906 0 -0.23920906 -0.23920906 0 0.23920906 0 -0.23920906 -0.23920906 0 -0.23920906
		 0.23920906 0.23920906 0 -0.23920906 0.23920906 0 0.23920906 0 0.23920906 -0.23920906 0 0.23920906
		 0 -0.23920906 -0.23920906 0 0.23920906 -0.23920906 0 0.23920906 0.23920906 0 -0.23920906 0.23920906
		 -0.32025456 0 0 0.32025456 0 0 0 -0.32025456 0 0 0 -0.32025456 0 0.32025456 0 0 0 0.32025456;
	setAttr -s 48 ".ed[0:47]"  0 19 1 2 18 1 4 17 1 6 16 1 0 15 1 1 14 1
		 2 13 1 3 12 1 4 11 1 5 10 1 6 9 1 7 8 1 8 1 1 9 0 1 10 7 1 11 6 1 12 5 1 13 4 1 14 3 1
		 15 2 1 16 7 1 17 5 1 18 3 1 19 1 1 9 20 1 20 13 1 20 15 1 20 11 1 8 21 1 21 12 1
		 21 10 1 21 14 1 16 22 1 22 19 1 22 8 1 22 9 1 17 23 1 23 16 1 23 10 1 23 11 1 18 24 1
		 24 17 1 24 12 1 24 13 1 19 25 1 25 18 1 25 14 1 25 15 1;
	setAttr -s 26 ".n[0:25]" -type "float3"  -0.24031354 -0.24031354 0.24031354
		 -0.29432279 -0.29432279 -2.8591849e-16 -2.5652479e-33 -0.41623527 -4.0434979e-16
		 -9.0695208e-33 -0.29432279 0.29432279 -0.24031354 -0.24031354 -0.24031354 -0.29432279
		 3.336637e-09 -0.29432279 1.0260992e-32 4.1590263e-16 -0.41623527 5.4417127e-33 -0.29432279
		 -0.29432279 -0.24031354 0.24031354 -0.24031354 -0.29432279 0.29432279 2.8591849e-16
		 2.5652479e-33 0.41623527 4.0434979e-16 9.0695208e-33 0.29432279 -0.29432279 -0.24031354
		 0.24031354 0.24031354 -0.29432279 -3.336637e-09 0.29432279 -1.0260992e-32 -4.1590263e-16
		 0.41623527 -5.4417127e-33 0.29432279 0.29432279 0.24031354 -0.24031354 0.24031354
		 0.29432279 -0.29432279 -2.8591849e-16 0.41623527 0 -1.0260992e-32 0.29432279 -2.9408756e-16
		 0.29432279 -0.41623527 0 1.0260992e-32 0.29432279 2.9408756e-16 -0.29432279 0.24031354
		 0.24031354 -0.24031354 0.29432279 0.29432279 2.8591849e-16 0.24031354 0.24031354
		 0.24031354 0.24031354 -0.24031354 -0.24031354;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 4 -48 -45 -1
		mu 0 4 0 27 38 31
		f 4 6 -44 -41 -2
		mu 0 4 2 25 37 30
		f 4 8 -40 -37 -3
		mu 0 4 4 21 36 29
		f 4 10 -36 -33 -4
		mu 0 4 6 17 35 28
		f 4 5 -32 -29 12
		mu 0 4 1 26 34 15
		f 4 -16 -28 -25 -11
		mu 0 4 12 20 33 16
		f 4 -7 -20 -27 25
		mu 0 4 24 2 27 33
		f 4 -5 -14 24 26
		mu 0 4 27 0 16 33
		f 4 -9 -18 -26 27
		mu 0 4 20 13 24 33
		f 4 16 9 -31 29
		mu 0 4 23 11 19 34
		f 4 14 11 28 30
		mu 0 4 19 10 15 34
		f 4 18 7 -30 31
		mu 0 4 26 3 23 34
		f 4 23 -13 -35 33
		mu 0 4 32 9 14 35
		f 4 -12 -21 32 34
		mu 0 4 14 7 28 35
		f 4 13 0 -34 35
		mu 0 4 17 8 32 35
		f 4 20 -15 -39 37
		mu 0 4 28 7 18 36
		f 4 -10 -22 36 38
		mu 0 4 18 5 29 36
		f 4 15 3 -38 39
		mu 0 4 21 6 28 36
		f 4 21 -17 -43 41
		mu 0 4 29 5 22 37
		f 4 -8 -23 40 42
		mu 0 4 22 3 30 37
		f 4 17 2 -42 43
		mu 0 4 25 4 29 37
		f 4 22 -19 -47 45
		mu 0 4 30 3 26 38
		f 4 -6 -24 44 46
		mu 0 4 26 1 31 38
		f 4 19 1 -46 47
		mu 0 4 27 2 30 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BabyBotMon:pCylinder23" -p "LeftElbow";
	setAttr ".rp" -type "double3" -1.2367236663964387 0.093988092750343116 0.16506363800524149 ;
	setAttr ".sp" -type "double3" -1.2367236663964387 0.093988092750343116 0.16506363800524149 ;
createNode mesh -n "BabyBotMon:pCylinderShape23" -p "BabyBotMon:pCylinder23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.54828393 0.00764741
		 0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625
		 0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125
		 0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004
		 0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911
		 0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375 0.5 0.15000001
		 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.3317517 1.1289661 0.1171912 
		-0.23778489 0.97872198 0.54906362 -0.23778488 0.49252155 0.45026109 -0.3317517 0.34227735 
		-0.042674627 -0.38982639 0.73562175 -0.2485231 -3.28671 -0.15430114 0.1171912 -3.1927433 
		-0.30454531 0.54906362 -3.1927433 -0.79074574 0.45026109 -3.28671 -0.94098991 -0.042674627 
		-3.3447847 -0.54764551 -0.2485231 -0.3057799 0.73562175 0.16506363 -3.2607384 -0.54764551 
		0.16506363;
	setAttr -s 12 ".vt[0:11]"  0.025971798 -0.64163363 -0.07993295 -0.067995019 -0.64163363 -0.049401283
		 -0.067995027 -0.64163363 0.049401272 0.025971785 -0.64163363 0.079932943 0.084046468 -0.64163363 0
		 0.025971798 0.64163363 -0.07993295 -0.067995019 0.64163363 -0.049401283 -0.067995027 0.64163363 0.049401272
		 0.025971785 0.64163363 0.079932943 0.084046468 0.64163363 0 0 -0.64163363 0 0 0.64163363 0;
	setAttr -s 25 ".ed[0:24]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 10 0 1 10 1 1 10 2 1 10 3 1 10 4 1
		 5 11 1 6 11 1 7 11 1 8 11 1 9 11 1;
	setAttr -s 15 -ch 50 ".fc[0:14]" -type "polyFaces" 
		f 4 10 5 -12 -1
		mu 0 4 5 11 12 6
		f 4 11 6 -13 -2
		mu 0 4 6 12 13 7
		f 4 12 7 -14 -3
		mu 0 4 7 13 14 8
		f 4 13 8 -15 -4
		mu 0 4 8 14 15 9
		f 4 14 9 -11 -5
		mu 0 4 9 15 16 10
		f 3 -17 15 0
		mu 0 3 1 22 0
		f 3 -18 16 1
		mu 0 3 2 22 1
		f 3 -19 17 2
		mu 0 3 3 22 2
		f 3 -20 18 3
		mu 0 3 4 22 3
		f 3 -16 19 4
		mu 0 3 0 22 4
		f 3 20 -22 -6
		mu 0 3 20 23 19
		f 3 21 -23 -7
		mu 0 3 19 23 18
		f 3 22 -24 -8
		mu 0 3 18 23 17
		f 3 23 -25 -9
		mu 0 3 17 23 21
		f 3 24 -21 -10
		mu 0 3 21 23 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode orientConstraint -n "LeftElbow_orientConstraint1" -p "LeftElbow";
	addAttr -ci true -k true -sn "w0" -ln "curve12W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 89.999999999999972 180 2.5444437451708134e-14 ;
	setAttr ".o" -type "double3" -90.000000000000028 7.0622500768802555e-31 180 ;
	setAttr ".rsrr" -type "double3" -180 180 180 ;
	setAttr -k on ".w0";
createNode transform -n "BabyBotMon:pCylinder22" -p "LeftShoulder";
	setAttr ".rp" -type "double3" -0.67032257451912569 0.093988092750343116 0.16506363800523793 ;
	setAttr ".sp" -type "double3" -0.67032257451912569 0.093988092750343116 0.16506363800523793 ;
createNode mesh -n "BabyBotMon:pCylinderShape22" -p "BabyBotMon:pCylinder22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.54828393 0.00764741
		 0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625
		 0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125
		 0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004
		 0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911
		 0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375 0.5 0.15000001
		 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.23464939 1.1289661 0.1171912 
		0.3286162 0.97872198 0.54906362 0.3286162 0.49252155 0.45026109 0.23464939 0.34227735 
		-0.042674627 0.17657471 0.73562175 -0.2485231 -2.720309 -0.15430114 0.1171912 -2.6263421 
		-0.30454531 0.54906362 -2.6263421 -0.79074574 0.45026109 -2.720309 -0.94098991 -0.042674627 
		-2.7783837 -0.54764551 -0.2485231 0.26062119 0.73562175 0.16506363 -2.6943371 -0.54764551 
		0.16506363;
	setAttr -s 12 ".vt[0:11]"  0.025971798 -0.64163363 -0.07993295 -0.067995019 -0.64163363 -0.049401283
		 -0.067995027 -0.64163363 0.049401272 0.025971785 -0.64163363 0.079932943 0.084046468 -0.64163363 0
		 0.025971798 0.64163363 -0.07993295 -0.067995019 0.64163363 -0.049401283 -0.067995027 0.64163363 0.049401272
		 0.025971785 0.64163363 0.079932943 0.084046468 0.64163363 0 0 -0.64163363 0 0 0.64163363 0;
	setAttr -s 25 ".ed[0:24]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 10 0 1 10 1 1 10 2 1 10 3 1 10 4 1
		 5 11 1 6 11 1 7 11 1 8 11 1 9 11 1;
	setAttr -s 15 -ch 50 ".fc[0:14]" -type "polyFaces" 
		f 4 10 5 -12 -1
		mu 0 4 5 11 12 6
		f 4 11 6 -13 -2
		mu 0 4 6 12 13 7
		f 4 12 7 -14 -3
		mu 0 4 7 13 14 8
		f 4 13 8 -15 -4
		mu 0 4 8 14 15 9
		f 4 14 9 -11 -5
		mu 0 4 9 15 16 10
		f 3 -17 15 0
		mu 0 3 1 22 0
		f 3 -18 16 1
		mu 0 3 2 22 1
		f 3 -19 17 2
		mu 0 3 3 22 2
		f 3 -20 18 3
		mu 0 3 4 22 3
		f 3 -16 19 4
		mu 0 3 0 22 4
		f 3 20 -22 -6
		mu 0 3 20 23 19
		f 3 21 -23 -7
		mu 0 3 19 23 18
		f 3 22 -24 -8
		mu 0 3 18 23 17
		f 3 23 -25 -9
		mu 0 3 17 23 21
		f 3 24 -21 -10
		mu 0 3 21 23 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode orientConstraint -n "LeftShoulder_orientConstraint1" -p "LeftShoulder";
	addAttr -ci true -k true -sn "w0" -ln "curve11W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -90.000000000000057 -1.9774300215264705e-29 179.99999999999997 ;
	setAttr ".o" -type "double3" -90.000000000000057 360 180 ;
	setAttr ".rsrr" -type "double3" -360 360 359.99999999999994 ;
	setAttr -k on ".w0";
createNode joint -n "Neck" -p "Torso";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k on ".blendParent1";
createNode joint -n "Head" -p "Neck";
	setAttr ".t" -type "double3" 1.9386527152060529 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90 -89.999999999999986 0 ;
createNode transform -n "Head" -p "|anim_global01|Root|Torso|Neck|Head";
	setAttr ".rp" -type "double3" -0.0045406249808138312 3.6865327188889143 -0.44667358025055831 ;
	setAttr ".sp" -type "double3" -0.0045406249808138312 3.6865327188889143 -0.44667358025055831 ;
createNode transform -n "BabyBotMon:polySurface25" -p "|anim_global01|Root|Torso|Neck|Head|Head";
	setAttr ".t" -type "double3" 4.7948341981705727e-16 1.700080683349667e-16 0.7281265388075483 ;
	setAttr ".rp" -type "double3" -0.0045406249808138312 3.6865327188889143 -0.44667358025055831 ;
	setAttr ".sp" -type "double3" -0.0045406249808138312 3.6865327188889143 -0.44667358025055831 ;
createNode mesh -n "BabyBotMon:polySurfaceShape34" -p "BabyBotMon:polySurface25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.50000013411045074 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "BabyBotMon:polySurface26" -p "|anim_global01|Root|Torso|Neck|Head|Head";
	setAttr ".t" -type "double3" 4.7948341981705727e-16 1.700080683349667e-16 0.7281265388075483 ;
	setAttr ".rp" -type "double3" -0.0045406249808138312 3.6865327188889143 -0.44667358025055831 ;
	setAttr ".sp" -type "double3" -0.0045406249808138312 3.6865327188889143 -0.44667358025055831 ;
createNode mesh -n "BabyBotMon:polySurfaceShape35" -p "BabyBotMon:polySurface26";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "BabyBotMon:transform16" -p "|anim_global01|Root|Torso|Neck|Head|Head";
	setAttr ".rp" -type "double3" -0.0045406249808138312 3.6865327188889143 -0.44667358025055831 ;
	setAttr ".sp" -type "double3" -0.0045406249808138312 3.6865327188889143 -0.44667358025055831 ;
createNode mesh -n "BabyBotMon:pCubeShape13" -p "BabyBotMon:transform16";
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
createNode transform -n "BabyBotMon:pCylinder18" -p "Neck";
	setAttr ".t" -type "double3" 8.9169783512490503e-17 0.7281265388075483 3.1780685017210451e-16 ;
	setAttr ".rp" -type "double3" 0.4648474025438647 -0.71749298211920931 -0.03741257943126676 ;
	setAttr ".sp" -type "double3" 0.4648474025438647 -0.71749298211920931 -0.03741257943126676 ;
createNode mesh -n "BabyBotMon:pCylinderShape18" -p "BabyBotMon:pCylinder18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.54828393 0.00764741
		 0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625
		 0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125
		 0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004
		 0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911
		 0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375 0.5 0.15000001
		 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.11382576 -0.46920377 0.17032576 
		-0.019858943 -0.31895959 -0.32260999 -0.019858936 0.16724081 -0.42141259 -0.11382575 
		0.317485 0.010459798 -0.17190044 -0.075859353 0.37617415 1.6405332 -1.752471 0.17032576 
		1.7345001 -1.6022269 -0.32260999 1.7345001 -1.1160264 -0.42141259 1.6405332 -0.96578223 
		0.010459798 1.5824585 -1.3591266 0.37617415 -0.087853961 -0.075859353 -0.03741258 
		1.666505 -1.3591266 -0.03741258;
	setAttr -s 12 ".vt[0:11]"  0.025971798 -0.64163363 -0.07993295 -0.067995019 -0.64163363 -0.049401283
		 -0.067995027 -0.64163363 0.049401272 0.025971785 -0.64163363 0.079932943 0.084046468 -0.64163363 0
		 0.025971798 0.64163363 -0.07993295 -0.067995019 0.64163363 -0.049401283 -0.067995027 0.64163363 0.049401272
		 0.025971785 0.64163363 0.079932943 0.084046468 0.64163363 0 0 -0.64163363 0 0 0.64163363 0;
	setAttr -s 25 ".ed[0:24]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 10 0 1 10 1 1 10 2 1 10 3 1 10 4 1
		 5 11 1 6 11 1 7 11 1 8 11 1 9 11 1;
	setAttr -s 15 -ch 50 ".fc[0:14]" -type "polyFaces" 
		f 4 0 11 -6 -11
		mu 0 4 5 6 12 11
		f 4 1 12 -7 -12
		mu 0 4 6 7 13 12
		f 4 2 13 -8 -13
		mu 0 4 7 8 14 13
		f 4 3 14 -9 -14
		mu 0 4 8 9 15 14
		f 4 4 10 -10 -15
		mu 0 4 9 10 16 15
		f 3 -1 -16 16
		mu 0 3 1 0 22
		f 3 -2 -17 17
		mu 0 3 2 1 22
		f 3 -3 -18 18
		mu 0 3 3 2 22
		f 3 -4 -19 19
		mu 0 3 4 3 22
		f 3 -5 -20 15
		mu 0 3 0 4 22
		f 3 5 21 -21
		mu 0 3 20 19 23
		f 3 6 22 -22
		mu 0 3 19 18 23
		f 3 7 23 -23
		mu 0 3 18 17 23
		f 3 8 24 -24
		mu 0 3 17 21 23
		f 3 9 20 -25
		mu 0 3 21 20 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "Neck_parentConstraint1" -p "Neck";
	addAttr -ci true -k true -sn "w0" -ln "curve1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.015835264887512607 -0.10664681599366864 0.060028410001777166 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999957 -1.4312496066585818e-14 
		89.999999999999972 ;
	setAttr ".lr" -type "double3" -8.995967132789879e-15 -5.7249984266343308e-14 -1.7991934265579774e-14 ;
	setAttr ".rst" -type "double3" 0.07202678713589529 0.50231752400018592 1.9973997671819903 ;
	setAttr ".rsrr" -type "double3" -8.995967132789879e-15 -5.7249984266343308e-14 -1.7991934265579774e-14 ;
	setAttr -k on ".w0";
createNode transform -n "TorsoGlowRing" -p "Torso";
	setAttr ".rp" -type "double3" -4.9228393025385149 0.21527245380249127 0.83410958324942897 ;
	setAttr ".sp" -type "double3" -4.9228393025385149 0.21527245380249127 0.83410958324942897 ;
createNode mesh -n "TorsoGlowRingShape" -p "TorsoGlowRing";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0.25 0.375
		 0.3125 0.3966139 0.3125 0.4375 0.27161387 0.4375 0.25 0.375 0.375 0.375 0.4375 0.39378065
		 0.4375 0.39140373 0.375 0.4375 0.5 0.5 0.5 0.5 0.48527309 0.4375 0.48121935 0.375
		 0.5 0.375 0.25 0.4375 0.25 0.4375 0.27161387 0.3966139 0.3125 0.375 0.3125 0.375
		 0.375 0.39140373 0.375 0.39378065 0.4375 0.375 0.4375 0.4375 0.5 0.4375 0.48121935
		 0.5 0.48527309 0.5 0.5 0.375 0.5 0.5 0.26640373 0.5 0.25 0.5 0.26640373 0.5 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  -2.0974379 -1.923607 0.38898543 
		-2.4939778 -2.2284245 0.46132562 -2.0887034 -2.2688267 0.74697465 -1.2435148 -1.882618 
		0.65357226 -1.2019919 -1.6380521 0.31854889 -2.6911671 -3.1679225 0.68785053 -2.4939773 
		-4.2195415 0.94246006 -2.1418281 -4.3162298 1.2421223 -2.360178 -3.238528 0.981489 
		-1.2019919 -5.1487699 1.1671863 0.090593562 -5.2904172 1.2007576 0.090593562 -5.1476603 
		1.443197 -1.2380718 -4.9662337 1.3993205 -2.0974379 -4.8639221 1.0996757 2.278625 
		-1.923607 0.38898543 1.3831791 -1.6380521 0.31854889 1.4247019 -1.882618 0.65357226 
		2.2698903 -2.2688267 0.74697465 2.6751647 -2.2284245 0.46132562 2.5413651 -3.238528 
		0.981489 2.323015 -4.3162298 1.2421223 2.6751645 -4.2195415 0.94246006 2.872354 -3.1679225 
		0.68785053 1.419259 -4.9662337 1.3993205 1.3831791 -5.1487699 1.1671863 2.278625 
		-4.8639221 1.0996757 0.090593569 -1.7157583 0.61321956 0.090593569 -1.4960527 0.28352341;
	setAttr -s 28 ".vt[0:27]"  0.42337552 3.60908866 0.30065596 0.50059944 3.60873485 0.22685277
		 0.42167452 3.67959833 0.2342196 0.25707871 3.67959809 0.32762095 0.24899237 3.60873485 0.3696295
		 0.53900099 3.60855889 -0.00039969702 0.50059938 3.60863185 -0.25470757 0.43202025 3.67959833 -0.26092812
		 0.47454268 3.67959833 -0.00029479258 0.24899237 3.60863185 -0.47943377 -0.0027315156 3.6084559 -0.51373267
		 -0.0027315156 3.67959833 -0.46200275 0.25601873 3.67959833 -0.41812626 0.42337552 3.60898566 -0.4104602
		 -0.42883855 3.60908866 0.30065596 -0.25445539 3.60873485 0.3696295 -0.26254174 3.67959809 0.32762095
		 -0.42713752 3.67959833 0.2342196 -0.50606245 3.60873485 0.22685277 -0.48000571 3.67959833 -0.00029479258
		 -0.43748325 3.67959833 -0.26092812 -0.50606239 3.60863185 -0.25470757 -0.54446399 3.60855889 -0.00039969702
		 -0.26148176 3.67959833 -0.41812626 -0.25445539 3.60863185 -0.47943377 -0.42883855 3.60898566 -0.4104602
		 -0.0027315158 3.67959833 0.36797464 -0.0027315158 3.60855913 0.4039284;
	setAttr -s 40 ".ed[0:39]"  27 26 0 4 3 1 15 16 1 8 5 1 11 10 0 12 9 1
		 7 6 1 2 1 1 19 22 1 23 24 1 20 21 1 17 18 1 0 1 0 2 3 0 0 4 0 5 6 0 7 8 0 9 10 0
		 11 12 0 6 13 0 13 9 0 12 7 0 1 5 0 8 2 0 14 15 0 16 17 0 14 18 0 19 20 0 22 21 0
		 23 11 0 24 10 0 20 23 0 25 24 0 21 25 0 17 19 0 18 22 0 26 3 0 4 27 0 16 26 0 15 27 0;
	setAttr -s 12 -ch 52 ".fc[0:11]" -type "polyFaces" 
		f 5 12 -8 13 -2 -15
		mu 0 5 0 1 2 3 4
		f 4 15 -7 16 3
		mu 0 4 5 6 7 8
		f 4 17 -5 18 5
		mu 0 4 9 10 11 12
		f 5 19 20 -6 21 6
		mu 0 5 6 13 9 12 7
		f 4 22 -4 23 7
		mu 0 4 1 5 8 2
		f 5 24 2 25 11 -27
		mu 0 5 14 15 16 17 18
		f 4 -9 27 10 -29
		mu 0 4 19 20 21 22
		f 4 -10 29 4 -31
		mu 0 4 23 24 25 26
		f 5 -11 31 9 -33 -34
		mu 0 5 22 21 24 23 27
		f 4 -12 34 8 -36
		mu 0 4 18 17 20 19
		f 4 -37 -1 -38 1
		mu 0 4 3 28 29 4
		f 4 -39 -3 39 0
		mu 0 4 30 16 15 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BabyBotMon:pCube12" -p "Torso";
	setAttr ".rp" -type "double3" 2.3439956758368843 -0.044142947680661293 -0.14474773139749253 ;
	setAttr ".sp" -type "double3" 2.3439956758368843 -0.044142947680661293 -0.14474773139749253 ;
createNode mesh -n "BabyBotMon:pCubeShape12" -p "BabyBotMon:pCube12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.5 0.375 0.75 0.375 1 0.125 0 0.125 0.25 0.25 0 0.375 0.875 0.125 0.125 0.375
		 0.625 0.25 0.25 0.375 0.375 0.375 0.125 0.5 0.75 0.5 0.5 0.5 0.25 0.5 0 0.5 1 0.25
		 0.125 0.5 0.875 0.5 0.625 0.5 0.375 0.5 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt[0:16]" -type "float3"  3.288434 0.47290814 -0.68196243 
		3.0811462 0.11607818 0.16731198 2.8583343 -0.73145455 0.55715901 3.0656219 -0.37462458 
		-0.29211539 3.4608603 0.080925904 -0.60366493 3.172538 -0.72643167 0.22699355 3.182945 
		-0.39748377 0.53497565 3.4712672 0.40987381 -0.29568282 2.3335888 -0.37309089 -0.45272991 
		2.0556736 -0.85150051 0.68591076 2.3544025 0.284805 0.16323443 2.6323178 0.76321465 
		-0.97540623 3.6532238 -0.19694892 0.0030606352 2.5300331 0.276106 -0.90695739 2.1440253 
		-0.80478948 0.20513347 2.1579583 -0.36439189 0.61746192 2.5439658 0.71650356 -0.49462894;
	setAttr -s 17 ".vt[0:16]"  -0.19492351 -0.19492351 0.19492351 -0.19492351 0.19492351 0.19492351
		 -0.19492351 0.19492351 -0.19492351 -0.19492351 -0.19492351 -0.19492351 -0.26133817 -0.26133817 0
		 -0.26133817 0 -0.26133817 -0.26133817 0.26133817 0 -0.26133817 0 0.26133817 0 -0.26133817 -0.26133817
		 0 0.26133817 -0.26133817 0 0.26133817 0.26133817 0 -0.26133817 0.26133817 -0.3498812 0 0
		 0 -0.3498812 0 0 0 -0.3498812 0 0.3498812 0 0 0 0.3498812;
	setAttr -s 28 ".ed[0:27]"  0 11 1 1 10 1 2 9 1 3 8 1 0 7 1 1 6 1 2 5 1
		 3 4 1 4 0 1 5 3 1 6 2 1 7 1 1 4 12 1 12 6 1 12 7 1 12 5 1 8 13 0 13 11 0 13 4 1 9 14 0
		 14 8 0 14 5 1 10 15 0 15 9 0 15 6 1 11 16 0 16 10 0 16 7 1;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 0 25 27 -5
		mu 0 4 0 17 23 13
		f 4 1 22 24 -6
		mu 0 4 1 16 22 12
		f 4 2 19 21 -7
		mu 0 4 2 15 21 10
		f 4 3 16 18 -8
		mu 0 4 3 14 20 8
		f 4 7 12 15 9
		mu 0 4 5 7 19 9
		f 4 -14 14 11 5
		mu 0 4 11 19 13 1
		f 4 -15 -13 8 4
		mu 0 4 13 19 7 0
		f 4 -16 13 10 6
		mu 0 4 9 19 11 6
		f 4 -19 17 -1 -9
		mu 0 4 8 20 18 4
		f 4 -22 20 -4 -10
		mu 0 4 10 21 14 3
		f 4 -25 23 -3 -11
		mu 0 4 12 22 15 2
		f 4 -28 26 -2 -12
		mu 0 4 13 23 16 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BabyBotMon:pCube11" -p "Torso";
	setAttr ".rp" -type "double3" 1.0005121725725392 1.2074248981079931 -5.5100450378342041 ;
	setAttr ".sp" -type "double3" 1.0005121725725392 1.2074248981079931 -5.5100450378342041 ;
createNode mesh -n "BabyBotMon:pCubeShape11" -p "BabyBotMon:pCube11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "BabyBotMon:pCube20" -p "Torso";
	setAttr ".rp" -type "double3" -2.1682715774321815 -0.04414294768066207 -0.14474773139749075 ;
	setAttr ".sp" -type "double3" -2.1682715774321815 -0.04414294768066207 -0.14474773139749075 ;
createNode mesh -n "BabyBotMon:pCubeShape20" -p "BabyBotMon:pCube20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.5 0.375 0.75 0.375 1 0.125 0 0.125 0.25 0.25 0 0.375 0.875 0.125 0.125 0.375
		 0.625 0.25 0.25 0.375 0.375 0.375 0.125 0.5 0.75 0.5 0.5 0.5 0.25 0.5 0 0.5 1 0.25
		 0.125 0.5 0.875 0.5 0.625 0.5 0.375 0.5 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt[0:16]" -type "float3"  -2.7228632 0.47290814 -0.68196243 
		-2.5155752 0.11607818 0.16731198 -2.292763 -0.73145455 0.55715901 -2.500051 -0.37462458 
		-0.29211539 -2.76246 0.080925904 -0.60366493 -2.4741378 -0.72643167 0.22699355 -2.4845445 
		-0.39748377 0.53497565 -2.7728667 0.40987381 -0.29568282 -2.1578646 -0.37309089 -0.45272991 
		-1.8799495 -0.85150051 0.68591076 -2.1786785 0.284805 0.16323443 -2.4565938 0.76321465 
		-0.97540623 -2.7777371 -0.19694892 0.0030606352 -2.3543088 0.276106 -0.90695739 -1.9683014 
		-0.80478948 0.20513347 -1.9822342 -0.36439189 0.61746192 -2.3682418 0.71650356 -0.49462894;
	setAttr -s 17 ".vt[0:16]"  -0.19492351 -0.19492351 0.19492351 -0.19492351 0.19492351 0.19492351
		 -0.19492351 0.19492351 -0.19492351 -0.19492351 -0.19492351 -0.19492351 -0.26133817 -0.26133817 0
		 -0.26133817 0 -0.26133817 -0.26133817 0.26133817 0 -0.26133817 0 0.26133817 0 -0.26133817 -0.26133817
		 0 0.26133817 -0.26133817 0 0.26133817 0.26133817 0 -0.26133817 0.26133817 -0.3498812 0 0
		 0 -0.3498812 0 0 0 -0.3498812 0 0.3498812 0 0 0 0.3498812;
	setAttr -s 28 ".ed[0:27]"  0 11 1 1 10 1 2 9 1 3 8 1 0 7 1 1 6 1 2 5 1
		 3 4 1 4 0 1 5 3 1 6 2 1 7 1 1 4 12 1 12 6 1 12 7 1 12 5 1 8 13 0 13 11 0 13 4 1 9 14 0
		 14 8 0 14 5 1 10 15 0 15 9 0 15 6 1 11 16 0 16 10 0 16 7 1;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 4 -28 -26 -1
		mu 0 4 0 13 23 17
		f 4 5 -25 -23 -2
		mu 0 4 1 12 22 16
		f 4 6 -22 -20 -3
		mu 0 4 2 10 21 15
		f 4 7 -19 -17 -4
		mu 0 4 3 8 20 14
		f 4 -10 -16 -13 -8
		mu 0 4 5 9 19 7
		f 4 -6 -12 -15 13
		mu 0 4 11 1 13 19
		f 4 -5 -9 12 14
		mu 0 4 13 0 7 19
		f 4 -7 -11 -14 15
		mu 0 4 9 6 11 19
		f 4 8 0 -18 18
		mu 0 4 8 4 18 20
		f 4 9 3 -21 21
		mu 0 4 10 3 14 21
		f 4 10 2 -24 24
		mu 0 4 12 2 15 22
		f 4 11 1 -27 27
		mu 0 4 13 1 16 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BabyBotMon:pCube21" -p "Torso";
	setAttr ".rp" -type "double3" -0.82478807416783795 1.2074248981079927 -5.5100450378342032 ;
	setAttr ".sp" -type "double3" -0.82478807416783795 1.2074248981079927 -5.5100450378342032 ;
createNode mesh -n "BabyBotMon:pCubeShape21" -p "BabyBotMon:pCube21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.5 0.375 0.75 0.375 1 0.125 0 0.125 0.25 0.25 0 0.375 0.875 0.125 0.125 0.375
		 0.625 0.25 0.25 0.375 0.375 0.375 0.125 0.5 0.75 0.5 0.5 0.5 0.25 0.5 0 0.5 1 0.25
		 0.125 0.5 0.875 0.5 0.625 0.5 0.375 0.5 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt[0:16]" -type "float3"  -0.17061956 2.0260839 -6.2698374 
		-1.2631141 1.6191596 -6.0922537 -1.2674596 0.52015179 -5.8348265 -0.17496504 0.92707622 
		-6.0124102 0.049356814 1.5682871 -6.3561463 -0.68592179 0.55876917 -6.0645318 -1.4153743 
		1.0227147 -6.1180558 -0.68009573 2.0322328 -6.4096699 -0.095335536 0.74347931 -5.456521 
		-1.5600667 0.19790693 -5.218431 -1.5542406 1.6713705 -5.5635691 -0.089509465 2.2169428 
		-5.8016591 -0.63497305 1.3253417 -6.4834323 0.1557076 1.5726328 -5.6694236 -0.82868809 
		0.22108375 -5.2790084 -1.8052838 0.84221697 -5.3506665 -0.8208881 2.1937661 -5.7410817;
	setAttr -s 17 ".vt[0:16]"  -0.19492351 -0.19492351 0.19492351 -0.19492351 0.19492351 0.19492351
		 -0.19492351 0.19492351 -0.19492351 -0.19492351 -0.19492351 -0.19492351 -0.26133817 -0.26133817 0
		 -0.26133817 0 -0.26133817 -0.26133817 0.26133817 0 -0.26133817 0 0.26133817 0 -0.26133817 -0.26133817
		 0 0.26133817 -0.26133817 0 0.26133817 0.26133817 0 -0.26133817 0.26133817 -0.3498812 0 0
		 0 -0.3498812 0 0 0 -0.3498812 0 0.3498812 0 0 0 0.3498812;
	setAttr -s 28 ".ed[0:27]"  0 11 1 1 10 1 2 9 1 3 8 1 0 7 1 1 6 1 2 5 1
		 3 4 1 4 0 1 5 3 1 6 2 1 7 1 1 4 12 1 12 6 1 12 7 1 12 5 1 8 13 0 13 11 0 13 4 1 9 14 0
		 14 8 0 14 5 1 10 15 0 15 9 0 15 6 1 11 16 0 16 10 0 16 7 1;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 4 -28 -26 -1
		mu 0 4 0 13 23 17
		f 4 5 -25 -23 -2
		mu 0 4 1 12 22 16
		f 4 6 -22 -20 -3
		mu 0 4 2 10 21 15
		f 4 7 -19 -17 -4
		mu 0 4 3 8 20 14
		f 4 -10 -16 -13 -8
		mu 0 4 5 9 19 7
		f 4 -6 -12 -15 13
		mu 0 4 11 1 13 19
		f 4 -5 -9 12 14
		mu 0 4 13 0 7 19
		f 4 -7 -11 -14 15
		mu 0 4 9 6 11 19
		f 4 8 0 -18 18
		mu 0 4 8 4 18 20
		f 4 9 3 -21 21
		mu 0 4 10 3 14 21
		f 4 10 2 -24 24
		mu 0 4 12 2 15 22
		f 4 11 1 -27 27
		mu 0 4 13 1 16 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode orientConstraint -n "Torso_orientConstraint1" -p "Torso";
	addAttr -ci true -k true -sn "w0" -ln "curve1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -90 -179.99999999999994 0 ;
	setAttr ".o" -type "double3" 90.000000000000014 0 179.99999999999994 ;
	setAttr ".rsrr" -type "double3" 180 -180 180 ;
	setAttr -k on ".w0";
createNode joint -n "RightLeg" -p "Root";
	setAttr ".t" -type "double3" -0.34968705645436993 0.19777177253116232 -1.005090473316117 ;
	setAttr ".r" -type "double3" -0.0057453945049504044 0.0004077472364093008 -0.027890026262925582 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 168.26142879327767 0 ;
createNode joint -n "RightKnee" -p "RightLeg";
	setAttr ".t" -type "double3" 3.078725053796417 0.9445167264581098 1.2212453270876722e-15 ;
	setAttr ".r" -type "double3" -0.00019029221582198116 -0.00073452563532382825 0.0012517749069466909 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4959443257589972e-15 21.011172983922631 8.0670035747956752e-15 ;
createNode joint -n "RightAnkle" -p "RightKnee";
	setAttr ".t" -type "double3" 3.8872234981565086 -0.97304934691391698 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999929 80.727398222799692 1.9738827030114724e-14 ;
createNode joint -n "RightFoot" -p "RightAnkle";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.3611093629270209e-15 -3.1805546814635105e-15 6.3611093629270438e-15 ;
createNode joint -n "RightToe" -p "RightFoot";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 2.6645352591003757e-15 2.4471692690687306 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.3611093629270233e-15 3.1805546814635116e-15 -1.5902773407317623e-15 ;
createNode transform -n "RFoot" -p "RightFoot";
	setAttr ".r" -type "double3" 0 0 1.7707908613328507e-30 ;
	setAttr ".rp" -type "double3" -0.32689352660678084 -0.28107749055762987 0.97657485932650157 ;
	setAttr ".sp" -type "double3" -0.32689352660678084 -0.28107749055762987 0.97657485932650157 ;
createNode mesh -n "RFootShape" -p "RFoot";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegoPiece1" -p "RFoot";
	setAttr ".rp" -type "double3" -0.28418362688307031 0.47286062235604481 1.990229780364952 ;
	setAttr ".sp" -type "double3" -0.28418362688307031 0.47286062235604481 1.990229780364952 ;
createNode mesh -n "LegoPieceShape1" -p "LegoPiece1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LegoPiece2" -p "RFoot";
	setAttr ".rp" -type "double3" -0.28418362688307097 0.4728606223560412 0.0089512831129958115 ;
	setAttr ".sp" -type "double3" -0.28418362688307097 0.4728606223560412 0.0089512831129958115 ;
createNode mesh -n "LegoPieceShape2" -p "LegoPiece2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.62640893 0.064408526
		 0.54828387 0.0076473951 0.45171607 0.00764741 0.37359107 0.064408556 0.34375 0.15625001
		 0.37359107 0.24809146 0.4517161 0.3048526 0.54828393 0.3048526 0.62640893 0.24809144
		 0.65625 0.15625 0.375 0.3125 0.40000001 0.3125 0.42500001 0.3125 0.45000002 0.3125
		 0.47500002 0.3125 0.5 0.3125 0.52499998 0.3125 0.54999995 0.3125 0.57499993 0.3125
		 0.5999999 0.3125 0.62499988 0.3125 0.375 0.68843985 0.40000001 0.68843985 0.42500001
		 0.68843985 0.45000002 0.68843985 0.47500002 0.68843985 0.5 0.68843985 0.52499998
		 0.68843985 0.54999995 0.68843985 0.57499993 0.68843985 0.5999999 0.68843985 0.62499988
		 0.68843985 0.62640893 0.75190854 0.54828387 0.6951474 0.45171607 0.6951474 0.37359107
		 0.75190854 0.34375 0.84375 0.37359107 0.93559146 0.4517161 0.9923526 0.54828393 0.9923526
		 0.62640893 0.93559146 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  0.2882131 0.27324921 -0.40691939 
		-0.065547593 0.27324921 -0.6639415 -0.50281984 0.27324921 -0.66394144 -0.85658044 
		0.27324921 -0.40691924 -0.99170494 0.27324921 0.008951325 -0.85658038 0.27324921 
		0.42482191 -0.50281966 0.27324921 0.681844 -0.065547526 0.27324921 0.68184394 0.28821304 
		0.27324921 0.42482182 0.42333758 0.27324921 0.0089512831 0.2882131 0.67247206 -0.40691939 
		-0.065547593 0.67247206 -0.6639415 -0.50281984 0.67247206 -0.66394144 -0.85658044 
		0.67247206 -0.40691924 -0.99170494 0.67247206 0.008951325 -0.85658038 0.67247206 
		0.42482191 -0.50281966 0.67247206 0.681844 -0.065547526 0.67247206 0.68184394 0.28821304 
		0.67247206 0.42482182 0.42333758 0.67247206 0.0089512831 -0.28418362 0.27324921 0.0089512831 
		-0.28418362 0.67247206 0.0089512831;
	setAttr -s 22 ".vt[0:21]"  0.18258654 -0.063673243 -0.13265692 0.06974183 -0.063673243 -0.21464337
		 -0.069741882 -0.063673243 -0.21464334 -0.18258657 -0.063673243 -0.13265687 -0.22568938 -0.063673243 1.3452134e-08
		 -0.18258654 -0.063673243 0.1326569 -0.069741838 -0.063673243 0.21464334 0.069741853 -0.063673243 0.21464333
		 0.18258652 -0.063673243 0.13265687 0.22568935 -0.063673243 0 0.18258654 0.063673243 -0.13265692
		 0.06974183 0.063673243 -0.21464337 -0.069741882 0.063673243 -0.21464334 -0.18258657 0.063673243 -0.13265687
		 -0.22568938 0.063673243 1.3452134e-08 -0.18258654 0.063673243 0.1326569 -0.069741838 0.063673243 0.21464334
		 0.069741853 0.063673243 0.21464333 0.18258652 0.063673243 0.13265687 0.22568935 0.063673243 0
		 0 -0.063673243 0 0 0.063673243 0;
	setAttr -s 50 ".ed[0:49]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 10 21 1 11 21 1
		 12 21 1 13 21 1 14 21 1 15 21 1 16 21 1 17 21 1 18 21 1 19 21 1;
	setAttr -s 30 -ch 100 ".fc[0:29]" -type "polyFaces" 
		f 4 0 21 -11 -21
		mu 0 4 10 11 22 21
		f 4 1 22 -12 -22
		mu 0 4 11 12 23 22
		f 4 2 23 -13 -23
		mu 0 4 12 13 24 23
		f 4 3 24 -14 -24
		mu 0 4 13 14 25 24
		f 4 4 25 -15 -25
		mu 0 4 14 15 26 25
		f 4 5 26 -16 -26
		mu 0 4 15 16 27 26
		f 4 6 27 -17 -27
		mu 0 4 16 17 28 27
		f 4 7 28 -18 -28
		mu 0 4 17 18 29 28
		f 4 8 29 -19 -29
		mu 0 4 18 19 30 29
		f 4 9 20 -20 -30
		mu 0 4 19 20 31 30
		f 3 -1 -31 31
		mu 0 3 1 0 42
		f 3 -2 -32 32
		mu 0 3 2 1 42
		f 3 -3 -33 33
		mu 0 3 3 2 42
		f 3 -4 -34 34
		mu 0 3 4 3 42
		f 3 -5 -35 35
		mu 0 3 5 4 42
		f 3 -6 -36 36
		mu 0 3 6 5 42
		f 3 -7 -37 37
		mu 0 3 7 6 42
		f 3 -8 -38 38
		mu 0 3 8 7 42
		f 3 -9 -39 39
		mu 0 3 9 8 42
		f 3 -10 -40 30
		mu 0 3 0 9 42
		f 3 10 41 -41
		mu 0 3 40 39 43
		f 3 11 42 -42
		mu 0 3 39 38 43
		f 3 12 43 -43
		mu 0 3 38 37 43
		f 3 13 44 -44
		mu 0 3 37 36 43
		f 3 14 45 -45
		mu 0 3 36 35 43
		f 3 15 46 -46
		mu 0 3 35 34 43
		f 3 16 47 -47
		mu 0 3 34 33 43
		f 3 17 48 -48
		mu 0 3 33 32 43
		f 3 18 49 -49
		mu 0 3 32 41 43
		f 3 19 40 -50
		mu 0 3 41 40 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode orientConstraint -n "RightFoot_orientConstraint1" -p "RightFoot";
	addAttr -ci true -k true -sn "w0" -ln "anim_rightFoot01W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -0.027209498925375129 6.2786587325490534e-05 0.00032537121340477923 ;
	setAttr -k on ".w0";
createNode transform -n "RKnee" -p "RightKnee";
	setAttr ".rp" -type "double3" -0.074769780734767366 -0.23263357762437509 -0.030298841535913112 ;
	setAttr ".sp" -type "double3" -0.074769780734767366 -0.23263357762437509 -0.030298841535913112 ;
createNode mesh -n "RKneeShape" -p "RKnee";
	setAttr -k off ".v";
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
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.45762572 0.37443185 0.28339791 
		0.23892698 0.37443185 -0.56269431 -0.38846654 0.017595617 0.14526041 -0.60716528 
		0.017595617 -0.70083183 -0.38846654 -0.83969903 0.50209665 -0.60716528 -0.83969903 
		-0.3439956 0.45762572 -0.48286277 0.64023417 0.23892698 -0.48286277 -0.2058581 0.34581029 
		0.0065754782 -0.504884 0.63902444 0.0065754782 0.62949032 -0.22137685 -0.80733037 
		-0.35827693 0.071837291 -0.80733037 0.77609736 -0.78856403 -0.47184265 -0.69008797 
		-0.49534988 -0.47184265 0.44428635 -0.22137685 0.34206322 -0.83669508 0.071837291 
		0.34206322 0.29767928 0.49241737 -0.56812131 0.30151221 -0.64195693 -1.0465394 0.11630823 
		-0.64195693 0.10285416 -0.36210987 0.49241737 0.58127224 -0.17690592 0.12150867 -0.23263358 
		0.72905481 -0.27104825 -0.23263358 -0.78965253 0.6845839 0.087620988 0.093677267 
		-0.07476978 -1.0020412 0.28995574 -0.83412343 -0.55288815 -0.15427496 -0.07476978 
		0.53677404 -0.35055339;
	setAttr -s 26 ".vt[0:25]"  -0.17841811 -0.17841811 0.17841811 0.17841811 -0.17841811 0.17841811
		 -0.17841811 0.17841811 0.17841811 0.17841811 0.17841811 0.17841811 -0.17841811 0.17841811 -0.17841811
		 0.17841811 0.17841811 -0.17841811 -0.17841811 -0.17841811 -0.17841811 0.17841811 -0.17841811 -0.17841811
		 0.23920906 -0.23920906 0 -0.23920906 -0.23920906 0 0.23920906 0 -0.23920906 -0.23920906 0 -0.23920906
		 0.23920906 0.23920906 0 -0.23920906 0.23920906 0 0.23920906 0 0.23920906 -0.23920906 0 0.23920906
		 0 -0.23920906 -0.23920906 0 0.23920906 -0.23920906 0 0.23920906 0.23920906 0 -0.23920906 0.23920906
		 -0.32025456 0 0 0.32025456 0 0 0 -0.32025456 0 0 0 -0.32025456 0 0.32025456 0 0 0 0.32025456;
	setAttr -s 48 ".ed[0:47]"  0 19 1 2 18 1 4 17 1 6 16 1 0 15 1 1 14 1
		 2 13 1 3 12 1 4 11 1 5 10 1 6 9 1 7 8 1 8 1 1 9 0 1 10 7 1 11 6 1 12 5 1 13 4 1 14 3 1
		 15 2 1 16 7 1 17 5 1 18 3 1 19 1 1 9 20 1 20 13 1 20 15 1 20 11 1 8 21 1 21 12 1
		 21 10 1 21 14 1 16 22 1 22 19 1 22 8 1 22 9 1 17 23 1 23 16 1 23 10 1 23 11 1 18 24 1
		 24 17 1 24 12 1 24 13 1 19 25 1 25 18 1 25 14 1 25 15 1;
	setAttr -s 26 ".n[0:25]" -type "float3"  0.19845115 0.24031354 0.27589551
		 0.29047683 0.29432279 0.04742479 -8.2093592e-16 0.41623527 -1.3403035e-16 -0.04742479
		 0.29432279 0.29047683 -0.27589551 0.24031354 0.19845115 -0.29047683 0.29432279 -0.04742479
		 -0.41079625 -8.5863195e-16 -0.067068778 -0.33790162 -3.3366374e-09 0.24305204 -0.27589551
		 -0.24031354 0.19845115 -0.29047683 -0.29432279 -0.04742479 8.2093592e-16 -0.41623527
		 1.3403035e-16 -0.04742479 -0.29432279 0.29047683 0.19845115 -0.24031354 0.27589551
		 0.29047683 -0.29432279 0.04742479 0.41079625 8.5863195e-16 0.067068778 0.24305204
		 3.3366374e-09 0.33790162 0.27589551 0.24031354 -0.19845115 0.33790159 6.4005203e-16
		 -0.24305204 0.067068778 4.6538329e-17 -0.41079625 0.04742479 0.29432279 -0.29047683
		 -0.067068778 -4.6538329e-17 0.41079625 -0.24305201 -5.7423693e-16 -0.33790162 0.04742479
		 -0.29432279 -0.29047683 -0.19845115 -0.24031354 -0.27589551 0.27589551 -0.24031354
		 -0.19845115 -0.19845115 0.24031354 -0.27589551;
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
createNode transform -n "RShin" -p "RightKnee";
	setAttr ".rp" -type "double3" 3.2019206655060621 -0.80072809153857205 0.073938374880771818 ;
	setAttr ".sp" -type "double3" 3.2019206655060621 -0.80072809153857205 0.073938374880771818 ;
createNode mesh -n "RShinShape" -p "RShin";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode ikEffector -n "effector1" -p "RightKnee";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "BabyBotMon:pCylinder15" -p "RightLeg";
	setAttr ".rp" -type "double3" 1.7202691045819631 0.53273280005575441 0.025187989610630845 ;
	setAttr ".sp" -type "double3" 1.7202691045819631 0.53273280005575441 0.025187989610630845 ;
createNode mesh -n "BabyBotMon:pCylinderShape15" -p "BabyBotMon:pCylinder15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.54828393 0.00764741
		 0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625
		 0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125
		 0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004
		 0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911
		 0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375 0.5 0.15000001
		 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.5736821 1.0330055 -0.14311638 
		2.675771 0.99975473 0.26632926 2.608829 1.4021257 0.33595458 2.4653676 1.6840554 
		-0.030460231 2.4436455 1.4559267 -0.32654235 -0.07099086 -0.69657058 -0.12802328 
		0.031098224 -0.72982138 0.28142238 -0.035843749 -0.32745036 0.35104769 -0.17930526 
		-0.045520615 -0.015367132 -0.20102735 -0.27364945 -0.31144923 2.5534592 1.3149736 
		0.02043299 -0.0912138 -0.41460246 0.035526089;
	setAttr -s 12 ".vt[0:11]"  0.025971798 -0.64163363 -0.07993295 -0.067995019 -0.64163363 -0.049401283
		 -0.067995027 -0.64163363 0.049401272 0.025971785 -0.64163363 0.079932943 0.084046468 -0.64163363 0
		 0.025971798 0.64163363 -0.07993295 -0.067995019 0.64163363 -0.049401283 -0.067995027 0.64163363 0.049401272
		 0.025971785 0.64163363 0.079932943 0.084046468 0.64163363 0 0 -0.64163363 0 0 0.64163363 0;
	setAttr -s 25 ".ed[0:24]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 10 0 1 10 1 1 10 2 1 10 3 1 10 4 1
		 5 11 1 6 11 1 7 11 1 8 11 1 9 11 1;
	setAttr -s 15 -ch 50 ".fc[0:14]" -type "polyFaces" 
		f 4 0 11 -6 -11
		mu 0 4 5 6 12 11
		f 4 1 12 -7 -12
		mu 0 4 6 7 13 12
		f 4 2 13 -8 -13
		mu 0 4 7 8 14 13
		f 4 3 14 -9 -14
		mu 0 4 8 9 15 14
		f 4 4 10 -10 -15
		mu 0 4 9 10 16 15
		f 3 -1 -16 16
		mu 0 3 1 0 22
		f 3 -2 -17 17
		mu 0 3 2 1 22
		f 3 -3 -18 18
		mu 0 3 3 2 22
		f 3 -4 -19 19
		mu 0 3 4 3 22
		f 3 -5 -20 15
		mu 0 3 0 4 22
		f 3 5 21 -21
		mu 0 3 20 19 23
		f 3 6 22 -22
		mu 0 3 19 18 23
		f 3 7 23 -23
		mu 0 3 18 17 23
		f 3 8 24 -24
		mu 0 3 17 21 23
		f 3 9 20 -25
		mu 0 3 21 20 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "LeftLeg" -p "Root";
	setAttr ".t" -type "double3" -0.34968407491486886 0.19777199999999981 1.0050894665153247 ;
	setAttr ".r" -type "double3" -0.0057454325186922471 0.00040775277169694365 -0.027890171428876127 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 11.73857120672236 0 ;
createNode joint -n "LeftKnee" -p "LeftLeg";
	setAttr ".t" -type "double3" -3.0787290373118781 -0.94451800000000052 -3.5603129932559874e-06 ;
	setAttr ".r" -type "double3" -0.00019029448986893213 -0.00073453922837348471 0.0012517914857190814 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.1467205485362269e-16 21.011172983922631 1.6968950967507006e-15 ;
createNode joint -n "LeftFoot" -p "LeftKnee";
	setAttr ".t" -type "double3" -3.8871860106753711 0.97305099999999989 1.0473573431202254e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999844 80.727398222799707 9.8694135150573731e-14 ;
createNode joint -n "LeftFoot1" -p "LeftFoot";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.2183568983953863e-14 6.4972700707298366e-29 2.226388277024463e-14 ;
createNode joint -n "LeftToe" -p "LeftFoot1";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 -3.5527136788005009e-15 -2.3331853517153864 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.7886340082434787e-15 3.1805546814635251e-15 4.7708320221952728e-15 ;
createNode transform -n "BabyBotMon:pCube19" -p "LeftFoot1";
	setAttr ".r" -type "double3" 2.2599200246016818e-29 2.8249000307521022e-30 -3.3877009275430341e-31 ;
	setAttr ".rp" -type "double3" 0.1511704350028702 0.28111598148021244 -0.97657501140185599 ;
	setAttr ".sp" -type "double3" 0.1511704350028702 0.28111598148021244 -0.97657501140185599 ;
createNode mesh -n "BabyBotMon:pCubeShape19" -p "BabyBotMon:pCube19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.6158224 1.1829245 -3.8932948 
		-1.3134816 1.1829245 -3.8932948 1.6158224 -0.41172406 -3.8932948 -1.3134816 -0.41172406 
		-3.8932948 1.6158224 -0.41172406 1.9401447 -1.3134816 -0.41172406 1.9401447 1.6158224 
		1.1829245 1.9401447 -1.3134816 1.1829245 1.9401447;
	setAttr -s 8 ".vt[0:7]"  -0.28523287 -0.17562222 0.56801504 0.28523287 -0.17562222 0.56801504
		 -0.28523287 0.17562222 0.56801504 0.28523287 0.17562222 0.56801504 -0.28523287 0.17562222 -0.56801504
		 0.28523287 0.17562222 -0.56801504 -0.28523287 -0.17562222 -0.56801504 0.28523287 -0.17562222 -0.56801504;
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
createNode transform -n "BabyBotMon:pCylinder19" -p "BabyBotMon:pCube19";
	setAttr ".rp" -type "double3" 0.10846053527916032 -0.47282213143346752 -1.9902299324403061 ;
	setAttr ".sp" -type "double3" 0.10846053527916032 -0.47282213143346752 -1.9902299324403061 ;
createNode mesh -n "BabyBotMon:pCylinderShape19" -p "BabyBotMon:pCylinder19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.62640893 0.064408526
		 0.54828387 0.0076473951 0.45171607 0.00764741 0.37359107 0.064408556 0.34375 0.15625001
		 0.37359107 0.24809146 0.4517161 0.3048526 0.54828393 0.3048526 0.62640893 0.24809144
		 0.65625 0.15625 0.375 0.3125 0.40000001 0.3125 0.42500001 0.3125 0.45000002 0.3125
		 0.47500002 0.3125 0.5 0.3125 0.52499998 0.3125 0.54999995 0.3125 0.57499993 0.3125
		 0.5999999 0.3125 0.62499988 0.3125 0.375 0.68843985 0.40000001 0.68843985 0.42500001
		 0.68843985 0.45000002 0.68843985 0.47500002 0.68843985 0.5 0.68843985 0.52499998
		 0.68843985 0.54999995 0.68843985 0.57499993 0.68843985 0.5999999 0.68843985 0.62499988
		 0.68843985 0.62640893 0.75190854 0.54828387 0.6951474 0.45171607 0.6951474 0.37359107
		 0.75190854 0.34375 0.84375 0.37359107 0.93559146 0.4517161 0.9923526 0.54828393 0.9923526
		 0.62640893 0.93559146 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  -0.82910925 -0.14586423 -1.3090454 
		-0.24965915 -0.14586423 -0.88805038 0.46658048 -0.14586423 -0.88805056 1.0460305 
		-0.14586423 -1.3090457 1.2673606 -0.14586423 -1.99023 1.0460303 -0.14586423 -2.6714144 
		0.46658027 -0.14586423 -3.0924094 -0.24965927 -0.14586423 -3.0924091 -0.82910919 
		-0.14586423 -2.6714141 -1.0504394 -0.14586423 -1.99023 -0.82910925 -0.79978001 -1.3090454 
		-0.24965915 -0.79978001 -0.88805038 0.46658048 -0.79978001 -0.88805056 1.0460305 
		-0.79978001 -1.3090457 1.2673606 -0.79978001 -1.99023 1.0460303 -0.79978001 -2.6714144 
		0.46658027 -0.79978001 -3.0924094 -0.24965927 -0.79978001 -3.0924091 -0.82910919 
		-0.79978001 -2.6714141 -1.0504394 -0.79978001 -1.99023 0.10846054 -0.14586423 -1.99023 
		0.10846054 -0.79978001 -1.99023;
	setAttr -s 22 ".vt[0:21]"  0.18258654 -0.063673243 -0.13265692 0.06974183 -0.063673243 -0.21464337
		 -0.069741882 -0.063673243 -0.21464334 -0.18258657 -0.063673243 -0.13265687 -0.22568938 -0.063673243 1.3452134e-08
		 -0.18258654 -0.063673243 0.1326569 -0.069741838 -0.063673243 0.21464334 0.069741853 -0.063673243 0.21464333
		 0.18258652 -0.063673243 0.13265687 0.22568935 -0.063673243 0 0.18258654 0.063673243 -0.13265692
		 0.06974183 0.063673243 -0.21464337 -0.069741882 0.063673243 -0.21464334 -0.18258657 0.063673243 -0.13265687
		 -0.22568938 0.063673243 1.3452134e-08 -0.18258654 0.063673243 0.1326569 -0.069741838 0.063673243 0.21464334
		 0.069741853 0.063673243 0.21464333 0.18258652 0.063673243 0.13265687 0.22568935 0.063673243 0
		 0 -0.063673243 0 0 0.063673243 0;
	setAttr -s 50 ".ed[0:49]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 10 21 1 11 21 1
		 12 21 1 13 21 1 14 21 1 15 21 1 16 21 1 17 21 1 18 21 1 19 21 1;
	setAttr -s 30 -ch 100 ".fc[0:29]" -type "polyFaces" 
		f 4 20 10 -22 -1
		mu 0 4 10 21 22 11
		f 4 21 11 -23 -2
		mu 0 4 11 22 23 12
		f 4 22 12 -24 -3
		mu 0 4 12 23 24 13
		f 4 23 13 -25 -4
		mu 0 4 13 24 25 14
		f 4 24 14 -26 -5
		mu 0 4 14 25 26 15
		f 4 25 15 -27 -6
		mu 0 4 15 26 27 16
		f 4 26 16 -28 -7
		mu 0 4 16 27 28 17
		f 4 27 17 -29 -8
		mu 0 4 17 28 29 18
		f 4 28 18 -30 -9
		mu 0 4 18 29 30 19
		f 4 29 19 -21 -10
		mu 0 4 19 30 31 20
		f 3 -32 30 0
		mu 0 3 1 42 0
		f 3 -33 31 1
		mu 0 3 2 42 1
		f 3 -34 32 2
		mu 0 3 3 42 2
		f 3 -35 33 3
		mu 0 3 4 42 3
		f 3 -36 34 4
		mu 0 3 5 42 4
		f 3 -37 35 5
		mu 0 3 6 42 5
		f 3 -38 36 6
		mu 0 3 7 42 6
		f 3 -39 37 7
		mu 0 3 8 42 7
		f 3 -40 38 8
		mu 0 3 9 42 8
		f 3 -31 39 9
		mu 0 3 0 42 9
		f 3 40 -42 -11
		mu 0 3 40 43 39
		f 3 41 -43 -12
		mu 0 3 39 43 38
		f 3 42 -44 -13
		mu 0 3 38 43 37
		f 3 43 -45 -14
		mu 0 3 37 43 36
		f 3 44 -46 -15
		mu 0 3 36 43 35
		f 3 45 -47 -16
		mu 0 3 35 43 34
		f 3 46 -48 -17
		mu 0 3 34 43 33
		f 3 47 -49 -18
		mu 0 3 33 43 32
		f 3 48 -50 -19
		mu 0 3 32 43 41
		f 3 49 -41 -20
		mu 0 3 41 43 40;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BabyBotMon:pCylinder20" -p "BabyBotMon:pCube19";
	setAttr ".rp" -type "double3" 0.10846053527915989 -0.47282213143346213 -0.0089514351883498988 ;
	setAttr ".sp" -type "double3" 0.10846053527915989 -0.47282213143346213 -0.0089514351883498988 ;
createNode mesh -n "BabyBotMon:pCylinderShape20" -p "BabyBotMon:pCylinder20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.62640893 0.064408526
		 0.54828387 0.0076473951 0.45171607 0.00764741 0.37359107 0.064408556 0.34375 0.15625001
		 0.37359107 0.24809146 0.4517161 0.3048526 0.54828393 0.3048526 0.62640893 0.24809144
		 0.65625 0.15625 0.375 0.3125 0.40000001 0.3125 0.42500001 0.3125 0.45000002 0.3125
		 0.47500002 0.3125 0.5 0.3125 0.52499998 0.3125 0.54999995 0.3125 0.57499993 0.3125
		 0.5999999 0.3125 0.62499988 0.3125 0.375 0.68843985 0.40000001 0.68843985 0.42500001
		 0.68843985 0.45000002 0.68843985 0.47500002 0.68843985 0.5 0.68843985 0.52499998
		 0.68843985 0.54999995 0.68843985 0.57499993 0.68843985 0.5999999 0.68843985 0.62499988
		 0.68843985 0.62640893 0.75190854 0.54828387 0.6951474 0.45171607 0.6951474 0.37359107
		 0.75190854 0.34375 0.84375 0.37359107 0.93559146 0.4517161 0.9923526 0.54828393 0.9923526
		 0.62640893 0.93559146 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  -0.82910925 -0.14586423 0.67223305 
		-0.24965915 -0.14586423 1.0932281 0.46658048 -0.14586423 1.093228 1.0460305 -0.14586423 
		0.67223287 1.2673606 -0.14586423 -0.0089515047 1.0460303 -0.14586423 -0.69013584 
		0.46658027 -0.14586423 -1.1111308 -0.24965927 -0.14586423 -1.1111307 -0.82910919 
		-0.14586423 -0.69013572 -1.0504394 -0.14586423 -0.0089514349 -0.82910925 -0.79978001 
		0.67223305 -0.24965915 -0.79978001 1.0932281 0.46658048 -0.79978001 1.093228 1.0460305 
		-0.79978001 0.67223287 1.2673606 -0.79978001 -0.0089515047 1.0460303 -0.79978001 
		-0.69013584 0.46658027 -0.79978001 -1.1111308 -0.24965927 -0.79978001 -1.1111307 
		-0.82910919 -0.79978001 -0.69013572 -1.0504394 -0.79978001 -0.0089514349 0.10846054 
		-0.14586423 -0.0089514349 0.10846054 -0.79978001 -0.0089514349;
	setAttr -s 22 ".vt[0:21]"  0.18258654 -0.063673243 -0.13265692 0.06974183 -0.063673243 -0.21464337
		 -0.069741882 -0.063673243 -0.21464334 -0.18258657 -0.063673243 -0.13265687 -0.22568938 -0.063673243 1.3452134e-08
		 -0.18258654 -0.063673243 0.1326569 -0.069741838 -0.063673243 0.21464334 0.069741853 -0.063673243 0.21464333
		 0.18258652 -0.063673243 0.13265687 0.22568935 -0.063673243 0 0.18258654 0.063673243 -0.13265692
		 0.06974183 0.063673243 -0.21464337 -0.069741882 0.063673243 -0.21464334 -0.18258657 0.063673243 -0.13265687
		 -0.22568938 0.063673243 1.3452134e-08 -0.18258654 0.063673243 0.1326569 -0.069741838 0.063673243 0.21464334
		 0.069741853 0.063673243 0.21464333 0.18258652 0.063673243 0.13265687 0.22568935 0.063673243 0
		 0 -0.063673243 0 0 0.063673243 0;
	setAttr -s 50 ".ed[0:49]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 10 21 1 11 21 1
		 12 21 1 13 21 1 14 21 1 15 21 1 16 21 1 17 21 1 18 21 1 19 21 1;
	setAttr -s 30 -ch 100 ".fc[0:29]" -type "polyFaces" 
		f 4 20 10 -22 -1
		mu 0 4 10 21 22 11
		f 4 21 11 -23 -2
		mu 0 4 11 22 23 12
		f 4 22 12 -24 -3
		mu 0 4 12 23 24 13
		f 4 23 13 -25 -4
		mu 0 4 13 24 25 14
		f 4 24 14 -26 -5
		mu 0 4 14 25 26 15
		f 4 25 15 -27 -6
		mu 0 4 15 26 27 16
		f 4 26 16 -28 -7
		mu 0 4 16 27 28 17
		f 4 27 17 -29 -8
		mu 0 4 17 28 29 18
		f 4 28 18 -30 -9
		mu 0 4 18 29 30 19
		f 4 29 19 -21 -10
		mu 0 4 19 30 31 20
		f 3 -32 30 0
		mu 0 3 1 42 0
		f 3 -33 31 1
		mu 0 3 2 42 1
		f 3 -34 32 2
		mu 0 3 3 42 2
		f 3 -35 33 3
		mu 0 3 4 42 3
		f 3 -36 34 4
		mu 0 3 5 42 4
		f 3 -37 35 5
		mu 0 3 6 42 5
		f 3 -38 36 6
		mu 0 3 7 42 6
		f 3 -39 37 7
		mu 0 3 8 42 7
		f 3 -40 38 8
		mu 0 3 9 42 8
		f 3 -31 39 9
		mu 0 3 0 42 9
		f 3 40 -42 -11
		mu 0 3 40 43 39
		f 3 41 -43 -12
		mu 0 3 39 43 38
		f 3 42 -44 -13
		mu 0 3 38 43 37
		f 3 43 -45 -14
		mu 0 3 37 43 36
		f 3 44 -46 -15
		mu 0 3 36 43 35
		f 3 45 -47 -16
		mu 0 3 35 43 34
		f 3 46 -48 -17
		mu 0 3 34 43 33
		f 3 47 -49 -18
		mu 0 3 33 43 32
		f 3 48 -50 -19
		mu 0 3 32 43 41
		f 3 49 -41 -20
		mu 0 3 41 43 40;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode orientConstraint -n "LeftFoot1_orientConstraint1" -p "LeftFoot1";
	addAttr -ci true -k true -sn "w0" -ln "anim_LeftFoot01W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 179.97279036794012 6.2779329153405503e-05 0.00032537925633187336 ;
	setAttr ".o" -type "double3" -179.99999999999986 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "BabyBotMon:pCube18" -p "LeftKnee";
	setAttr ".rp" -type "double3" 0.046454684827705421 0.23263507863510344 0.20373001000935531 ;
	setAttr ".sp" -type "double3" 0.046454684827705421 0.23263507863510344 0.20373001000935531 ;
createNode mesh -n "BabyBotMon:pCubeShape18" -p "BabyBotMon:pCube18";
	setAttr -k off ".v";
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
	setAttr -s 26 ".pt[0:25]" -type "float3"  -0.12910457 -0.017594116 
		-0.46680298 -0.62407833 -0.017594116 0.37928927 0.71698767 -0.37443036 -0.32866547 
		0.22201394 -0.37443036 0.51742679 0.71698767 0.48286426 0.028170755 0.22201394 0.48286426 
		0.87426299 -0.12910457 0.83970052 -0.10996675 -0.62407833 0.83970052 0.73612547 -0.85254353 
		0.47184414 0.67831516 -0.18892144 0.47184414 -0.45605913 -0.28535634 0.80733186 1.0101262 
		0.37826574 0.80733186 -0.12424809 0.28183082 -0.0065739774 0.86351913 0.94545287 
		-0.0065739774 -0.27085516 -0.28535634 -0.3420617 0.53170812 0.37826574 -0.3420617 
		-0.6026662 -0.52073246 1.046541 0.35033709 0.61364186 0.5681228 0.53554106 0.61364186 
		-0.58127075 0.057122938 -0.52073246 -0.10285266 -0.12808104 0.49068537 0.23263508 
		-0.55562365 -0.39777598 0.23263508 0.96308368 -0.71289897 0.55288965 0.079753898 
		0.046454687 1.0020427 0.52398455 0.80580837 -0.087619483 0.32770613 0.046454687 -0.53677255 
		-0.11652455;
	setAttr -s 26 ".vt[0:25]"  -0.17841811 -0.17841811 0.17841811 0.17841811 -0.17841811 0.17841811
		 -0.17841811 0.17841811 0.17841811 0.17841811 0.17841811 0.17841811 -0.17841811 0.17841811 -0.17841811
		 0.17841811 0.17841811 -0.17841811 -0.17841811 -0.17841811 -0.17841811 0.17841811 -0.17841811 -0.17841811
		 0.23920906 -0.23920906 0 -0.23920906 -0.23920906 0 0.23920906 0 -0.23920906 -0.23920906 0 -0.23920906
		 0.23920906 0.23920906 0 -0.23920906 0.23920906 0 0.23920906 0 0.23920906 -0.23920906 0 0.23920906
		 0 -0.23920906 -0.23920906 0 0.23920906 -0.23920906 0 0.23920906 0.23920906 0 -0.23920906 0.23920906
		 -0.32025456 0 0 0.32025456 0 0 0 -0.32025456 0 0 0 -0.32025456 0 0.32025456 0 0 0 0.32025456;
	setAttr -s 48 ".ed[0:47]"  0 19 1 2 18 1 4 17 1 6 16 1 0 15 1 1 14 1
		 2 13 1 3 12 1 4 11 1 5 10 1 6 9 1 7 8 1 8 1 1 9 0 1 10 7 1 11 6 1 12 5 1 13 4 1 14 3 1
		 15 2 1 16 7 1 17 5 1 18 3 1 19 1 1 9 20 1 20 13 1 20 15 1 20 11 1 8 21 1 21 12 1
		 21 10 1 21 14 1 16 22 1 22 19 1 22 8 1 22 9 1 17 23 1 23 16 1 23 10 1 23 11 1 18 24 1
		 24 17 1 24 12 1 24 13 1 19 25 1 25 18 1 25 14 1 25 15 1;
	setAttr -s 26 ".n[0:25]" -type "float3"  -0.19845115 -0.24031354 -0.27589551
		 0.04742479 -0.29432279 -0.29047683 -2.8481448e-16 -0.41623527 2.3734541e-17 -0.29047683
		 -0.29432279 -0.04742479 0.27589551 -0.24031354 -0.19845115 0.33790162 3.3366365e-09
		 -0.24305204 0.41079625 -2.3594926e-16 0.067068778 0.29047683 -0.29432279 0.04742479
		 0.27589551 0.24031354 -0.19845115 0.04742479 0.29432279 -0.29047683 2.8481448e-16
		 0.41623527 -2.3734541e-17 0.29047683 0.29432279 0.04742479 -0.19845115 0.24031354
		 -0.27589551 -0.24305204 -3.3366367e-09 -0.33790162 -0.41079625 2.3594926e-16 -0.067068778
		 -0.29047683 0.29432279 -0.04742479 -0.27589551 -0.24031354 0.19845115 -0.04742479
		 -0.29432279 0.29047683 -0.067068778 1.3216881e-16 0.41079625 -0.33790159 2.6029878e-16
		 0.24305204 0.067068778 -1.3216881e-16 -0.41079625 0.24305201 -7.3383857e-17 0.33790162
		 0.19845115 0.24031354 0.27589551 -0.04742479 0.29432279 0.29047683 -0.27589551 0.24031354
		 0.19845115 0.19845115 -0.24031354 0.27589551;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 4 -48 -45 -1
		mu 0 4 0 27 38 31
		f 4 6 -44 -41 -2
		mu 0 4 2 25 37 30
		f 4 8 -40 -37 -3
		mu 0 4 4 21 36 29
		f 4 10 -36 -33 -4
		mu 0 4 6 17 35 28
		f 4 5 -32 -29 12
		mu 0 4 1 26 34 15
		f 4 -16 -28 -25 -11
		mu 0 4 12 20 33 16
		f 4 -7 -20 -27 25
		mu 0 4 24 2 27 33
		f 4 -5 -14 24 26
		mu 0 4 27 0 16 33
		f 4 -9 -18 -26 27
		mu 0 4 20 13 24 33
		f 4 16 9 -31 29
		mu 0 4 23 11 19 34
		f 4 14 11 28 30
		mu 0 4 19 10 15 34
		f 4 18 7 -30 31
		mu 0 4 26 3 23 34
		f 4 23 -13 -35 33
		mu 0 4 32 9 14 35
		f 4 -12 -21 32 34
		mu 0 4 14 7 28 35
		f 4 13 0 -34 35
		mu 0 4 17 8 32 35
		f 4 20 -15 -39 37
		mu 0 4 28 7 18 36
		f 4 -10 -22 36 38
		mu 0 4 18 5 29 36
		f 4 15 3 -38 39
		mu 0 4 21 6 28 36
		f 4 21 -17 -43 41
		mu 0 4 29 5 22 37
		f 4 -8 -23 40 42
		mu 0 4 22 3 30 37
		f 4 17 2 -42 43
		mu 0 4 25 4 29 37
		f 4 22 -19 -47 45
		mu 0 4 30 3 26 38
		f 4 -6 -24 44 46
		mu 0 4 26 1 31 38
		f 4 19 1 -46 47
		mu 0 4 27 2 30 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BabyBotMon:pCylinder1" -p "LeftKnee";
	setAttr ".rp" -type "double3" -3.2302357614131285 0.80072959254930143 0.099492793592672601 ;
	setAttr ".sp" -type "double3" -3.2302357614131285 0.80072959254930143 0.099492793592672601 ;
createNode mesh -n "BabyBotMon:pCylinderShape1" -p "BabyBotMon:pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.54828393 0.00764741
		 0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625
		 0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125
		 0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004
		 0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911
		 0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375 0.5 0.15000001
		 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -4.7479372 2.081691 0.3540372 
		-4.6721187 1.9975548 -0.12772411 -4.7563744 1.5496727 -0.28413704 -4.8842659 1.3570025 
		0.10095574 -4.8790512 1.6858078 0.49536905 0.1964853 -0.12837361 0.32798576 0.27230391 
		-0.21250974 -0.15377554 0.18804802 -0.66039187 -0.31018847 0.060156386 -0.85306209 
		0.074904315 0.06537091 -0.52425677 0.46931764 -4.7879496 1.7343457 0.10770015 0.15647291 
		-0.47571883 0.08164873;
	setAttr -s 12 ".vt[0:11]"  0.025971798 -0.64163363 -0.07993295 -0.067995019 -0.64163363 -0.049401283
		 -0.067995027 -0.64163363 0.049401272 0.025971785 -0.64163363 0.079932943 0.084046468 -0.64163363 0
		 0.025971798 0.64163363 -0.07993295 -0.067995019 0.64163363 -0.049401283 -0.067995027 0.64163363 0.049401272
		 0.025971785 0.64163363 0.079932943 0.084046468 0.64163363 0 0 -0.64163363 0 0 0.64163363 0;
	setAttr -s 25 ".ed[0:24]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 10 0 1 10 1 1 10 2 1 10 3 1 10 4 1
		 5 11 1 6 11 1 7 11 1 8 11 1 9 11 1;
	setAttr -s 15 -ch 50 ".fc[0:14]" -type "polyFaces" 
		f 4 10 5 -12 -1
		mu 0 4 5 11 12 6
		f 4 11 6 -13 -2
		mu 0 4 6 12 13 7
		f 4 12 7 -14 -3
		mu 0 4 7 13 14 8
		f 4 13 8 -15 -4
		mu 0 4 8 14 15 9
		f 4 14 9 -11 -5
		mu 0 4 9 15 16 10
		f 3 -17 15 0
		mu 0 3 1 22 0
		f 3 -18 16 1
		mu 0 3 2 22 1
		f 3 -19 17 2
		mu 0 3 3 22 2
		f 3 -20 18 3
		mu 0 3 4 22 3
		f 3 -16 19 4
		mu 0 3 0 22 4
		f 3 20 -22 -6
		mu 0 3 20 23 19
		f 3 21 -23 -7
		mu 0 3 19 23 18
		f 3 22 -24 -8
		mu 0 3 18 23 17
		f 3 23 -25 -9
		mu 0 3 17 23 21
		f 3 24 -21 -10
		mu 0 3 21 23 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode ikEffector -n "effector2" -p "LeftKnee";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "BabyBotMon:pCylinder21" -p "LeftLeg";
	setAttr ".rp" -type "double3" -1.6845217833976551 -0.53273257258691653 0.1468606487445519 ;
	setAttr ".sp" -type "double3" -1.6845217833976551 -0.53273257258691653 0.1468606487445519 ;
createNode mesh -n "BabyBotMon:pCylinderShape21" -p "BabyBotMon:pCylinder21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.54828393 0.00764741
		 0.3735911 0.064408541 0.37359107 0.24809144 0.54828387 0.3048526 0.65625 0.15625
		 0.375 0.3125 0.42500001 0.3125 0.47500002 0.3125 0.52500004 0.3125 0.57500005 0.3125
		 0.62500006 0.3125 0.375 0.68843985 0.42500001 0.68843985 0.47500002 0.68843985 0.52500004
		 0.68843985 0.57500005 0.68843985 0.62500006 0.68843985 0.54828393 0.6951474 0.3735911
		 0.75190854 0.37359107 0.93559146 0.54828387 0.9923526 0.65625 0.84375 0.5 0.15000001
		 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5898783 0.25026196 0.47503093 
		-2.5040338 0.28351277 0.0045219385 -2.4370918 -0.11885824 -0.26270849 -2.4815638 
		-0.40078801 0.042642985 -2.5759912 -0.17265916 0.49859098 0.054794587 -0.58669645 
		0.45993781 0.14063914 -0.55344564 -0.010571162 0.20758112 -0.95581669 -0.2778016 
		0.163109 -1.2377464 0.027549883 0.068681739 -1.0096176 0.48349789 -2.5177119 -0.031706147 
		0.15161565 0.12696113 -0.86866456 0.13652255;
	setAttr -s 12 ".vt[0:11]"  0.025971798 -0.64163363 -0.07993295 -0.067995019 -0.64163363 -0.049401283
		 -0.067995027 -0.64163363 0.049401272 0.025971785 -0.64163363 0.079932943 0.084046468 -0.64163363 0
		 0.025971798 0.64163363 -0.07993295 -0.067995019 0.64163363 -0.049401283 -0.067995027 0.64163363 0.049401272
		 0.025971785 0.64163363 0.079932943 0.084046468 0.64163363 0 0 -0.64163363 0 0 0.64163363 0;
	setAttr -s 25 ".ed[0:24]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 0 5 0 1 6 0 2 7 0 3 8 0 4 9 0 10 0 1 10 1 1 10 2 1 10 3 1 10 4 1
		 5 11 1 6 11 1 7 11 1 8 11 1 9 11 1;
	setAttr -s 15 -ch 50 ".fc[0:14]" -type "polyFaces" 
		f 4 10 5 -12 -1
		mu 0 4 5 11 12 6
		f 4 11 6 -13 -2
		mu 0 4 6 12 13 7
		f 4 12 7 -14 -3
		mu 0 4 7 13 14 8
		f 4 13 8 -15 -4
		mu 0 4 8 14 15 9
		f 4 14 9 -11 -5
		mu 0 4 9 15 16 10
		f 3 -17 15 0
		mu 0 3 1 22 0
		f 3 -18 16 1
		mu 0 3 2 22 1
		f 3 -19 17 2
		mu 0 3 3 22 2
		f 3 -20 18 3
		mu 0 3 4 22 3
		f 3 -16 19 4
		mu 0 3 0 22 4
		f 3 20 -22 -6
		mu 0 3 20 23 19
		f 3 21 -23 -7
		mu 0 3 19 23 18
		f 3 22 -24 -8
		mu 0 3 18 23 17
		f 3 23 -25 -9
		mu 0 3 17 23 21
		f 3 24 -21 -10
		mu 0 3 21 23 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "curve1" -p "Root";
createNode nurbsCurve -n "curveShape1" -p "|anim_global01|Root|curve1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 7.2274791361272879 7.2274791361272879 7.2274791361272879
		4
		1.0050894665153247 -0.34968407491486858 0.19777200000000009
		1.758092058276848 -2.9215933793955462 1.3376414769660037
		1.6873991444847545 -4.6082281208166318 1.2225985611831856
		1.0050894665153245 -7.2004140749148693 0.16923899999999997
		;
createNode parentConstraint -n "Root_parentConstraint1" -p "Root";
	addAttr -ci true -k true -sn "w0" -ln "curve1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.615269437229956e-16 0 -5.2305388744599121e-16 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999972 -6.3611093629270304e-15 
		89.999999999999972 ;
	setAttr ".lr" -type "double3" -6.3611093629270351e-15 -6.3611093629270367e-15 -6.3611093629270351e-15 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270351e-15 -6.3611093629270367e-15 
		-6.3611093629270351e-15 ;
	setAttr -k on ".w0";
createNode transform -n "curve2" -p "Root";
createNode nurbsCurve -n "curveShape2" -p "curve2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 7.227479136127287 7.227479136127287 7.227479136127287
		4
		1.0050894665153245 -0.34968407491486925 0.197772
		1.7580920582768451 -2.9215933793955511 1.3376414769660037
		1.6873991444847525 -4.6082281208166291 1.2225985611831871
		1.0050894665153214 -7.2004140749148702 0.16923900000000025
		;
createNode transform -n "curve3" -p "Root";
createNode nurbsCurve -n "curveShape3" -p "curve3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 7.227479136127287 7.227479136127287 7.227479136127287
		4
		1.0050894665153245 -0.34968407491486925 0.197772
		1.7580920582768451 -2.9215933793955511 1.3376414769660037
		1.6873991444847525 -4.6082281208166291 1.2225985611831871
		1.0050894665153214 -7.2004140749148702 0.16923900000000025
		;
createNode transform -n "curve4" -p "Root";
createNode nurbsCurve -n "curveShape4" -p "curve4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 7.227479136127287 7.227479136127287 7.227479136127287
		4
		1.0050894665153245 -0.34968407491486925 0.197772
		1.7580920582768451 -2.9215933793955511 1.3376414769660037
		1.6873991444847525 -4.6082281208166291 1.2225985611831871
		1.0050894665153214 -7.2004140749148702 0.16923900000000025
		;
createNode transform -n "curve5" -p "Root";
createNode nurbsCurve -n "curveShape5" -p "curve5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 7.227479136127287 7.227479136127287 7.227479136127287
		4
		1.0050894665153245 -0.34968407491486925 0.197772
		1.7580920582768451 -2.9215933793955511 1.3376414769660037
		1.6873991444847525 -4.6082281208166291 1.2225985611831871
		1.0050894665153214 -7.2004140749148702 0.16923900000000025
		;
createNode transform -n "curve6" -p "Root";
createNode nurbsCurve -n "curveShape6" -p "curve6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 7.227479136127287 7.227479136127287 7.227479136127287
		4
		1.0050894665153245 -0.34968407491486925 0.197772
		1.7580920582768451 -2.9215933793955511 1.3376414769660037
		1.6873991444847525 -4.6082281208166291 1.2225985611831871
		1.0050894665153214 -7.2004140749148702 0.16923900000000025
		;
createNode transform -n "curve7" -p "Root";
createNode nurbsCurve -n "curveShape7" -p "curve7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 7.227479136127287 7.227479136127287 7.227479136127287
		4
		1.0050894665153245 -0.34968407491486925 0.197772
		1.7580920582768451 -2.9215933793955511 1.3376414769660037
		1.6873991444847525 -4.6082281208166291 1.2225985611831871
		1.0050894665153214 -7.2004140749148702 0.16923900000000025
		;
createNode transform -n "curve8" -p "Root";
createNode nurbsCurve -n "curveShape8" -p "curve8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 7.227479136127287 7.227479136127287 7.227479136127287
		4
		1.0050894665153245 -0.34968407491486925 0.197772
		1.7580920582768451 -2.9215933793955511 1.3376414769660037
		1.6873991444847525 -4.6082281208166291 1.2225985611831871
		1.0050894665153214 -7.2004140749148702 0.16923900000000025
		;
createNode transform -n "Torso1" -p "Root";
	setAttr ".t" -type "double3" 5.7548240635641301 -0.8889627416685022 -2.0588558475435348e-16 ;
	setAttr ".r" -type "double3" -6.3611093629270304e-15 89.999999999999972 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr ".rp" -type "double3" -4.9228391793078812 0.42121191688346665 -1.996321766324002 ;
	setAttr ".rpt" -type "double3" 2.9265174129838769 0 6.9191609456318828 ;
	setAttr ".sp" -type "double3" -4.9228391793078803 0.42121191688346654 -1.9963217663240012 ;
	setAttr ".spt" -type "double3" -8.8817841970012543e-16 1.1102230246251568e-16 -8.8817841970012563e-16 ;
createNode mesh -n "Torso1Shape" -p "Torso1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:95]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 150 ".uvst[0].uvsp[0:149]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.5 0.375 0.75 0.375 1 0.125 0 0.125 0.25 0.25 0 0.375 0.875 0.125 0.125 0.375
		 0.625 0.25 0.25 0.375 0.125 0.5 0.75 0.5 0.5 0.5 0.25 0.5 0 0.5 1 0.25 0.125 0.5
		 0.875 0.5 0.625 0.5 0.375 0.5 0.125 0.4375 0.125 0.5 0.1875 0.5 0.0625 0.4375 0.375
		 0.5 0.4375 0.5 0.3125 0.4375 0.625 0.5 0.6875 0.5 0.5625 0.4375 0.875 0.5 0.9375
		 0.5 0.8125 0.1875 0.125 0.3125 0.125 0.25 0.1875 0.25 0.0625 0.375 0.1875 0.1875
		 0.25 0.125 0.0625 0.375 0.6875 0.3125 0 0.375 0.9375 0.1875 0 0.375 0.8125 0.125
		 0.1875 0.375 0.5625 0.3125 0.25 0.375 0.0625 0.4375 0.75 0.4375 0.5 0.4375 0.25 0.4375
		 0 0.4375 1 0.4375 0.1875 0.4375 0.4375 0.4375 0.6875 0.4375 0.9375 0.1875 0.1875
		 0.3125 0.0625 0.3125 0.1875 0.1875 0.0625 0.4375 0.8125 0.4375 0.5625 0.4375 0.3125
		 0.4375 0.0625 0.375 0 0.4375 0 0.4375 0.0625 0.375 0.0625 0.375 0.25 0.4375 0.25
		 0.4375 0.3125 0.375 0.5 0.4375 0.5 0.4375 0.5625 0.375 0.5625 0.375 0.75 0.4375 0.75
		 0.4375 0.8125 0.375 0.8125 0.125 0 0.1875 0 0.1875 0.0625 0.125 0.0625 0.25 0.25
		 0.25 0.1875 0.3125 0.1875 0.3125 0.25 0.375 0.125 0.3125 0.125 0.3125 0.0625 0.125
		 0.125 0.1875 0.125 0.1875 0.1875 0.125 0.1875 0.375 0.875 0.4375 0.875 0.4375 0.9375
		 0.375 0.9375 0.375 0.625 0.4375 0.625 0.4375 0.6875 0.375 0.6875 0.4375 0.375 0.4375
		 0.4375 0.4375 0.125 0.4375 0.1875 0.375 0.1875 0.5 0.1875 0.5 0.25 0.5 0.125 0.5
		 0.4375 0.5 0.5 0.5 0.375 0.5 0.6875 0.5 0.75 0.5 0.625 0.4375 1 0.5 0.9375 0.5 1
		 0.5 0.875 0.375 1 0.1875 0.25 0.25 0.125 0.125 0.25 0.3125 0 0.25 0.0625 0.25 0 0.5
		 0.8125 0.5 0.5625 0.5 0.3125 0.5 0.0625 0.5 0 0.5 0.26640373 0.5 0.26640373 0.39140373
		 0.375 0.5 0.48527309 0.5 0.48527309 0.4375 0.48121935 0.39378065 0.4375 0.4375 0.27161387
		 0.3966139 0.3125 0.39140373 0.375 0.4375 0.48121935 0.39378065 0.4375 0.4375 0.27161387
		 0.3966139 0.3125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 110 ".pt[0:109]" -type "float3"  -2.2922835 -0.054280493 -5.7463989 
		-2.0974379 -1.923607 0.40319574 -2.0974379 -4.8639221 1.113886 -2.2922835 -3.3106017 
		-4.9122429 -2.9385781 -1.644129 -5.5922904 -2.5707185 -4.4552536 -1.8538209 -2.6911671 
		-3.1679225 0.70206088 -2.5707185 -0.49042839 -2.8126814 0.090593569 -3.6696002 -5.1024466 
		0.090593562 -5.2904172 1.214968 0.090593569 -1.4960527 0.29773375 0.090593569 0.41354045 
		-6.1932073 -3.5447228 -2.4297826 -2.3436646 0.090593569 -1.5221441 -6.0966902 0.090593569 
		-5.1926622 -1.6754847 0.090593569 -3.5054252 2.1040466 0.090593569 0.24698028 -2.9910178 
		-1.353308 0.062973276 -2.9465172 0.090593569 -0.60308188 -1.1860335 0.090593569 0.75211298 
		-4.9085579 -1.4300636 -3.4369376 1.8208545 0.090593569 -4.6845651 2.2438636 0.090593569 
		-2.3331549 1.5539119 -1.353308 -5.0086551 -1.7199852 0.090593569 -4.5978236 -3.4187453 
		0.090593569 -5.5387373 0.0076144761 -1.553773 -1.5525832 -5.9708261 0.090593569 -0.44880107 
		-6.2377667 0.090593569 -2.6563652 -5.7038856 -3.3016777 -3.5335646 -2.0767238 -3.3016777 
		-1.3260005 -2.6106052 -3.301677 -2.8406138 -0.64490461 -3.471992 -2.0189514 -4.0424247 
		-2.3820171 -1.2408303 -1.2596093 -2.4939773 -4.2195415 0.9566704 -2.5219715 -3.9024377 
		-3.5834973 -2.7239301 -0.71935952 -5.719574 -2.7239301 -2.6143272 -5.2656503 -2.3820174 
		-4.7839556 -0.40273342 -2.4939778 -2.2284245 0.47553593 -2.5219715 0.03830399 -4.6359644 
		-1.3175602 -3.5503695 -5.0392761 -1.2019919 -5.1487699 1.1813966 -1.2019919 -1.6380521 
		0.3327592 -1.3175602 0.25816759 -6.0448132 -1.2507082 -0.75036043 -1.2629708 -1.3220621 
		-4.5413094 1.9539144 -1.3184747 -4.4505453 -3.3418078 -1.4370658 -0.55562425 -6.0984645 
		-3.0689571 -3.8378072 -0.51629704 -3.2276356 -1.0217581 -4.171032 -3.0689571 -1.7855973 
		-1.0126072 -3.2276363 -3.0739679 -3.674722 -1.4370658 -2.6078341 -5.6021547 -1.2507082 
		-5.3336358 -0.15454309 -1.3220621 -2.3452539 1.301536 -1.3184747 0.56058508 -4.7264709 
		2.4734707 -0.054280493 -5.7463989 2.278625 -1.923607 0.40319574 2.278625 -4.8639221 
		1.113886 2.4734707 -3.3106017 -4.9122429 3.1197653 -1.644129 -5.5922904 2.7519054 
		-4.4552536 -1.8538209 2.872354 -3.1679225 0.70206088 2.7519054 -0.49042839 -2.8126814 
		3.7259097 -2.4297826 -2.3436646 1.5344951 0.062973276 -2.9465172 1.6112508 -3.4369376 
		1.8208545 1.5344951 -5.0086551 -1.7199852 1.7349602 -1.5525832 -5.9708261 3.4828646 
		-3.5335646 -2.0767238 3.4828646 -1.3260005 -2.6106052 3.4828641 -2.8406138 -0.64490461 
		3.6531789 -2.0189514 -4.0424247 2.5632043 -1.2408303 -1.2596093 2.6751645 -4.2195415 
		0.9566704 2.7031584 -3.9024377 -3.5834973 2.9051173 -0.71935952 -5.719574 2.9051173 
		-2.6143272 -5.2656503 2.5632045 -4.7839556 -0.40273342 2.6751647 -2.2284245 0.47553593 
		2.7031584 0.03830399 -4.6359644 1.4987473 -3.5503695 -5.0392761 1.3831791 -5.1487699 
		1.1813966 1.3831791 -1.6380521 0.3327592 1.4987473 0.25816759 -6.0448132 1.4318954 
		-0.75036043 -1.2629708 1.5032493 -4.5413094 1.9539144 1.4996617 -4.4505453 -3.3418078 
		1.618253 -0.55562425 -6.0984645 3.250144 -3.8378072 -0.51629704 3.4088228 -1.0217581 
		-4.171032 3.250144 -1.7855973 -1.0126072 3.4088233 -3.0739679 -3.674722 1.618253 
		-2.6078341 -5.6021547 1.4318954 -5.3336358 -0.15454309 1.5032493 -2.3452539 1.301536 
		1.4996617 0.56058508 -4.7264709 0.090593569 -1.7157583 0.6274299 -2.360178 -3.238528 
		0.99569935 0.090593562 -5.1476603 1.4574074 -1.2380718 -4.9662337 1.4135308 -2.1418281 
		-4.3162298 1.2563326 -1.2435148 -1.882618 0.6677826 -2.0887034 -2.2688267 0.76118493 
		2.5413651 -3.238528 0.99569935 1.419259 -4.9662337 1.4135308 2.323015 -4.3162298 
		1.2563326 1.4247019 -1.882618 0.6677826 2.2698903 -2.2688267 0.76118493;
	setAttr -s 110 ".vt[0:109]"  0.46132061 2.14559555 0.39880344 0.42337552 3.60908866 0.30065596
		 0.42337552 3.60898566 -0.4104602 0.46132061 2.15757608 -0.38581386 0.58718294 2.086418152 0
		 0.5155443 2.87207174 -0.48984367 0.53900099 3.60855889 -0.00039969702 0.5155443 2.87207174 0.46901697
		 -0.0027315158 2.086418152 -0.4898437 -0.0027315156 3.6084559 -0.51373267 -0.0027315158 3.60855913 0.4039284
		 -0.0027315158 2.059887409 0.49121431 0.70522624 2.87207174 0 -0.0027315158 1.96443319 0
		 -0.0027315158 2.87207174 -0.66817993 -0.0027315158 3.94771433 0 -0.0027315158 2.87207174 0.64735323
		 0.27846032 2.87207174 0.60285264 -0.0027315158 3.28290296 0.54112881 -0.0027315158 2.41090155 0.65798521
		 0.29340807 3.87922668 0 -0.0027315158 3.91037941 -0.29419452 -0.0027315158 3.87922621 0.26694068
		 0.27846032 2.87207174 -0.62367928 -0.0027315158 2.46124053 -0.62367922 -0.0027315158 3.28290296 -0.65251911
		 0.31749979 1.99487233 0 -0.0027315158 1.99487233 0.26694068 -0.0027315158 1.99487233 -0.26694068
		 0.65789455 2.87207174 -0.26694068 0.65789455 2.87207174 0.26694068 0.65789443 3.28290296 0
		 0.69106233 2.46124053 0 0.47879577 3.22438645 0.37274283 0.50059938 3.60863185 -0.25470757
		 0.50605106 2.46211934 -0.45529327 0.54538143 2.11117077 0.22963417 0.54538143 2.11005116 -0.22891904
		 0.4787958 3.22438645 -0.48413309 0.50059944 3.60873485 0.22685277 0.50605106 2.43657899 0.49156621
		 0.27149865 2.11005116 -0.45529327 0.24899237 3.60863185 -0.47943377 0.24899237 3.60873485 0.3696295
		 0.27149865 2.088352919 0.4605228 0.2584796 3.25399137 0.49851868 0.27237538 3.84480071 -0.27540892
		 0.27167672 2.49015212 -0.58106911 0.2947717 2.024018288 0.24815509 0.6125735 3.25399137 -0.24815509
		 0.64347529 2.49015212 0.24815509 0.6125735 3.25399137 0.24815509 0.64347541 2.49015212 -0.24815509
		 0.2947717 2.024018288 -0.24815509 0.2584796 3.25399137 -0.60990906 0.27237538 3.81364799 0.24815509
		 0.27167672 2.44577551 0.62009972 -0.46678364 2.14559555 0.39880344 -0.42883855 3.60908866 0.30065596
		 -0.42883855 3.60898566 -0.4104602 -0.46678364 2.15757608 -0.38581386 -0.59264594 2.086418152 0
		 -0.5210073 2.87207174 -0.48984367 -0.54446399 3.60855889 -0.00039969702 -0.5210073 2.87207174 0.46901697
		 -0.71068925 2.87207174 0 -0.28392336 2.87207174 0.60285264 -0.2988711 3.87922668 0
		 -0.28392336 2.87207174 -0.62367928 -0.32296282 1.99487233 0 -0.66335756 2.87207174 -0.26694068
		 -0.66335756 2.87207174 0.26694068 -0.66335744 3.28290296 0 -0.69652534 2.46124053 0
		 -0.4842588 3.22438645 0.37274283 -0.50606239 3.60863185 -0.25470757 -0.51151407 2.46211934 -0.45529327
		 -0.55084443 2.11117077 0.22963417 -0.55084443 2.11005116 -0.22891904 -0.48425883 3.22438645 -0.48413309
		 -0.50606245 3.60873485 0.22685277 -0.51151407 2.43657899 0.49156621 -0.27696168 2.11005116 -0.45529327
		 -0.25445539 3.60863185 -0.47943377 -0.25445539 3.60873485 0.3696295 -0.27696168 2.088352919 0.4605228
		 -0.26394263 3.25399137 0.49851868 -0.27783841 3.84480071 -0.27540892 -0.27713975 2.49015212 -0.58106911
		 -0.30023474 2.024018288 0.24815509 -0.61803651 3.25399137 -0.24815509 -0.6489383 2.49015212 0.24815509
		 -0.61803651 3.25399137 0.24815509 -0.64893842 2.49015212 -0.24815509 -0.30023474 2.024018288 -0.24815509
		 -0.26394263 3.25399137 -0.60990906 -0.27783841 3.81364799 0.24815509 -0.27713975 2.44577551 0.62009972
		 -0.0027315158 3.67959833 0.36797464 0.47454268 3.67959833 -0.00029479258 -0.0027315156 3.67959833 -0.46200275
		 0.25601873 3.67959833 -0.41812626 0.43202025 3.67959833 -0.26092812 0.25707871 3.67959809 0.32762095
		 0.42167452 3.67959833 0.2342196 -0.48000571 3.67959833 -0.00029479258 -0.26148176 3.67959833 -0.41812626
		 -0.43748325 3.67959833 -0.26092812 -0.26254174 3.67959809 0.32762095 -0.42713752 3.67959833 0.2342196;
	setAttr -s 204 ".ed";
	setAttr ".ed[0:165]"  0 44 1 1 43 0 2 42 0 3 41 1 0 40 1 1 39 0 2 38 1 3 37 1
		 4 36 1 5 35 1 6 34 0 7 33 1 4 32 1 12 31 1 12 30 1 12 29 1 8 28 0 13 27 0 13 26 1
		 9 25 0 14 24 0 14 23 1 15 21 0 15 20 1 11 19 0 16 18 0 16 17 1 17 7 1 18 10 0 19 16 0
		 20 99 1 21 100 0 22 15 0 23 5 1 24 8 0 25 14 0 26 4 1 27 11 0 28 13 0 29 5 1 30 7 1
		 31 6 1 32 12 1 33 1 1 34 2 0 35 3 1 36 0 1 37 4 1 38 5 1 39 6 0 40 7 1 41 8 1 42 9 0
		 43 10 0 44 11 1 17 45 1 45 43 1 45 18 1 45 33 1 20 46 1 46 101 1 46 21 1 46 102 1
		 23 47 1 47 41 1 47 24 1 47 35 1 26 48 1 48 44 1 48 27 1 48 36 1 29 49 1 49 34 1 49 31 1
		 49 38 1 30 50 1 50 36 1 50 32 1 50 40 1 31 51 1 51 33 1 51 30 1 51 39 1 37 52 1 52 29 1
		 52 32 1 52 35 1 41 53 1 53 26 1 53 28 1 53 37 1 42 54 1 54 23 1 54 25 1 54 38 1 55 20 1
		 55 22 1 55 104 1 44 56 1 56 17 1 56 19 1 56 40 1 57 85 1 58 84 0 59 83 0 60 82 1
		 57 81 1 58 80 0 59 79 1 60 78 1 61 77 1 62 76 1 63 75 0 64 74 1 61 73 1 65 72 1 65 71 1
		 65 70 1 13 69 1 14 68 1 15 67 1 16 66 1 66 64 1 67 105 1 68 62 1 69 61 1 70 62 1
		 71 64 1 72 63 1 73 65 1 74 58 1 75 59 0 76 60 1 77 57 1 78 61 1 79 62 1 80 63 0 81 64 1
		 82 8 1 83 9 0 84 10 0 85 11 1 66 86 1 86 84 1 86 18 1 86 74 1 67 87 1 87 106 1 87 21 1
		 87 107 1 68 88 1 88 82 1 88 24 1 88 76 1 69 89 1 89 85 1 89 27 1 89 77 1 70 90 1
		 90 75 1 90 72 1 90 79 1 71 91 1 91 77 1 91 73 1 91 81 1;
	setAttr ".ed[166:203]" 72 92 1 92 74 1 92 71 1 92 80 1 78 93 1 93 70 1 93 73 1
		 93 76 1 82 94 1 94 69 1 94 28 1 94 78 1 83 95 1 95 68 1 95 25 1 95 79 1 96 67 1 96 22 1
		 96 109 1 85 97 1 97 66 1 97 19 1 97 81 1 98 22 0 103 55 1 108 96 1 104 103 0 102 99 0
		 100 101 0 101 102 0 98 103 0 99 104 0 108 109 0 105 107 0 106 100 0 107 106 0 108 98 0
		 109 105 0;
	setAttr -s 96 -ch 380 ".fc[0:95]" -type "polyFaces" 
		f 4 4 -102 -99 -1
		mu 0 4 0 50 67 54
		f 4 6 -95 -92 -3
		mu 0 4 2 48 65 52
		f 4 7 -91 -88 -4
		mu 0 4 3 46 64 51
		f 4 -46 -87 -84 -8
		mu 0 4 5 41 63 45
		f 4 -50 -83 -80 41
		mu 0 4 11 49 62 37
		f 4 -51 -79 -76 40
		mu 0 4 12 50 61 36
		f 4 -49 -75 -72 39
		mu 0 4 9 47 60 35
		f 4 8 -71 -68 36
		mu 0 4 8 44 59 32
		f 4 9 -67 -64 33
		mu 0 4 10 42 58 29
		f 4 11 -59 -56 27
		mu 0 4 12 39 56 23
		f 4 53 -29 -58 56
		mu 0 4 53 15 24 56
		f 4 -26 26 55 57
		mu 0 4 24 22 23 56
		f 4 43 1 -57 58
		mu 0 4 39 1 53 56
		f 4 -23 23 59 61
		mu 0 4 27 21 26 57
		f 4 51 -35 -66 64
		mu 0 4 51 13 30 58
		f 4 -21 21 63 65
		mu 0 4 30 20 29 58
		f 4 45 3 -65 66
		mu 0 4 42 3 51 58
		f 4 54 -38 -70 68
		mu 0 4 55 17 33 59
		f 4 -18 18 67 69
		mu 0 4 33 19 32 59
		f 4 46 0 -69 70
		mu 0 4 44 4 55 59
		f 4 -11 -42 -74 72
		mu 0 4 40 11 37 60
		f 4 -14 15 71 73
		mu 0 4 37 18 35 60
		f 4 -7 -45 -73 74
		mu 0 4 47 6 40 60
		f 4 -9 12 -78 76
		mu 0 4 43 7 38 61
		f 4 42 14 75 77
		mu 0 4 38 18 36 61
		f 4 -5 -47 -77 78
		mu 0 4 50 0 43 61
		f 4 -12 -41 -82 80
		mu 0 4 39 12 36 62
		f 4 -15 13 79 81
		mu 0 4 36 18 37 62
		f 4 -6 -44 -81 82
		mu 0 4 49 1 39 62
		f 4 -16 -43 -86 84
		mu 0 4 35 18 38 63
		f 4 -13 -48 83 85
		mu 0 4 38 7 45 63
		f 4 -10 -40 -85 86
		mu 0 4 41 9 35 63
		f 4 -19 -39 -90 88
		mu 0 4 32 19 34 64
		f 4 -17 -52 87 89
		mu 0 4 34 13 51 64
		f 4 47 -37 -89 90
		mu 0 4 46 8 32 64
		f 4 -22 -36 -94 92
		mu 0 4 29 20 31 65
		f 4 -20 -53 91 93
		mu 0 4 31 14 52 65
		f 4 48 -34 -93 94
		mu 0 4 48 10 29 65
		f 4 -24 -33 -97 95
		mu 0 4 26 21 28 66
		f 4 -190 196 190 96
		mu 0 4 28 137 143 66
		f 4 -27 -30 -101 99
		mu 0 4 23 22 25 67
		f 4 -25 -55 98 100
		mu 0 4 25 16 54 67
		f 4 50 -28 -100 101
		mu 0 4 50 12 23 67
		f 4 102 185 188 -107
		mu 0 4 68 69 70 71
		f 4 104 178 181 -109
		mu 0 4 75 76 77 78
		f 4 105 174 177 -110
		mu 0 4 79 80 81 82
		f 4 109 170 173 132
		mu 0 4 83 84 85 86
		f 4 -129 166 169 136
		mu 0 4 87 88 89 90
		f 4 -128 162 165 137
		mu 0 4 91 92 93 71
		f 4 -127 158 161 135
		mu 0 4 94 95 96 97
		f 4 -126 154 157 -111
		mu 0 4 98 99 100 101
		f 4 -125 150 153 -112
		mu 0 4 102 103 104 105
		f 4 -123 142 145 -114
		mu 0 4 91 108 109 110
		f 4 -144 144 28 -141
		mu 0 4 73 109 111 112
		f 4 -145 -143 -122 25
		mu 0 4 111 109 108 113
		f 4 -146 143 -104 -131
		mu 0 4 110 109 73 72
		f 4 -149 -147 -121 22
		mu 0 4 114 107 106 116
		f 4 -152 152 34 -139
		mu 0 4 80 104 117 118
		f 4 -153 -151 -120 20
		mu 0 4 117 104 103 119
		f 4 -154 151 -106 -133
		mu 0 4 105 104 80 79
		f 4 -156 156 37 -142
		mu 0 4 120 100 121 122
		f 4 -157 -155 -119 17
		mu 0 4 121 100 99 123
		f 4 -158 155 -103 -134
		mu 0 4 101 100 120 124
		f 4 -160 160 128 112
		mu 0 4 125 96 88 87
		f 4 -161 -159 -118 115
		mu 0 4 88 96 95 126
		f 4 -162 159 131 108
		mu 0 4 97 96 125 127
		f 4 -164 164 -115 110
		mu 0 4 128 93 129 130
		f 4 -165 -163 -117 -130
		mu 0 4 129 93 92 126
		f 4 -166 163 133 106
		mu 0 4 71 93 128 68
		f 4 -168 168 127 113
		mu 0 4 110 89 92 91
		f 4 -169 -167 -116 116
		mu 0 4 92 89 88 126
		f 4 -170 167 130 107
		mu 0 4 90 89 110 72
		f 4 -172 172 129 117
		mu 0 4 95 85 129 126
		f 4 -173 -171 134 114
		mu 0 4 129 85 84 130
		f 4 -174 171 126 111
		mu 0 4 86 85 95 94
		f 4 -176 176 38 118
		mu 0 4 99 81 131 123
		f 4 -177 -175 138 16
		mu 0 4 131 81 80 118
		f 4 -178 175 125 -135
		mu 0 4 82 81 99 98
		f 4 -180 180 35 119
		mu 0 4 103 77 132 119
		f 4 -181 -179 139 19
		mu 0 4 132 77 76 115
		f 4 -182 179 124 -136
		mu 0 4 78 77 103 102
		f 4 -183 183 32 120
		mu 0 4 106 74 133 116
		f 4 -184 -192 202 189
		mu 0 4 133 74 148 136
		f 4 -187 187 29 121
		mu 0 4 108 70 134 113
		f 4 -188 -186 141 24
		mu 0 4 134 70 69 135
		f 4 -189 186 122 -138
		mu 0 4 71 70 108 91
		f 3 -193 -98 -191
		mu 0 3 143 144 66
		f 4 -194 -63 -60 30
		mu 0 4 138 142 57 26
		f 4 -195 -32 -62 60
		mu 0 4 141 140 27 57
		f 3 -196 -61 62
		mu 0 3 142 141 57
		f 4 -198 -31 -96 97
		mu 0 4 144 138 26 66
		f 3 -199 191 184
		mu 0 3 149 148 74
		f 4 -200 -124 146 149
		mu 0 4 147 145 106 107
		f 4 -201 -148 148 31
		mu 0 4 139 146 107 114
		f 3 -202 -150 147
		mu 0 3 146 147 107
		f 4 -204 -185 182 123
		mu 0 4 145 149 74 106;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode ikHandle -n "RightLegIK" -p "anim_global01";
	setAttr ".pv" -type "double3" -1.2703691770557577 -0.0080844063150931622 1.9410895541157425 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "RightLegIK_pointConstraint1" -p "RightLegIK";
	addAttr -ci true -k true -sn "w0" -ln "anim_RightFootIKW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 2.6645352591003757e-15 0.95826902813782144 -1.0033197961896074 ;
	setAttr ".rst" -type "double3" -1.005090473316117 -7.200452565837451 0.169239152075354 ;
	setAttr -k on ".w0";
createNode ikHandle -n "LeftLegIK" -p "anim_global01";
	setAttr ".pv" -type "double3" 1.2703738649214744 -0.0080845225073103433 1.9410864855941676 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "LeftLegIK_pointConstraint1" -p "LeftLegIK";
	addAttr -ci true -k true -sn "w0" -ln "anim_LeftFootIKW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -2.2204460492503131e-16 0.95826902813782244 -1.0033197961896061 ;
	setAttr ".rst" -type "double3" 1.0050894665153212 -7.2004140749148693 0.16923900000000036 ;
	setAttr -k on ".w0";
createNode transform -n "curve1" -p "anim_global01";
createNode nurbsCurve -n "curveShape1" -p "|anim_global01|curve1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 29 0 no 3
		30 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29
		30
		-3.1346044697884494 1.2641580622125732 3.1346044697884281
		-3.1346044697884494 1.2641580622125723 -3.1346044697884565
		3.1346044697884565 1.2641580622125723 -3.1346044697884565
		3.1346044697884565 1.2641580622125723 -3.1346044697884565
		3.1346044697884565 1.2641580622125723 -3.1346044697884565
		3.1346044697884565 1.2641580622125723 -3.1346044697884565
		3.1346044697884565 1.2641580622125723 -3.1346044697884565
		3.1346044697884565 1.2641580622125723 -3.1346044697884565
		3.1346044697884565 1.2641580622125732 3.1346044697884281
		-3.1346044697884494 1.2641580622125732 3.1346044697884281
		-3.1346044697884494 -1.2641580622125732 3.1346044697884281
		3.1346044697884565 -1.2641580622125732 3.1346044697884281
		3.1346044697884565 1.2641580622125732 3.1346044697884281
		3.1346044697884565 1.2641580622125732 -3.1346044697884565
		3.1346044697884565 -1.2641580622125732 -3.1346044697884565
		3.1346044697884565 -1.2641580622125732 3.1346044697884281
		3.1346044697884565 1.2641580622125732 3.1346044697884281
		3.1346044697884565 1.2641580622125732 -3.1346044697884565
		-3.1346044697884494 1.2641580622125732 -3.1346044697884565
		-3.1346044697884494 -1.2641580622125732 -3.1346044697884565
		3.1346044697884565 -1.2641580622125732 -3.1346044697884565
		3.1346044697884565 -1.2641580622125732 3.1346044697884281
		-3.1346044697884494 -1.2641580622125732 3.1346044697884281
		-3.1346044697884494 -1.2641580622125732 -3.1346044697884565
		3.1346044697884565 -1.2641580622125732 -3.1346044697884565
		3.1346044697884565 -1.2641580622125732 3.1346044697884281
		-3.1346044697884494 -1.2641580622125732 3.1346044697884281
		-3.1346044697884494 1.2641580622125732 3.1346044697884281
		-3.1346044697884494 1.2641580622125732 -3.1346044697884565
		-3.1346044697884494 -1.2641580622125732 -3.1346044697884565
		;
createNode transform -n "BoxControls1:curve1" -p "|anim_global01|curve1";
	setAttr -l on ".rx";
	setAttr -l on ".rz";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 5.754824063564131 -0.88896274166850731 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 5.754824063564131 -0.88896274166850731 ;
createNode nurbsCurve -n "BoxControls1:curveShape1" -p "BoxControls1:curve1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 29 0 no 3
		30 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29
		30
		-3.1346044697884423 7.018982125776704 2.2456417281199208
		-3.1346044697884423 7.018982125776704 -4.0235672114569638
		3.1346044697884636 7.018982125776704 -4.0235672114569638
		3.1346044697884636 7.018982125776704 -4.0235672114569638
		3.1346044697884636 7.018982125776704 -4.0235672114569638
		3.1346044697884636 7.018982125776704 -4.0235672114569638
		3.1346044697884636 7.018982125776704 -4.0235672114569638
		3.1346044697884636 7.018982125776704 -4.0235672114569638
		3.1346044697884636 7.018982125776704 2.2456417281199208
		-3.1346044697884423 7.018982125776704 2.2456417281199208
		-3.1346044697884423 4.490666001351558 2.2456417281199208
		3.1346044697884636 4.490666001351558 2.2456417281199208
		3.1346044697884636 7.018982125776704 2.2456417281199208
		3.1346044697884636 7.018982125776704 -4.0235672114569638
		3.1346044697884636 4.490666001351558 -4.0235672114569638
		3.1346044697884636 4.490666001351558 2.2456417281199208
		3.1346044697884636 7.018982125776704 2.2456417281199208
		3.1346044697884636 7.018982125776704 -4.0235672114569638
		-3.1346044697884423 7.018982125776704 -4.0235672114569638
		-3.1346044697884423 4.490666001351558 -4.0235672114569638
		3.1346044697884636 4.490666001351558 -4.0235672114569638
		3.1346044697884636 4.490666001351558 2.2456417281199208
		-3.1346044697884423 4.490666001351558 2.2456417281199208
		-3.1346044697884423 4.490666001351558 -4.0235672114569638
		3.1346044697884636 4.490666001351558 -4.0235672114569638
		3.1346044697884636 4.490666001351558 2.2456417281199208
		-3.1346044697884423 4.490666001351558 2.2456417281199208
		-3.1346044697884423 7.018982125776704 2.2456417281199208
		-3.1346044697884423 7.018982125776704 -4.0235672114569638
		-3.1346044697884423 4.490666001351558 -4.0235672114569638
		;
createNode transform -n "BoxControls3:curve1" -p "BoxControls1:curve1";
	setAttr ".rp" -type "double3" -0.087862052023403692 7.8588706467397902 -0.44667362767009422 ;
	setAttr ".sp" -type "double3" -0.087862052023403692 7.8588706467397902 -0.44667362767009422 ;
createNode nurbsCurve -n "BoxControls3:curveShape1" -p "BoxControls3:curve1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 29 0 no 3
		30 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29
		30
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		;
createNode transform -n "curve11" -p "BoxControls1:curve1";
	setAttr ".rp" -type "double3" -0.016119767007960462 15.495224275977634 -0.087144689810538564 ;
	setAttr ".sp" -type "double3" -0.087862052023403692 7.8588706467397902 -0.44667362767009422 ;
	setAttr ".spt" -type "double3" 0.071742285015443219 7.6363536292378429 0.35952893785955564 ;
createNode nurbsCurve -n "curveShape11" -p "curve11";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 29 0 no 3
		30 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29
		30
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		;
createNode transform -n "curve12" -p "curve11";
	setAttr ".rp" -type "double3" -0.087862052023403664 7.8588706467397902 -0.44667362767009394 ;
	setAttr ".sp" -type "double3" -0.087862052023403692 7.8588706467397902 -0.44667362767009422 ;
	setAttr ".spt" -type "double3" 0 0 1.1102230246251563e-16 ;
createNode nurbsCurve -n "curveShape12" -p "curve12";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 29 0 no 3
		30 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29
		30
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		;
createNode transform -n "curve1" -p "BoxControls1:curve1";
	setAttr ".rp" -type "double3" -0.016119767007960462 15.495224275977634 -0.087144689810538564 ;
	setAttr ".sp" -type "double3" -0.087862052023403692 7.8588706467397902 -0.44667362767009422 ;
	setAttr ".spt" -type "double3" 0.071742285015443219 7.6363536292378429 0.35952893785955564 ;
createNode nurbsCurve -n "curveShape1" -p "|anim_global01|curve1|BoxControls1:curve1|curve1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 29 0 no 3
		30 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29
		30
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		;
createNode transform -n "curve9" -p "|anim_global01|curve1|BoxControls1:curve1|curve1";
	setAttr ".rp" -type "double3" -0.087862052023403636 7.8588706467397902 -0.44667362767009433 ;
	setAttr ".sp" -type "double3" -0.087862052023403692 7.8588706467397902 -0.44667362767009422 ;
	setAttr ".spt" -type "double3" 0 0 -1.1102230246251568e-16 ;
createNode nurbsCurve -n "curveShape9" -p "curve9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 29 0 no 3
		30 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29
		30
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		4.1422334110525298 8.2163970829090669 2.1470410125040047
		4.1422334110525298 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 -3.0403882678442216
		4.1422334110525298 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 7.5013442105705135 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 2.1470410125040047
		-4.3179575150993443 8.2163970829090669 -3.0403882678442216
		-4.3179575150993443 7.5013442105705135 -3.0403882678442216
		;
createNode transform -n "anim_RightFootIK";
	setAttr ".rp" -type "double3" -1.0050904733161197 -8.1587215939752724 0.169239152075356 ;
	setAttr ".sp" -type "double3" -1.0050904733161197 -8.1587215939752724 0.169239152075356 ;
createNode nurbsCurve -n "anim_RightFootIKShape" -p "anim_RightFootIK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 43 0 no 3
		44 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43
		44
		-1.2091726684093631 -8.1587215939752724 3.5195465936787507
		-1.0050899011818659 -8.1587215939752724 3.5613083469757143
		-1.0050899011818659 -8.1587215939752724 3.5613083469757143
		-0.80100715302551251 -8.1587215939752724 3.5195465936787507
		-0.80100715302551251 -8.1587215939752724 3.5195465936787507
		-0.60194957443848196 -8.1587215939752724 3.3952887759011965
		-0.4128186204934971 -8.1587215939752724 3.1915950050184385
		-0.23827144493733152 -8.1587215939752724 2.9134807059875878
		-0.082605843992562988 -8.1587215939752724 2.5677940383462641
		0.050345111700650591 -8.1587215939752724 2.1630469038032807
		0.15730774623227006 -8.1587215939752724 1.7092055900319316
		0.23564833492516879 -8.1587215939752724 1.2174453151458131
		0.28343779364799193 -8.1587215939752724 0.69987467288106231
		0.29949844125474279 -8.1587215939752724 0.16923875537955979
		0.29949844125474279 -8.1587215939752724 0.16923875537955979
		0.28343687823318664 -8.1587215939752724 -0.36139755881773539
		0.23564741951036439 -8.1587215939752724 -0.87896790356064081
		0.15730690710203188 -8.1587215939752724 -1.3707279800988648
		0.050344348854980403 -8.1587215939752724 -1.8245689963483649
		-0.08260660683823319 -8.1587215939752724 -2.2293159325434448
		-0.23827213149843551 -8.1587215939752724 -2.575002203488971
		-0.41281923077003402 -8.1587215939752724 -2.8531163041719321
		-0.60195003214588283 -8.1587215939752724 -3.0568100750546865
		-0.80100749630606405 -8.1587215939752724 -3.1810678928322389
		-1.0050901872489932 -8.1587215939752724 -3.2228300428249987
		-1.2091728972630644 -8.1587215939752724 -3.1810682895280369
		-1.4082304567789541 -8.1587215939752724 -3.0568106700983808
		-1.5973613344393709 -8.1587215939752724 -2.8531168992156264
		-1.7719085862801027 -8.1587215939752724 -2.5750027985326671
		-1.9275741109403048 -8.1587215939752724 -2.2293161308913447
		-2.0605250666335189 -8.1587215939752724 -1.824569194696263
		-2.1674877011651374 -8.1587215939752724 -1.3707279800988648
		-2.2458282898580371 -8.1587215939752724 -0.87896780438669164
		-2.2936178248654264 -8.1587215939752724 -0.36139731088286459
		-2.3096793878869821 -8.1587215939752724 0.16923925124930506
		-2.2936178248654264 -8.1587215939752724 0.69987581338147464
		-2.2458282898580371 -8.1587215939752724 1.2174463068853001
		-2.1674877011651374 -8.1587215939752724 1.7092065817714257
		-2.0605250666335189 -8.1587215939752724 2.1630476971948731
		-1.9275740346557375 -8.1587215939752724 2.5677946333899548
		-1.7719083574264021 -8.1587215939752724 2.9134811026833809
		-1.5973611055856691 -8.1587215939752724 3.1915952033663437
		-1.4082302279252523 -8.1587215939752724 3.3952889742490946
		-1.2091726684093631 -8.1587215939752724 3.5195465936787507
		;
createNode transform -n "anim_rightFoot01" -p "anim_RightFootIK";
	setAttr ".rp" -type "double3" 1.0050894665153214 -7.2004140749148693 0.16923899999999958 ;
	setAttr ".sp" -type "double3" 1.0050894665153214 -7.2004140749148693 0.16923899999999958 ;
createNode nurbsCurve -n "anim_rightFoot01Shape" -p "anim_rightFoot01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 29 0 no 3
		30 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29
		30
		0.10022015068930568 -6.2955447590888536 1.0741083158260047
		0.10022015068930568 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888536 1.0741083158260047
		0.10022015068930568 -6.2955447590888536 1.0741083158260047
		0.10022015068930568 -8.105283390740885 1.0741083158260047
		1.9099587823413371 -8.105283390740885 1.0741083158260047
		1.9099587823413371 -6.2955447590888536 1.0741083158260047
		1.9099587823413371 -6.2955447590888536 -0.73563031582601968
		1.9099587823413371 -8.105283390740885 -0.73563031582601968
		1.9099587823413371 -8.105283390740885 1.0741083158260047
		1.9099587823413371 -6.2955447590888536 1.0741083158260047
		1.9099587823413371 -6.2955447590888536 -0.73563031582601968
		0.10022015068930568 -6.2955447590888536 -0.73563031582601968
		0.10022015068930568 -8.105283390740885 -0.73563031582601968
		1.9099587823413371 -8.105283390740885 -0.73563031582601968
		1.9099587823413371 -8.105283390740885 1.0741083158260047
		0.10022015068930568 -8.105283390740885 1.0741083158260047
		0.10022015068930568 -8.105283390740885 -0.73563031582601968
		1.9099587823413371 -8.105283390740885 -0.73563031582601968
		1.9099587823413371 -8.105283390740885 1.0741083158260047
		0.10022015068930568 -8.105283390740885 1.0741083158260047
		0.10022015068930568 -6.2955447590888536 1.0741083158260047
		0.10022015068930568 -6.2955447590888536 -0.73563031582601968
		0.10022015068930568 -8.105283390740885 -0.73563031582601968
		;
createNode transform -n "anim_LeftFootIK";
	setAttr ".rp" -type "double3" 1.0050894665153214 -8.1586831030526916 0.16923900000000103 ;
	setAttr ".sp" -type "double3" 1.0050894665153214 -8.1586831030526916 0.16923900000000103 ;
createNode nurbsCurve -n "anim_LeftFootIKShape" -p "anim_LeftFootIK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 43 0 no 3
		44 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43
		44
		0.80100727142207795 -8.1586831030526916 3.5195464416033957
		1.0050900386495751 -8.1586831030526916 3.5613081949003593
		1.0050900386495751 -8.1586831030526916 3.5613081949003593
		1.2091727868059283 -8.1586831030526916 3.5195464416033957
		1.2091727868059283 -8.1586831030526916 3.5195464416033957
		1.4082303653929591 -8.1586831030526916 3.3952886238258415
		1.5973613193379439 -8.1586831030526916 3.1915948529430835
		1.7719084948941095 -8.1586831030526916 2.9134805539122333
		1.9275740958388781 -8.1586831030526916 2.5677938862709091
		2.0605250515320916 -8.1586831030526916 2.1630467517279257
		2.1674876860637111 -8.1586831030526916 1.7092054379565766
		2.2458282747566094 -8.1586831030526916 1.2174451630704579
		2.293617733479433 -8.1586831030526916 0.69987452080570733
		2.3096783810861838 -8.1586831030526916 0.16923860330420482
		2.3096783810861838 -8.1586831030526916 0.16923860330420482
		2.2936168180646277 -8.1586831030526916 -0.36139771089309042
		2.2458273593418054 -8.1586831030526916 -0.87896805563599589
		2.1674868469334729 -8.1586831030526916 -1.3707281321742195
		2.0605242886864215 -8.1586831030526916 -1.8245691484237201
		1.9275733329932081 -8.1586831030526916 -2.2293160846187998
		1.7719078083330055 -8.1586831030526916 -2.575002355564326
		1.597360709061407 -8.1586831030526916 -2.853116456247287
		1.4082299076855582 -8.1586831030526916 -3.0568102271300415
		1.209172443525377 -8.1586831030526916 -3.1810680449075939
		1.0050897525824478 -8.1586831030526916 -3.2228301949003537
		0.80100704256837663 -8.1586831030526916 -3.1810684416033919
		0.60194948305248719 -8.1586831030526916 -3.0568108221737358
		0.41281860539207038 -8.1586831030526916 -2.8531170512909818
		0.23827135355133813 -8.1586831030526916 -2.5750029506080221
		0.082605828891136213 -8.1586831030526916 -2.2293162829666997
		-0.050345126802077811 -8.1586831030526916 -1.824569346771618
		-0.15730776133369639 -8.1586831030526916 -1.3707281321742195
		-0.23564835002659601 -8.1586831030526916 -0.87896795646204673
		-0.28343788503398537 -8.1586831030526916 -0.36139746295821951
		-0.29949944805554107 -8.1586831030526916 0.16923909917395008
		-0.28343788503398537 -8.1586831030526916 0.69987566130611967
		-0.23564835002659601 -8.1586831030526916 1.2174461548099451
		-0.15730776133369639 -8.1586831030526916 1.7092064296960707
		-0.050345126802077811 -8.1586831030526916 2.1630475451195181
		0.08260590517570332 -8.1586831030526916 2.5677944813145999
		0.23827158240503896 -8.1586831030526916 2.9134809506080259
		0.4128188342457717 -8.1586831030526916 3.1915950512909887
		0.60194971190618851 -8.1586831030526916 3.3952888221737396
		0.80100727142207795 -8.1586831030526916 3.5195464416033957
		;
createNode transform -n "anim_LeftFoot01" -p "anim_LeftFootIK";
	setAttr ".rp" -type "double3" 1.0050894665153214 -7.2004140749148693 0.16923899999999958 ;
	setAttr ".sp" -type "double3" 1.0050894665153214 -7.2004140749148693 0.16923899999999958 ;
createNode nurbsCurve -n "anim_LeftFoot0Shape1" -p "anim_LeftFoot01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 29 0 no 3
		30 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29
		30
		0.10022015068930568 -6.2955447590888536 1.0741083158260047
		0.10022015068930568 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888545 -0.73563031582601968
		1.9099587823413371 -6.2955447590888536 1.0741083158260047
		0.10022015068930568 -6.2955447590888536 1.0741083158260047
		0.10022015068930568 -8.105283390740885 1.0741083158260047
		1.9099587823413371 -8.105283390740885 1.0741083158260047
		1.9099587823413371 -6.2955447590888536 1.0741083158260047
		1.9099587823413371 -6.2955447590888536 -0.73563031582601968
		1.9099587823413371 -8.105283390740885 -0.73563031582601968
		1.9099587823413371 -8.105283390740885 1.0741083158260047
		1.9099587823413371 -6.2955447590888536 1.0741083158260047
		1.9099587823413371 -6.2955447590888536 -0.73563031582601968
		0.10022015068930568 -6.2955447590888536 -0.73563031582601968
		0.10022015068930568 -8.105283390740885 -0.73563031582601968
		1.9099587823413371 -8.105283390740885 -0.73563031582601968
		1.9099587823413371 -8.105283390740885 1.0741083158260047
		0.10022015068930568 -8.105283390740885 1.0741083158260047
		0.10022015068930568 -8.105283390740885 -0.73563031582601968
		1.9099587823413371 -8.105283390740885 -0.73563031582601968
		1.9099587823413371 -8.105283390740885 1.0741083158260047
		0.10022015068930568 -8.105283390740885 1.0741083158260047
		0.10022015068930568 -6.2955447590888536 1.0741083158260047
		0.10022015068930568 -6.2955447590888536 -0.73563031582601968
		0.10022015068930568 -8.105283390740885 -0.73563031582601968
		;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 17 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "miSamplesQualityR" -ln "miSamplesQualityR" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityG" -ln "miSamplesQualityG" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityB" -ln "miSamplesQualityB" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityA" -ln "miSamplesQualityA" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesMin" -ln "miSamplesMin" -dv 1 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesMax" -ln "miSamplesMax" -dv 100 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffR" -ln "miSamplesErrorCutoffR" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffG" -ln "miSamplesErrorCutoffG" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffB" -ln "miSamplesErrorCutoffB" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffA" -ln "miSamplesErrorCutoffA" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesPerObject" -ln "miSamplesPerObject" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "miRastShadingSamples" -ln "miRastShadingSamples" -dv 1 -min 
		0.25 -at "double";
	addAttr -ci true -sn "miRastSamples" -ln "miRastSamples" -dv 3 -min 1 -at "long";
	addAttr -ci true -sn "miContrastAsColor" -ln "miContrastAsColor" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miProgMaxTime" -ln "miProgMaxTime" -min 0 -at "long";
	addAttr -ci true -sn "miProgSubsampleSize" -ln "miProgSubsampleSize" -dv 4 -min 
		1 -at "long";
	addAttr -ci true -sn "miTraceCameraMotionVectors" -ln "miTraceCameraMotionVectors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miTraceCameraClip" -ln "miTraceCameraClip" -min 0 -max 1 -at "bool";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.5 0.5 0.5 0.5";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	setAttr ".dat" 2;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 23 ".lnk";
	setAttr -s 23 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 3;
	setAttr -s 7 ".dli[1:6]"  12 16 2 1 3 4;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "BabyBotMon:uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n"
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
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 0\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -pluginShapes 0\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -motionTrails 0\n                -clipGhosts 0\n                -greasePencils 0\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n"
		+ "            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n"
		+ "            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "BabyBotMon:sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 95 -ast 1 -aet 95 ";
	setAttr ".st" 6;
createNode groupId -n "BabyBotMon:groupId3";
	setAttr ".ihi" 0;
createNode groupId -n "BabyBotMon:groupId29";
	setAttr ".ihi" 0;
createNode groupId -n "BabyBotMon:groupId30";
	setAttr ".ihi" 0;
createNode blinn -n "BabyBotMon:TVHead";
createNode shadingEngine -n "BabyBotMon:blinn1SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "BabyBotMon:materialInfo1";
createNode lambert -n "BabyBotMon:Screen";
	setAttr ".c" -type "float3" 0 0.62971973 0.86199999 ;
createNode shadingEngine -n "BabyBotMon:lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "BabyBotMon:materialInfo2";
createNode lambert -n "BabyBotMon:BackOfTV";
	setAttr ".c" -type "float3" 0.156 0.156 0.156 ;
createNode shadingEngine -n "BabyBotMon:lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "BabyBotMon:materialInfo3";
createNode blinn -n "BabyBotMon:Limbs";
	setAttr ".c" -type "float3" 0.6410315 0.6410315 0.6410315 ;
createNode shadingEngine -n "BabyBotMon:blinn2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "BabyBotMon:materialInfo4";
createNode lambert -n "BabyBotMon:lambert4";
	setAttr ".c" -type "float3" 0.64099997 0.096149981 0.096149981 ;
createNode shadingEngine -n "BabyBotMon:lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "BabyBotMon:materialInfo5";
createNode lambert -n "BabyBotMon:DarkerShade";
	setAttr ".c" -type "float3" 0.5 0.14950001 0.14950001 ;
createNode shadingEngine -n "BabyBotMon:lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "BabyBotMon:materialInfo6";
createNode lambert -n "BabyBotMon:ActualScreen";
	setAttr ".ambc" -type "float3" 0.67521173 0.67521173 0.67521173 ;
createNode shadingEngine -n "BabyBotMon:lambert6SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "BabyBotMon:materialInfo7";
createNode file -n "BabyBotMon:file1";
	setAttr ".ftn" -type "string" "/Users/nathanwaters/Documents/RunnerFiles//BabyBotMon/BabyBotFace.psd";
createNode place2dTexture -n "BabyBotMon:place2dTexture1";
createNode lambert -n "BabyBotMon:ColorLED";
	setAttr ".c" -type "float3" 0.25511003 0.97000003 0.95715582 ;
	setAttr ".ambc" -type "float3" 0.64957654 0.64957654 0.64957654 ;
createNode shadingEngine -n "BabyBotMon:lambert7SG";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "BabyBotMon:materialInfo8";
createNode groupId -n "BabyBotMon:groupId36";
	setAttr ".ihi" 0;
createNode blinn -n "BabyBotMon:DoorCasing";
	setAttr ".c" -type "float3" 0.42734417 0.42734417 0.42734417 ;
createNode shadingEngine -n "BabyBotMon:blinn3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "BabyBotMon:materialInfo9";
createNode lambert -n "BabyBotMon:NewBlack";
	setAttr ".c" -type "float3" 0.70940721 0.70940721 0.70940721 ;
createNode shadingEngine -n "BabyBotMon:lambert8SG";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "BabyBotMon:materialInfo10";
createNode materialInfo -n "BabyBotMon:pasted__materialInfo10";
createNode shadingEngine -n "BabyBotMon:pasted__lambert8SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "BabyBotMon:pasted__NewBlack";
	setAttr ".c" -type "float3" 0.70940721 0.70940721 0.70940721 ;
createNode polyCube -n "BabyBotMon:polyCube6";
	setAttr ".w" 0.57046571603363661;
	setAttr ".h" 0.35124444984173286;
	setAttr ".d" 1.1360300881731646;
	setAttr ".cuv" 4;
createNode polyCylinder -n "BabyBotMon:polyCylinder2";
	setAttr ".r" 0.22568935669976009;
	setAttr ".h" 0.1273464866430552;
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "BabyBotMon:polyCube8";
	setAttr ".w" 0.64974497197519554;
	setAttr ".h" 0.64974497197519554;
	setAttr ".d" 0.64974497197519554;
	setAttr ".cuv" 4;
createNode polySmoothFace -n "BabyBotMon:polySmoothFace15";
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
createNode deleteComponent -n "BabyBotMon:deleteComponent8";
	setAttr ".dc" -type "componentList" 5 "f[4]" "f[9:13]" "f[15:16]" "f[18:19]" "f[21:22]";
createNode polyCube -n "BabyBotMon:polyCube9";
	setAttr ".w" 3.4146269063322423;
	setAttr ".h" 1.9099188518107353;
	setAttr ".d" 0.70866586799111886;
	setAttr ".cuv" 4;
createNode polyCut -n "BabyBotMon:polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.070306574422065671 5.2201863112206359 -0.020738976481500027 1;
	setAttr ".pc" -type "double3" 0.98544037205210411 4.3787639328274155 -0.37507191300421983 ;
	setAttr ".ro" -type "double3" 89.564717906889356 0 180 ;
	setAttr ".ps" -type "double2" 3.4146268367767334 2.3346729278564453 ;
createNode polyTweak -n "BabyBotMon:polyTweak29";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 -0.21237689 0 0 -0.21237689
		 0 0 0.21237689 0 0 0.21237689 0 0 0.21237689 0 0 0.21237689 0 0 -0.21237689 0 0 -0.21237689
		 0;
createNode polyExtrudeFace -n "BabyBotMon:polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.070306574422065671 5.2201863112206359 -0.020738976481500027 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.070306577 5.3831434 -0.37507191 ;
	setAttr ".rs" 145138577;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7776199928104324 4.3787637533898254 -0.37507190037066018 ;
	setAttr ".cbx" -type "double3" 1.637006843966301 6.3875227751488586 -0.37507190037066018 ;
createNode lambert -n "BabyBotMon:lambert9";
	setAttr ".it" -type "float3" 0.75 0.75 0.75 ;
createNode shadingEngine -n "BabyBotMon:lambert9SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "BabyBotMon:materialInfo11";
createNode polyExtrudeFace -n "BabyBotMon:polyExtrudeFace18";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.2201863112206359 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5.2201862 0.35433292 ;
	setAttr ".rs" 1125987960;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7687584161758425 4.0528498472924133 0.35433292388916016 ;
	setAttr ".cbx" -type "double3" 1.7687584161758425 6.3875227751488586 0.35433292388916016 ;
createNode polyTweak -n "BabyBotMon:polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[0:13]" -type "float3"  -0.061445042 0 0 0.061445042
		 0 0 -0.061445042 0 0 0.061445042 0 0 -0.061445042 0 0 0.061445042 0 0 -0.061445042
		 0 0 0.061445042 0 0 -0.061445042 0 0 0.061445042 0 0 0.25390989 -0.063975252 -0.27694115
		 -0.25390989 -0.063975252 -0.27694115 -0.25390989 0.29416987 -0.27694115 0.25390989
		 0.29416987 -0.27694115;
createNode polyExtrudeFace -n "BabyBotMon:polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.2201863112206359 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5.2201862 0.35433292 ;
	setAttr ".rs" 1382814505;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.6940129995346067 4.1021799626107116 0.35433292388916016 ;
	setAttr ".cbx" -type "double3" 1.6940129995346067 6.3381926598305602 0.35433292388916016 ;
createNode polyTweak -n "BabyBotMon:polyTweak31";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[14:17]" -type "float3"  0.074745424 0.049330115 0
		 -0.074745424 0.049330115 0 -0.074745424 -0.049330115 0 0.074745424 -0.049330115 0;
createNode polyCylinder -n "BabyBotMon:polyCylinder1";
	setAttr ".r" 0.084046466721698909;
	setAttr ".h" 1.2832672949530921;
	setAttr ".sa" 5;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "BabyBotMon:polyCube10";
	setAttr ".w" 0.59472703178860087;
	setAttr ".h" 0.59472703178860087;
	setAttr ".d" 0.59472703178860087;
	setAttr ".cuv" 4;
createNode polySmoothFace -n "BabyBotMon:polySmoothFace16";
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
createNode polyNormalPerVertex -n "BabyBotMon:polyNormalPerVertex1";
	setAttr ".uopa" yes;
	setAttr -s 26 ".vn";
	setAttr ".vn[0].nxyz" -type "float3" -0.57735026 -0.57735026 0.57735026 ;
	setAttr ".vn[1].nxyz" -type "float3" 0.57735026 -0.57735026 0.57735026 ;
	setAttr ".vn[2].nxyz" -type "float3" -0.57735026 0.57735026 0.57735026 ;
	setAttr ".vn[3].nxyz" -type "float3" 0.57735026 0.57735026 0.57735026 ;
	setAttr ".vn[4].nxyz" -type "float3" -0.57735026 0.57735026 -0.57735026 ;
	setAttr ".vn[5].nxyz" -type "float3" 0.57735026 0.57735026 -0.57735026 ;
	setAttr ".vn[6].nxyz" -type "float3" -0.57735026 -0.57735026 -0.57735026 ;
	setAttr ".vn[7].nxyz" -type "float3" 0.57735026 -0.57735026 -0.57735026 ;
	setAttr ".vn[8].nxyz" -type "float3" 0.70710683 -0.70710677 0 ;
	setAttr ".vn[9].nxyz" -type "float3" -0.70710683 -0.70710683 8.0162277e-09 ;
	setAttr ".vn[10].nxyz" -type "float3" 0.70710683 0 -0.70710683 ;
	setAttr ".vn[11].nxyz" -type "float3" -0.70710683 0 -0.70710683 ;
	setAttr ".vn[12].nxyz" -type "float3" 0.70710683 0.70710677 0 ;
	setAttr ".vn[13].nxyz" -type "float3" -0.70710683 0.70710683 -8.0162277e-09 ;
	setAttr ".vn[14].nxyz" -type "float3" 0.70710683 0 0.70710683 ;
	setAttr ".vn[15].nxyz" -type "float3" -0.70710683 0 0.70710683 ;
	setAttr ".vn[16].nxyz" -type "float3" 0 -0.70710683 -0.70710677 ;
	setAttr ".vn[17].nxyz" -type "float3" 0 0.70710683 -0.70710683 ;
	setAttr ".vn[18].nxyz" -type "float3" 0 0.70710683 0.70710677 ;
	setAttr ".vn[19].nxyz" -type "float3" 0 -0.70710683 0.70710683 ;
	setAttr ".vn[20].nxyz" -type "float3" -1 0 0 ;
	setAttr ".vn[21].nxyz" -type "float3" 1 0 0 ;
	setAttr ".vn[22].nxyz" -type "float3" 0 -1 0 ;
	setAttr ".vn[23].nxyz" -type "float3" 0 0 -1 ;
	setAttr ".vn[24].nxyz" -type "float3" 0 1 0 ;
	setAttr ".vn[25].nxyz" -type "float3" 0 0 1 ;
createNode polyChipOff -n "BabyBotMon:polyChipOff9";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[15:18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.2201863112206359 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5.2201862 0.53436828 ;
	setAttr ".rs" 1190923242;
	setAttr ".dup" no;
createNode polyTweak -n "BabyBotMon:polyTweak33";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[18:21]" -type "float3"  0.21676174 0.14305735 0.18003537
		 -0.21676174 0.14305735 0.18003537 -0.21676174 -0.14305735 0.18003537 0.21676174 -0.14305735
		 0.18003537;
createNode polySeparate -n "BabyBotMon:polySeparate9";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "BabyBotMon:groupId46";
	setAttr ".ihi" 0;
createNode groupParts -n "BabyBotMon:groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:18]";
createNode groupId -n "BabyBotMon:groupId47";
	setAttr ".ihi" 0;
createNode groupId -n "BabyBotMon:groupId49";
	setAttr ".ihi" 0;
createNode groupParts -n "BabyBotMon:groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0]" "f[2:5]" "f[10:13]";
	setAttr ".irc" -type "componentList" 2 "f[1]" "f[6:9]";
createNode groupId -n "BabyBotMon:groupId50";
	setAttr ".ihi" 0;
createNode groupId -n "BabyBotMon:groupId51";
	setAttr ".ihi" 0;
createNode groupParts -n "BabyBotMon:groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[1]" "f[6:9]";
createNode polyPlanarProj -n "BabyBotMon:polyPlanarProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.2201863112206359 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 5.2201862335205078 0.44435060024261475 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.18003535270690918 2.2360124588012695 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "BabyBotMon:polyPlanarProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.2201863112206359 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 5.2201862335205078 0.44435060024261475 ;
	setAttr ".ps" -type "double2" 3.3880259990692139 2.2360124588012695 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "BabyBotMon:polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[0:7]" -type "float2" 0 0.15976351 0 0.15976351
		 0 -0.15976357 0 -0.15976357 0 0.18320611 0 0.18320611 0 -0.18320608 0 -0.18320608;
createNode shadingEngine -n "BabyBotMon:irisPuppetSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "BabyBotMon:AdvancedSkeleton_materialInfo3";
createNode shadingEngine -n "BabyBotMon:AdvancedSkeleton_irisPuppetSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "BabyBotMon:AdvancedSkeleton_materialInfo4";
createNode displayLayer -n "BabyBotMon:jointLayer";
createNode objectSet -n "BabyBotMon:AllSet";
	setAttr ".ihi" 0;
createNode objectSet -n "BabyBotMon:Sets";
	setAttr ".ihi" 0;
createNode closestPointOnMesh -n "BabyBotMon:closestSampler1";
createNode shadingEngine -n "BabyBotMon:AdvancedSkeleton_irisPuppetSG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "BabyBotMon:AdvancedSkeleton_materialInfo5";
createNode groupId -n "BabyBotMon:groupId57";
	setAttr ".ihi" 0;
createNode shadingEngine -n "irisPuppetSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode displayLayer -n "jointLayer";
createNode objectSet -n "AllSet";
	setAttr ".ihi" 0;
createNode objectSet -n "Sets";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 4.9405398205839273 1.255251934503108e-32 -1.2179370984832165e-31 0
		 1.3858698849749087e-31 4.9405398205839273 1.371275265722429e-16 0 2.7872191987812376e-48 0 4.9405398205839282 0
		 0.031375181140610664 -0.096584519309409242 -0.04034509834951594 1;
createNode transformGeometry -n "transformGeometry2";
	setAttr ".txf" -type "matrix" 4.1349339535373755 2.0386798385103708e-31 0 0 2.0386798385103708e-31 4.1349339535373755 1.1476747201303814e-16 0
		 0 0 4.1349339535373772 0 -0.0045406249808138312 3.6865327188889152 -0.44667358025055814 1;
createNode transformGeometry -n "transformGeometry3";
	setAttr ".txf" -type "matrix" 4.1349339535373755 2.0386798385103708e-31 0 0 2.0386798385103708e-31 4.1349339535373755 1.1476747201303814e-16 0
		 0 0 4.1349339535373772 0 -0.0045406249808138312 3.6865327188889152 -0.44667358025055814 1;
createNode transformGeometry -n "transformGeometry4";
	setAttr ".txf" -type "matrix" -0.45748716200149314 -0.33701939222758293 2.782050523883099 0
		 2.8023673815880215 -0.043805440657608455 0.45552149625691774 0 -0.011146604288656718 2.8190744410538708 0.33967151864925088 0
		 1.000512172572539 1.2074248981079927 -5.5100450378342041 1;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0 -0.050537322 0 0 -0.050537322
		 0 0 -0.050537322 0 0 -0.050537322 0;
createNode transformGeometry -n "transformGeometry5";
	setAttr ".txf" -type "matrix" 4.1349339535373746 0 4.1140555668661189e-17 0 2.2953494402607607e-16 4.1349339535373746 -1.0369600511411396e-16 0
		 -7.1353794347863015e-31 5.0966995962759312e-31 4.1349339535373764 0 -0.32689352660678123 -0.28107749055762982 0.97657485932650123 1;
createNode transformGeometry -n "transformGeometry6";
	setAttr ".txf" -type "matrix" 4.1349339535373746 0 4.1140555668661189e-17 0 2.2953494402607607e-16 4.1349339535373746 -1.0369600511411396e-16 0
		 -7.1353794347863015e-31 5.0966995962759312e-31 4.1349339535373764 0 -0.28418362688307064 0.47286062235604653 1.990229780364952 1;
createNode transformGeometry -n "transformGeometry7";
	setAttr ".txf" -type "matrix" 0.083947889950563584 0.57751295664991575 -4.6125543707366239 0
		 -3.8529950175656431 0.72221689563706348 0.020300858374978647 0 0.85277050048469116 4.5331026898107414 0.58308555415218799 0
		 2.2874231804353853 -0.62931195117903038 0.078756726278595424 1;
createNode mentalrayOptions -s -n "miContourPreset";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "Draft";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "DraftMotionBlur";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "DraftRapidMotion";
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 1;
	setAttr ".raps" 0.25;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "Preview";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "PreviewMotionblur";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewRapidMotion";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewCaustics";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".ca" yes;
	setAttr ".cc" 1;
	setAttr ".cr" 1;
createNode mentalrayOptions -s -n "PreviewGlobalIllum";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".gi" yes;
	setAttr ".gc" 1;
	setAttr ".gr" 1;
createNode mentalrayOptions -s -n "PreviewFinalGather";
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".fg" yes;
createNode mentalrayOptions -s -n "Production";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "ProductionMotionblur";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionRapidMotion";
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 8;
	setAttr ".raps" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionFineTrace";
	setAttr ".conr" 0.019999999552965164;
	setAttr ".cong" 0.019999999552965164;
	setAttr ".conb" 0.019999999552965164;
	setAttr ".splck" yes;
	setAttr ".minsp" 1;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 0.75;
	setAttr ".filh" 0.75;
	setAttr ".jit" yes;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "ProductionRapidFur";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".raps" 0.25;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode mentalrayOptions -s -n "ProductionRapidHair";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 6;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode ikRPsolver -n "AnimationDummy:ikRPsolver";
createNode blinn -n "AnimationDummy:goonSkin";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.89499998 0.63518614 0.45376498 ;
	setAttr ".sc" -type "float3" 0.20661999 0.20661999 0.20661999 ;
	setAttr ".rfl" 0;
	setAttr ".ec" 0.46277999877929688;
createNode shadingEngine -n "AnimationDummy:goonSkinSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "AnimationDummy:materialInfo1";
createNode phong -n "AnimationDummy:goonEye";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 14.960000038146973;
createNode shadingEngine -n "AnimationDummy:goonEyeSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "AnimationDummy:materialInfo2";
createNode shadingEngine -n "AnimationDummy:surfaceShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "AnimationDummy:materialInfo3";
createNode phong -n "AnimationDummy:goonTeeth";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".sc" -type "float3" 0.35538 0.35538 0.35538 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 14.14799976348877;
createNode shadingEngine -n "AnimationDummy:goonTeethSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "AnimationDummy:materialInfo4";
createNode phong -n "AnimationDummy:goonTongue";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.5 0.21162441 0.1965 ;
	setAttr ".sc" -type "float3" 0.1157 0.1157 0.1157 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 8.4799995422363281;
createNode shadingEngine -n "AnimationDummy:phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "AnimationDummy:materialInfo5";
createNode lambert -n "AnimationDummy:goonPupils";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0 0 0 ;
createNode pairBlend -n "pairBlend1";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode pairBlend -n "pairBlend2";
	setAttr ".it1" -type "double3" 2.615269437229956e-16 0 -5.2305388744599121e-16 ;
	setAttr ".ir1" -type "double3" -6.3611093629270351e-15 -6.3611093629270367e-15 -6.3611093629270351e-15 ;
createNode displayLayer -n "BabyBotMesh";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode displayLayer -n "Constraints";
	setAttr ".do" 2;
createNode pairBlend -n "pairBlend3";
	setAttr ".it1" -type "double3" 0.072026787135895193 0.88896274166850275 1.9973997671819903 ;
createNode pairBlend -n "pairBlend4";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode pairBlend -n "pairBlend5";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode pairBlend -n "pairBlend6";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveTU -n "anim_global01_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "anim_global01_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "anim_global01_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "anim_global01_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "anim_global01_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "anim_global01_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "anim_global01_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "anim_global01_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "anim_global01_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "anim_global01_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "curve1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90 55 -90 74 0;
createNode animCurveTA -n "curve1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -89.999999999999986 55 -89.999999999999986
		 74 0;
createNode animCurveTA -n "curve1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "curve1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve2_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve2_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve2_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "curve2_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90 55 -90 74 0;
createNode animCurveTA -n "curve2_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -89.999999999999972 55 -89.999999999999972
		 74 0;
createNode animCurveTA -n "curve2_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "curve2_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve2_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve2_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve3_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve3_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve3_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve3_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "curve3_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90 55 -90 74 0;
createNode animCurveTA -n "curve3_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -89.999999999999972 55 -89.999999999999972
		 74 0;
createNode animCurveTA -n "curve3_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "curve3_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve3_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve3_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve4_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve4_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve4_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve4_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "curve4_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90 55 -90 74 0;
createNode animCurveTA -n "curve4_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -89.999999999999972 55 -89.999999999999972
		 74 0;
createNode animCurveTA -n "curve4_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "curve4_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve4_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve4_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve5_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve5_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve5_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve5_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "curve5_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90 55 -90 74 0;
createNode animCurveTA -n "curve5_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -89.999999999999972 55 -89.999999999999972
		 74 0;
createNode animCurveTA -n "curve5_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "curve5_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve5_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve5_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve6_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve6_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve6_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve6_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "curve6_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90 55 -90 74 0;
createNode animCurveTA -n "curve6_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -89.999999999999972 55 -89.999999999999972
		 74 0;
createNode animCurveTA -n "curve6_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "curve6_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve6_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve6_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve7_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve7_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve7_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve7_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "curve7_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90 55 -90 74 0;
createNode animCurveTA -n "curve7_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -89.999999999999972 55 -89.999999999999972
		 74 0;
createNode animCurveTA -n "curve7_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "curve7_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve7_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve7_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve8_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve8_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve8_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve8_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "curve8_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90 55 -90 74 0;
createNode animCurveTA -n "curve8_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -89.999999999999972 55 -89.999999999999972
		 74 0;
createNode animCurveTA -n "curve8_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "curve8_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve8_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve8_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve1_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve1_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 55 0 58.5 -0.00050023117449882193 60.5 -0.095350337048046185
		 74 0;
createNode animCurveTL -n "curve1_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 15 -3.6133171514631792 20 1.7774734118342961
		 55 1.7774734118342961 58.5 -1.6277467987724661 60.5 -4.0973039106885603 69 -3.6257263067149421
		 74 0;
createNode animCurveTL -n "curve1_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 55 0 58.5 -2.417115495090238 60.5 -1.1829313606198406
		 69 -0.71058756008488233 74 0;
createNode animCurveTA -n "curve1_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 15 19.813194287472587 20 0.5344162387927488
		 55 0.5344162387927488 58.5 8.7119498810191374 60.5 18.507922863104003 69 14.869751936974067
		 74 0;
createNode animCurveTA -n "curve1_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "curve1_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "curve1_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve1_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve1_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve1_visibility2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve1_translateX2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve1_translateY2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve1_translateZ2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "curve1_rotateY2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "curve1_scaleX2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve1_scaleY2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve1_scaleZ2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve1_visibility3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve1_translateX3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve1_translateY3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "curve1_translateZ3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "curve1_rotateX2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 -17.169542037609979 55 -17.169542037609979
		 58.5 0 63 12.480271095250947 74 0;
createNode animCurveTA -n "curve1_rotateY3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "curve1_rotateZ2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "curve1_scaleX3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve1_scaleY3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve1_scaleZ3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "curve1_visibility4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve1_translateX4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -2.772523873061723 15 -2.8442661580771667
		 55 -2.8442661580771667 58.5 0;
createNode animCurveTL -n "curve1_translateY4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -2.1040465831756574 15 -9.7404002124135012
		 55 -9.7404002124135012 58.5 0;
createNode animCurveTL -n "curve1_translateZ4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.4422891139984102 15 -0.80181805185796673
		 55 -0.80181805185796673 58.5 0;
createNode animCurveTA -n "curve1_rotateX3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 15 36.587359935229131 20 -16.068933319464335
		 55 -16.068933319464335 58.5 13.087938589669731 66 1.9847843252780584 74 0;
createNode animCurveTA -n "curve1_rotateY4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 15 33.593959061727972 20 -32.466634262375386
		 55 -32.466634262375386 58.5 39.698393058929739 66 41.450175518449086 74 0;
createNode animCurveTA -n "curve1_rotateZ3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 15 48.547439454359129 20 11.145066465113631
		 55 11.145066465113631 58.5 28.562153877196124 66 53.247789308444702 74 0;
createNode animCurveTU -n "curve1_scaleX4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.18346677133908371 55 0.18346677133908371;
createNode animCurveTU -n "curve1_scaleY4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.9716858786072204 55 1.9716858786072204;
createNode animCurveTU -n "curve1_scaleZ4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.19509701135725471 55 0.19509701135725471;
createNode animCurveTU -n "curve9_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve9_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -17.788369101857086 15 -17.788369101857089
		 55 -17.788369101857089 58.5 0;
createNode animCurveTL -n "curve9_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.8817841970012523e-16 15 8.8817841970012523e-16
		 55 8.8817841970012523e-16;
createNode animCurveTL -n "curve9_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.3322676295501878e-14 15 -1.5987211554602254e-14
		 55 -1.5987211554602254e-14;
createNode animCurveTA -n "curve9_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 4.6154937414451327 20 2.47427597574604
		 55 2.47427597574604 58.5 1.3678446142444831 74 0;
createNode animCurveTA -n "curve9_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 34.464752401549617 20 -18.738115180321412
		 55 -18.738115180321412 58.5 46.213090281693525 74 0;
createNode animCurveTA -n "curve9_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 1.5247407166476337 20 -0.06874788671676306
		 55 -0.06874788671676306 58.5 10.113808519625485 74 0;
createNode animCurveTU -n "curve9_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 15 1 55 1;
createNode animCurveTU -n "curve9_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 15 1 55 1;
createNode animCurveTU -n "curve9_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.0000000000000004 15 1.0000000000000002
		 55 1.0000000000000002;
createNode animCurveTU -n "curve11_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve11_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 2.565607810894571 15 2.4938655258791278
		 55 2.4938655258791278 58.5 0;
createNode animCurveTL -n "curve11_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -2.1040465831756601 15 -9.7404002124135047
		 55 -9.7404002124135047 58.5 0;
createNode animCurveTL -n "curve11_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.44228911399840809 15 -0.80181805185796495
		 55 -0.80181805185796495 58.5 0;
createNode animCurveTA -n "curve11_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 15 60.836620691069456 20 0 55 0 58.5 49.818728795979112
		 66 35.179638616101549 74 0;
createNode animCurveTA -n "curve11_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 15 -23.463685251946785 20 57.397833622974773
		 55 57.397833622974773 58.5 -43.608029841663814 66 -44.754929812654531 74 0;
createNode animCurveTA -n "curve11_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 15 -47.551876785688528 20 0 55 0 58.5 -52.090420675304919
		 66 -68.331649948956084 74 0;
createNode animCurveTU -n "curve11_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.18346677133908371 55 0.18346677133908371;
createNode animCurveTU -n "curve11_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.9716858786072204 55 1.9716858786072204;
createNode animCurveTU -n "curve11_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.19509701135725471 55 0.19509701135725471;
createNode animCurveTU -n "curve12_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "curve12_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 17.174937666606986 15 17.174937666606997
		 55 17.174937666606997 74 0;
createNode animCurveTL -n "curve12_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.8817841970012523e-16 15 8.8817841970012523e-16
		 55 8.8817841970012523e-16;
createNode animCurveTL -n "curve12_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.0658141036401504e-14 15 -3.9968028886505628e-15
		 55 -3.9968028886505628e-15;
createNode animCurveTA -n "curve12_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 4.3060682571698736 20 3.4647616395510337
		 55 3.4647616395510337 58.5 2.8770306459658217 74 0;
createNode animCurveTA -n "curve12_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 -36.416624589675791 20 1.1728569162827551
		 55 1.1728569162827551 58.5 -17.229739863784481 74 0;
createNode animCurveTA -n "curve12_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0.32557318460469803 20 2.9560070129953124
		 55 2.9560070129953124 58.5 3.2565360178140059 74 0;
createNode animCurveTU -n "curve12_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 15 1 55 1;
createNode animCurveTU -n "curve12_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 15 1 55 1;
createNode animCurveTU -n "curve12_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.0000000000000002 15 0.99999999999999989
		 55 0.99999999999999989;
createNode animCurveTU -n "anim_RightFootIK_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "anim_RightFootIK_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 -1.6669706784693581 55 -1.6669706784693581
		 58.5 0 74 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "anim_RightFootIK_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 2.7481330701592173 55 2.7481330701592173
		 58.5 0 74 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "anim_RightFootIK_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1.0033197961896054 15 1 20 -2.4651548449217726
		 55 -2.4651548449217726 58.5 1 74 1;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "anim_RightFootIK_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "anim_RightFootIK_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "anim_RightFootIK_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "anim_RightFootIK_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "anim_RightFootIK_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "anim_RightFootIK_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "anim_LeftFootIK_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "anim_LeftFootIK_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 -0.52364166141339297 55 -0.52364166141339297
		 58.5 0 74 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "anim_LeftFootIK_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 2.6203458039665719 55 2.6203458039665719
		 58.5 0 74 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "anim_LeftFootIK_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1.0033197961896054 15 1 20 -1.8704077699717123
		 55 -1.8704077699717123 58.5 1 74 1;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "anim_LeftFootIK_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "anim_LeftFootIK_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTA -n "anim_LeftFootIK_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTU -n "anim_LeftFootIK_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "anim_LeftFootIK_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "anim_LeftFootIK_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "anim_rightFoot01_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "anim_rightFoot01_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.0101799398314415 55 -2.0101799398314415
		 74 0;
createNode animCurveTL -n "anim_rightFoot01_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.8490922579903497e-05 55 -3.8490922579903497e-05
		 74 0;
createNode animCurveTL -n "anim_rightFoot01_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.5207535386529969e-07 20 -1.0033196441142516
		 55 -1.0033196441142516 74 0;
createNode animCurveTA -n "anim_rightFoot01_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 8.2694421718051417e-14 15 0 20 82.373356411076244
		 55 82.373356411076244 58.5 0;
createNode animCurveTA -n "anim_rightFoot01_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.2263882770244621e-14 55 -2.2263882770244621e-14;
createNode animCurveTA -n "anim_rightFoot01_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -3.1805546814635168e-14 55 -3.1805546814635168e-14;
createNode animCurveTU -n "anim_rightFoot01_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "anim_rightFoot01_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "anim_rightFoot01_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "anim_LeftFoot01_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "anim_LeftFoot01_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 55 0;
createNode animCurveTL -n "anim_LeftFoot01_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 8.8817841970012523e-16 55 8.8817841970012523e-16;
createNode animCurveTL -n "anim_LeftFoot01_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 20 -1.0033197961896054 55 -1.0033197961896054
		 58.5 0;
createNode animCurveTA -n "anim_LeftFoot01_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -8.4442339438513022e-15 15 0 20 50.962856220473562
		 55 50.962856220473562 58.5 0;
createNode animCurveTA -n "anim_LeftFoot01_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.8574475096122776e-14 55 -1.8574475096122776e-14;
createNode animCurveTA -n "anim_LeftFoot01_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.5902773407317571e-14 55 -1.5902773407317571e-14;
createNode animCurveTU -n "anim_LeftFoot01_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "anim_LeftFoot01_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
createNode animCurveTU -n "anim_LeftFoot01_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 55 1;
select -ne :time1;
	setAttr ".o" 86;
	setAttr ".unw" 86;
select -ne :renderPartition;
	setAttr -s 23 ".st";
select -ne :initialShadingGroup;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 19 ".s";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Constraints.di" "anim_global01.do";
connectAttr "anim_global01_visibility.o" "anim_global01.v";
connectAttr "anim_global01_translateX.o" "anim_global01.tx";
connectAttr "anim_global01_translateY.o" "anim_global01.ty";
connectAttr "anim_global01_translateZ.o" "anim_global01.tz";
connectAttr "anim_global01_rotateX.o" "anim_global01.rx";
connectAttr "anim_global01_rotateY.o" "anim_global01.ry";
connectAttr "anim_global01_rotateZ.o" "anim_global01.rz";
connectAttr "anim_global01_scaleX.o" "anim_global01.sx";
connectAttr "anim_global01_scaleY.o" "anim_global01.sy";
connectAttr "anim_global01_scaleZ.o" "anim_global01.sz";
connectAttr "pairBlend2.orx" "Root.rx";
connectAttr "pairBlend2.ory" "Root.ry";
connectAttr "pairBlend2.orz" "Root.rz";
connectAttr "pairBlend2.otx" "Root.tx";
connectAttr "pairBlend2.oty" "Root.ty";
connectAttr "pairBlend2.otz" "Root.tz";
connectAttr "Root.s" "Torso.is";
connectAttr "pairBlend1.orx" "Torso.rx";
connectAttr "pairBlend1.ory" "Torso.ry";
connectAttr "pairBlend1.orz" "Torso.rz";
connectAttr "Torso.s" "RightShoulder.is";
connectAttr "pairBlend4.orx" "RightShoulder.rx";
connectAttr "pairBlend4.ory" "RightShoulder.ry";
connectAttr "pairBlend4.orz" "RightShoulder.rz";
connectAttr "RightShoulder.s" "RightElbow.is";
connectAttr "pairBlend5.orx" "RightElbow.rx";
connectAttr "pairBlend5.ory" "RightElbow.ry";
connectAttr "pairBlend5.orz" "RightElbow.rz";
connectAttr "RightElbow.s" "|anim_global01|Root|Torso|RightShoulder|RightElbow|RightHand.is"
		;
connectAttr "BabyBotMesh.di" "|anim_global01|Root|Torso|RightShoulder|RightElbow|RightHand|RightHand.do"
		;
connectAttr "transformGeometry1.og" "RightHandShape.i";
connectAttr "BabyBotMesh.di" "RElbow.do";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCylinder17.do";
connectAttr "RightElbow.ro" "RightElbow_orientConstraint1.cro";
connectAttr "RightElbow.pim" "RightElbow_orientConstraint1.cpim";
connectAttr "RightElbow.is" "RightElbow_orientConstraint1.is";
connectAttr "RightElbow.jo" "RightElbow_orientConstraint1.cjo";
connectAttr "curve9.r" "RightElbow_orientConstraint1.tg[0].tr";
connectAttr "curve9.ro" "RightElbow_orientConstraint1.tg[0].tro";
connectAttr "curve9.pm" "RightElbow_orientConstraint1.tg[0].tpm";
connectAttr "RightElbow_orientConstraint1.w0" "RightElbow_orientConstraint1.tg[0].tw"
		;
connectAttr "BabyBotMesh.di" "BabyBotMon:pCylinder16.do";
connectAttr "RightShoulder.ro" "RightShoulder_orientConstraint1.cro";
connectAttr "RightShoulder.pim" "RightShoulder_orientConstraint1.cpim";
connectAttr "|anim_global01|curve1|BoxControls1:curve1|curve1.r" "RightShoulder_orientConstraint1.tg[0].tr"
		;
connectAttr "|anim_global01|curve1|BoxControls1:curve1|curve1.ro" "RightShoulder_orientConstraint1.tg[0].tro"
		;
connectAttr "|anim_global01|curve1|BoxControls1:curve1|curve1.pm" "RightShoulder_orientConstraint1.tg[0].tpm"
		;
connectAttr "RightShoulder_orientConstraint1.w0" "RightShoulder_orientConstraint1.tg[0].tw"
		;
connectAttr "Torso.s" "LeftShoulder.is";
connectAttr "pairBlend6.orx" "LeftShoulder.rx";
connectAttr "pairBlend6.ory" "LeftShoulder.ry";
connectAttr "pairBlend6.orz" "LeftShoulder.rz";
connectAttr "LeftShoulder.s" "LeftElbow.is";
connectAttr "LeftElbow_orientConstraint1.crx" "LeftElbow.rx";
connectAttr "LeftElbow_orientConstraint1.cry" "LeftElbow.ry";
connectAttr "LeftElbow_orientConstraint1.crz" "LeftElbow.rz";
connectAttr "LeftElbow.s" "LeftHand.is";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCube1.do";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCube17.do";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCylinder23.do";
connectAttr "LeftElbow.ro" "LeftElbow_orientConstraint1.cro";
connectAttr "LeftElbow.pim" "LeftElbow_orientConstraint1.cpim";
connectAttr "LeftElbow.is" "LeftElbow_orientConstraint1.is";
connectAttr "LeftElbow.jo" "LeftElbow_orientConstraint1.cjo";
connectAttr "curve12.r" "LeftElbow_orientConstraint1.tg[0].tr";
connectAttr "curve12.ro" "LeftElbow_orientConstraint1.tg[0].tro";
connectAttr "curve12.pm" "LeftElbow_orientConstraint1.tg[0].tpm";
connectAttr "LeftElbow_orientConstraint1.w0" "LeftElbow_orientConstraint1.tg[0].tw"
		;
connectAttr "BabyBotMesh.di" "BabyBotMon:pCylinder22.do";
connectAttr "LeftShoulder.ro" "LeftShoulder_orientConstraint1.cro";
connectAttr "LeftShoulder.pim" "LeftShoulder_orientConstraint1.cpim";
connectAttr "LeftShoulder.is" "LeftShoulder_orientConstraint1.is";
connectAttr "LeftShoulder.jo" "LeftShoulder_orientConstraint1.cjo";
connectAttr "curve11.r" "LeftShoulder_orientConstraint1.tg[0].tr";
connectAttr "curve11.ro" "LeftShoulder_orientConstraint1.tg[0].tro";
connectAttr "curve11.pm" "LeftShoulder_orientConstraint1.tg[0].tpm";
connectAttr "LeftShoulder_orientConstraint1.w0" "LeftShoulder_orientConstraint1.tg[0].tw"
		;
connectAttr "Torso.s" "Neck.is";
connectAttr "pairBlend3.orx" "Neck.rx";
connectAttr "pairBlend3.ory" "Neck.ry";
connectAttr "pairBlend3.orz" "Neck.rz";
connectAttr "pairBlend3.otx" "Neck.tx";
connectAttr "pairBlend3.oty" "Neck.ty";
connectAttr "pairBlend3.otz" "Neck.tz";
connectAttr "Neck.s" "|anim_global01|Root|Torso|Neck|Head.is";
connectAttr "BabyBotMesh.di" "BabyBotMon:polySurface25.do";
connectAttr "transformGeometry2.og" "BabyBotMon:polySurfaceShape34.i";
connectAttr "BabyBotMon:polyTweakUV2.uvtk[0]" "BabyBotMon:polySurfaceShape34.uvst[0].uvtw"
		;
connectAttr "BabyBotMesh.di" "BabyBotMon:polySurface26.do";
connectAttr "transformGeometry3.og" "BabyBotMon:polySurfaceShape35.i";
connectAttr "BabyBotMon:groupId49.id" "BabyBotMon:polySurfaceShape35.iog.og[1].gid"
		;
connectAttr "BabyBotMon:blinn1SG.mwc" "BabyBotMon:polySurfaceShape35.iog.og[1].gco"
		;
connectAttr "BabyBotMon:groupId51.id" "BabyBotMon:polySurfaceShape35.iog.og[2].gid"
		;
connectAttr "BabyBotMon:lambert3SG.mwc" "BabyBotMon:polySurfaceShape35.iog.og[2].gco"
		;
connectAttr "BabyBotMon:groupId50.id" "BabyBotMon:polySurfaceShape35.ciog.cog[0].cgid"
		;
connectAttr "BabyBotMon:groupParts38.og" "BabyBotMon:pCubeShape13.i";
connectAttr "BabyBotMon:groupId46.id" "BabyBotMon:pCubeShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "BabyBotMon:pCubeShape13.iog.og[0].gco";
connectAttr "BabyBotMon:groupId47.id" "BabyBotMon:pCubeShape13.ciog.cog[0].cgid"
		;
connectAttr "BabyBotMesh.di" "BabyBotMon:pCylinder18.do";
connectAttr "Neck.ro" "Neck_parentConstraint1.cro";
connectAttr "Neck.pim" "Neck_parentConstraint1.cpim";
connectAttr "Neck.rp" "Neck_parentConstraint1.crp";
connectAttr "Neck.rpt" "Neck_parentConstraint1.crt";
connectAttr "Neck.jo" "Neck_parentConstraint1.cjo";
connectAttr "BoxControls3:curve1.t" "Neck_parentConstraint1.tg[0].tt";
connectAttr "BoxControls3:curve1.rp" "Neck_parentConstraint1.tg[0].trp";
connectAttr "BoxControls3:curve1.rpt" "Neck_parentConstraint1.tg[0].trt";
connectAttr "BoxControls3:curve1.r" "Neck_parentConstraint1.tg[0].tr";
connectAttr "BoxControls3:curve1.ro" "Neck_parentConstraint1.tg[0].tro";
connectAttr "BoxControls3:curve1.s" "Neck_parentConstraint1.tg[0].ts";
connectAttr "BoxControls3:curve1.pm" "Neck_parentConstraint1.tg[0].tpm";
connectAttr "Neck_parentConstraint1.w0" "Neck_parentConstraint1.tg[0].tw";
connectAttr "BabyBotMesh.di" "TorsoGlowRing.do";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCube12.do";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCube11.do";
connectAttr "transformGeometry4.og" "BabyBotMon:pCubeShape11.i";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCube20.do";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCube21.do";
connectAttr "Torso.ro" "Torso_orientConstraint1.cro";
connectAttr "Torso.pim" "Torso_orientConstraint1.cpim";
connectAttr "Torso.is" "Torso_orientConstraint1.is";
connectAttr "Torso.jo" "Torso_orientConstraint1.cjo";
connectAttr "BoxControls1:curve1.r" "Torso_orientConstraint1.tg[0].tr";
connectAttr "BoxControls1:curve1.ro" "Torso_orientConstraint1.tg[0].tro";
connectAttr "BoxControls1:curve1.pm" "Torso_orientConstraint1.tg[0].tpm";
connectAttr "Torso_orientConstraint1.w0" "Torso_orientConstraint1.tg[0].tw";
connectAttr "Root.s" "RightLeg.is";
connectAttr "RightLeg.s" "RightKnee.is";
connectAttr "RightKnee.s" "RightAnkle.is";
connectAttr "RightAnkle.s" "RightFoot.is";
connectAttr "RightFoot_orientConstraint1.crx" "RightFoot.rx";
connectAttr "RightFoot_orientConstraint1.cry" "RightFoot.ry";
connectAttr "RightFoot_orientConstraint1.crz" "RightFoot.rz";
connectAttr "RightFoot.s" "RightToe.is";
connectAttr "BabyBotMesh.di" "RFoot.do";
connectAttr "transformGeometry5.og" "RFootShape.i";
connectAttr "BabyBotMesh.di" "LegoPiece1.do";
connectAttr "transformGeometry6.og" "LegoPieceShape1.i";
connectAttr "BabyBotMesh.di" "LegoPiece2.do";
connectAttr "RightFoot.ro" "RightFoot_orientConstraint1.cro";
connectAttr "RightFoot.pim" "RightFoot_orientConstraint1.cpim";
connectAttr "RightFoot.is" "RightFoot_orientConstraint1.is";
connectAttr "RightFoot.jo" "RightFoot_orientConstraint1.cjo";
connectAttr "anim_rightFoot01.r" "RightFoot_orientConstraint1.tg[0].tr";
connectAttr "anim_rightFoot01.ro" "RightFoot_orientConstraint1.tg[0].tro";
connectAttr "anim_rightFoot01.pm" "RightFoot_orientConstraint1.tg[0].tpm";
connectAttr "RightFoot_orientConstraint1.w0" "RightFoot_orientConstraint1.tg[0].tw"
		;
connectAttr "BabyBotMesh.di" "RKnee.do";
connectAttr "BabyBotMesh.di" "RShin.do";
connectAttr "transformGeometry7.og" "RShinShape.i";
connectAttr "RightAnkle.tx" "effector1.tx";
connectAttr "RightAnkle.ty" "effector1.ty";
connectAttr "RightAnkle.tz" "effector1.tz";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCylinder15.do";
connectAttr "Root.s" "LeftLeg.is";
connectAttr "LeftLeg.s" "LeftKnee.is";
connectAttr "LeftKnee.s" "LeftFoot.is";
connectAttr "LeftFoot.s" "LeftFoot1.is";
connectAttr "LeftFoot1_orientConstraint1.crx" "LeftFoot1.rx";
connectAttr "LeftFoot1_orientConstraint1.cry" "LeftFoot1.ry";
connectAttr "LeftFoot1_orientConstraint1.crz" "LeftFoot1.rz";
connectAttr "LeftFoot1.s" "LeftToe.is";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCube19.do";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCylinder19.do";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCylinder20.do";
connectAttr "LeftFoot1.ro" "LeftFoot1_orientConstraint1.cro";
connectAttr "LeftFoot1.pim" "LeftFoot1_orientConstraint1.cpim";
connectAttr "LeftFoot1.is" "LeftFoot1_orientConstraint1.is";
connectAttr "LeftFoot1.jo" "LeftFoot1_orientConstraint1.cjo";
connectAttr "anim_LeftFoot01.r" "LeftFoot1_orientConstraint1.tg[0].tr";
connectAttr "anim_LeftFoot01.ro" "LeftFoot1_orientConstraint1.tg[0].tro";
connectAttr "anim_LeftFoot01.pm" "LeftFoot1_orientConstraint1.tg[0].tpm";
connectAttr "LeftFoot1_orientConstraint1.w0" "LeftFoot1_orientConstraint1.tg[0].tw"
		;
connectAttr "BabyBotMesh.di" "BabyBotMon:pCube18.do";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCylinder1.do";
connectAttr "LeftFoot.tx" "effector2.tx";
connectAttr "LeftFoot.ty" "effector2.ty";
connectAttr "LeftFoot.tz" "effector2.tz";
connectAttr "BabyBotMesh.di" "BabyBotMon:pCylinder21.do";
connectAttr "Constraints.di" "|anim_global01|Root|curve1.do";
connectAttr "curve1_visibility.o" "|anim_global01|Root|curve1.v";
connectAttr "curve1_translateX.o" "|anim_global01|Root|curve1.tx";
connectAttr "curve1_translateY.o" "|anim_global01|Root|curve1.ty";
connectAttr "curve1_translateZ.o" "|anim_global01|Root|curve1.tz";
connectAttr "curve1_rotateX.o" "|anim_global01|Root|curve1.rx";
connectAttr "curve1_rotateY.o" "|anim_global01|Root|curve1.ry";
connectAttr "curve1_rotateZ.o" "|anim_global01|Root|curve1.rz";
connectAttr "curve1_scaleX.o" "|anim_global01|Root|curve1.sx";
connectAttr "curve1_scaleY.o" "|anim_global01|Root|curve1.sy";
connectAttr "curve1_scaleZ.o" "|anim_global01|Root|curve1.sz";
connectAttr "Root.ro" "Root_parentConstraint1.cro";
connectAttr "Root.pim" "Root_parentConstraint1.cpim";
connectAttr "Root.rp" "Root_parentConstraint1.crp";
connectAttr "Root.rpt" "Root_parentConstraint1.crt";
connectAttr "Root.jo" "Root_parentConstraint1.cjo";
connectAttr "|anim_global01|curve1.t" "Root_parentConstraint1.tg[0].tt";
connectAttr "|anim_global01|curve1.rp" "Root_parentConstraint1.tg[0].trp";
connectAttr "|anim_global01|curve1.rpt" "Root_parentConstraint1.tg[0].trt";
connectAttr "|anim_global01|curve1.r" "Root_parentConstraint1.tg[0].tr";
connectAttr "|anim_global01|curve1.ro" "Root_parentConstraint1.tg[0].tro";
connectAttr "|anim_global01|curve1.s" "Root_parentConstraint1.tg[0].ts";
connectAttr "|anim_global01|curve1.pm" "Root_parentConstraint1.tg[0].tpm";
connectAttr "Root_parentConstraint1.w0" "Root_parentConstraint1.tg[0].tw";
connectAttr "Constraints.di" "curve2.do";
connectAttr "curve2_visibility.o" "curve2.v";
connectAttr "curve2_translateX.o" "curve2.tx";
connectAttr "curve2_translateY.o" "curve2.ty";
connectAttr "curve2_translateZ.o" "curve2.tz";
connectAttr "curve2_rotateX.o" "curve2.rx";
connectAttr "curve2_rotateY.o" "curve2.ry";
connectAttr "curve2_rotateZ.o" "curve2.rz";
connectAttr "curve2_scaleX.o" "curve2.sx";
connectAttr "curve2_scaleY.o" "curve2.sy";
connectAttr "curve2_scaleZ.o" "curve2.sz";
connectAttr "Constraints.di" "curve3.do";
connectAttr "curve3_visibility.o" "curve3.v";
connectAttr "curve3_translateX.o" "curve3.tx";
connectAttr "curve3_translateY.o" "curve3.ty";
connectAttr "curve3_translateZ.o" "curve3.tz";
connectAttr "curve3_rotateX.o" "curve3.rx";
connectAttr "curve3_rotateY.o" "curve3.ry";
connectAttr "curve3_rotateZ.o" "curve3.rz";
connectAttr "curve3_scaleX.o" "curve3.sx";
connectAttr "curve3_scaleY.o" "curve3.sy";
connectAttr "curve3_scaleZ.o" "curve3.sz";
connectAttr "Constraints.di" "curve4.do";
connectAttr "curve4_visibility.o" "curve4.v";
connectAttr "curve4_translateX.o" "curve4.tx";
connectAttr "curve4_translateY.o" "curve4.ty";
connectAttr "curve4_translateZ.o" "curve4.tz";
connectAttr "curve4_rotateX.o" "curve4.rx";
connectAttr "curve4_rotateY.o" "curve4.ry";
connectAttr "curve4_rotateZ.o" "curve4.rz";
connectAttr "curve4_scaleX.o" "curve4.sx";
connectAttr "curve4_scaleY.o" "curve4.sy";
connectAttr "curve4_scaleZ.o" "curve4.sz";
connectAttr "Constraints.di" "curve5.do";
connectAttr "curve5_visibility.o" "curve5.v";
connectAttr "curve5_translateX.o" "curve5.tx";
connectAttr "curve5_translateY.o" "curve5.ty";
connectAttr "curve5_translateZ.o" "curve5.tz";
connectAttr "curve5_rotateX.o" "curve5.rx";
connectAttr "curve5_rotateY.o" "curve5.ry";
connectAttr "curve5_rotateZ.o" "curve5.rz";
connectAttr "curve5_scaleX.o" "curve5.sx";
connectAttr "curve5_scaleY.o" "curve5.sy";
connectAttr "curve5_scaleZ.o" "curve5.sz";
connectAttr "Constraints.di" "curve6.do";
connectAttr "curve6_visibility.o" "curve6.v";
connectAttr "curve6_translateX.o" "curve6.tx";
connectAttr "curve6_translateY.o" "curve6.ty";
connectAttr "curve6_translateZ.o" "curve6.tz";
connectAttr "curve6_rotateX.o" "curve6.rx";
connectAttr "curve6_rotateY.o" "curve6.ry";
connectAttr "curve6_rotateZ.o" "curve6.rz";
connectAttr "curve6_scaleX.o" "curve6.sx";
connectAttr "curve6_scaleY.o" "curve6.sy";
connectAttr "curve6_scaleZ.o" "curve6.sz";
connectAttr "Constraints.di" "curve7.do";
connectAttr "curve7_visibility.o" "curve7.v";
connectAttr "curve7_translateX.o" "curve7.tx";
connectAttr "curve7_translateY.o" "curve7.ty";
connectAttr "curve7_translateZ.o" "curve7.tz";
connectAttr "curve7_rotateX.o" "curve7.rx";
connectAttr "curve7_rotateY.o" "curve7.ry";
connectAttr "curve7_rotateZ.o" "curve7.rz";
connectAttr "curve7_scaleX.o" "curve7.sx";
connectAttr "curve7_scaleY.o" "curve7.sy";
connectAttr "curve7_scaleZ.o" "curve7.sz";
connectAttr "Constraints.di" "curve8.do";
connectAttr "curve8_visibility.o" "curve8.v";
connectAttr "curve8_translateX.o" "curve8.tx";
connectAttr "curve8_translateY.o" "curve8.ty";
connectAttr "curve8_translateZ.o" "curve8.tz";
connectAttr "curve8_rotateX.o" "curve8.rx";
connectAttr "curve8_rotateY.o" "curve8.ry";
connectAttr "curve8_rotateZ.o" "curve8.rz";
connectAttr "curve8_scaleX.o" "curve8.sx";
connectAttr "curve8_scaleY.o" "curve8.sy";
connectAttr "curve8_scaleZ.o" "curve8.sz";
connectAttr "BabyBotMesh.di" "Torso1.do";
connectAttr "BabyBotMon:groupId57.id" "Torso1Shape.iog.og[0].gid";
connectAttr "BabyBotMon:lambert8SG.mwc" "Torso1Shape.iog.og[0].gco";
connectAttr "RightLeg.msg" "RightLegIK.hsj";
connectAttr "effector1.hp" "RightLegIK.hee";
connectAttr "AnimationDummy:ikRPsolver.msg" "RightLegIK.hsv";
connectAttr "RightLegIK_pointConstraint1.ctx" "RightLegIK.tx";
connectAttr "RightLegIK_pointConstraint1.cty" "RightLegIK.ty";
connectAttr "RightLegIK_pointConstraint1.ctz" "RightLegIK.tz";
connectAttr "RightLegIK.pim" "RightLegIK_pointConstraint1.cpim";
connectAttr "RightLegIK.rp" "RightLegIK_pointConstraint1.crp";
connectAttr "RightLegIK.rpt" "RightLegIK_pointConstraint1.crt";
connectAttr "anim_RightFootIK.t" "RightLegIK_pointConstraint1.tg[0].tt";
connectAttr "anim_RightFootIK.rp" "RightLegIK_pointConstraint1.tg[0].trp";
connectAttr "anim_RightFootIK.rpt" "RightLegIK_pointConstraint1.tg[0].trt";
connectAttr "anim_RightFootIK.pm" "RightLegIK_pointConstraint1.tg[0].tpm";
connectAttr "RightLegIK_pointConstraint1.w0" "RightLegIK_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftLeg.msg" "LeftLegIK.hsj";
connectAttr "effector2.hp" "LeftLegIK.hee";
connectAttr "AnimationDummy:ikRPsolver.msg" "LeftLegIK.hsv";
connectAttr "LeftLegIK_pointConstraint1.ctx" "LeftLegIK.tx";
connectAttr "LeftLegIK_pointConstraint1.cty" "LeftLegIK.ty";
connectAttr "LeftLegIK_pointConstraint1.ctz" "LeftLegIK.tz";
connectAttr "LeftLegIK.pim" "LeftLegIK_pointConstraint1.cpim";
connectAttr "LeftLegIK.rp" "LeftLegIK_pointConstraint1.crp";
connectAttr "LeftLegIK.rpt" "LeftLegIK_pointConstraint1.crt";
connectAttr "anim_LeftFootIK.t" "LeftLegIK_pointConstraint1.tg[0].tt";
connectAttr "anim_LeftFootIK.rp" "LeftLegIK_pointConstraint1.tg[0].trp";
connectAttr "anim_LeftFootIK.rpt" "LeftLegIK_pointConstraint1.tg[0].trt";
connectAttr "anim_LeftFootIK.pm" "LeftLegIK_pointConstraint1.tg[0].tpm";
connectAttr "LeftLegIK_pointConstraint1.w0" "LeftLegIK_pointConstraint1.tg[0].tw"
		;
connectAttr "curve1_translateX1.o" "|anim_global01|curve1.tx";
connectAttr "curve1_translateY1.o" "|anim_global01|curve1.ty";
connectAttr "curve1_translateZ1.o" "|anim_global01|curve1.tz";
connectAttr "curve1_rotateX1.o" "|anim_global01|curve1.rx";
connectAttr "curve1_rotateY1.o" "|anim_global01|curve1.ry";
connectAttr "curve1_rotateZ1.o" "|anim_global01|curve1.rz";
connectAttr "curve1_scaleX1.o" "|anim_global01|curve1.sx";
connectAttr "curve1_scaleY1.o" "|anim_global01|curve1.sy";
connectAttr "curve1_scaleZ1.o" "|anim_global01|curve1.sz";
connectAttr "Constraints.di" "|anim_global01|curve1.do";
connectAttr "curve1_visibility1.o" "|anim_global01|curve1.v";
connectAttr "curve1_rotateY2.o" "BoxControls1:curve1.ry";
connectAttr "curve1_translateZ2.o" "BoxControls1:curve1.tz";
connectAttr "curve1_translateX2.o" "BoxControls1:curve1.tx";
connectAttr "curve1_translateY2.o" "BoxControls1:curve1.ty";
connectAttr "Constraints.di" "BoxControls1:curve1.do";
connectAttr "curve1_visibility2.o" "BoxControls1:curve1.v";
connectAttr "curve1_scaleX2.o" "BoxControls1:curve1.sx";
connectAttr "curve1_scaleY2.o" "BoxControls1:curve1.sy";
connectAttr "curve1_scaleZ2.o" "BoxControls1:curve1.sz";
connectAttr "curve1_translateX3.o" "BoxControls3:curve1.tx";
connectAttr "curve1_translateY3.o" "BoxControls3:curve1.ty";
connectAttr "curve1_translateZ3.o" "BoxControls3:curve1.tz";
connectAttr "curve1_rotateX2.o" "BoxControls3:curve1.rx";
connectAttr "curve1_rotateY3.o" "BoxControls3:curve1.ry";
connectAttr "curve1_rotateZ2.o" "BoxControls3:curve1.rz";
connectAttr "curve1_scaleX3.o" "BoxControls3:curve1.sx";
connectAttr "curve1_scaleY3.o" "BoxControls3:curve1.sy";
connectAttr "curve1_scaleZ3.o" "BoxControls3:curve1.sz";
connectAttr "curve1_visibility3.o" "BoxControls3:curve1.v";
connectAttr "curve11_rotateX.o" "curve11.rx";
connectAttr "curve11_rotateY.o" "curve11.ry";
connectAttr "curve11_rotateZ.o" "curve11.rz";
connectAttr "curve11_translateX.o" "curve11.tx";
connectAttr "curve11_translateY.o" "curve11.ty";
connectAttr "curve11_translateZ.o" "curve11.tz";
connectAttr "curve11_scaleX.o" "curve11.sx";
connectAttr "curve11_scaleY.o" "curve11.sy";
connectAttr "curve11_scaleZ.o" "curve11.sz";
connectAttr "curve11_visibility.o" "curve11.v";
connectAttr "curve12_rotateX.o" "curve12.rx";
connectAttr "curve12_rotateY.o" "curve12.ry";
connectAttr "curve12_rotateZ.o" "curve12.rz";
connectAttr "curve12_translateX.o" "curve12.tx";
connectAttr "curve12_translateY.o" "curve12.ty";
connectAttr "curve12_translateZ.o" "curve12.tz";
connectAttr "curve12_scaleX.o" "curve12.sx";
connectAttr "curve12_scaleY.o" "curve12.sy";
connectAttr "curve12_scaleZ.o" "curve12.sz";
connectAttr "curve12_visibility.o" "curve12.v";
connectAttr "curve1_rotateX3.o" "|anim_global01|curve1|BoxControls1:curve1|curve1.rx"
		;
connectAttr "curve1_rotateY4.o" "|anim_global01|curve1|BoxControls1:curve1|curve1.ry"
		;
connectAttr "curve1_rotateZ3.o" "|anim_global01|curve1|BoxControls1:curve1|curve1.rz"
		;
connectAttr "curve1_translateX4.o" "|anim_global01|curve1|BoxControls1:curve1|curve1.tx"
		;
connectAttr "curve1_translateY4.o" "|anim_global01|curve1|BoxControls1:curve1|curve1.ty"
		;
connectAttr "curve1_translateZ4.o" "|anim_global01|curve1|BoxControls1:curve1|curve1.tz"
		;
connectAttr "curve1_scaleX4.o" "|anim_global01|curve1|BoxControls1:curve1|curve1.sx"
		;
connectAttr "curve1_scaleY4.o" "|anim_global01|curve1|BoxControls1:curve1|curve1.sy"
		;
connectAttr "curve1_scaleZ4.o" "|anim_global01|curve1|BoxControls1:curve1|curve1.sz"
		;
connectAttr "curve1_visibility4.o" "|anim_global01|curve1|BoxControls1:curve1|curve1.v"
		;
connectAttr "curve9_rotateX.o" "curve9.rx";
connectAttr "curve9_rotateY.o" "curve9.ry";
connectAttr "curve9_rotateZ.o" "curve9.rz";
connectAttr "curve9_translateX.o" "curve9.tx";
connectAttr "curve9_translateY.o" "curve9.ty";
connectAttr "curve9_translateZ.o" "curve9.tz";
connectAttr "curve9_scaleX.o" "curve9.sx";
connectAttr "curve9_scaleY.o" "curve9.sy";
connectAttr "curve9_scaleZ.o" "curve9.sz";
connectAttr "curve9_visibility.o" "curve9.v";
connectAttr "anim_RightFootIK_translateX.o" "anim_RightFootIK.tx";
connectAttr "anim_RightFootIK_translateY.o" "anim_RightFootIK.ty";
connectAttr "anim_RightFootIK_translateZ.o" "anim_RightFootIK.tz";
connectAttr "Constraints.di" "anim_RightFootIK.do";
connectAttr "anim_RightFootIK_visibility.o" "anim_RightFootIK.v";
connectAttr "anim_RightFootIK_rotateX.o" "anim_RightFootIK.rx";
connectAttr "anim_RightFootIK_rotateY.o" "anim_RightFootIK.ry";
connectAttr "anim_RightFootIK_rotateZ.o" "anim_RightFootIK.rz";
connectAttr "anim_RightFootIK_scaleX.o" "anim_RightFootIK.sx";
connectAttr "anim_RightFootIK_scaleY.o" "anim_RightFootIK.sy";
connectAttr "anim_RightFootIK_scaleZ.o" "anim_RightFootIK.sz";
connectAttr "anim_rightFoot01_rotateX.o" "anim_rightFoot01.rx";
connectAttr "anim_rightFoot01_rotateY.o" "anim_rightFoot01.ry";
connectAttr "anim_rightFoot01_rotateZ.o" "anim_rightFoot01.rz";
connectAttr "Constraints.di" "anim_rightFoot01.do";
connectAttr "anim_rightFoot01_visibility.o" "anim_rightFoot01.v";
connectAttr "anim_rightFoot01_translateX.o" "anim_rightFoot01.tx";
connectAttr "anim_rightFoot01_translateY.o" "anim_rightFoot01.ty";
connectAttr "anim_rightFoot01_translateZ.o" "anim_rightFoot01.tz";
connectAttr "anim_rightFoot01_scaleX.o" "anim_rightFoot01.sx";
connectAttr "anim_rightFoot01_scaleY.o" "anim_rightFoot01.sy";
connectAttr "anim_rightFoot01_scaleZ.o" "anim_rightFoot01.sz";
connectAttr "anim_LeftFootIK_translateX.o" "anim_LeftFootIK.tx";
connectAttr "anim_LeftFootIK_translateY.o" "anim_LeftFootIK.ty";
connectAttr "anim_LeftFootIK_translateZ.o" "anim_LeftFootIK.tz";
connectAttr "Constraints.di" "anim_LeftFootIK.do";
connectAttr "anim_LeftFootIK_visibility.o" "anim_LeftFootIK.v";
connectAttr "anim_LeftFootIK_rotateX.o" "anim_LeftFootIK.rx";
connectAttr "anim_LeftFootIK_rotateY.o" "anim_LeftFootIK.ry";
connectAttr "anim_LeftFootIK_rotateZ.o" "anim_LeftFootIK.rz";
connectAttr "anim_LeftFootIK_scaleX.o" "anim_LeftFootIK.sx";
connectAttr "anim_LeftFootIK_scaleY.o" "anim_LeftFootIK.sy";
connectAttr "anim_LeftFootIK_scaleZ.o" "anim_LeftFootIK.sz";
connectAttr "anim_LeftFoot01_rotateX.o" "anim_LeftFoot01.rx";
connectAttr "anim_LeftFoot01_rotateY.o" "anim_LeftFoot01.ry";
connectAttr "anim_LeftFoot01_rotateZ.o" "anim_LeftFoot01.rz";
connectAttr "Constraints.di" "anim_LeftFoot01.do";
connectAttr "anim_LeftFoot01_visibility.o" "anim_LeftFoot01.v";
connectAttr "anim_LeftFoot01_translateX.o" "anim_LeftFoot01.tx";
connectAttr "anim_LeftFoot01_translateY.o" "anim_LeftFoot01.ty";
connectAttr "anim_LeftFoot01_translateZ.o" "anim_LeftFoot01.tz";
connectAttr "anim_LeftFoot01_scaleX.o" "anim_LeftFoot01.sx";
connectAttr "anim_LeftFoot01_scaleY.o" "anim_LeftFoot01.sy";
connectAttr "anim_LeftFoot01_scaleZ.o" "anim_LeftFoot01.sz";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miContourPreset.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Draft.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":DraftMotionBlur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":DraftRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Preview.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewMotionblur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewCaustics.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewGlobalIllum.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewFinalGather.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Production.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionMotionblur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionFineTrace.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionRapidFur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionRapidHair.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:pasted__lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:lambert9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:irisPuppetSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:AdvancedSkeleton_irisPuppetSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "BabyBotMon:AdvancedSkeleton_irisPuppetSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "irisPuppetSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "AnimationDummy:goonSkinSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "AnimationDummy:goonEyeSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "AnimationDummy:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "AnimationDummy:goonTeethSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "AnimationDummy:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:pasted__lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:irisPuppetSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:AdvancedSkeleton_irisPuppetSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "BabyBotMon:AdvancedSkeleton_irisPuppetSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "irisPuppetSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "AnimationDummy:goonSkinSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "AnimationDummy:goonEyeSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "AnimationDummy:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "AnimationDummy:goonTeethSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "AnimationDummy:phong1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "BabyBotMon:TVHead.oc" "BabyBotMon:blinn1SG.ss";
connectAttr "BabyBotMon:polySurfaceShape35.iog.og[1]" "BabyBotMon:blinn1SG.dsm" 
		-na;
connectAttr "BabyBotMon:polySurfaceShape35.ciog.cog[0]" "BabyBotMon:blinn1SG.dsm"
		 -na;
connectAttr "BabyBotMon:groupId49.msg" "BabyBotMon:blinn1SG.gn" -na;
connectAttr "BabyBotMon:groupId50.msg" "BabyBotMon:blinn1SG.gn" -na;
connectAttr "BabyBotMon:blinn1SG.msg" "BabyBotMon:materialInfo1.sg";
connectAttr "BabyBotMon:TVHead.msg" "BabyBotMon:materialInfo1.m";
connectAttr "BabyBotMon:Screen.oc" "BabyBotMon:lambert2SG.ss";
connectAttr "BabyBotMon:lambert2SG.msg" "BabyBotMon:materialInfo2.sg";
connectAttr "BabyBotMon:Screen.msg" "BabyBotMon:materialInfo2.m";
connectAttr "BabyBotMon:BackOfTV.oc" "BabyBotMon:lambert3SG.ss";
connectAttr "BabyBotMon:polySurfaceShape35.iog.og[2]" "BabyBotMon:lambert3SG.dsm"
		 -na;
connectAttr "BabyBotMon:lambert3SG.msg" "BabyBotMon:materialInfo3.sg";
connectAttr "BabyBotMon:BackOfTV.msg" "BabyBotMon:materialInfo3.m";
connectAttr "BabyBotMon:Limbs.oc" "BabyBotMon:blinn2SG.ss";
connectAttr "BabyBotMon:blinn2SG.msg" "BabyBotMon:materialInfo4.sg";
connectAttr "BabyBotMon:Limbs.msg" "BabyBotMon:materialInfo4.m";
connectAttr "BabyBotMon:lambert4.oc" "BabyBotMon:lambert4SG.ss";
connectAttr "BabyBotMon:lambert4SG.msg" "BabyBotMon:materialInfo5.sg";
connectAttr "BabyBotMon:lambert4.msg" "BabyBotMon:materialInfo5.m";
connectAttr "BabyBotMon:DarkerShade.oc" "BabyBotMon:lambert5SG.ss";
connectAttr "BabyBotMon:lambert5SG.msg" "BabyBotMon:materialInfo6.sg";
connectAttr "BabyBotMon:DarkerShade.msg" "BabyBotMon:materialInfo6.m";
connectAttr "BabyBotMon:file1.oc" "BabyBotMon:ActualScreen.c";
connectAttr "BabyBotMon:ActualScreen.oc" "BabyBotMon:lambert6SG.ss";
connectAttr "BabyBotMon:polySurfaceShape34.iog" "BabyBotMon:lambert6SG.dsm" -na;
connectAttr "BabyBotMon:lambert6SG.msg" "BabyBotMon:materialInfo7.sg";
connectAttr "BabyBotMon:ActualScreen.msg" "BabyBotMon:materialInfo7.m";
connectAttr "BabyBotMon:file1.msg" "BabyBotMon:materialInfo7.t" -na;
connectAttr "BabyBotMon:place2dTexture1.c" "BabyBotMon:file1.c";
connectAttr "BabyBotMon:place2dTexture1.tf" "BabyBotMon:file1.tf";
connectAttr "BabyBotMon:place2dTexture1.rf" "BabyBotMon:file1.rf";
connectAttr "BabyBotMon:place2dTexture1.mu" "BabyBotMon:file1.mu";
connectAttr "BabyBotMon:place2dTexture1.mv" "BabyBotMon:file1.mv";
connectAttr "BabyBotMon:place2dTexture1.s" "BabyBotMon:file1.s";
connectAttr "BabyBotMon:place2dTexture1.wu" "BabyBotMon:file1.wu";
connectAttr "BabyBotMon:place2dTexture1.wv" "BabyBotMon:file1.wv";
connectAttr "BabyBotMon:place2dTexture1.re" "BabyBotMon:file1.re";
connectAttr "BabyBotMon:place2dTexture1.of" "BabyBotMon:file1.of";
connectAttr "BabyBotMon:place2dTexture1.r" "BabyBotMon:file1.ro";
connectAttr "BabyBotMon:place2dTexture1.n" "BabyBotMon:file1.n";
connectAttr "BabyBotMon:place2dTexture1.vt1" "BabyBotMon:file1.vt1";
connectAttr "BabyBotMon:place2dTexture1.vt2" "BabyBotMon:file1.vt2";
connectAttr "BabyBotMon:place2dTexture1.vt3" "BabyBotMon:file1.vt3";
connectAttr "BabyBotMon:place2dTexture1.vc1" "BabyBotMon:file1.vc1";
connectAttr "BabyBotMon:place2dTexture1.o" "BabyBotMon:file1.uv";
connectAttr "BabyBotMon:place2dTexture1.ofs" "BabyBotMon:file1.fs";
connectAttr "BabyBotMon:ColorLED.oc" "BabyBotMon:lambert7SG.ss";
connectAttr "BabyBotMon:pCubeShape1.iog" "BabyBotMon:lambert7SG.dsm" -na;
connectAttr "RightHandShape.iog" "BabyBotMon:lambert7SG.dsm" -na;
connectAttr "LegoPieceShape1.iog" "BabyBotMon:lambert7SG.dsm" -na;
connectAttr "LegoPieceShape2.iog" "BabyBotMon:lambert7SG.dsm" -na;
connectAttr "BabyBotMon:pCylinderShape20.iog" "BabyBotMon:lambert7SG.dsm" -na;
connectAttr "BabyBotMon:pCylinderShape19.iog" "BabyBotMon:lambert7SG.dsm" -na;
connectAttr "TorsoGlowRingShape.iog" "BabyBotMon:lambert7SG.dsm" -na;
connectAttr "BabyBotMon:lambert7SG.msg" "BabyBotMon:materialInfo8.sg";
connectAttr "BabyBotMon:ColorLED.msg" "BabyBotMon:materialInfo8.m";
connectAttr "BabyBotMon:DoorCasing.oc" "BabyBotMon:blinn3SG.ss";
connectAttr "BabyBotMon:blinn3SG.msg" "BabyBotMon:materialInfo9.sg";
connectAttr "BabyBotMon:DoorCasing.msg" "BabyBotMon:materialInfo9.m";
connectAttr "BabyBotMon:NewBlack.oc" "BabyBotMon:lambert8SG.ss";
connectAttr "RFootShape.iog" "BabyBotMon:lambert8SG.dsm" -na;
connectAttr "BabyBotMon:pCubeShape19.iog" "BabyBotMon:lambert8SG.dsm" -na;
connectAttr "BabyBotMon:pCubeShape18.iog" "BabyBotMon:lambert8SG.dsm" -na;
connectAttr "RKneeShape.iog" "BabyBotMon:lambert8SG.dsm" -na;
connectAttr "BabyBotMon:pCubeShape21.iog" "BabyBotMon:lambert8SG.dsm" -na;
connectAttr "BabyBotMon:pCubeShape12.iog" "BabyBotMon:lambert8SG.dsm" -na;
connectAttr "BabyBotMon:pCubeShape17.iog" "BabyBotMon:lambert8SG.dsm" -na;
connectAttr "BabyBotMon:pCubeShape20.iog" "BabyBotMon:lambert8SG.dsm" -na;
connectAttr "BabyBotMon:pCubeShape11.iog" "BabyBotMon:lambert8SG.dsm" -na;
connectAttr "RElbowShape.iog" "BabyBotMon:lambert8SG.dsm" -na;
connectAttr "Torso1Shape.iog.og[0]" "BabyBotMon:lambert8SG.dsm" -na;
connectAttr "BabyBotMon:groupId57.msg" "BabyBotMon:lambert8SG.gn" -na;
connectAttr "BabyBotMon:lambert8SG.msg" "BabyBotMon:materialInfo10.sg";
connectAttr "BabyBotMon:NewBlack.msg" "BabyBotMon:materialInfo10.m";
connectAttr "BabyBotMon:pasted__lambert8SG.msg" "BabyBotMon:pasted__materialInfo10.sg"
		;
connectAttr "BabyBotMon:pasted__NewBlack.msg" "BabyBotMon:pasted__materialInfo10.m"
		;
connectAttr "BabyBotMon:pasted__NewBlack.oc" "BabyBotMon:pasted__lambert8SG.ss";
connectAttr "BabyBotMon:groupId51.msg" "BabyBotMon:pasted__lambert8SG.gn" -na;
connectAttr "BabyBotMon:polyCube8.out" "BabyBotMon:polySmoothFace15.ip";
connectAttr "BabyBotMon:polySmoothFace15.out" "BabyBotMon:deleteComponent8.ig";
connectAttr "BabyBotMon:polyTweak29.out" "BabyBotMon:polyCut1.ip";
connectAttr "BabyBotMon:pCubeShape13.wm" "BabyBotMon:polyCut1.mp";
connectAttr "BabyBotMon:polyCube9.out" "BabyBotMon:polyTweak29.ip";
connectAttr "BabyBotMon:polyCut1.out" "BabyBotMon:polyExtrudeFace17.ip";
connectAttr "BabyBotMon:pCubeShape13.wm" "BabyBotMon:polyExtrudeFace17.mp";
connectAttr "BabyBotMon:lambert9.oc" "BabyBotMon:lambert9SG.ss";
connectAttr "BabyBotMon:lambert9SG.msg" "BabyBotMon:materialInfo11.sg";
connectAttr "BabyBotMon:lambert9.msg" "BabyBotMon:materialInfo11.m";
connectAttr "BabyBotMon:polyTweak30.out" "BabyBotMon:polyExtrudeFace18.ip";
connectAttr "BabyBotMon:pCubeShape13.wm" "BabyBotMon:polyExtrudeFace18.mp";
connectAttr "BabyBotMon:polyExtrudeFace17.out" "BabyBotMon:polyTweak30.ip";
connectAttr "BabyBotMon:polyTweak31.out" "BabyBotMon:polyExtrudeFace19.ip";
connectAttr "BabyBotMon:pCubeShape13.wm" "BabyBotMon:polyExtrudeFace19.mp";
connectAttr "BabyBotMon:polyExtrudeFace18.out" "BabyBotMon:polyTweak31.ip";
connectAttr "BabyBotMon:polyCube10.out" "BabyBotMon:polySmoothFace16.ip";
connectAttr "BabyBotMon:polySmoothFace16.out" "BabyBotMon:polyNormalPerVertex1.ip"
		;
connectAttr "BabyBotMon:polyTweak33.out" "BabyBotMon:polyChipOff9.ip";
connectAttr "BabyBotMon:pCubeShape13.wm" "BabyBotMon:polyChipOff9.mp";
connectAttr "BabyBotMon:polyExtrudeFace19.out" "BabyBotMon:polyTweak33.ip";
connectAttr "BabyBotMon:pCubeShape13.o" "BabyBotMon:polySeparate9.ip";
connectAttr "BabyBotMon:polyChipOff9.out" "BabyBotMon:groupParts38.ig";
connectAttr "BabyBotMon:groupId46.id" "BabyBotMon:groupParts38.gi";
connectAttr "BabyBotMon:polySeparate9.out[1]" "BabyBotMon:groupParts40.ig";
connectAttr "BabyBotMon:groupId49.id" "BabyBotMon:groupParts40.gi";
connectAttr "BabyBotMon:groupParts40.og" "BabyBotMon:groupParts41.ig";
connectAttr "BabyBotMon:groupId51.id" "BabyBotMon:groupParts41.gi";
connectAttr "BabyBotMon:polySeparate9.out[0]" "BabyBotMon:polyPlanarProj3.ip";
connectAttr "BabyBotMon:polySurfaceShape34.wm" "BabyBotMon:polyPlanarProj3.mp";
connectAttr "BabyBotMon:polyPlanarProj3.out" "BabyBotMon:polyPlanarProj4.ip";
connectAttr "BabyBotMon:polySurfaceShape34.wm" "BabyBotMon:polyPlanarProj4.mp";
connectAttr "BabyBotMon:polyPlanarProj4.out" "BabyBotMon:polyTweakUV2.ip";
connectAttr "BabyBotMon:irisPuppetSG.msg" "BabyBotMon:AdvancedSkeleton_materialInfo3.sg"
		;
connectAttr "BabyBotMon:AdvancedSkeleton_irisPuppetSG.msg" "BabyBotMon:AdvancedSkeleton_materialInfo4.sg"
		;
connectAttr "BabyBotMon:AllSet.msg" "BabyBotMon:Sets.dnsm" -na;
connectAttr "BabyBotMon:AdvancedSkeleton_irisPuppetSG1.msg" "BabyBotMon:AdvancedSkeleton_materialInfo5.sg"
		;
connectAttr "irisPuppetSG.msg" "materialInfo3.sg";
connectAttr "AllSet.msg" "Sets.dnsm" -na;
connectAttr "BabyBotMon:polyNormalPerVertex1.out" "transformGeometry1.ig";
connectAttr "BabyBotMon:polyTweakUV2.out" "transformGeometry2.ig";
connectAttr "BabyBotMon:groupParts41.og" "transformGeometry3.ig";
connectAttr "BabyBotMon:deleteComponent8.og" "transformGeometry4.ig";
connectAttr "BabyBotMon:polyCube6.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "transformGeometry5.ig";
connectAttr "BabyBotMon:polyCylinder2.out" "transformGeometry6.ig";
connectAttr "BabyBotMon:polyCylinder1.out" "transformGeometry7.ig";
connectAttr "AnimationDummy:goonSkin.oc" "AnimationDummy:goonSkinSG.ss";
connectAttr "AnimationDummy:goonSkinSG.msg" "AnimationDummy:materialInfo1.sg";
connectAttr "AnimationDummy:goonSkin.msg" "AnimationDummy:materialInfo1.m";
connectAttr "AnimationDummy:goonEye.oc" "AnimationDummy:goonEyeSG.ss";
connectAttr "AnimationDummy:goonEyeSG.msg" "AnimationDummy:materialInfo2.sg";
connectAttr "AnimationDummy:goonEye.msg" "AnimationDummy:materialInfo2.m";
connectAttr "AnimationDummy:goonPupils.oc" "AnimationDummy:surfaceShader1SG.ss";
connectAttr "AnimationDummy:surfaceShader1SG.msg" "AnimationDummy:materialInfo3.sg"
		;
connectAttr "AnimationDummy:goonPupils.msg" "AnimationDummy:materialInfo3.m";
connectAttr "AnimationDummy:goonTeeth.oc" "AnimationDummy:goonTeethSG.ss";
connectAttr "AnimationDummy:goonTeethSG.msg" "AnimationDummy:materialInfo4.sg";
connectAttr "AnimationDummy:goonTeeth.msg" "AnimationDummy:materialInfo4.m";
connectAttr "AnimationDummy:goonTongue.oc" "AnimationDummy:phong1SG.ss";
connectAttr "AnimationDummy:phong1SG.msg" "AnimationDummy:materialInfo5.sg";
connectAttr "AnimationDummy:goonTongue.msg" "AnimationDummy:materialInfo5.m";
connectAttr "Torso.blendOrient1" "pairBlend1.w";
connectAttr "Torso.ro" "pairBlend1.ro";
connectAttr "Torso_orientConstraint1.crx" "pairBlend1.irx2";
connectAttr "Torso_orientConstraint1.cry" "pairBlend1.iry2";
connectAttr "Torso_orientConstraint1.crz" "pairBlend1.irz2";
connectAttr "Root.blendParent1" "pairBlend2.w";
connectAttr "Root.ro" "pairBlend2.ro";
connectAttr "Root_parentConstraint1.ctx" "pairBlend2.itx2";
connectAttr "Root_parentConstraint1.cty" "pairBlend2.ity2";
connectAttr "Root_parentConstraint1.ctz" "pairBlend2.itz2";
connectAttr "Root_parentConstraint1.crx" "pairBlend2.irx2";
connectAttr "Root_parentConstraint1.cry" "pairBlend2.iry2";
connectAttr "Root_parentConstraint1.crz" "pairBlend2.irz2";
connectAttr "layerManager.dli[5]" "BabyBotMesh.id";
connectAttr "layerManager.dli[6]" "Constraints.id";
connectAttr "Neck.blendParent1" "pairBlend3.w";
connectAttr "Neck.ro" "pairBlend3.ro";
connectAttr "Neck_parentConstraint1.ctx" "pairBlend3.itx2";
connectAttr "Neck_parentConstraint1.cty" "pairBlend3.ity2";
connectAttr "Neck_parentConstraint1.ctz" "pairBlend3.itz2";
connectAttr "Neck_parentConstraint1.crx" "pairBlend3.irx2";
connectAttr "Neck_parentConstraint1.cry" "pairBlend3.iry2";
connectAttr "Neck_parentConstraint1.crz" "pairBlend3.irz2";
connectAttr "RightShoulder.blendOrient1" "pairBlend4.w";
connectAttr "RightShoulder.ro" "pairBlend4.ro";
connectAttr "RightShoulder_orientConstraint1.crx" "pairBlend4.irx2";
connectAttr "RightShoulder_orientConstraint1.cry" "pairBlend4.iry2";
connectAttr "RightShoulder_orientConstraint1.crz" "pairBlend4.irz2";
connectAttr "RightElbow.blendOrient1" "pairBlend5.w";
connectAttr "RightElbow.ro" "pairBlend5.ro";
connectAttr "RightElbow_orientConstraint1.crx" "pairBlend5.irx2";
connectAttr "RightElbow_orientConstraint1.cry" "pairBlend5.iry2";
connectAttr "RightElbow_orientConstraint1.crz" "pairBlend5.irz2";
connectAttr "LeftShoulder.blendOrient1" "pairBlend6.w";
connectAttr "LeftShoulder.ro" "pairBlend6.ro";
connectAttr "LeftShoulder_orientConstraint1.crx" "pairBlend6.irx2";
connectAttr "LeftShoulder_orientConstraint1.cry" "pairBlend6.iry2";
connectAttr "LeftShoulder_orientConstraint1.crz" "pairBlend6.irz2";
connectAttr "BabyBotMon:blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "BabyBotMon:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "BabyBotMon:lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "BabyBotMon:blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "BabyBotMon:lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "BabyBotMon:lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "BabyBotMon:lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "BabyBotMon:lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "BabyBotMon:blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "BabyBotMon:lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "BabyBotMon:pasted__lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "BabyBotMon:lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "BabyBotMon:irisPuppetSG.pa" ":renderPartition.st" -na;
connectAttr "BabyBotMon:AdvancedSkeleton_irisPuppetSG.pa" ":renderPartition.st" 
		-na;
connectAttr "BabyBotMon:AdvancedSkeleton_irisPuppetSG1.pa" ":renderPartition.st"
		 -na;
connectAttr "irisPuppetSG.pa" ":renderPartition.st" -na;
connectAttr "AnimationDummy:goonSkinSG.pa" ":renderPartition.st" -na;
connectAttr "AnimationDummy:goonEyeSG.pa" ":renderPartition.st" -na;
connectAttr "AnimationDummy:surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "AnimationDummy:goonTeethSG.pa" ":renderPartition.st" -na;
connectAttr "AnimationDummy:phong1SG.pa" ":renderPartition.st" -na;
connectAttr "RShinShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BabyBotMon:pCylinderShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BabyBotMon:pCylinderShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BabyBotMon:pCylinderShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BabyBotMon:pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BabyBotMon:pCylinderShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BabyBotMon:pCylinderShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BabyBotMon:pCylinderShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BabyBotMon:pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "BabyBotMon:pCubeShape13.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "BabyBotMon:pCylinderShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BabyBotMon:groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "BabyBotMon:groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "BabyBotMon:TVHead.msg" ":defaultShaderList1.s" -na;
connectAttr "BabyBotMon:Screen.msg" ":defaultShaderList1.s" -na;
connectAttr "BabyBotMon:BackOfTV.msg" ":defaultShaderList1.s" -na;
connectAttr "BabyBotMon:Limbs.msg" ":defaultShaderList1.s" -na;
connectAttr "BabyBotMon:lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "BabyBotMon:DarkerShade.msg" ":defaultShaderList1.s" -na;
connectAttr "BabyBotMon:ActualScreen.msg" ":defaultShaderList1.s" -na;
connectAttr "BabyBotMon:ColorLED.msg" ":defaultShaderList1.s" -na;
connectAttr "BabyBotMon:DoorCasing.msg" ":defaultShaderList1.s" -na;
connectAttr "BabyBotMon:NewBlack.msg" ":defaultShaderList1.s" -na;
connectAttr "BabyBotMon:pasted__NewBlack.msg" ":defaultShaderList1.s" -na;
connectAttr "BabyBotMon:lambert9.msg" ":defaultShaderList1.s" -na;
connectAttr "AnimationDummy:goonSkin.msg" ":defaultShaderList1.s" -na;
connectAttr "AnimationDummy:goonEye.msg" ":defaultShaderList1.s" -na;
connectAttr "AnimationDummy:goonPupils.msg" ":defaultShaderList1.s" -na;
connectAttr "AnimationDummy:goonTeeth.msg" ":defaultShaderList1.s" -na;
connectAttr "AnimationDummy:goonTongue.msg" ":defaultShaderList1.s" -na;
connectAttr "BabyBotMon:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "BabyBotMon:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "AnimationDummy:ikRPsolver.msg" ":ikSystem.sol" -na;
// End of BabyBotLeap.ma
