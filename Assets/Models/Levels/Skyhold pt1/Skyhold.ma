//Maya ASCII 2014 scene
//Name: Skyhold.ma
//Last modified: Fri, Sep 12, 2014 07:21:25 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" -nodeType "ilrBssrdfShader" -nodeType "ilrOccSampler" -nodeType "ilrOccData"
		 -nodeType "ilrNormalMap" -nodeType "ilrSurfaceThickness" -nodeType "ilrRaySampler"
		 -nodeType "ilrBasicPhotonShader" -nodeType "ilrPhysicPhotonShader" -nodeType "ilrDielectricPhotonShader"
		 -nodeType "ilrOrenNayarShader" -nodeType "ilrAshikhminShader" -nodeType "ilrDielectricShader"
		 -nodeType "ilrLuaNode" -nodeType "ilrHwBakeVisualizer" -nodeType "ilrShadowMask"
		 -nodeType "ilrPolyColorPerVertex" -nodeType "ilrUVMappingVisualizer" -nodeType "ilrOutputShaderBackendNode"
		 -nodeType "ilrPointCloudShape" "Turtle" "2014.0.0";
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
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.9 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 118.85044388854129 53.45138763829123 363.86094256512308 ;
	setAttr ".r" -type "double3" -8.7383527299778994 -5.0000000000014815 -4.9885998181944493e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 373.47328408416604;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 151.02295447710941 -3.2875945703623017 -3.872536173173732 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dst" yes;
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 196.97041446256586 346.58680129855668 -194.54676700739969 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 71.904911714369248;
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
	setAttr ".t" -type "double3" -521.27795225678688 23.021398317496846 26.145235355332606 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 3.5527136788005009e-015 0 ;
	setAttr ".rpt" -type "double3" -3.7747854105399366e-015 0 1.0030079361426585e-014 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 307.81388724994787;
	setAttr ".ow" 463.63969085770202;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -213.36975097656244 21.697586059570313 14.72598457336419 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "box";
	setAttr ".t" -type "double3" 36.982013115083333 0.7592145190912456 10.91713566390934 ;
createNode transform -n "polySurface56" -p "|box";
createNode mesh -n "polySurfaceShape59" -p "polySurface56";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 3 "f[0:19]" "f[21]" "f[23]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[20]" "f[22]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.375 0 0.625 0 0.625
		 0.15510245 0.375 0.15510245 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.59489751
		 0.625 0.59489751 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.625 0 0.875 0 0.875 0.15510245
		 0.625 0.15510245 0.125 0 0.125 0.15510245 0.125 0.25 0.875 0.15510245 0.875 0.25
		 0.875 0 0.625 0.15510245 0.375 0.15510245 0.625 0.25 0.375 0.25 0.375 0.25 0.625
		 0.25 0.625 0.5 0.375 0.5 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[24:27]" -type "float3"  0 0 -1.0749553 0 0 -1.0749553 
		0 0 1.0749553 0 0 1.0749553;
	setAttr -s 28 ".vt[0:27]"  -72.40991211 -5.76356459 3.24510479 65.39561462 -5.76356459 3.24510479
		 -72.40991211 5.76356459 8.71742821 65.39561462 5.76356459 8.71742821 -72.40991211 5.76356459 -8.71742725
		 65.39561462 5.76356459 -8.71742725 -72.40991211 -5.76356459 -3.24510479 65.39561462 -5.76356459 -3.24510479
		 65.39561462 -0.72605872 8.71742821 -72.40991211 -0.72605872 8.71742821 -72.40991211 -0.72605872 -8.71742821
		 65.39561462 -0.72605872 -8.71742821 74.02230835 -5.76356459 -3.24510479 74.02230835 -5.76356459 3.24510479
		 74.02230835 -0.72605872 -8.71742821 74.02230835 -0.72605872 8.71742821 65.39561462 4.5794487 8.71742821
		 -72.40991211 4.5794487 8.71742821 65.39561462 5.000021934509 8.71742821 -72.40991211 5.000021934509 8.71742821
		 -72.40991211 5.76356459 7.63358879 65.39561462 5.76356459 7.63358879 65.39561462 5.76356459 -7.63358688
		 -72.40991211 5.76356459 -7.63358688 -72.40991211 5.76356459 7.63358879 65.39561462 5.76356459 7.63358879
		 65.39561462 5.76356459 -7.63358688 -72.40991211 5.76356459 -7.63358688;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 0 10 6 0 9 10 0 11 7 0 10 11 0 11 8 0
		 7 12 0 1 13 0 12 13 0 11 14 0 14 12 0 8 15 0 14 15 0 13 15 0 8 16 0 9 17 0 3 18 0
		 16 18 0 2 19 0 17 19 0 2 9 0 3 8 0 2 20 0 3 21 0 20 21 0 5 22 0 21 22 0 4 23 0 23 22 0
		 20 23 0 20 24 0 21 25 0 24 25 0 22 26 0 25 26 0 23 27 0 27 26 0 24 27 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 2 3
		f 4 46 48 -51 -52
		mu 0 4 32 33 34 35
		f 4 18 17 -4 -16
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 11 10 12 13
		f 4 -23 -25 26 -28
		mu 0 4 14 15 16 17
		f 4 10 4 16 15
		mu 0 4 18 0 3 19
		f 4 -17 13 6 8
		mu 0 4 19 3 4 20
		f 4 2 9 -19 -9
		mu 0 4 7 6 9 8
		f 4 -20 -10 -8 -13
		mu 0 4 2 21 22 5
		f 4 -12 20 22 -22
		mu 0 4 1 23 15 14
		f 4 -18 23 24 -21
		mu 0 4 23 21 16 15
		f 4 19 25 -27 -24
		mu 0 4 21 2 17 16
		f 4 -6 21 27 -26
		mu 0 4 2 1 14 17
		f 4 12 30 -32 -29
		mu 0 4 2 5 26 24
		f 4 -14 29 33 -33
		mu 0 4 4 3 25 27
		f 4 -2 34 -15 -36
		mu 0 4 5 4 3 2
		f 4 1 37 -39 -37
		mu 0 4 4 5 29 28
		f 4 7 39 -41 -38
		mu 0 4 5 6 30 29
		f 4 -3 41 42 -40
		mu 0 4 6 7 31 30
		f 4 -7 36 43 -42
		mu 0 4 7 4 28 31
		f 4 38 45 -47 -45
		mu 0 4 28 29 33 32
		f 4 40 47 -49 -46
		mu 0 4 29 30 34 33
		f 4 -43 49 50 -48
		mu 0 4 30 31 35 34
		f 4 -44 44 51 -50
		mu 0 4 31 28 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
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
createNode mesh -n "polySurfaceShape60" -p "WallBoxLedge";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.625 0.75 0.375 0.75 0.625 1 0.625 1 0.375 1 0.375 1 0.625 0.25 0.375
		 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -45.72099304 -11.21874237 8.28308582 52.1401825 -11.21874237 8.28308582
		 -45.72099304 11.21874237 8.28308582 52.1401825 11.21874237 8.28308582 -45.72099304 11.21874237 -8.28308487
		 52.1401825 11.21874237 -8.28308487 -45.72099304 -11.21874237 -8.28308487 52.1401825 -11.21874237 -8.28308487
		 -36.98442078 -11.33737564 -8.28308487 43.40361023 -11.33737564 -8.28308487 43.40361023 -11.33737564 8.28308582
		 -36.98442078 -11.33737564 8.28308582 -30.3057251 11.21874237 8.28308582 36.72491455 11.21874237 8.28308582
		 36.72491455 11.21874237 -8.28308487 -30.3057251 11.21874237 -8.28308487;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 6 8 0 7 9 0 8 9 0 1 10 0 9 10 0 0 11 0 11 10 0 8 11 0
		 2 12 0 3 13 0 12 13 0 5 14 0 13 14 0 4 15 0 15 14 0 12 15 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 2 9 -4 -9
		mu 0 4 4 5 6 7
		f 4 -12 -10 -8 -6
		mu 0 4 1 8 9 2
		f 4 10 4 6 8
		mu 0 4 10 0 3 11
		f 4 3 13 -15 -13
		mu 0 4 7 6 12 13
		f 4 11 15 -17 -14
		mu 0 4 6 14 15 12
		f 4 -1 17 18 -16
		mu 0 4 14 16 17 15
		f 4 -11 12 19 -18
		mu 0 4 16 7 13 17
		f 4 1 21 -23 -21
		mu 0 4 3 2 18 19
		f 4 7 23 -25 -22
		mu 0 4 2 5 20 18
		f 4 -3 25 26 -24
		mu 0 4 5 4 21 20
		f 4 -7 20 27 -26
		mu 0 4 4 3 19 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface18" -p "pCube2";
createNode mesh -n "polySurfaceShape19" -p "polySurface18";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:36]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 0.75 0.375 0.75 0.625 1 0.625 1
		 0.375 1 0.375 1 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.625 0.75 0.375 0.75 0.625
		 1 0.375 1 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.625 0.75 0.375 0.75 0.625 1 0.375
		 1 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.625
		 0.75 0.375 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -36.98442078 -19.70025253 -8.28308487 43.40361023 -19.70025253 -8.28308487
		 43.40361023 -19.70025253 8.28308582 -36.98442078 -19.70025253 8.28308582 -27.9626236 -19.70025253 -8.28308487
		 34.38182068 -19.70025253 -8.28308487 34.38182068 -19.70025253 8.28308582 -27.9626236 -19.70025253 8.28308582
		 -27.9626236 -28.061569214 -8.28308487 34.38182068 -28.061569214 -8.28308487 34.38182068 -28.061569214 8.28308582
		 -27.9626236 -28.061569214 8.28308582 -19.54858398 -28.061569214 -8.28308487 25.96780396 -28.061569214 -8.28308487
		 25.96780396 -28.061569214 8.28308582 -19.54858398 -28.061569214 8.28308582 -19.54858398 -36.49890518 -8.28308487
		 25.96780396 -36.49890518 -8.28308487 25.96780396 -36.49890518 8.28308582 -19.54858398 -36.49890518 8.28308582
		 -11.44758606 -36.49890518 -8.28308487 17.86680603 -36.49890518 -8.28308487 17.86680603 -36.49890518 8.28308582
		 -11.44758606 -36.49890518 8.28308582 -11.44758606 -44.65400314 -8.28308487 17.86680603 -44.65400314 -8.28308487
		 17.86680603 -44.65400314 8.28308582 -11.44758606 -44.65400314 8.28308582 -3.69787598 -44.65400314 -8.28308487
		 10.11709595 -44.65400314 -8.28308487 10.11709595 -44.65400314 8.28308582 -3.69787598 -44.65400314 8.28308582
		 -3.69787598 -52.73911667 -8.28308487 10.11709595 -52.73911667 -8.28308487 10.11709595 -52.73911667 8.28308582
		 -3.69787598 -52.73911667 8.28308582 -36.98442078 -11.33737564 -8.28308487 43.40361023 -11.33737564 -8.28308487
		 43.40361023 -11.33737564 8.28308582 -36.98442078 -11.33737564 8.28308582;
	setAttr -s 76 ".ed[0:75]"  36 0 0 37 1 0 0 1 0 38 2 0 1 2 0 39 3 0 3 2 0
		 0 3 0 0 4 0 1 5 0 4 5 0 2 6 0 5 6 0 3 7 0 7 6 0 4 7 0 4 8 0 5 9 0 8 9 0 6 10 0 9 10 0
		 7 11 0 11 10 0 8 11 0 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0
		 12 16 0 13 17 0 16 17 0 14 18 0 17 18 0 15 19 0 19 18 0 16 19 0 16 20 0 17 21 0 20 21 0
		 18 22 0 21 22 0 19 23 0 23 22 0 20 23 0 20 24 0 21 25 0 24 25 0 22 26 0 25 26 0 23 27 0
		 27 26 0 24 27 0 24 28 0 25 29 0 28 29 0 26 30 0 29 30 0 27 31 0 31 30 0 28 31 0 28 32 0
		 29 33 0 32 33 0 30 34 0 33 34 0 31 35 0 35 34 0 32 35 0 36 37 0 37 38 0 39 38 0 36 39 0;
	setAttr -s 37 -ch 148 ".fc[0:36]" -type "polyFaces" 
		f 4 66 68 -71 -72
		mu 0 4 0 1 2 3
		f 4 72 1 -3 -1
		mu 0 4 4 5 6 7
		f 4 73 3 -5 -2
		mu 0 4 5 8 9 6
		f 4 -75 5 6 -4
		mu 0 4 8 10 11 9
		f 4 -76 0 7 -6
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
		mu 0 4 13 12 16 17
		f 4 12 19 -21 -18
		mu 0 4 12 14 18 16
		f 4 -15 21 22 -20
		mu 0 4 14 15 19 18
		f 4 -16 16 23 -22
		mu 0 4 15 13 17 19
		f 4 18 25 -27 -25
		mu 0 4 17 16 20 21
		f 4 20 27 -29 -26
		mu 0 4 16 18 22 20
		f 4 -23 29 30 -28
		mu 0 4 18 19 23 22
		f 4 -24 24 31 -30
		mu 0 4 19 17 21 23
		f 4 26 33 -35 -33
		mu 0 4 21 20 24 25
		f 4 28 35 -37 -34
		mu 0 4 20 22 26 24
		f 4 -31 37 38 -36
		mu 0 4 22 23 27 26
		f 4 -32 32 39 -38
		mu 0 4 23 21 25 27
		f 4 34 41 -43 -41
		mu 0 4 25 24 28 29
		f 4 36 43 -45 -42
		mu 0 4 24 26 30 28
		f 4 -39 45 46 -44
		mu 0 4 26 27 31 30
		f 4 -40 40 47 -46
		mu 0 4 27 25 29 31
		f 4 42 49 -51 -49
		mu 0 4 29 28 32 33
		f 4 44 51 -53 -50
		mu 0 4 28 30 34 32
		f 4 -47 53 54 -52
		mu 0 4 30 31 35 34
		f 4 -48 48 55 -54
		mu 0 4 31 29 33 35
		f 4 50 57 -59 -57
		mu 0 4 33 32 36 37
		f 4 52 59 -61 -58
		mu 0 4 32 34 38 36
		f 4 -55 61 62 -60
		mu 0 4 34 35 39 38
		f 4 -56 56 63 -62
		mu 0 4 35 33 37 39
		f 4 58 65 -67 -65
		mu 0 4 37 36 1 0
		f 4 60 67 -69 -66
		mu 0 4 36 38 2 1
		f 4 -63 69 70 -68
		mu 0 4 38 39 3 2
		f 4 -64 64 71 -70
		mu 0 4 39 37 0 3;
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
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75
		 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625
		 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375
		 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.625 1 0.625 0.75 0.375 0.75 0.375 1 0.625
		 1 0.625 0.75 0.375 0.75 0.375 1;
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
	setAttr -s 40 ".vt[0:39]"  -27.9626236 -19.70025253 -7.24381638 34.38182068 -19.70025253 -7.24381638
		 34.38182068 -19.70025253 7.24381638 -27.9626236 -19.70025253 7.24381638 -27.9626236 -28.061569214 -7.24381638
		 34.38182068 -28.061569214 -7.24381638 34.38182068 -28.061569214 7.24381638 -27.9626236 -28.061569214 7.24381638
		 -19.54858398 -28.061569214 -7.24381638 25.96780396 -28.061569214 -7.24381638 25.96780396 -28.061569214 7.24381638
		 -19.54858398 -28.061569214 7.24381638 -19.54858398 -36.49890518 -7.24381638 25.96780396 -36.49890518 -7.24381638
		 25.96780396 -36.49890518 7.24381638 -19.54858398 -36.49890518 7.24381638 -11.44758606 -36.49890518 -7.24381638
		 17.86680603 -36.49890518 -7.24381638 17.86680603 -36.49890518 7.24381638 -11.44758606 -36.49890518 7.24381638
		 -11.44758606 -44.65400314 -7.24381638 17.86680603 -44.65400314 -7.24381638 17.86680603 -44.65400314 7.24381638
		 -11.44758606 -44.65400314 7.24381638 -3.69787598 -44.65400314 -7.24381638 10.11709595 -44.65400314 -7.24381638
		 10.11709595 -44.65400314 7.24381638 -3.69787598 -44.65400314 7.24381638 -3.69787598 -52.73911667 -7.24381638
		 10.11709595 -52.73911667 -7.24381638 10.11709595 -52.73911667 7.24381638 -3.69787598 -52.73911667 7.24381638
		 25.36834717 -19.70025253 -7.24381638 25.36834717 -19.70025253 7.24381638 -18.94915771 -19.70025253 -7.24381638
		 -18.94915771 -19.70025253 7.24381638 25.36834717 -19.70025253 -7.24381638 25.36834717 -19.70025253 7.24381638
		 -18.94915771 -19.70025253 -7.24381638 -18.94915771 -19.70025253 7.24381638;
	setAttr -s 76 ".ed[0:75]"  0 1 0 1 2 0 3 2 0 0 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 5 6 0 3 7 0 7 6 0 4 7 0 4 8 0 5 9 0 8 9 0 6 10 0 9 10 0 7 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 17 18 0 15 19 0 19 18 0 16 19 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0
		 23 22 0 20 23 0 20 24 0 21 25 0 24 25 0 22 26 0 25 26 0 23 27 0 27 26 0 24 27 0 24 28 0
		 25 29 0 28 29 0 26 30 0 29 30 0 27 31 0 31 30 0 28 31 0 1 32 0 2 33 0 32 33 0 0 34 0
		 34 32 0 3 35 0 34 35 0 35 33 0 32 36 0 33 37 0 36 37 0 34 38 0 38 36 0 35 39 0 38 39 0
		 39 37 0;
	setAttr -s 38 -ch 152 ".fc[0:37]" -type "polyFaces" 
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
		mu 0 4 27 24 28 31
		f 4 -71 -73 74 75
		mu 0 4 36 37 38 39
		f 4 -2 60 62 -62
		mu 0 4 2 1 33 32
		f 4 -1 63 64 -61
		mu 0 4 1 0 34 33
		f 4 3 65 -67 -64
		mu 0 4 0 3 35 34
		f 4 2 61 -68 -66
		mu 0 4 3 2 32 35
		f 4 -63 68 70 -70
		mu 0 4 32 33 37 36
		f 4 -65 71 72 -69
		mu 0 4 33 34 38 37
		f 4 66 73 -75 -72
		mu 0 4 34 35 39 38
		f 4 67 69 -76 -74
		mu 0 4 35 32 36 39;
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
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:34]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 0.75 0.375 0.75 0.625 1 0.625 1
		 0.375 1 0.375 1 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625
		 0.75 0.375 0.75 0.625 1 0.625 1 0.375 1 0.375 1 0.625 0.75 0.375 0.75 0.625 1 0.375
		 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 0.75 0.375 0.75
		 0.625 1 0.625 1 0.375 1 0.375 1 0.625 0.75 0.375 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 44 ".vt[0:43]"  165.68017578 6.47140884 36.39950943 136.36578369 6.47140884 36.39950943
		 136.36578369 6.47140884 52.96567917 165.68017578 6.47140884 52.96567917 157.93048096 6.47140884 36.39950943
		 144.11550903 6.47140884 36.39950943 144.11550903 6.47140884 52.96567917 157.93048096 6.47140884 52.96567917
		 157.93048096 14.55652237 36.39950943 144.11550903 14.55652237 36.39950943 144.11550903 14.55652237 52.96567917
		 157.93048096 14.55652237 52.96567917 165.68017578 -1.68368912 36.39950943 136.36578369 -1.68368912 36.39950943
		 136.36578369 -1.68368912 52.96567917 165.68017578 -1.68368912 52.96567917 128.26477051 -1.56000328 36.39950943
		 173.78115845 -1.56000328 36.39950943 173.78115845 -1.56000328 52.96567917 128.26477051 -1.56000328 52.96567917
		 128.26477051 -9.99733925 36.39950943 173.78115845 -9.99733925 36.39950943 173.78115845 -9.99733925 52.96567917
		 128.26477051 -9.99733925 52.96567917 136.36578369 -9.99733925 36.39950943 165.68017578 -9.99733925 36.39950943
		 165.68017578 -9.99733925 52.96567917 136.36578369 -9.99733925 52.96567917 136.36578369 -18.15243721 36.39950943
		 165.68017578 -18.15243721 36.39950943 165.68017578 -18.15243721 52.96567917 136.36578369 -18.15243721 52.96567917
		 144.11547852 -18.15243721 36.39950943 157.93045044 -18.15243721 36.39950943 157.93045044 -18.15243721 52.96567917
		 144.11547852 -18.15243721 52.96567917 144.11547852 -26.23755074 36.39950943 157.93045044 -26.23755074 36.39950943
		 157.93045044 -26.23755074 52.96567917 144.11547852 -26.23755074 52.96567917 136.36578369 -9.99733925 36.39950943
		 165.68017578 -9.99733925 36.39950943 165.68017578 -9.99733925 52.96567917 136.36578369 -9.99733925 52.96567917;
	setAttr -s 76 ".ed[0:75]"  12 0 0 13 1 0 0 1 0 14 2 0 1 2 0 15 3 0 3 2 0
		 0 3 0 0 4 0 1 5 0 4 5 0 2 6 0 5 6 0 3 7 0 7 6 0 4 7 0 4 8 0 5 9 0 8 9 0 6 10 0 9 10 0
		 7 11 0 11 10 0 8 11 0 12 13 0 13 14 0 15 14 0 12 15 0 16 17 0 17 18 1 19 18 0 16 19 1
		 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0 23 22 0 20 23 0 20 24 0 21 25 0 24 25 0
		 22 26 0 25 26 0 23 27 0 27 26 0 24 27 0 40 28 0 41 29 0 28 29 0 42 30 0 29 30 0 43 31 0
		 31 30 0 28 31 0 28 32 0 29 33 0 32 33 0 30 34 0 33 34 0 31 35 0 35 34 0 32 35 0 32 36 0
		 33 37 0 36 37 0 34 38 0 37 38 0 35 39 0 39 38 0 36 39 0 40 41 0 41 42 0 43 42 0 40 43 0;
	setAttr -s 35 -ch 140 ".fc[0:34]" -type "polyFaces" 
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
		mu 0 4 15 13 0 3
		f 4 28 33 -35 -33
		mu 0 4 16 17 18 19
		f 4 29 35 -37 -34
		mu 0 4 17 20 21 18
		f 4 -31 37 38 -36
		mu 0 4 20 22 23 21
		f 4 -32 32 39 -38
		mu 0 4 22 16 19 23
		f 4 34 41 -43 -41
		mu 0 4 19 18 24 25
		f 4 36 43 -45 -42
		mu 0 4 18 21 26 24
		f 4 -39 45 46 -44
		mu 0 4 21 23 27 26
		f 4 -40 40 47 -46
		mu 0 4 23 19 25 27
		f 4 -30 -29 31 30
		mu 0 4 20 17 16 22
		f 4 66 68 -71 -72
		mu 0 4 28 29 30 31
		f 4 72 49 -51 -49
		mu 0 4 32 33 34 35
		f 4 73 51 -53 -50
		mu 0 4 33 36 37 34
		f 4 -75 53 54 -52
		mu 0 4 36 38 39 37
		f 4 -76 48 55 -54
		mu 0 4 38 32 35 39
		f 4 50 57 -59 -57
		mu 0 4 35 34 40 41
		f 4 52 59 -61 -58
		mu 0 4 34 37 42 40
		f 4 -55 61 62 -60
		mu 0 4 37 39 43 42
		f 4 -56 56 63 -62
		mu 0 4 39 35 41 43
		f 4 58 65 -67 -65
		mu 0 4 41 40 29 28
		f 4 60 67 -69 -66
		mu 0 4 40 42 30 29
		f 4 -63 69 70 -68
		mu 0 4 42 43 31 30
		f 4 -64 64 71 -70
		mu 0 4 43 41 28 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
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
createNode transform -n "polySurface8";
createNode transform -n "transform10" -p "polySurface8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:48]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 137 ".uvst[0].uvsp[0:136]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.625 0.875 0.75 0 0.25 0 0.375 0.875 0.625 0.625 0.875 0.125
		 0.125 0.125 0.375 0.625 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.5 0.75 0.5
		 0.5 0.25 0.125 0.75 0.125 0.5 0.875 0.5 0.625 0.5 0.375 0.3166458 0.19164585 0.2997089
		 0.125 0.3166458 0.24999996 0.31664583 0.19164585 0.43335423 0.30835423 0.375 0.3083542
		 0.5 0.3252911 0.4333542 0.30835417 0.5666458 0.3083542 0.5 0.3252911 0.625 0.3083542
		 0.56664586 0.3083542 0.6833542 0.19164585 0.6833542 0.24999997 0.7002911 0.125 0.6833542
		 0.19164585 0.69911683 -2.4733067e-009 0.7002911 0.125 0.5 0.91295207 0.65025324 0.95113647
		 0.375 0.92588317 0.5 0.91295207 0.2997089 0.125 0.30259547 -7.5913966e-005 0.53088605
		 0.21343449 0.52534157 0.22269315 0.52050722 0.23356207 0.5062384 0.2372445 0.49408355
		 0.24146795 0.48192871 0.23724452 0.46765995 0.23356205 0.46282557 0.22269315 0.45728102
		 0.2134345 0.45819148 0.13459741 0.49408355 0.13448997 0.52997565 0.13459739 0.375
		 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.625 0.625
		 0.875 0.125 0.125 0.125 0.375 0.625 0.5 0.75 0.5 0.5 0.5 0.625 0.24953575 0.12546426
		 0.24965374 0.125 0.24953575 0.24999997 0.24953575 0.12546426 0.49953577 0.37546423
		 0.37499997 0.37546423 0.5 0.37534624 0.49953577 0.37546426 0.50046426 0.37546426
		 0.5 0.37534624 0.62500006 0.3754642 0.50046426 0.37546423 0.75046426 0.12546426 0.7504642
		 0.24999997 0.75034618 0.125 0.7504642 0.12546428 0.75035447 4.5446704e-009 0.7503463
		 0.125 0.50035441 0.87464553 0.625 0.87464559 0.5 0.87473565 0.50035441 0.87464553
		 0.49964556 0.87464547 0.5 0.87473565 0.375 0.87464553 0.49964559 0.87464553 0.24964559
		 0.12464557 0.24964559 4.5464841e-009 0.24965374 0.125 0.24964555 0.12464555 0.54947585
		 0.06586621 0.54951805 0.065866329 0.56944096 0.065920711 0.56241155 0.11286372 0.56237537
		 0.11289497 0.55272007 0.12517013 0.5299508 0.12532064 0.52990317 0.12533648 0.5298661
		 0.12532055 0.51603961 0.12105703 0.51500702 0.10852932 0.51499927 0.10849454 0.5150404
		 0.10837403 0.52240932 0.065931171 0.54943359 0.065866426;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 61 ".vt[0:60]"  15.51022816 33.44285965 -51.11975098 10.74196625 39.018814087 -47.94827271
		 9.11731529 33.44285965 -49.3075676 15.51022816 40.91866302 -49.3075676 20.27849007 39.018814087 -47.94827271
		 21.90314102 33.44285965 -49.3075676 15.51022816 8.11809349 -50.96450043 21.75560379 8.14400291 -49.18412781
		 9.26485252 8.14400291 -49.18412781 6.9573555 33.44285965 -43.97364044 6.96543312 33.46356964 -43.97364044
		 9.12334824 40.91160583 -43.97364044 15.49251938 43.43504333 -43.97364044 15.51022816 43.44448853 -43.97364044
		 15.52793694 43.43504333 -43.97364044 21.89710808 40.91160583 -43.97364044 24.055023193 33.46356964 -43.97364044
		 24.063098907 33.44285965 -43.97364044 23.87750626 8.11816788 -43.97364044 15.52793694 8.083877563 -43.97364044
		 15.51022816 8.083778381 -43.97364044 15.49252033 8.083877563 -43.97364044 7.14295101 8.11816788 -43.97364044
		 6.95791626 33.37112427 -43.97364044 -13.23937988 48.94636536 -43.97364044 -14.97323227 48.93442154 -47.34055328
		 -13.62055397 77.61548615 -43.97364044 -15.34465599 77.61548615 -47.34055328 18.91911697 77.61548615 -47.34055328
		 18.54769325 48.93442154 -47.34055328 17.19501495 77.61548615 -43.97364044 16.81384277 48.94636536 -43.97364044
		 -11.0091609955 77.61548615 -55.80712891 -10.71384048 48.96376419 -55.61173248 14.58362198 77.61548615 -55.80712891
		 14.28830242 48.96376419 -55.61173248 -7.75717354 83.93041992 -53.65549088 -11.0091609955 86.082061768 -47.34055328
		 11.33163357 83.93041992 -53.65549088 14.58362198 86.082061768 -47.34055328 1.78723049 88.95059204 -47.34055328
		 1.78723049 86.082061768 -55.80712891 1.78723049 77.61548615 -58.67565536 38.051311493 -31.083795547 -43.97364044
		 38.051311493 90.91253662 -43.97364044 -31.1991272 90.91253662 -43.97364044 -31.1991272 -31.083795547 -43.97364044
		 1.78723049 48.90729904 -43.97364044 -11.299263 80.98239899 -43.97364044 -9.27531052 84.93487549 -43.97364044
		 -3.30152512 86.27400208 -43.97364044 1.78723049 87.80986023 -43.97364044 6.8759861 86.27400208 -43.97364044
		 12.84977055 84.93487549 -43.97364044 14.87372494 80.98239899 -43.97364044 38.051311493 90.91253662 -144.49081421
		 -31.1991272 90.91253662 -144.49081421 38.051311493 -31.083795547 -144.49081421 -31.1991272 -31.083795547 -144.49081421
		 1.78723049 48.89547348 -47.34055328 1.78723049 48.93442154 -58.42990875;
	setAttr -s 106 ".ed[0:105]"  1 2 1 2 0 1 0 3 1 3 1 1 4 3 1 0 5 1 5 4 1
		 0 6 1 6 7 1 7 5 1 2 8 1 8 6 1 9 2 1 1 10 1 10 9 0 1 11 1 11 10 0 1 12 1 12 11 0 3 13 1
		 13 12 0 4 14 1 14 13 0 4 15 1 15 14 0 4 16 1 16 15 0 5 17 1 17 16 0 7 18 1 18 17 0
		 7 19 1 19 18 0 6 20 1 20 19 0 8 21 1 21 20 0 8 22 1 22 21 0 8 23 1 23 22 0 9 23 0
		 24 25 1 26 24 0 25 27 1 27 26 1 28 29 1 30 28 1 29 31 1 31 30 0 32 27 1 25 33 1 33 32 1
		 28 34 1 34 35 1 35 29 1 32 36 1 36 37 1 37 27 1 38 34 1 28 39 1 39 38 1 39 40 1 40 41 1
		 41 38 1 40 37 1 36 41 1 42 34 1 41 42 1 32 42 1 43 44 0 44 45 0 45 46 0 46 43 0 31 47 0
		 47 24 0 26 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 30 0 44 55 0 55 56 0
		 56 45 0 55 57 0 57 58 0 58 56 0 57 43 0 46 58 0 47 59 1 59 25 1 29 59 1 54 28 1 53 39 1
		 52 40 1 51 40 1 50 40 1 49 37 1 48 27 1 60 33 1 59 60 1 35 60 1 60 42 1;
	setAttr -s 49 -ch 212 ".fc[0:48]" -type "polyFaces" 
		f 4 2 3 0 1
		mu 0 4 91 90 77 88
		f 4 4 -3 5 6
		mu 0 4 78 90 91 85
		f 4 7 8 9 -6
		mu 0 4 91 89 80 85
		f 4 -2 10 11 -8
		mu 0 4 91 88 79 89
		f 4 12 -1 13 14
		mu 0 4 93 87 84 92
		f 3 -14 15 16
		mu 0 3 95 84 94
		f 3 -16 17 18
		mu 0 3 97 77 96
		f 4 -18 -4 19 20
		mu 0 4 99 77 90 98
		f 4 -20 -5 21 22
		mu 0 4 101 90 78 100
		f 3 -22 23 24
		mu 0 3 103 78 102
		f 3 -24 25 26
		mu 0 3 105 82 104
		f 4 -26 -7 27 28
		mu 0 4 107 82 86 106
		f 4 -28 -10 29 30
		mu 0 4 109 86 81 108
		f 3 -30 31 32
		mu 0 3 111 80 110
		f 4 -32 -9 33 34
		mu 0 4 113 80 89 112
		f 4 -34 -12 35 36
		mu 0 4 115 89 79 114
		f 3 -36 37 38
		mu 0 3 117 79 116
		f 3 -38 39 40
		mu 0 3 119 83 118
		f 4 -40 -11 -13 41
		mu 0 4 121 83 87 120
		f 4 42 44 45 43
		mu 0 4 64 24 36 63
		f 4 46 48 49 47
		mu 0 4 37 23 57 58
		f 4 -45 51 52 50
		mu 0 4 36 24 20 28
		f 4 53 54 55 -47
		mu 0 4 37 27 18 23
		f 4 56 57 58 -51
		mu 0 4 28 21 32 36
		f 4 -54 60 61 59
		mu 0 4 27 37 31 19
		f 4 62 63 64 -62
		mu 0 4 30 40 35 15
		f 4 -58 66 -64 65
		mu 0 4 33 14 35 40
		f 4 -60 -65 68 67
		mu 0 4 26 15 35 39
		f 4 69 -69 -67 -57
		mu 0 4 29 39 35 14
		f 4 70 71 72 73
		mu 0 4 1 3 2 0
		h 15 -39 -41 -42 -15 -17 -19 -21 -23 -25 -27 -29 -31 -33 -35 -37
		mu 0 15 136 135 134 133 132 131 130 129 128 127 126 125 124 123 122
		h 12 74 75 -44 76 77 78 79 80 81 82 83 -50
		mu 0 12 76 75 74 73 72 71 70 69 68 67 66 65
		f 4 -72 84 85 86
		mu 0 4 2 3 5 4
		f 4 -86 87 88 89
		mu 0 4 4 5 7 6
		f 4 -89 90 -74 91
		mu 0 4 6 7 9 8
		f 4 -91 -88 -85 -71
		mu 0 4 1 10 11 3
		f 4 -92 -73 -87 -90
		mu 0 4 12 0 2 13
		f 4 92 93 -43 -76
		mu 0 4 62 38 25 61
		f 4 -49 94 -93 -75
		mu 0 4 60 22 38 59
		f 3 95 -48 -84
		mu 0 3 56 37 55
		f 4 96 -61 -96 -83
		mu 0 4 54 31 37 53
		f 4 97 -63 -97 -82
		mu 0 4 52 40 30 51
		f 3 98 -98 -81
		mu 0 3 50 40 49
		f 3 99 -99 -80
		mu 0 3 48 40 47
		f 4 100 -66 -100 -79
		mu 0 4 46 33 40 45
		f 4 101 -59 -101 -78
		mu 0 4 44 36 32 43
		f 3 -46 -102 -77
		mu 0 3 42 36 41
		f 4 102 -52 -94 103
		mu 0 4 34 16 25 38
		f 4 -95 -56 104 -104
		mu 0 4 38 22 17 34
		f 4 -70 -53 -103 105
		mu 0 4 39 29 16 34
		f 4 -106 -105 -55 -68
		mu 0 4 39 34 17 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11";
	setAttr ".t" -type "double3" 53.32478764504053 67.338144286959945 -179.32819731211131 ;
createNode transform -n "polySurface20" -p "pCube11";
createNode mesh -n "polySurfaceShape22" -p "polySurface20";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:2]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.125 0 0.375 0 0.375
		 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -15.15291977 -97.77042389 16.015258789 189.95774841 -97.77042389 16.015258789
		 -15.15291977 83.69332123 16.015258789 189.95774841 83.69332123 16.015258789 -15.15291977 83.69185638 -20.68991089
		 189.95774841 83.69185638 -20.68991089 -15.15291977 -97.77042389 -20.68991089 189.95774841 -97.77042389 -20.68991089;
	setAttr -s 10 ".ed[0:9]"  0 1 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0;
	setAttr -s 3 -ch 12 ".fc[0:2]" -type "polyFaces" 
		f 4 1 9 -1 -9
		mu 0 4 0 1 2 3
		f 4 -10 -8 -6 -4
		mu 0 4 4 5 6 7
		f 4 8 2 4 6
		mu 0 4 8 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FuturisticClock";
	setAttr ".t" -type "double3" 20.327212550687765 15.712638415511488 17.274741436562664 ;
	setAttr ".s" -type "double3" 0.58681343012273401 0.58681343012273401 0.58681343012273401 ;
	setAttr ".rp" -type "double3" 130.51150461613159 35.346201955152218 -111.55380992829068 ;
	setAttr ".sp" -type "double3" 150.83872076533325 40.851386262918638 -128.92835796793565 ;
	setAttr ".spt" -type "double3" -20.327216149201661 -5.5051843077664229 17.374548039644939 ;
createNode transform -n "SecondRing" -p "FuturisticClock";
	setAttr ".t" -type "double3" 150.83869406245239 15.63208268033544 -128.9283388944493 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "SecondRingShape" -p "SecondRing";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.4777178019285202 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.34566873 0.71619987
		 0.32868457 0.69921565 0.30548382 0.69299906 0.28228307 0.69921565 0.26529896 0.71619987
		 0.25908232 0.73940063 0.26529896 0.76260138 0.28228307 0.77958548 0.30548382 0.78580213
		 0.32868457 0.77958548 0.34566873 0.76260138 0.35188532 0.73940063 0.0022728145 0.43437919
		 0.0852274 0.43437919 0.16818199 0.43437919 0.25113657 0.43437919 0.33409116 0.43437919
		 0.41704574 0.43437919 0.5000003 0.43437919 0.58295476 0.43437919 0.66590929 0.43437919
		 0.7488637 0.43437919 0.83181822 0.43437919 0.91477263 0.43437919 0.99772716 0.43437919
		 0.0022728145 0.51901227 0.0852274 0.51901227 0.16818199 0.51901227 0.25113657 0.51901227
		 0.33409116 0.51901227 0.41704574 0.51901227 0.5000003 0.51901227 0.58295476 0.51901227
		 0.66590929 0.51901227 0.7488637 0.51901227 0.83181822 0.51901227 0.91477263 0.51901227
		 0.99772716 0.51901227 0.34566873 0.92036653 0.32868457 0.90338242 0.30548382 0.89716578
		 0.28228307 0.90338242 0.26529896 0.92036653 0.25908232 0.94356728 0.26529896 0.96676803
		 0.28228307 0.98375213 0.30548382 0.98996878 0.32868457 0.98375213 0.34566873 0.96676803
		 0.35188532 0.94356728 0.30548382 0.73754454 0.30548382 0.94171119;
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
	setAttr ".dr" 1;
createNode transform -n "Seconds1" -p "SecondRing";
	setAttr ".t" -type "double3" -257.04711881877319 -43.169612717347675 160.66274638505004 ;
	setAttr ".s" -type "double3" 1.7041191436106817 1.2067394813880972 1.7041191436106817 ;
	setAttr ".rp" -type "double3" 257.04711881877159 44.386583493401304 -160.66282267899535 ;
	setAttr ".sp" -type "double3" 150.83870149720931 36.782241882352253 -94.279102069461828 ;
	setAttr ".spt" -type "double3" 106.20841732156229 7.6043416110490538 -66.383720609533526 ;
createNode transform -n "pCube144" -p "Seconds1";
	setAttr ".t" -type "double3" 150.75451907891627 36.782241882352459 -60.806412842098041 ;
	setAttr ".s" -type "double3" 0.038048153693399402 0.19313371112873129 0.038048153693399402 ;
	setAttr ".rp" -type "double3" 0.084182418292752775 34.545895974615817 -33.472689227364249 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967431 -144.32446162748136 846.27273803027163 ;
createNode mesh -n "pCubeShape144" -p "pCube144";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube143" -p "Seconds1";
	setAttr ".t" -type "double3" 147.25613147263974 36.782241882352444 -60.998579194809118 ;
	setAttr ".r" -type "double3" 0 -5.9999999999997282 0 ;
	setAttr ".s" -type "double3" 0.038048153693399409 0.19313371112873129 0.038048153693399409 ;
	setAttr ".rp" -type "double3" 0.084182418292753011 34.545895974615831 -33.472689227364377 ;
	setAttr ".rpt" -type "double3" 3.4983876062764199 0 0.19216635271105281 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967431 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape143" -p "pCube143";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube142" -p "Seconds1";
	setAttr ".t" -type "double3" 143.79699525325333 36.78224188235243 -61.555373920532034 ;
	setAttr ".r" -type "double3" 0 -11.999999999999728 0 ;
	setAttr ".s" -type "double3" 0.038048153693399415 0.19313371112873129 0.038048153693399415 ;
	setAttr ".rp" -type "double3" 0.084182418292753677 34.545895974615838 -33.472689227364384 ;
	setAttr ".rpt" -type "double3" 6.9575238256628467 0 0.7489610784339491 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape142" -p "pCube142";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube141" -p "Seconds1";
	setAttr ".t" -type "double3" 140.41500944104749 36.78224188235243 -62.47069665973499 ;
	setAttr ".r" -type "double3" 0 -17.999999999999737 0 ;
	setAttr ".s" -type "double3" 0.038048153693399415 0.19313371112873129 0.038048153693399415 ;
	setAttr ".rp" -type "double3" 0.084182418292753872 34.545895974615846 -33.472689227364384 ;
	setAttr ".rpt" -type "double3" 10.33950963786873 0 1.6642838176368899 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape141" -p "pCube141";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube140" -p "Seconds1";
	setAttr ".t" -type "double3" 137.14722778030676 36.782241882352416 -63.734518944943673 ;
	setAttr ".r" -type "double3" 0 -23.999999999999734 0 ;
	setAttr ".s" -type "double3" 0.038048153693399415 0.19313371112873129 0.038048153693399415 ;
	setAttr ".rp" -type "double3" 0.08418241829275408 34.54589597461586 -33.472689227364384 ;
	setAttr ".rpt" -type "double3" 13.607291298609509 0 2.9281061028455624 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape140" -p "pCube140";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube139" -p "Seconds1";
	setAttr ".t" -type "double3" 134.02945277073349 36.782241882352402 -65.332994074729527 ;
	setAttr ".r" -type "double3" 0 -29.999999999999737 0 ;
	setAttr ".s" -type "double3" 0.038048153693399415 0.19313371112873129 0.038048153693399415 ;
	setAttr ".rp" -type "double3" 0.084182418292754288 34.545895974615867 -33.472689227364384 ;
	setAttr ".rpt" -type "double3" 16.725066308182839 0 4.5265812326314165 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape139" -p "pCube139";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube138" -p "Seconds1";
	setAttr ".t" -type "double3" 131.09584340776885 36.782241882352402 -67.248608821068103 ;
	setAttr ".r" -type "double3" 0 -35.999999999999751 0 ;
	setAttr ".s" -type "double3" 0.038048153693399422 0.19313371112873129 0.038048153693399422 ;
	setAttr ".rp" -type "double3" 0.084182418292754468 34.545895974615881 -33.472689227364498 ;
	setAttr ".rpt" -type "double3" 19.658675671147531 0 6.4421959789701022 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape138" -p "pCube138";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube137" -p "Seconds1";
	setAttr ".t" -type "double3" 128.37854092949087 36.782241882352402 -69.460375307930533 ;
	setAttr ".r" -type "double3" 0 -41.999999999999751 0 ;
	setAttr ".s" -type "double3" 0.038048153693399429 0.19313371112873129 0.038048153693399429 ;
	setAttr ".rp" -type "double3" 0.084182418292754649 34.545895974615888 -33.472689227364377 ;
	setAttr ".rpt" -type "double3" 22.375978149425517 0 8.6539624658325103 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape137" -p "pCube137";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube136" -p "Seconds1";
	setAttr ".t" -type "double3" 125.90731667048357 36.782241882352402 -71.944060958844801 ;
	setAttr ".r" -type "double3" 0 -47.999999999999766 0 ;
	setAttr ".s" -type "double3" 0.038048153693399436 0.19313371112873129 0.038048153693399436 ;
	setAttr ".rp" -type "double3" 0.084182418292754815 34.545895974615902 -33.472689227364363 ;
	setAttr ".rpt" -type "double3" 24.847202408432885 0 11.137648116746757 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape136" -p "pCube136";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube135" -p "Seconds1";
	setAttr ".t" -type "double3" 123.70924588086541 36.782241882352402 -74.672453994074687 ;
	setAttr ".r" -type "double3" 0 -53.999999999999766 0 ;
	setAttr ".s" -type "double3" 0.038048153693399443 0.19313371112873129 0.038048153693399443 ;
	setAttr ".rp" -type "double3" 0.084182418292754982 34.54589597461591 -33.472689227364462 ;
	setAttr ".rpt" -type "double3" 27.045273198051042 0 13.866041151976802 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape135" -p "pCube135";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube134" -p "Seconds1";
	setAttr ".t" -type "double3" 121.8084110841835 36.782241882352402 -77.615661568573429 ;
	setAttr ".r" -type "double3" 0 -59.999999999999766 0 ;
	setAttr ".s" -type "double3" 0.03804815369339945 0.19313371112873129 0.03804815369339945 ;
	setAttr ".rp" -type "double3" 0.084182418292755121 34.545895974615917 -33.472689227364434 ;
	setAttr ".rpt" -type "double3" 28.94610799473287 0 16.80924872647563 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape134" -p "pCube134";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube133" -p "Seconds1";
	setAttr ".t" -type "double3" 120.22563822424553 36.782241882352388 -80.741437284249045 ;
	setAttr ".r" -type "double3" 0 -65.999999999999773 0 ;
	setAttr ".s" -type "double3" 0.038048153693399457 0.19313371112873129 0.038048153693399457 ;
	setAttr ".rp" -type "double3" 0.084182418292754788 34.545895974615931 -33.472689227364405 ;
	setAttr ".rpt" -type "double3" 30.528880854670767 0 19.935024442151303 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967431 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape133" -p "pCube133";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube132" -p "Seconds1";
	setAttr ".t" -type "double3" 118.97826849172165 36.782241882352388 -84.015534488250012 ;
	setAttr ".r" -type "double3" 0 -71.999999999999787 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755343 34.545895974615938 -33.472689227364249 ;
	setAttr ".rpt" -type "double3" 31.776250587194607 0 23.209121646152152 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape132" -p "pCube132";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube131" -p "Seconds1";
	setAttr ".t" -type "double3" 118.07996833043005 36.782241882352373 -87.402081486460318 ;
	setAttr ".r" -type "double3" 0 -77.999999999999773 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755426 34.545895974615952 -33.472689227364206 ;
	setAttr ".rpt" -type "double3" 32.674550748486197 0 26.59566864436243 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape131" -p "pCube131";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube130" -p "Seconds1";
	setAttr ".t" -type "double3" 117.54057970491932 36.782241882352388 -90.863974561287051 ;
	setAttr ".r" -type "double3" 0 -83.999999999999773 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755509 34.545895974615959 -33.472689227364164 ;
	setAttr ".rpt" -type "double3" 33.213939373996922 0 30.057561719189106 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape130" -p "pCube130";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube129" -p "Seconds1";
	setAttr ".t" -type "double3" 117.36601226984483 36.782241882352388 -94.363284487754711 ;
	setAttr ".r" -type "double3" 0 -89.999999999999758 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755593 34.545895974615966 -33.472689227364114 ;
	setAttr ".rpt" -type "double3" 33.388506809071359 0 33.556871645656727 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape129" -p "pCube129";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube128" -p "Seconds1";
	setAttr ".t" -type "double3" 117.55817862255596 36.782241882352373 -97.861672094031235 ;
	setAttr ".r" -type "double3" 0 263.99999999999977 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755676 34.545895974615981 -33.472689227364071 ;
	setAttr ".rpt" -type "double3" 33.196340456360232 0 37.055259251933514 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape128" -p "pCube128";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube127" -p "Seconds1";
	setAttr ".t" -type "double3" 118.11497334827899 36.782241882352345 -101.32080831341761 ;
	setAttr ".r" -type "double3" 0 257.99999999999977 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755759 34.545895974615988 -33.472689227364029 ;
	setAttr ".rpt" -type "double3" 32.639545730637266 0 40.514395471319851 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape127" -p "pCube127";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube126" -p "Seconds1";
	setAttr ".t" -type "double3" 119.03029608748197 36.782241882352331 -104.70279412562346 ;
	setAttr ".r" -type "double3" 0 251.9999999999998 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755856 34.545895974616002 -33.472689227363986 ;
	setAttr ".rpt" -type "double3" 31.724222991434274 0 43.896381283525628 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape126" -p "pCube126";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube125" -p "Seconds1";
	setAttr ".t" -type "double3" 120.29411837269073 36.782241882352317 -107.97057578636415 ;
	setAttr ".r" -type "double3" 0 245.9999999999998 0 ;
	setAttr ".s" -type "double3" 0.038048153693399471 0.19313371112873129 0.038048153693399471 ;
	setAttr ".rp" -type "double3" 0.084182418292755939 34.545895974616009 -33.472689227363944 ;
	setAttr ".rpt" -type "double3" 30.460400706225549 0 47.164162944266266 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape125" -p "pCube125";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube124" -p "Seconds1";
	setAttr ".t" -type "double3" 121.89259350247657 36.782241882352317 -111.08835079593744 ;
	setAttr ".r" -type "double3" 0 239.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399471 0.19313371112873129 0.038048153693399471 ;
	setAttr ".rp" -type "double3" 0.084182418292756009 34.545895974616023 -33.472689227363894 ;
	setAttr ".rpt" -type "double3" 28.86192557643966 0 50.281937953839481 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape124" -p "pCube124";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube123" -p "Seconds1";
	setAttr ".t" -type "double3" 123.80820824881528 36.782241882352302 -114.021960158902 ;
	setAttr ".r" -type "double3" 0 233.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292756092 34.54589597461603 -33.472689227363844 ;
	setAttr ".rpt" -type "double3" 26.946310830100977 0 53.215547316803963 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape123" -p "pCube123";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube122" -p "Seconds1";
	setAttr ".t" -type "double3" 126.01997473567779 36.782241882352288 -116.73926263717996 ;
	setAttr ".r" -type "double3" 0 227.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399471 0.19313371112873129 0.038048153693399471 ;
	setAttr ".rp" -type "double3" 0.084182418292756175 34.545895974616037 -33.472689227363794 ;
	setAttr ".rpt" -type "double3" 24.734544343238525 0 55.932849795081879 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape122" -p "pCube122";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube121" -p "Seconds1";
	setAttr ".t" -type "double3" 128.50366038659203 36.782241882352288 -119.21048689618723 ;
	setAttr ".r" -type "double3" 0 221.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399478 0.19313371112873129 0.038048153693399478 ;
	setAttr ".rp" -type "double3" 0.084182418292756259 34.545895974616052 -33.472689227363745 ;
	setAttr ".rpt" -type "double3" 22.250858692324258 0 58.404074054089079 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape121" -p "pCube121";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube120" -p "Seconds1";
	setAttr ".t" -type "double3" 131.23205342182203 36.782241882352288 -121.40855768580526 ;
	setAttr ".r" -type "double3" 0 215.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.038048153693399485 0.19313371112873129 0.038048153693399485 ;
	setAttr ".rp" -type "double3" 0.084182418292756314 34.545895974616059 -33.472689227363801 ;
	setAttr ".rpt" -type "double3" 19.522465657094326 0 60.602144843707187 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape120" -p "pCube120";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube119" -p "Seconds1";
	setAttr ".t" -type "double3" 134.17526099632087 36.782241882352288 -123.30939248248706 ;
	setAttr ".r" -type "double3" 0 209.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399478 0.19313371112873129 0.038048153693399478 ;
	setAttr ".rp" -type "double3" 0.08418241829275637 34.545895974616073 -33.472689227363738 ;
	setAttr ".rpt" -type "double3" 16.579258082595494 0 62.502979640388908 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape119" -p "pCube119";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube118" -p "Seconds1";
	setAttr ".t" -type "double3" 137.30103671199652 36.782241882352288 -124.89216534242492 ;
	setAttr ".r" -type "double3" 0 203.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.038048153693399485 0.19313371112873129 0.038048153693399485 ;
	setAttr ".rp" -type "double3" 0.084182418292756411 34.54589597461608 -33.472689227363794 ;
	setAttr ".rpt" -type "double3" 13.453482366919896 0 64.085752500326834 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape118" -p "pCube118";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube117" -p "Seconds1";
	setAttr ".t" -type "double3" 140.57513391599744 36.782241882352288 -126.13953507494892 ;
	setAttr ".r" -type "double3" 0 197.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.038048153693399492 0.19313371112873129 0.038048153693399492 ;
	setAttr ".rp" -type "double3" 0.084182418292756467 34.545895974616087 -33.472689227363844 ;
	setAttr ".rpt" -type "double3" 10.179385162919001 0 65.333122232850897 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape117" -p "pCube117";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube116" -p "Seconds1";
	setAttr ".t" -type "double3" 143.96168091420773 36.782241882352274 -127.0378352362406 ;
	setAttr ".r" -type "double3" 0 191.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399492 0.19313371112873129 0.038048153693399492 ;
	setAttr ".rp" -type "double3" 0.084182418292756495 34.545895974616101 -33.472689227363887 ;
	setAttr ".rpt" -type "double3" 6.7928381647087415 0 66.231422394142584 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape116" -p "pCube116";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube115" -p "Seconds1";
	setAttr ".t" -type "double3" 147.42357398903448 36.782241882352274 -127.57722386175138 ;
	setAttr ".r" -type "double3" 0 185.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399485 0.19313371112873129 0.038048153693399485 ;
	setAttr ".rp" -type "double3" 0.084182418292756522 34.545895974616109 -33.472689227363929 ;
	setAttr ".rpt" -type "double3" 3.330945089882035 0 66.770811019653436 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape115" -p "pCube115";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube114" -p "Seconds1";
	setAttr ".t" -type "double3" 150.92288391550213 36.78224188235226 -127.7517912968259 ;
	setAttr ".r" -type "double3" 0 179.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399485 0.19313371112873129 0.038048153693399485 ;
	setAttr ".rp" -type "double3" 0.08418241829275655 34.545895974616123 -33.472689227363979 ;
	setAttr ".rpt" -type "double3" -0.16836483658562124 0 66.945378454727958 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape114" -p "pCube114";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube113" -p "Seconds1";
	setAttr ".t" -type "double3" 154.42127152177866 36.78224188235226 -127.5596249441148 ;
	setAttr ".r" -type "double3" 0 173.9999999999998 0 ;
	setAttr ".s" -type "double3" 0.038048153693399492 0.19313371112873129 0.038048153693399492 ;
	setAttr ".rp" -type "double3" 0.084182418292756592 34.54589597461613 -33.472689227364029 ;
	setAttr ".rpt" -type "double3" -3.6667524428621658 0 66.753212102016974 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape113" -p "pCube113";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube112" -p "Seconds1";
	setAttr ".t" -type "double3" 157.88040774116507 36.782241882352245 -127.00283021839192 ;
	setAttr ".r" -type "double3" 0 167.9999999999998 0 ;
	setAttr ".s" -type "double3" 0.038048153693399499 0.19313371112873129 0.038048153693399499 ;
	setAttr ".rp" -type "double3" 0.084182418292756633 34.545895974616144 -33.472689227364071 ;
	setAttr ".rpt" -type "double3" -7.1258886622485633 0 66.19641737629415 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape112" -p "pCube112";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube111" -p "Seconds1";
	setAttr ".t" -type "double3" 161.26239355337094 36.782241882352231 -126.08750747918903 ;
	setAttr ".r" -type "double3" 0 161.9999999999998 0 ;
	setAttr ".s" -type "double3" 0.038048153693399499 0.19313371112873129 0.038048153693399499 ;
	setAttr ".rp" -type "double3" 0.084182418292756647 34.545895974616151 -33.472689227364107 ;
	setAttr ".rpt" -type "double3" -10.50787447445442 0 65.281094637091257 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape111" -p "pCube111";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube110" -p "Seconds1";
	setAttr ".t" -type "double3" 164.53017521411167 36.782241882352203 -124.82368519398032 ;
	setAttr ".r" -type "double3" 0 155.9999999999998 0 ;
	setAttr ".s" -type "double3" 0.038048153693399506 0.19313371112873129 0.038048153693399506 ;
	setAttr ".rp" -type "double3" 0.084182418292756661 34.545895974616158 -33.472689227364143 ;
	setAttr ".rpt" -type "double3" -13.77565613519517 0 64.017272351882625 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape110" -p "pCube110";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube109" -p "Seconds1";
	setAttr ".t" -type "double3" 167.64795022368494 36.782241882352189 -123.22521006419447 ;
	setAttr ".r" -type "double3" 0 149.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.03804815369339952 0.19313371112873129 0.03804815369339952 ;
	setAttr ".rp" -type "double3" 0.084182418292756647 34.545895974616172 -33.472689227364178 ;
	setAttr ".rpt" -type "double3" -16.893431144768471 0 62.418797222096835 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape109" -p "pCube109";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube108" -p "Seconds1";
	setAttr ".t" -type "double3" 170.5815595866496 36.782241882352174 -121.30959531785595 ;
	setAttr ".r" -type "double3" 0 143.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.038048153693399527 0.19313371112873129 0.038048153693399527 ;
	setAttr ".rp" -type "double3" 0.084182418292756606 34.54589597461618 -33.472689227364313 ;
	setAttr ".rpt" -type "double3" -19.82704050773313 0 60.503182475758422 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape108" -p "pCube108";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube107" -p "Seconds1";
	setAttr ".t" -type "double3" 173.29886206492765 36.782241882352174 -119.09782883099354 ;
	setAttr ".r" -type "double3" 0 137.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.03804815369339954 0.19313371112873129 0.03804815369339954 ;
	setAttr ".rp" -type "double3" 0.084182418292756564 34.545895974616194 -33.472689227364214 ;
	setAttr ".rpt" -type "double3" -22.544342986011092 0 58.291415988895793 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape107" -p "pCube107";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube106" -p "Seconds1";
	setAttr ".t" -type "double3" 175.770086323935 36.78224188235216 -116.61414318007931 ;
	setAttr ".r" -type "double3" 0 131.99999999999989 0 ;
	setAttr ".s" -type "double3" 0.038048153693399547 0.19313371112873129 0.038048153693399547 ;
	setAttr ".rp" -type "double3" 0.084182418292756481 34.545895974616201 -33.472689227364214 ;
	setAttr ".rpt" -type "double3" -25.015567245018421 0 55.807730337981546 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape106" -p "pCube106";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube105" -p "Seconds1";
	setAttr ".t" -type "double3" 177.96815711355305 36.782241882352146 -113.88575014484933 ;
	setAttr ".r" -type "double3" 0 125.99999999999987 0 ;
	setAttr ".s" -type "double3" 0.038048153693399547 0.19313371112873129 0.038048153693399547 ;
	setAttr ".rp" -type "double3" 0.084182418292756384 34.545895974616208 -33.472689227364214 ;
	setAttr ".rpt" -type "double3" -27.213638034636475 0 53.079337302751554 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape105" -p "pCube105";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube104" -p "Seconds1";
	setAttr ".t" -type "double3" 179.86899191023488 36.782241882352146 -110.94254257035054 ;
	setAttr ".r" -type "double3" 0 119.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.038048153693399547 0.19313371112873129 0.038048153693399547 ;
	setAttr ".rp" -type "double3" 0.084182418292756286 34.545895974616222 -33.472689227364214 ;
	setAttr ".rpt" -type "double3" -29.114472831318299 0 50.136129728252733 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape104" -p "pCube104";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube103" -p "Seconds1";
	setAttr ".t" -type "double3" 181.45176477017279 36.782241882352146 -107.8167668546749 ;
	setAttr ".r" -type "double3" 0 113.99999999999989 0 ;
	setAttr ".s" -type "double3" 0.038048153693399547 0.19313371112873129 0.038048153693399547 ;
	setAttr ".rp" -type "double3" 0.084182418292756175 34.545895974616229 -33.472689227364214 ;
	setAttr ".rpt" -type "double3" -30.697245691256182 0 47.010354012577061 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape103" -p "pCube103";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube102" -p "Seconds1";
	setAttr ".t" -type "double3" 182.69913450269686 36.78224188235216 -104.54266965067399 ;
	setAttr ".r" -type "double3" 0 107.99999999999989 0 ;
	setAttr ".s" -type "double3" 0.038048153693399561 0.19313371112873129 0.038048153693399561 ;
	setAttr ".rp" -type "double3" 0.084182418292756536 34.545895974616244 -33.47268922736432 ;
	setAttr ".rpt" -type "double3" -31.944615423780242 0 43.736256808576258 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape102" -p "pCube102";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube101" -p "Seconds1";
	setAttr ".t" -type "double3" 183.59743466398859 36.78224188235216 -101.15612265246375 ;
	setAttr ".r" -type "double3" 0 101.9999999999999 0 ;
	setAttr ".s" -type "double3" 0.038048153693399561 0.19313371112873129 0.038048153693399561 ;
	setAttr ".rp" -type "double3" 0.084182418292756425 34.545895974616251 -33.472689227364306 ;
	setAttr ".rpt" -type "double3" -32.84291558507185 0 40.349709810365951 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape101" -p "pCube101";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube100" -p "Seconds1";
	setAttr ".t" -type "double3" 184.13682328949935 36.782241882352146 -97.694229577637046 ;
	setAttr ".r" -type "double3" 0 95.999999999999901 0 ;
	setAttr ".s" -type "double3" 0.038048153693399554 0.19313371112873129 0.038048153693399554 ;
	setAttr ".rp" -type "double3" 0.084182418292755856 34.545895974616265 -33.472689227364178 ;
	setAttr ".rpt" -type "double3" -33.382304210582468 0 36.887816735539062 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape100" -p "pCube100";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube99" -p "Seconds1";
	setAttr ".t" -type "double3" 184.31139072457378 36.782241882352132 -94.194919651169386 ;
	setAttr ".r" -type "double3" 0 89.999999999999929 0 ;
	setAttr ".s" -type "double3" 0.038048153693399554 0.19313371112873129 0.038048153693399554 ;
	setAttr ".rp" -type "double3" 0.084182418292755759 34.545895974616272 -33.472689227364164 ;
	setAttr ".rpt" -type "double3" -33.556871645656919 0 33.388506809071359 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape99" -p "pCube99";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube98" -p "Seconds1";
	setAttr ".t" -type "double3" 184.11922437186277 36.782241882352132 -90.696532044892834 ;
	setAttr ".r" -type "double3" 0 84.000000000000085 0 ;
	setAttr ".s" -type "double3" 0.038048153693399561 0.19313371112873129 0.038048153693399561 ;
	setAttr ".rp" -type "double3" 0.084182418292756092 34.545895974616279 -33.47268922736427 ;
	setAttr ".rpt" -type "double3" -33.364705292945956 0 29.890119202794985 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape98" -p "pCube98";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube97" -p "Seconds1";
	setAttr ".t" -type "double3" 183.56242964613992 36.782241882352118 -87.237395825506439 ;
	setAttr ".r" -type "double3" 0 78.000000000000071 0 ;
	setAttr ".s" -type "double3" 0.038048153693399568 0.19313371112873129 0.038048153693399568 ;
	setAttr ".rp" -type "double3" 0.084182418292755967 34.545895974616293 -33.472689227364256 ;
	setAttr ".rpt" -type "double3" -32.80791056722304 0 26.430982983408569 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape97" -p "pCube97";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube96" -p "Seconds1";
	setAttr ".t" -type "double3" 182.6471069069371 36.782241882352118 -83.855410013300556 ;
	setAttr ".r" -type "double3" 0 72.000000000000057 0 ;
	setAttr ".s" -type "double3" 0.038048153693399575 0.19313371112873129 0.038048153693399575 ;
	setAttr ".rp" -type "double3" 0.084182418292755384 34.5458959746163 -33.472689227364235 ;
	setAttr ".rpt" -type "double3" -31.892587828020066 0 23.048997171202689 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape96" -p "pCube96";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube95" -p "Seconds1";
	setAttr ".t" -type "double3" 181.38328462172851 36.782241882352103 -80.587628352559761 ;
	setAttr ".r" -type "double3" 0 66.000000000000071 0 ;
	setAttr ".s" -type "double3" 0.038048153693399575 0.19313371112873129 0.038048153693399575 ;
	setAttr ".rp" -type "double3" 0.084182418292755232 34.545895974616315 -33.472689227364206 ;
	setAttr ".rpt" -type "double3" -30.628765542811358 0 19.781215510461909 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape95" -p "pCube95";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube94" -p "Seconds1";
	setAttr ".t" -type "double3" 179.78480949194272 36.782241882352089 -77.46985334298644 ;
	setAttr ".r" -type "double3" 0 60.000000000000057 0 ;
	setAttr ".s" -type "double3" 0.038048153693399575 0.19313371112873129 0.038048153693399575 ;
	setAttr ".rp" -type "double3" 0.084182418292755079 34.545895974616322 -33.472689227364178 ;
	setAttr ".rpt" -type "double3" -29.030290413025483 0 16.663440500888584 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape94" -p "pCube94";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube93" -p "Seconds1";
	setAttr ".t" -type "double3" 177.86919474560409 36.782241882352089 -74.536243980021837 ;
	setAttr ".r" -type "double3" 0 54.00000000000005 0 ;
	setAttr ".s" -type "double3" 0.038048153693399575 0.19313371112873129 0.038048153693399575 ;
	setAttr ".rp" -type "double3" 0.084182418292754926 34.545895974616336 -33.47268922736415 ;
	setAttr ".rpt" -type "double3" -27.1146756666868 0 13.729831137923975 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape93" -p "pCube93";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube92" -p "Seconds1";
	setAttr ".t" -type "double3" 175.65742825874176 36.782241882352075 -71.818941501743737 ;
	setAttr ".r" -type "double3" 0 48.00000000000005 0 ;
	setAttr ".s" -type "double3" 0.038048153693399582 0.19313371112873129 0.038048153693399582 ;
	setAttr ".rp" -type "double3" 0.084182418292755218 34.545895974616343 -33.472689227364121 ;
	setAttr ".rpt" -type "double3" -24.902909179824348 0 11.012528659645932 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape92" -p "pCube92";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube91" -p "Seconds1";
	setAttr ".t" -type "double3" 173.17374260782759 36.782241882352061 -69.347717242736337 ;
	setAttr ".r" -type "double3" 0 42.000000000000043 0 ;
	setAttr ".s" -type "double3" 0.038048153693399582 0.19313371112873129 0.038048153693399582 ;
	setAttr ".rp" -type "double3" 0.084182418292755051 34.54589597461635 -33.472689227364086 ;
	setAttr ".rpt" -type "double3" -22.419223528910088 0 8.5413044006385803 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape91" -p "pCube91";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube90" -p "Seconds1";
	setAttr ".t" -type "double3" 170.44534957259762 36.782241882352061 -67.149646453118265 ;
	setAttr ".r" -type "double3" 0 36.000000000000028 0 ;
	setAttr ".s" -type "double3" 0.038048153693399589 0.19313371112873129 0.038048153693399589 ;
	setAttr ".rp" -type "double3" 0.084182418292754427 34.545895974616364 -33.47268922736405 ;
	setAttr ".rpt" -type "double3" -19.690830493680078 0 6.3432336110205201 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape90" -p "pCube90";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube89" -p "Seconds1";
	setAttr ".t" -type "double3" 167.50214199809881 36.782241882352061 -65.24881165643643 ;
	setAttr ".r" -type "double3" 0 30.000000000000025 0 ;
	setAttr ".s" -type "double3" 0.038048153693399596 0.19313371112873129 0.038048153693399596 ;
	setAttr ".rp" -type "double3" 0.084182418292754246 34.545895974616371 -33.472689227363894 ;
	setAttr ".rpt" -type "double3" -16.747622919181179 0 4.4423988143386737 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape89" -p "pCube89";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube88" -p "Seconds1";
	setAttr ".t" -type "double3" 164.37636628242313 36.782241882352032 -63.666038796498583 ;
	setAttr ".r" -type "double3" 0 24.000000000000025 0 ;
	setAttr ".s" -type "double3" 0.038048153693399596 0.19313371112873129 0.038048153693399596 ;
	setAttr ".rp" -type "double3" 0.084182418292754038 34.545895974616386 -33.472689227363851 ;
	setAttr ".rpt" -type "double3" -13.621847203505526 0 2.8596259544007956 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape88" -p "pCube88";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube87" -p "Seconds1";
	setAttr ".t" -type "double3" 161.10226907842221 36.782241882352032 -62.418669063974598 ;
	setAttr ".r" -type "double3" 0 18.000000000000014 0 ;
	setAttr ".s" -type "double3" 0.03804815369339961 0.19313371112873129 0.03804815369339961 ;
	setAttr ".rp" -type "double3" 0.084182418292754274 34.545895974616393 -33.472689227363922 ;
	setAttr ".rpt" -type "double3" -10.347749999504634 0 1.6122562218768373 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape87" -p "pCube87";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube86" -p "Seconds1";
	setAttr ".t" -type "double3" 157.71572208021189 36.782241882352018 -61.520368902683039 ;
	setAttr ".r" -type "double3" 0 12.000000000000009 0 ;
	setAttr ".s" -type "double3" 0.038048153693399617 0.19313371112873129 0.038048153693399617 ;
	setAttr ".rp" -type "double3" 0.084182418292754482 34.545895974616407 -33.472689227363865 ;
	setAttr ".rpt" -type "double3" -6.9612030012943507 0 0.71395606058522643 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape86" -p "pCube86";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube85" -p "Seconds1";
	setAttr ".t" -type "double3" 150.75451907891772 36.782241882351933 -60.806412842094176 ;
	setAttr ".r" -type "double3" 0 6.0000000000000018 0 ;
	setAttr ".s" -type "double3" 0.038048153693399624 0.19313371112873129 0.038048153693399624 ;
	setAttr ".rp" -type "double3" 0.084182418292527303 34.545895974616506 -33.472689227367667 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641969695 -144.32446162748127 846.27273803026765 ;
createNode mesh -n "pCubeShape85" -p "pCube85";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube84" -p "Seconds1";
	setAttr ".t" -type "double3" 150.75451907891772 36.782241882351933 -60.806412842094176 ;
	setAttr ".s" -type "double3" 0.038048153693399624 0.19313371112873129 0.038048153693399624 ;
	setAttr ".rp" -type "double3" 0.084182418292527303 34.545895974616506 -33.472689227367667 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641969695 -144.32446162748127 846.27273803026765 ;
createNode mesh -n "pCubeShape84" -p "pCube84";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "MinuteRing" -p "FuturisticClock";
	setAttr ".t" -type "double3" 150.83869406245239 36.511321135051901 -128.9283388944493 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "MinuteRingShape" -p "MinuteRing";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.5977280034937642 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.34566873 0.71619987
		 0.32868457 0.69921565 0.30548382 0.69299906 0.28228307 0.69921565 0.26529896 0.71619987
		 0.25908232 0.73940063 0.26529896 0.76260138 0.28228307 0.77958548 0.30548382 0.78580213
		 0.32868457 0.77958548 0.34566873 0.76260138 0.35188532 0.73940063 0.0083334148 0.55709612
		 0.09027791 0.55709612 0.17222238 0.55709612 0.25416687 0.55709612 0.33611137 0.55709612
		 0.41805583 0.55709612 0.5000003 0.55709612 0.5819447 0.55709612 0.66388905 0.55709612
		 0.7458334 0.55709612 0.8277778 0.55709612 0.90972215 0.55709612 0.99166656 0.55709612
		 0.0083334148 0.6383599 0.09027791 0.6383599 0.17222238 0.6383599 0.25416687 0.6383599
		 0.33611137 0.6383599 0.41805583 0.6383599 0.5000003 0.6383599 0.5819447 0.6383599
		 0.66388905 0.6383599 0.7458334 0.6383599 0.8277778 0.6383599 0.90972215 0.6383599
		 0.99166656 0.6383599 0.34566873 0.92036653 0.32868457 0.90338242 0.30548382 0.89716578
		 0.28228307 0.90338242 0.26529896 0.92036653 0.25908232 0.94356728 0.26529896 0.96676803
		 0.28228307 0.98375213 0.30548382 0.98996878 0.32868457 0.98375213 0.34566873 0.96676803
		 0.35188532 0.94356728 0.30548382 0.73754454 0.30548382 0.94171119;
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
	setAttr ".dr" 1;
createNode transform -n "Minutes" -p "MinuteRing";
	setAttr ".t" -type "double3" -257.04711881877319 -129.23310983859565 160.66274638505004 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 1.7041191436106817 2.6816807525567037 1.7041191436106817 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".rp" -type "double3" 262.3705135377503 133.71864714289987 -103.30586597159983 ;
	setAttr ".sp" -type "double3" 153.96254101215044 49.863745718207902 -60.621269562593909 ;
	setAttr ".spt" -type "double3" 108.40797252559985 83.854901424691974 -42.68459640900592 ;
createNode transform -n "pCube145" -p "Minutes";
	setAttr ".t" -type "double3" 150.75451907891772 48.202398990760564 -60.806412842094176 ;
	setAttr ".s" -type "double3" 0.038048153693399624 0.19313371112873129 0.038048153693399624 ;
	setAttr ".rp" -type "double3" 0.084182418292527303 34.545895974616506 -33.472689227367667 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641969695 -144.32446162748127 846.27273803026765 ;
createNode mesh -n "pCubeShape145" -p "pCube145";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube146" -p "Minutes";
	setAttr ".t" -type "double3" 150.75451907891772 48.202398990760564 -60.806412842094176 ;
	setAttr ".r" -type "double3" 0 6.0000000000000018 0 ;
	setAttr ".s" -type "double3" 0.038048153693399624 0.19313371112873129 0.038048153693399624 ;
	setAttr ".rp" -type "double3" 0.084182418292527303 34.545895974616506 -33.472689227367667 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641969695 -144.32446162748127 846.27273803026765 ;
createNode mesh -n "pCubeShape146" -p "pCube146";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube147" -p "Minutes";
	setAttr ".t" -type "double3" 157.71572208021189 48.202398990760649 -61.520368902683039 ;
	setAttr ".r" -type "double3" 0 12.000000000000009 0 ;
	setAttr ".s" -type "double3" 0.038048153693399617 0.19313371112873129 0.038048153693399617 ;
	setAttr ".rp" -type "double3" 0.084182418292754482 34.545895974616407 -33.472689227363865 ;
	setAttr ".rpt" -type "double3" -6.9612030012943507 0 0.71395606058522643 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape147" -p "pCube147";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube148" -p "Minutes";
	setAttr ".t" -type "double3" 161.10226907842221 48.202398990760663 -62.418669063974598 ;
	setAttr ".r" -type "double3" 0 18.000000000000014 0 ;
	setAttr ".s" -type "double3" 0.03804815369339961 0.19313371112873129 0.03804815369339961 ;
	setAttr ".rp" -type "double3" 0.084182418292754274 34.545895974616393 -33.472689227363922 ;
	setAttr ".rpt" -type "double3" -10.347749999504634 0 1.6122562218768373 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape148" -p "pCube148";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube149" -p "Minutes";
	setAttr ".t" -type "double3" 164.37636628242313 48.202398990760663 -63.666038796498583 ;
	setAttr ".r" -type "double3" 0 24.000000000000025 0 ;
	setAttr ".s" -type "double3" 0.038048153693399596 0.19313371112873129 0.038048153693399596 ;
	setAttr ".rp" -type "double3" 0.084182418292754038 34.545895974616386 -33.472689227363851 ;
	setAttr ".rpt" -type "double3" -13.621847203505526 0 2.8596259544007956 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape149" -p "pCube149";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube150" -p "Minutes";
	setAttr ".t" -type "double3" 167.50214199809881 48.202398990760692 -65.24881165643643 ;
	setAttr ".r" -type "double3" 0 30.000000000000025 0 ;
	setAttr ".s" -type "double3" 0.038048153693399596 0.19313371112873129 0.038048153693399596 ;
	setAttr ".rp" -type "double3" 0.084182418292754246 34.545895974616371 -33.472689227363894 ;
	setAttr ".rpt" -type "double3" -16.747622919181179 0 4.4423988143386737 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape150" -p "pCube150";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube151" -p "Minutes";
	setAttr ".t" -type "double3" 170.44534957259762 48.202398990760692 -67.149646453118265 ;
	setAttr ".r" -type "double3" 0 36.000000000000028 0 ;
	setAttr ".s" -type "double3" 0.038048153693399589 0.19313371112873129 0.038048153693399589 ;
	setAttr ".rp" -type "double3" 0.084182418292754427 34.545895974616364 -33.47268922736405 ;
	setAttr ".rpt" -type "double3" -19.690830493680078 0 6.3432336110205201 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape151" -p "pCube151";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube152" -p "Minutes";
	setAttr ".t" -type "double3" 173.17374260782759 48.202398990760692 -69.347717242736337 ;
	setAttr ".r" -type "double3" 0 42.000000000000043 0 ;
	setAttr ".s" -type "double3" 0.038048153693399582 0.19313371112873129 0.038048153693399582 ;
	setAttr ".rp" -type "double3" 0.084182418292755051 34.54589597461635 -33.472689227364086 ;
	setAttr ".rpt" -type "double3" -22.419223528910088 0 8.5413044006385803 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape152" -p "pCube152";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube153" -p "Minutes";
	setAttr ".t" -type "double3" 175.65742825874176 48.202398990760706 -71.818941501743737 ;
	setAttr ".r" -type "double3" 0 48.00000000000005 0 ;
	setAttr ".s" -type "double3" 0.038048153693399582 0.19313371112873129 0.038048153693399582 ;
	setAttr ".rp" -type "double3" 0.084182418292755218 34.545895974616343 -33.472689227364121 ;
	setAttr ".rpt" -type "double3" -24.902909179824348 0 11.012528659645932 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape153" -p "pCube153";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube154" -p "Minutes";
	setAttr ".t" -type "double3" 177.86919474560409 48.20239899076072 -74.536243980021837 ;
	setAttr ".r" -type "double3" 0 54.00000000000005 0 ;
	setAttr ".s" -type "double3" 0.038048153693399575 0.19313371112873129 0.038048153693399575 ;
	setAttr ".rp" -type "double3" 0.084182418292754926 34.545895974616336 -33.47268922736415 ;
	setAttr ".rpt" -type "double3" -27.1146756666868 0 13.729831137923975 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape154" -p "pCube154";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube155" -p "Minutes";
	setAttr ".t" -type "double3" 179.78480949194272 48.20239899076072 -77.46985334298644 ;
	setAttr ".r" -type "double3" 0 60.000000000000057 0 ;
	setAttr ".s" -type "double3" 0.038048153693399575 0.19313371112873129 0.038048153693399575 ;
	setAttr ".rp" -type "double3" 0.084182418292755079 34.545895974616322 -33.472689227364178 ;
	setAttr ".rpt" -type "double3" -29.030290413025483 0 16.663440500888584 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape155" -p "pCube155";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube156" -p "Minutes";
	setAttr ".t" -type "double3" 181.38328462172851 48.202398990760734 -80.587628352559761 ;
	setAttr ".r" -type "double3" 0 66.000000000000071 0 ;
	setAttr ".s" -type "double3" 0.038048153693399575 0.19313371112873129 0.038048153693399575 ;
	setAttr ".rp" -type "double3" 0.084182418292755232 34.545895974616315 -33.472689227364206 ;
	setAttr ".rpt" -type "double3" -30.628765542811358 0 19.781215510461909 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape156" -p "pCube156";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube157" -p "Minutes";
	setAttr ".t" -type "double3" 182.6471069069371 48.202398990760749 -83.855410013300556 ;
	setAttr ".r" -type "double3" 0 72.000000000000057 0 ;
	setAttr ".s" -type "double3" 0.038048153693399575 0.19313371112873129 0.038048153693399575 ;
	setAttr ".rp" -type "double3" 0.084182418292755384 34.5458959746163 -33.472689227364235 ;
	setAttr ".rpt" -type "double3" -31.892587828020066 0 23.048997171202689 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape157" -p "pCube157";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube158" -p "Minutes";
	setAttr ".t" -type "double3" 183.56242964613992 48.202398990760749 -87.237395825506439 ;
	setAttr ".r" -type "double3" 0 78.000000000000071 0 ;
	setAttr ".s" -type "double3" 0.038048153693399568 0.19313371112873129 0.038048153693399568 ;
	setAttr ".rp" -type "double3" 0.084182418292755967 34.545895974616293 -33.472689227364256 ;
	setAttr ".rpt" -type "double3" -32.80791056722304 0 26.430982983408569 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape158" -p "pCube158";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube159" -p "Minutes";
	setAttr ".t" -type "double3" 184.11922437186277 48.202398990760763 -90.696532044892834 ;
	setAttr ".r" -type "double3" 0 84.000000000000085 0 ;
	setAttr ".s" -type "double3" 0.038048153693399561 0.19313371112873129 0.038048153693399561 ;
	setAttr ".rp" -type "double3" 0.084182418292756092 34.545895974616279 -33.47268922736427 ;
	setAttr ".rpt" -type "double3" -33.364705292945956 0 29.890119202794985 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape159" -p "pCube159";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube160" -p "Minutes";
	setAttr ".t" -type "double3" 184.31139072457378 48.202398990760763 -94.194919651169386 ;
	setAttr ".r" -type "double3" 0 89.999999999999929 0 ;
	setAttr ".s" -type "double3" 0.038048153693399554 0.19313371112873129 0.038048153693399554 ;
	setAttr ".rp" -type "double3" 0.084182418292755759 34.545895974616272 -33.472689227364164 ;
	setAttr ".rpt" -type "double3" -33.556871645656919 0 33.388506809071359 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape160" -p "pCube160";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube161" -p "Minutes";
	setAttr ".t" -type "double3" 184.13682328949935 48.202398990760777 -97.694229577637046 ;
	setAttr ".r" -type "double3" 0 95.999999999999901 0 ;
	setAttr ".s" -type "double3" 0.038048153693399554 0.19313371112873129 0.038048153693399554 ;
	setAttr ".rp" -type "double3" 0.084182418292755856 34.545895974616265 -33.472689227364178 ;
	setAttr ".rpt" -type "double3" -33.382304210582468 0 36.887816735539062 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape161" -p "pCube161";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube162" -p "Minutes";
	setAttr ".t" -type "double3" 183.59743466398859 48.202398990760791 -101.15612265246375 ;
	setAttr ".r" -type "double3" 0 101.9999999999999 0 ;
	setAttr ".s" -type "double3" 0.038048153693399561 0.19313371112873129 0.038048153693399561 ;
	setAttr ".rp" -type "double3" 0.084182418292756425 34.545895974616251 -33.472689227364306 ;
	setAttr ".rpt" -type "double3" -32.84291558507185 0 40.349709810365951 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape162" -p "pCube162";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube163" -p "Minutes";
	setAttr ".t" -type "double3" 182.69913450269686 48.202398990760791 -104.54266965067399 ;
	setAttr ".r" -type "double3" 0 107.99999999999989 0 ;
	setAttr ".s" -type "double3" 0.038048153693399561 0.19313371112873129 0.038048153693399561 ;
	setAttr ".rp" -type "double3" 0.084182418292756536 34.545895974616244 -33.47268922736432 ;
	setAttr ".rpt" -type "double3" -31.944615423780242 0 43.736256808576258 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967422 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape163" -p "pCube163";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube164" -p "Minutes";
	setAttr ".t" -type "double3" 181.45176477017279 48.202398990760777 -107.8167668546749 ;
	setAttr ".r" -type "double3" 0 113.99999999999989 0 ;
	setAttr ".s" -type "double3" 0.038048153693399547 0.19313371112873129 0.038048153693399547 ;
	setAttr ".rp" -type "double3" 0.084182418292756175 34.545895974616229 -33.472689227364214 ;
	setAttr ".rpt" -type "double3" -30.697245691256182 0 47.010354012577061 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape164" -p "pCube164";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube165" -p "Minutes";
	setAttr ".t" -type "double3" 179.86899191023488 48.202398990760777 -110.94254257035054 ;
	setAttr ".r" -type "double3" 0 119.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.038048153693399547 0.19313371112873129 0.038048153693399547 ;
	setAttr ".rp" -type "double3" 0.084182418292756286 34.545895974616222 -33.472689227364214 ;
	setAttr ".rpt" -type "double3" -29.114472831318299 0 50.136129728252733 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape165" -p "pCube165";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube166" -p "Minutes";
	setAttr ".t" -type "double3" 177.96815711355305 48.202398990760777 -113.88575014484933 ;
	setAttr ".r" -type "double3" 0 125.99999999999987 0 ;
	setAttr ".s" -type "double3" 0.038048153693399547 0.19313371112873129 0.038048153693399547 ;
	setAttr ".rp" -type "double3" 0.084182418292756384 34.545895974616208 -33.472689227364214 ;
	setAttr ".rpt" -type "double3" -27.213638034636475 0 53.079337302751554 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape166" -p "pCube166";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube167" -p "Minutes";
	setAttr ".t" -type "double3" 175.770086323935 48.202398990760791 -116.61414318007931 ;
	setAttr ".r" -type "double3" 0 131.99999999999989 0 ;
	setAttr ".s" -type "double3" 0.038048153693399547 0.19313371112873129 0.038048153693399547 ;
	setAttr ".rp" -type "double3" 0.084182418292756481 34.545895974616201 -33.472689227364214 ;
	setAttr ".rpt" -type "double3" -25.015567245018421 0 55.807730337981546 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape167" -p "pCube167";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube168" -p "Minutes";
	setAttr ".t" -type "double3" 173.29886206492765 48.202398990760805 -119.09782883099354 ;
	setAttr ".r" -type "double3" 0 137.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.03804815369339954 0.19313371112873129 0.03804815369339954 ;
	setAttr ".rp" -type "double3" 0.084182418292756564 34.545895974616194 -33.472689227364214 ;
	setAttr ".rpt" -type "double3" -22.544342986011092 0 58.291415988895793 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape168" -p "pCube168";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube169" -p "Minutes";
	setAttr ".t" -type "double3" 170.5815595866496 48.202398990760805 -121.30959531785595 ;
	setAttr ".r" -type "double3" 0 143.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.038048153693399527 0.19313371112873129 0.038048153693399527 ;
	setAttr ".rp" -type "double3" 0.084182418292756606 34.54589597461618 -33.472689227364313 ;
	setAttr ".rpt" -type "double3" -19.82704050773313 0 60.503182475758422 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape169" -p "pCube169";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube170" -p "Minutes";
	setAttr ".t" -type "double3" 167.64795022368494 48.20239899076082 -123.22521006419447 ;
	setAttr ".r" -type "double3" 0 149.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.03804815369339952 0.19313371112873129 0.03804815369339952 ;
	setAttr ".rp" -type "double3" 0.084182418292756647 34.545895974616172 -33.472689227364178 ;
	setAttr ".rpt" -type "double3" -16.893431144768471 0 62.418797222096835 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape170" -p "pCube170";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube171" -p "Minutes";
	setAttr ".t" -type "double3" 164.53017521411167 48.202398990760834 -124.82368519398032 ;
	setAttr ".r" -type "double3" 0 155.9999999999998 0 ;
	setAttr ".s" -type "double3" 0.038048153693399506 0.19313371112873129 0.038048153693399506 ;
	setAttr ".rp" -type "double3" 0.084182418292756661 34.545895974616158 -33.472689227364143 ;
	setAttr ".rpt" -type "double3" -13.77565613519517 0 64.017272351882625 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape171" -p "pCube171";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube172" -p "Minutes";
	setAttr ".t" -type "double3" 161.26239355337094 48.202398990760862 -126.08750747918903 ;
	setAttr ".r" -type "double3" 0 161.9999999999998 0 ;
	setAttr ".s" -type "double3" 0.038048153693399499 0.19313371112873129 0.038048153693399499 ;
	setAttr ".rp" -type "double3" 0.084182418292756647 34.545895974616151 -33.472689227364107 ;
	setAttr ".rpt" -type "double3" -10.50787447445442 0 65.281094637091257 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape172" -p "pCube172";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube173" -p "Minutes";
	setAttr ".t" -type "double3" 157.88040774116507 48.202398990760877 -127.00283021839192 ;
	setAttr ".r" -type "double3" 0 167.9999999999998 0 ;
	setAttr ".s" -type "double3" 0.038048153693399499 0.19313371112873129 0.038048153693399499 ;
	setAttr ".rp" -type "double3" 0.084182418292756633 34.545895974616144 -33.472689227364071 ;
	setAttr ".rpt" -type "double3" -7.1258886622485633 0 66.19641737629415 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape173" -p "pCube173";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube174" -p "Minutes";
	setAttr ".t" -type "double3" 154.42127152177866 48.202398990760891 -127.5596249441148 ;
	setAttr ".r" -type "double3" 0 173.9999999999998 0 ;
	setAttr ".s" -type "double3" 0.038048153693399492 0.19313371112873129 0.038048153693399492 ;
	setAttr ".rp" -type "double3" 0.084182418292756592 34.54589597461613 -33.472689227364029 ;
	setAttr ".rpt" -type "double3" -3.6667524428621658 0 66.753212102016974 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape174" -p "pCube174";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube175" -p "Minutes";
	setAttr ".t" -type "double3" 150.92288391550213 48.202398990760891 -127.7517912968259 ;
	setAttr ".r" -type "double3" 0 179.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399485 0.19313371112873129 0.038048153693399485 ;
	setAttr ".rp" -type "double3" 0.08418241829275655 34.545895974616123 -33.472689227363979 ;
	setAttr ".rpt" -type "double3" -0.16836483658562124 0 66.945378454727958 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape175" -p "pCube175";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube176" -p "Minutes";
	setAttr ".t" -type "double3" 147.42357398903448 48.202398990760905 -127.57722386175138 ;
	setAttr ".r" -type "double3" 0 185.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399485 0.19313371112873129 0.038048153693399485 ;
	setAttr ".rp" -type "double3" 0.084182418292756522 34.545895974616109 -33.472689227363929 ;
	setAttr ".rpt" -type "double3" 3.330945089882035 0 66.770811019653436 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape176" -p "pCube176";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube177" -p "Minutes";
	setAttr ".t" -type "double3" 143.96168091420773 48.202398990760905 -127.0378352362406 ;
	setAttr ".r" -type "double3" 0 191.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399492 0.19313371112873129 0.038048153693399492 ;
	setAttr ".rp" -type "double3" 0.084182418292756495 34.545895974616101 -33.472689227363887 ;
	setAttr ".rpt" -type "double3" 6.7928381647087415 0 66.231422394142584 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape177" -p "pCube177";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube178" -p "Minutes";
	setAttr ".t" -type "double3" 140.57513391599744 48.202398990760919 -126.13953507494892 ;
	setAttr ".r" -type "double3" 0 197.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.038048153693399492 0.19313371112873129 0.038048153693399492 ;
	setAttr ".rp" -type "double3" 0.084182418292756467 34.545895974616087 -33.472689227363844 ;
	setAttr ".rpt" -type "double3" 10.179385162919001 0 65.333122232850897 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape178" -p "pCube178";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube179" -p "Minutes";
	setAttr ".t" -type "double3" 137.30103671199652 48.202398990760919 -124.89216534242492 ;
	setAttr ".r" -type "double3" 0 203.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.038048153693399485 0.19313371112873129 0.038048153693399485 ;
	setAttr ".rp" -type "double3" 0.084182418292756411 34.54589597461608 -33.472689227363794 ;
	setAttr ".rpt" -type "double3" 13.453482366919896 0 64.085752500326834 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape179" -p "pCube179";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube180" -p "Minutes";
	setAttr ".t" -type "double3" 134.17526099632087 48.202398990760919 -123.30939248248706 ;
	setAttr ".r" -type "double3" 0 209.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399478 0.19313371112873129 0.038048153693399478 ;
	setAttr ".rp" -type "double3" 0.08418241829275637 34.545895974616073 -33.472689227363738 ;
	setAttr ".rpt" -type "double3" 16.579258082595494 0 62.502979640388908 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape180" -p "pCube180";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube181" -p "Minutes";
	setAttr ".t" -type "double3" 131.23205342182203 48.202398990760919 -121.40855768580526 ;
	setAttr ".r" -type "double3" 0 215.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.038048153693399485 0.19313371112873129 0.038048153693399485 ;
	setAttr ".rp" -type "double3" 0.084182418292756314 34.545895974616059 -33.472689227363801 ;
	setAttr ".rpt" -type "double3" 19.522465657094326 0 60.602144843707187 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape181" -p "pCube181";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube182" -p "Minutes";
	setAttr ".t" -type "double3" 128.50366038659203 48.202398990760919 -119.21048689618723 ;
	setAttr ".r" -type "double3" 0 221.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399478 0.19313371112873129 0.038048153693399478 ;
	setAttr ".rp" -type "double3" 0.084182418292756259 34.545895974616052 -33.472689227363745 ;
	setAttr ".rpt" -type "double3" 22.250858692324258 0 58.404074054089079 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape182" -p "pCube182";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube183" -p "Minutes";
	setAttr ".t" -type "double3" 126.01997473567779 48.202398990760919 -116.73926263717996 ;
	setAttr ".r" -type "double3" 0 227.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399471 0.19313371112873129 0.038048153693399471 ;
	setAttr ".rp" -type "double3" 0.084182418292756175 34.545895974616037 -33.472689227363794 ;
	setAttr ".rpt" -type "double3" 24.734544343238525 0 55.932849795081879 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape183" -p "pCube183";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube184" -p "Minutes";
	setAttr ".t" -type "double3" 123.80820824881528 48.202398990760933 -114.021960158902 ;
	setAttr ".r" -type "double3" 0 233.99999999999986 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292756092 34.54589597461603 -33.472689227363844 ;
	setAttr ".rpt" -type "double3" 26.946310830100977 0 53.215547316803963 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape184" -p "pCube184";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube185" -p "Minutes";
	setAttr ".t" -type "double3" 121.89259350247657 48.202398990760948 -111.08835079593744 ;
	setAttr ".r" -type "double3" 0 239.99999999999983 0 ;
	setAttr ".s" -type "double3" 0.038048153693399471 0.19313371112873129 0.038048153693399471 ;
	setAttr ".rp" -type "double3" 0.084182418292756009 34.545895974616023 -33.472689227363894 ;
	setAttr ".rpt" -type "double3" 28.86192557643966 0 50.281937953839481 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape185" -p "pCube185";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube186" -p "Minutes";
	setAttr ".t" -type "double3" 120.29411837269073 48.202398990760948 -107.97057578636415 ;
	setAttr ".r" -type "double3" 0 245.9999999999998 0 ;
	setAttr ".s" -type "double3" 0.038048153693399471 0.19313371112873129 0.038048153693399471 ;
	setAttr ".rp" -type "double3" 0.084182418292755939 34.545895974616009 -33.472689227363944 ;
	setAttr ".rpt" -type "double3" 30.460400706225549 0 47.164162944266266 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape186" -p "pCube186";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube187" -p "Minutes";
	setAttr ".t" -type "double3" 119.03029608748197 48.202398990760962 -104.70279412562346 ;
	setAttr ".r" -type "double3" 0 251.9999999999998 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755856 34.545895974616002 -33.472689227363986 ;
	setAttr ".rpt" -type "double3" 31.724222991434274 0 43.896381283525628 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape187" -p "pCube187";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube188" -p "Minutes";
	setAttr ".t" -type "double3" 118.11497334827899 48.202398990760976 -101.32080831341761 ;
	setAttr ".r" -type "double3" 0 257.99999999999977 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755759 34.545895974615988 -33.472689227364029 ;
	setAttr ".rpt" -type "double3" 32.639545730637266 0 40.514395471319851 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape188" -p "pCube188";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube189" -p "Minutes";
	setAttr ".t" -type "double3" 117.55817862255596 48.202398990761004 -97.861672094031235 ;
	setAttr ".r" -type "double3" 0 263.99999999999977 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755676 34.545895974615981 -33.472689227364071 ;
	setAttr ".rpt" -type "double3" 33.196340456360232 0 37.055259251933514 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape189" -p "pCube189";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube190" -p "Minutes";
	setAttr ".t" -type "double3" 117.36601226984483 48.202398990761019 -94.363284487754711 ;
	setAttr ".r" -type "double3" 0 -89.999999999999758 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755593 34.545895974615966 -33.472689227364114 ;
	setAttr ".rpt" -type "double3" 33.388506809071359 0 33.556871645656727 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape190" -p "pCube190";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube191" -p "Minutes";
	setAttr ".t" -type "double3" 117.54057970491932 48.202398990761019 -90.863974561287051 ;
	setAttr ".r" -type "double3" 0 -83.999999999999773 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755509 34.545895974615959 -33.472689227364164 ;
	setAttr ".rpt" -type "double3" 33.213939373996922 0 30.057561719189106 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape191" -p "pCube191";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube192" -p "Minutes";
	setAttr ".t" -type "double3" 118.07996833043005 48.202398990761004 -87.402081486460318 ;
	setAttr ".r" -type "double3" 0 -77.999999999999773 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755426 34.545895974615952 -33.472689227364206 ;
	setAttr ".rpt" -type "double3" 32.674550748486197 0 26.59566864436243 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape192" -p "pCube192";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube193" -p "Minutes";
	setAttr ".t" -type "double3" 118.97826849172165 48.202398990761019 -84.015534488250012 ;
	setAttr ".r" -type "double3" 0 -71.999999999999787 0 ;
	setAttr ".s" -type "double3" 0.038048153693399464 0.19313371112873129 0.038048153693399464 ;
	setAttr ".rp" -type "double3" 0.084182418292755343 34.545895974615938 -33.472689227364249 ;
	setAttr ".rpt" -type "double3" 31.776250587194607 0 23.209121646152152 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape193" -p "pCube193";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube194" -p "Minutes";
	setAttr ".t" -type "double3" 120.22563822424553 48.202398990761019 -80.741437284249045 ;
	setAttr ".r" -type "double3" 0 -65.999999999999773 0 ;
	setAttr ".s" -type "double3" 0.038048153693399457 0.19313371112873129 0.038048153693399457 ;
	setAttr ".rp" -type "double3" 0.084182418292754788 34.545895974615931 -33.472689227364405 ;
	setAttr ".rpt" -type "double3" 30.528880854670767 0 19.935024442151303 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967431 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape194" -p "pCube194";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube195" -p "Minutes";
	setAttr ".t" -type "double3" 121.8084110841835 48.202398990761033 -77.615661568573429 ;
	setAttr ".r" -type "double3" 0 -59.999999999999766 0 ;
	setAttr ".s" -type "double3" 0.03804815369339945 0.19313371112873129 0.03804815369339945 ;
	setAttr ".rp" -type "double3" 0.084182418292755121 34.545895974615917 -33.472689227364434 ;
	setAttr ".rpt" -type "double3" 28.94610799473287 0 16.80924872647563 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape195" -p "pCube195";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube196" -p "Minutes";
	setAttr ".t" -type "double3" 123.70924588086541 48.202398990761033 -74.672453994074687 ;
	setAttr ".r" -type "double3" 0 -53.999999999999766 0 ;
	setAttr ".s" -type "double3" 0.038048153693399443 0.19313371112873129 0.038048153693399443 ;
	setAttr ".rp" -type "double3" 0.084182418292754982 34.54589597461591 -33.472689227364462 ;
	setAttr ".rpt" -type "double3" 27.045273198051042 0 13.866041151976802 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape196" -p "pCube196";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube197" -p "Minutes";
	setAttr ".t" -type "double3" 125.90731667048357 48.202398990761033 -71.944060958844801 ;
	setAttr ".r" -type "double3" 0 -47.999999999999766 0 ;
	setAttr ".s" -type "double3" 0.038048153693399436 0.19313371112873129 0.038048153693399436 ;
	setAttr ".rp" -type "double3" 0.084182418292754815 34.545895974615902 -33.472689227364363 ;
	setAttr ".rpt" -type "double3" 24.847202408432885 0 11.137648116746757 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape197" -p "pCube197";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube198" -p "Minutes";
	setAttr ".t" -type "double3" 128.37854092949087 48.202398990761033 -69.460375307930533 ;
	setAttr ".r" -type "double3" 0 -41.999999999999751 0 ;
	setAttr ".s" -type "double3" 0.038048153693399429 0.19313371112873129 0.038048153693399429 ;
	setAttr ".rp" -type "double3" 0.084182418292754649 34.545895974615888 -33.472689227364377 ;
	setAttr ".rpt" -type "double3" 22.375978149425517 0 8.6539624658325103 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape198" -p "pCube198";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube199" -p "Minutes";
	setAttr ".t" -type "double3" 131.09584340776885 48.202398990761033 -67.248608821068103 ;
	setAttr ".r" -type "double3" 0 -35.999999999999751 0 ;
	setAttr ".s" -type "double3" 0.038048153693399422 0.19313371112873129 0.038048153693399422 ;
	setAttr ".rp" -type "double3" 0.084182418292754468 34.545895974615881 -33.472689227364498 ;
	setAttr ".rpt" -type "double3" 19.658675671147531 0 6.4421959789701022 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape199" -p "pCube199";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube200" -p "Minutes";
	setAttr ".t" -type "double3" 134.02945277073349 48.202398990761033 -65.332994074729527 ;
	setAttr ".r" -type "double3" 0 -29.999999999999737 0 ;
	setAttr ".s" -type "double3" 0.038048153693399415 0.19313371112873129 0.038048153693399415 ;
	setAttr ".rp" -type "double3" 0.084182418292754288 34.545895974615867 -33.472689227364384 ;
	setAttr ".rpt" -type "double3" 16.725066308182839 0 4.5265812326314165 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape200" -p "pCube200";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube201" -p "Minutes";
	setAttr ".t" -type "double3" 137.14722778030676 48.202398990761047 -63.734518944943673 ;
	setAttr ".r" -type "double3" 0 -23.999999999999734 0 ;
	setAttr ".s" -type "double3" 0.038048153693399415 0.19313371112873129 0.038048153693399415 ;
	setAttr ".rp" -type "double3" 0.08418241829275408 34.54589597461586 -33.472689227364384 ;
	setAttr ".rpt" -type "double3" 13.607291298609509 0 2.9281061028455624 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape201" -p "pCube201";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube202" -p "Minutes";
	setAttr ".t" -type "double3" 140.41500944104749 48.202398990761061 -62.47069665973499 ;
	setAttr ".r" -type "double3" 0 -17.999999999999737 0 ;
	setAttr ".s" -type "double3" 0.038048153693399415 0.19313371112873129 0.038048153693399415 ;
	setAttr ".rp" -type "double3" 0.084182418292753872 34.545895974615846 -33.472689227364384 ;
	setAttr ".rpt" -type "double3" 10.33950963786873 0 1.6642838176368899 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape202" -p "pCube202";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube203" -p "Minutes";
	setAttr ".t" -type "double3" 143.79699525325333 48.202398990761061 -61.555373920532034 ;
	setAttr ".r" -type "double3" 0 -11.999999999999728 0 ;
	setAttr ".s" -type "double3" 0.038048153693399415 0.19313371112873129 0.038048153693399415 ;
	setAttr ".rp" -type "double3" 0.084182418292753677 34.545895974615838 -33.472689227364384 ;
	setAttr ".rpt" -type "double3" 6.9575238256628467 0 0.7489610784339491 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967426 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape203" -p "pCube203";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube204" -p "Minutes";
	setAttr ".t" -type "double3" 147.25613147263974 48.202398990761075 -60.998579194809118 ;
	setAttr ".r" -type "double3" 0 -5.9999999999997282 0 ;
	setAttr ".s" -type "double3" 0.038048153693399409 0.19313371112873129 0.038048153693399409 ;
	setAttr ".rp" -type "double3" 0.084182418292753011 34.545895974615831 -33.472689227364377 ;
	setAttr ".rpt" -type "double3" 3.4983876062764199 0 0.19216635271105281 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967431 -144.32446162748136 846.27273803027151 ;
createNode mesh -n "pCubeShape204" -p "pCube204";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube205" -p "Minutes";
	setAttr ".t" -type "double3" 150.75451907891627 48.20239899076109 -60.806412842098041 ;
	setAttr ".s" -type "double3" 0.038048153693399402 0.19313371112873129 0.038048153693399402 ;
	setAttr ".rp" -type "double3" 0.084182418292752775 34.545895974615817 -33.472689227364249 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641967431 -144.32446162748136 846.27273803027163 ;
createNode mesh -n "pCubeShape205" -p "pCube205";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface14" -p "FuturisticClock";
	setAttr ".t" -type "double3" 150.83869406245239 57.117682610991451 -128.9283388944493 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "polySurfaceShape14" -p "polySurface14";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.30548381805419922 0.84148392081260681 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.0042930245 0.39925939
		 0.0042930245 0.3170757 0.086910903 0.3170757 0.086910903 0.39925939 0.086910903 0.40289629
		 0.0042930245 0.40289629 0.16952878 0.3170757 0.16952878 0.39925939 0.16952878 0.40289629
		 0.25214666 0.3170757 0.25214666 0.39925939 0.25214666 0.40289629 0.33476454 0.3170757
		 0.33476454 0.39925939 0.33476454 0.40289629 0.41738245 0.3170757 0.41738245 0.39925939
		 0.41738245 0.40289629 0.5000003 0.3170757 0.5000003 0.39925939 0.5000003 0.40289629
		 0.58261812 0.3170757 0.58261812 0.39925939 0.58261812 0.40289629 0.66523588 0.3170757
		 0.66523588 0.39925939 0.66523588 0.40289629 0.74785364 0.3170757 0.74785364 0.39925939
		 0.74785364 0.40289629 0.8304714 0.3170757 0.83047163 0.39925939 0.8304714 0.40289629
		 0.91308916 0.3170757 0.91308916 0.39925939 0.91308916 0.40289629 0.99570692 0.3170757
		 0.99570692 0.39925939 0.99570692 0.40289629 0.32868457 0.69921565 0.34566873 0.71619987
		 0.30548382 0.73754454 0.30548382 0.69299906 0.28228307 0.69921565 0.26529896 0.71619987
		 0.25908232 0.73940063 0.26529896 0.76260138 0.28228307 0.77958548 0.30548382 0.78580213
		 0.32868457 0.77958548 0.34566873 0.76260138 0.35188532 0.73940063 0.32868457 0.98375213
		 0.30548382 0.98996878 0.30548382 0.98792374 0.32770139 0.98197055 0.28228307 0.98375213
		 0.28326631 0.98197055 0.26529896 0.96676803 0.26700193 0.96570611 0.25908232 0.94356728
		 0.26104873 0.9434886 0.26529896 0.92036653 0.26700193 0.92127109 0.28228307 0.90338242
		 0.28326631 0.90500665 0.30548382 0.89716578 0.30548382 0.89905357 0.32868457 0.90338242
		 0.32770139 0.90500665 0.34566873 0.92036653 0.34396577 0.92127109 0.35188532 0.94356728
		 0.3499189 0.9434886 0.34566873 0.96676803 0.34396577 0.96570611;
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
createNode transform -n "Hour" -p "polySurface14";
	setAttr ".t" -type "double3" -257.04711881877319 -103.27664367428275 160.66274638505004 ;
	setAttr ".s" -type "double3" 1.7041191436106817 1.7041191436106817 1.7041191436106817 ;
createNode transform -n "pCube206" -p "Hour";
	setAttr ".t" -type "double3" 150.75451907891772 59.467173329064117 -60.806412842094176 ;
	setAttr ".s" -type "double3" 0.14441195899141149 0.19313371112873129 0.038048153693399624 ;
	setAttr ".rp" -type "double3" 0.084182418292527303 34.545895974616506 -33.472689227367667 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641969695 -144.32446162748127 846.27273803026765 ;
createNode mesh -n "pCubeShape206" -p "pCube206";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube207" -p "Hour";
	setAttr ".t" -type "double3" 150.75451907891772 59.467173329064117 -60.806412842094176 ;
	setAttr ".r" -type "double3" 0 14.999999999999998 0 ;
	setAttr ".s" -type "double3" 0.14441195899141149 0.19313371112873129 0.038048153693399624 ;
	setAttr ".rp" -type "double3" 0.084182418292527303 34.545895974616506 -33.472689227367667 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -2.1283406641969695 -144.32446162748127 846.27273803026765 ;
createNode mesh -n "pCubeShape207" -p "pCube207";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube208" -p "Hour";
	setAttr ".t" -type "double3" 167.29833818356727 59.467173329064188 -65.131145469254875 ;
	setAttr ".r" -type "double3" 0 29.999999999999993 0 ;
	setAttr ".s" -type "double3" 0.14441195899141149 0.19313371112873129 0.038048153693399631 ;
	setAttr ".rp" -type "double3" 0.31951479265602439 34.545895974616407 -33.472689227363993 ;
	setAttr ".rpt" -type "double3" -16.779151479012985 0 4.3247326271570499 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape208" -p "pCube208";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube209" -p "Hour";
	setAttr ".t" -type "double3" 174.28153595785278 59.467173329064188 -70.384405455666439 ;
	setAttr ".r" -type "double3" 0 45.000000000000007 0 ;
	setAttr ".s" -type "double3" 0.14441195899141149 0.19313371112873129 0.038048153693399638 ;
	setAttr ".rp" -type "double3" 0.31951479265602434 34.545895974616393 -33.472689227363965 ;
	setAttr ".rpt" -type "double3" -23.762349253298495 0 9.5779926135685205 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape209" -p "pCube209";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube210" -p "Hour";
	setAttr ".t" -type "double3" 179.66714330476123 59.467173329064174 -77.266049528454928 ;
	setAttr ".r" -type "double3" 0 60.000000000000021 0 ;
	setAttr ".s" -type "double3" 0.14441195899141152 0.19313371112873129 0.038048153693399638 ;
	setAttr ".rp" -type "double3" 0.31951479265602434 34.545895974616386 -33.472689227363936 ;
	setAttr ".rpt" -type "double3" -29.1479566002069 0 16.459636686356944 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape210" -p "pCube210";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube211" -p "Hour";
	setAttr ".t" -type "double3" 183.08813998373773 59.467173329064188 -85.307105016514384 ;
	setAttr ".r" -type "double3" 0 75.000000000000014 0 ;
	setAttr ".s" -type "double3" 0.14441195899141154 0.19313371112873129 0.038048153693399651 ;
	setAttr ".rp" -type "double3" 0.31951479265602439 34.545895974616371 -33.472689227363922 ;
	setAttr ".rpt" -type "double3" -32.568953279183354 0 24.500692174416315 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape211" -p "pCube211";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube212" -p "Hour";
	setAttr ".t" -type "double3" 184.31139072457435 59.467173329064188 -93.959587276806047 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 0.14441195899141152 0.19313371112873129 0.038048153693399651 ;
	setAttr ".rp" -type "double3" 0.31951479265602434 34.545895974616364 -33.472689227363908 ;
	setAttr ".rpt" -type "double3" -33.792204020019938 0 33.153174434707893 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape212" -p "pCube212";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube213" -p "Hour";
	setAttr ".t" -type "double3" 183.25353301080051 59.467173329064174 -102.63384394219402 ;
	setAttr ".r" -type "double3" 0 105 0 ;
	setAttr ".s" -type "double3" 0.14441195899141152 0.19313371112873129 0.038048153693399658 ;
	setAttr ".rp" -type "double3" 0.31951479265602434 34.54589597461635 -33.472689227363787 ;
	setAttr ".rpt" -type "double3" -32.734346306245953 0 41.827431100095666 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.2727380302714 ;
createNode mesh -n "pCubeShape213" -p "pCube213";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube214" -p "Hour";
	setAttr ".t" -type "double3" 179.98665809741749 59.467173329064174 -110.73873875581913 ;
	setAttr ".r" -type "double3" 0 120.00000000000001 0 ;
	setAttr ".s" -type "double3" 0.14441195899141152 0.19313371112873129 0.038048153693399665 ;
	setAttr ".rp" -type "double3" 0.31951479265602434 34.545895974616343 -33.472689227363894 ;
	setAttr ".rpt" -type "double3" -29.46747139286288 0 49.93232591372081 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape214" -p "pCube214";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube215" -p "Hour";
	setAttr ".t" -type "double3" 174.73339811100595 59.46717332906416 -117.72193653010467 ;
	setAttr ".r" -type "double3" 0 135.00000000000003 0 ;
	setAttr ".s" -type "double3" 0.14441195899141152 0.19313371112873129 0.038048153693399665 ;
	setAttr ".rp" -type "double3" 0.31951479265602434 34.545895974616336 -33.472689227363887 ;
	setAttr ".rpt" -type "double3" -24.214211406451412 0 56.915523688006317 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape215" -p "pCube215";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube216" -p "Hour";
	setAttr ".t" -type "double3" 167.85175403821748 59.467173329064146 -123.10754387701307 ;
	setAttr ".r" -type "double3" 0 150.00000000000003 0 ;
	setAttr ".s" -type "double3" 0.14441195899141154 0.19313371112873129 0.038048153693399672 ;
	setAttr ".rp" -type "double3" 0.31951479265602439 34.545895974616322 -33.472689227363887 ;
	setAttr ".rpt" -type "double3" -17.332567333662986 0 62.301131034914711 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape216" -p "pCube216";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube217" -p "Hour";
	setAttr ".t" -type "double3" 159.81069855015807 59.467173329064146 -126.52854055598954 ;
	setAttr ".r" -type "double3" 0 165.00000000000003 0 ;
	setAttr ".s" -type "double3" 0.14441195899141152 0.19313371112873129 0.038048153693399672 ;
	setAttr ".rp" -type "double3" 0.31951479265602434 34.545895974616315 -33.472689227363887 ;
	setAttr ".rpt" -type "double3" -9.2915118456036083 0 65.722127713891211 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape217" -p "pCube217";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube218" -p "Hour";
	setAttr ".t" -type "double3" 151.15821628986637 59.467173329064131 -127.7517912968261 ;
	setAttr ".r" -type "double3" 0 180.00000000000006 0 ;
	setAttr ".s" -type "double3" 0.14441195899141154 0.19313371112873129 0.038048153693399686 ;
	setAttr ".rp" -type "double3" 0.31951479265602439 34.5458959746163 -33.472689227363901 ;
	setAttr ".rpt" -type "double3" -0.63902958531202314 0 66.945378454727802 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape218" -p "pCube218";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube219" -p "Hour";
	setAttr ".t" -type "double3" 142.48395962447839 59.467173329064103 -126.69393358305217 ;
	setAttr ".r" -type "double3" 0 195.00000000000006 0 ;
	setAttr ".s" -type "double3" 0.14441195899141152 0.19313371112873129 0.038048153693399686 ;
	setAttr ".rp" -type "double3" 0.31951479265602434 34.545895974616293 -33.472689227363915 ;
	setAttr ".rpt" -type "double3" 8.0352270800759165 0 65.887520740953974 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape219" -p "pCube219";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube220" -p "Hour";
	setAttr ".t" -type "double3" 134.37906481085332 59.467173329064103 -123.42705866966899 ;
	setAttr ".r" -type "double3" 0 210.00000000000006 0 ;
	setAttr ".s" -type "double3" 0.14441195899141152 0.19313371112873129 0.038048153693399693 ;
	setAttr ".rp" -type "double3" 0.31951479265602434 34.545895974616279 -33.472689227363936 ;
	setAttr ".rpt" -type "double3" 16.140121893700943 0 62.620645827570847 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape220" -p "pCube220";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube221" -p "Hour";
	setAttr ".t" -type "double3" 127.39586703656776 59.467173329064089 -118.1737986832575 ;
	setAttr ".r" -type "double3" 0 225.00000000000009 0 ;
	setAttr ".s" -type "double3" 0.14441195899141152 0.19313371112873129 0.038048153693399707 ;
	setAttr ".rp" -type "double3" 0.31951479265602434 34.545895974616272 -33.472689227364079 ;
	setAttr ".rpt" -type "double3" 23.123319667986554 0 57.367385841159575 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027117 ;
createNode mesh -n "pCubeShape221" -p "pCube221";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube222" -p "Hour";
	setAttr ".t" -type "double3" 122.01025968965939 59.467173329064103 -111.29215461046896 ;
	setAttr ".r" -type "double3" 0 240.00000000000009 0 ;
	setAttr ".s" -type "double3" 0.14441195899141152 0.19313371112873129 0.038048153693399707 ;
	setAttr ".rp" -type "double3" 0.31951479265602434 34.545895974616265 -33.472689227364107 ;
	setAttr ".rpt" -type "double3" 28.508927014895022 0 50.48574176837117 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027117 ;
createNode mesh -n "pCubeShape222" -p "pCube222";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube223" -p "Hour";
	setAttr ".t" -type "double3" 118.589263010683 59.467173329064103 -103.25109912240944 ;
	setAttr ".r" -type "double3" 0 255.00000000000011 0 ;
	setAttr ".s" -type "double3" 0.14441195899141154 0.19313371112873129 0.038048153693399707 ;
	setAttr ".rp" -type "double3" 0.31951479265602439 34.545895974616251 -33.472689227364135 ;
	setAttr ".rpt" -type "double3" 31.92992369387153 0 42.444686280311757 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027117 ;
createNode mesh -n "pCubeShape223" -p "pCube223";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube224" -p "Hour";
	setAttr ".t" -type "double3" 117.36601226984644 59.467173329064089 -94.598616862117751 ;
	setAttr ".r" -type "double3" 0 -89.999999999999872 0 ;
	setAttr ".s" -type "double3" 0.14441195899141154 0.19313371112873129 0.038048153693399714 ;
	setAttr ".rp" -type "double3" 0.31951479265602439 34.545895974616244 -33.472689227364171 ;
	setAttr ".rpt" -type "double3" 33.153174434708149 0 33.792204020020115 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027117 ;
createNode mesh -n "pCubeShape224" -p "pCube224";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube225" -p "Hour";
	setAttr ".t" -type "double3" 118.42386998362039 59.467173329064074 -85.924360196729779 ;
	setAttr ".r" -type "double3" 0 -74.999999999999858 0 ;
	setAttr ".s" -type "double3" 0.14441195899141154 0.19313371112873129 0.038048153693399714 ;
	setAttr ".rp" -type "double3" 0.31951479265602439 34.545895974616229 -33.472689227364206 ;
	setAttr ".rpt" -type "double3" 32.095316720934285 0 25.11794735463214 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334724 -144.32446162748136 846.27273803027117 ;
createNode mesh -n "pCubeShape225" -p "pCube225";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube226" -p "Hour";
	setAttr ".t" -type "double3" 121.6907448970037 59.467173329064074 -77.819465383104728 ;
	setAttr ".r" -type "double3" 0 -59.999999999999829 0 ;
	setAttr ".s" -type "double3" 0.14441195899141157 0.19313371112873129 0.038048153693399721 ;
	setAttr ".rp" -type "double3" 0.31951479265602489 34.545895974616222 -33.472689227364249 ;
	setAttr ".rpt" -type "double3" 28.828441807551094 0 17.013052541007077 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334719 -144.32446162748136 846.27273803027117 ;
createNode mesh -n "pCubeShape226" -p "pCube226";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube227" -p "Hour";
	setAttr ".t" -type "double3" 126.94400488341523 59.46717332906406 -70.836267608819171 ;
	setAttr ".r" -type "double3" 0 -44.999999999999794 0 ;
	setAttr ".s" -type "double3" 0.14441195899141157 0.19313371112873129 0.038048153693399728 ;
	setAttr ".rp" -type "double3" 0.319514792656025 34.545895974616208 -33.472689227364185 ;
	setAttr ".rpt" -type "double3" 23.575181821139495 0 10.029854766721478 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334719 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape227" -p "pCube227";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube228" -p "Hour";
	setAttr ".t" -type "double3" 133.82564895620371 59.46717332906406 -65.450660261910699 ;
	setAttr ".r" -type "double3" 0 -29.999999999999776 0 ;
	setAttr ".s" -type "double3" 0.14441195899141157 0.19313371112873129 0.038048153693399728 ;
	setAttr ".rp" -type "double3" 0.31951479265602506 34.545895974616201 -33.472689227364235 ;
	setAttr ".rpt" -type "double3" 16.693537748351012 0 4.6442474198130359 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334719 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape228" -p "pCube228";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube229" -p "Hour";
	setAttr ".t" -type "double3" 141.86670444426318 59.467173329064046 -62.029663582934234 ;
	setAttr ".r" -type "double3" 0 -14.999999999999744 0 ;
	setAttr ".s" -type "double3" 0.1444119589914116 0.19313371112873129 0.038048153693399728 ;
	setAttr ".rp" -type "double3" 0.31951479265602478 34.545895974616194 -33.472689227364278 ;
	setAttr ".rpt" -type "double3" 8.6524822602915403 0 1.2232507408365674 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334721 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape229" -p "pCube229";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube230" -p "Hour";
	setAttr ".t" -type "double3" 150.51918670455484 59.467173329064032 -60.806412842097593 ;
	setAttr ".s" -type "double3" 0.1444119589914116 0.19313371112873129 0.038048153693399735 ;
	setAttr ".rp" -type "double3" 0.31951479265602467 34.54589597461618 -33.472689227364327 ;
	setAttr ".sp" -type "double3" 2.212523082489497 178.87035760209778 -879.74542725763536 ;
	setAttr ".spt" -type "double3" -1.8930082898334721 -144.32446162748136 846.27273803027128 ;
createNode mesh -n "pCubeShape230" -p "pCube230";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -8.6020546 -8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546
		 -8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 8.6020546 -8.6020546 8.6020546 -8.6020546
		 8.6020546 8.6020546 -8.6020546 -8.6020546 -8.6020546 -8.6020546 8.6020546 -8.6020546 -8.6020546;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface15" -p "FuturisticClock";
	setAttr ".t" -type "double3" 150.83869406245239 57.117682610991451 -128.9283388944493 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "polySurfaceShape15" -p "polySurface15";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.30548381805419922 0.94348865747451782 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 37 ".uvst[0].uvsp[0:36]" -type "float2" 0.34396577 0.96570611
		 0.32770139 0.98197055 0.30548382 0.94171119 0.30548382 0.98792374 0.28326631 0.98197055
		 0.26700193 0.96570611 0.26104873 0.9434886 0.26700193 0.92127109 0.28326631 0.90500665
		 0.30548382 0.89905357 0.32770139 0.90500665 0.34396577 0.92127109 0.3499189 0.9434886
		 0.34396577 0.96570611 0.32770139 0.98197055 0.32770139 0.98197055 0.34396577 0.96570611
		 0.30548382 0.98792374 0.30548382 0.98792374 0.28326631 0.98197055 0.28326631 0.98197055
		 0.26700193 0.96570611 0.26700193 0.96570611 0.26104873 0.9434886 0.26104873 0.9434886
		 0.26700193 0.92127109 0.26700193 0.92127109 0.28326631 0.90500665 0.28326631 0.90500665
		 0.30548382 0.89905357 0.30548382 0.89905357 0.32770139 0.90500665 0.32770139 0.90500665
		 0.34396577 0.92127109 0.34396577 0.92127109 0.3499189 0.9434886 0.3499189 0.9434886;
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
createNode transform -n "polySurface11" -p "FuturisticClock";
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
createNode transform -n "polySurface12" -p "FuturisticClock";
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
createNode transform -n "polySurface13" -p "FuturisticClock";
	setAttr ".t" -type "double3" 150.83869406245239 18.354384653615359 -128.9283388944493 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "polySurfaceShape13" -p "polySurface13";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 72 ".uvst[0].uvsp[0:71]" -type "float2" 0.4355793 0.74414337
		 0.4355793 0.81326449 0.43378961 0.81326449 0.43378961 0.74444848 0.4355793 0.88238549
		 0.43378961 0.88208044 0.43199003 0.81326449 0.43199003 0.7452476 0.4355793 0.6935432
		 0.43378961 0.69407165 0.4355793 0.93298572 0.43378961 0.93245721 0.43199003 0.88128126
		 0.43199003 0.69545585 0.43199003 0.93107307 0.44715488 0.69354326 0.44715488 0.76266414
		 0.44536531 0.76266414 0.44536531 0.69384825 0.44715488 0.83178532 0.44536531 0.83148015
		 0.44356573 0.76266414 0.44356573 0.69464743 0.44715488 0.88238549 0.44536531 0.88185692
		 0.44356573 0.83068097 0.44356573 0.88047278 0.43777788 0.88238549 0.43777788 0.81326449
		 0.43956745 0.81326449 0.43956745 0.88208044 0.43777788 0.74414337 0.43956745 0.74444848
		 0.44136703 0.81326449 0.44136703 0.88128126 0.43777788 0.69354326 0.43956745 0.69407165
		 0.44136703 0.7452476 0.44136703 0.69545585 0.45337713 0.69354326 0.45337713 0.76266426
		 0.45158744 0.76266426 0.45158744 0.69384837 0.45337713 0.83178532 0.45158744 0.83148026
		 0.44978786 0.76266426 0.44978786 0.69464755 0.44978786 0.83068109 0.41143274 0.89759362
		 0.36164105 0.94738537 0.2943477 0.83082998 0.29487735 0.83030039 0.2936241 0.96561044
		 0.29362416 0.83102393 0.42965782 0.82957685 0.29507124 0.82957685 0.22560734 0.94738537
		 0.29290062 0.83082998 0.41143274 0.76155996 0.29487735 0.82885325 0.17581552 0.89759362
		 0.29237098 0.83030039 0.36164105 0.71176821 0.2943477 0.82832366 0.15759054 0.82957685
		 0.29217708 0.82957685 0.2936241 0.6935432 0.29362416 0.82812977 0.17581552 0.76155996
		 0.29237098 0.82885325 0.22560734 0.71176821 0.29290062 0.82832366;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".vt[0:47]"  49.18124008 -10.82548714 -28.39482498 28.39481163 -10.82548714 -49.18125534
		 -1.0366954e-006 -10.82548714 -56.78963852 -28.39476585 -10.82548714 -49.18125534
		 -49.18120956 -10.82548714 -28.39482498 -56.78954697 -10.82548714 -6.1035156e-005
		 -49.18120956 -10.82548714 28.39472008 -28.39476585 -10.82548714 49.18117142 -1.0366954e-006 -10.82548714 56.78951645
		 28.39481163 -10.82548714 49.18117142 49.18124008 -10.82548714 28.39472008 56.78959274 -10.82548714 -6.1035156e-005
		 48.61009979 -11.56805992 -28.065076828 28.065063477 -11.56805992 -48.61011505 -7.5885612e-007 -11.56805992 -56.13014221
		 -28.0650177 -11.56805992 -48.61011505 -48.61006927 -11.56805992 -28.065076828 -56.13005066 -11.56805992 -6.1035156e-005
		 -48.61006927 -11.56805992 28.064971924 -28.0650177 -11.56805992 48.61003113 -7.5885612e-007 -11.56805992 56.13002014
		 28.065063477 -11.56805992 48.61003113 48.61009979 -11.56805992 28.064971924 56.13009644 -11.56805992 -6.1035156e-005
		 0.51711273 -12.044296265 -0.29861259 0.29856682 -12.044296265 -0.51715851 2.2648346e-005 -12.044296265 -0.59715652
		 -0.29852104 -12.044296265 -0.51715851 -0.51706696 -12.044296265 -0.29861259 -0.59706497 -12.044296265 -6.8584603e-005
		 -0.51706696 -12.044296265 0.29847527 -0.29852104 -12.044296265 0.51702118 2.2648346e-005 -12.044296265 0.5970192
		 0.29856682 -12.044296265 0.51702118 0.51711273 -12.044296265 0.29847527 0.59711075 -12.044296265 -6.8584603e-005
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
		mu 0 4 8 0 3 9
		f 4 73 3 -5 -2
		mu 0 4 0 1 2 3
		f 4 74 5 -7 -4
		mu 0 4 1 4 5 2
		f 4 75 7 -9 -6
		mu 0 4 4 10 11 5
		f 4 76 9 -11 -8
		mu 0 4 15 16 17 18
		f 4 77 11 -13 -10
		mu 0 4 16 19 20 17
		f 4 78 13 -15 -12
		mu 0 4 19 23 24 20
		f 4 79 15 -17 -14
		mu 0 4 27 28 29 30
		f 4 80 17 -19 -16
		mu 0 4 28 31 32 29
		f 4 81 19 -21 -18
		mu 0 4 31 35 36 32
		f 4 82 21 -23 -20
		mu 0 4 39 40 41 42
		f 4 83 0 -24 -22
		mu 0 4 40 43 44 41
		f 4 2 25 -27 -25
		mu 0 4 9 3 7 13
		f 4 4 27 -29 -26
		mu 0 4 3 2 6 7
		f 4 6 29 -31 -28
		mu 0 4 2 5 12 6
		f 4 8 31 -33 -30
		mu 0 4 5 11 14 12
		f 4 10 33 -35 -32
		mu 0 4 18 17 21 22
		f 4 12 35 -37 -34
		mu 0 4 17 20 25 21
		f 4 14 37 -39 -36
		mu 0 4 20 24 26 25
		f 4 16 39 -41 -38
		mu 0 4 30 29 33 34
		f 4 18 41 -43 -40
		mu 0 4 29 32 37 33
		f 4 20 43 -45 -42
		mu 0 4 32 36 38 37
		f 4 22 45 -47 -44
		mu 0 4 42 41 45 46
		f 4 23 24 -48 -46
		mu 0 4 41 44 47 45
		f 4 26 49 -51 -49
		mu 0 4 48 49 50 51
		f 4 28 51 -53 -50
		mu 0 4 49 52 53 50
		f 4 30 53 -55 -52
		mu 0 4 52 56 57 53
		f 4 32 55 -57 -54
		mu 0 4 56 60 61 57
		f 4 34 57 -59 -56
		mu 0 4 60 64 65 61
		f 4 36 59 -61 -58
		mu 0 4 64 68 69 65
		f 4 38 61 -63 -60
		mu 0 4 68 70 71 69
		f 4 40 63 -65 -62
		mu 0 4 70 66 67 71
		f 4 42 65 -67 -64
		mu 0 4 66 62 63 67
		f 4 44 67 -69 -66
		mu 0 4 62 58 59 63
		f 4 46 69 -71 -68
		mu 0 4 58 54 55 59
		f 4 47 48 -72 -70
		mu 0 4 54 48 51 55;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "polySurface16";
	setAttr ".t" -type "double3" 274.24920942207228 0 0 ;
createNode mesh -n "polySurfaceShape16" -p "polySurface16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.66463351 0.0017428469
		 0.66463351 0.87319374 0.0019920301 0.87319374 0.0019920301 0.0017428469 0.20757681
		 0.29455584 0.20757681 0 0.79100537 0 0.79100537 0.29455584;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -31.1991272 -31.083795547 -200.69311523 -31.1991272 -31.083795547 -44.5620079
		 -236.5297699 -31.083795547 -200.69311523 -236.5297699 -31.083795547 -44.5620079 -31.1991272 -107.6477356 -44.5620079
		 -236.5297699 -107.6477356 -44.5620079;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 2 0 1 3 0 2 3 0 1 4 0 3 5 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 1 2 3
		f 4 5 -7 -5 2
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group3";
	setAttr ".t" -type "double3" 0 185.70648924504303 0 ;
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
	setAttr -s 968 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0.35363418 0.375 0.45806718
		 0.375 0.45806718 0.375 0.35363418 0.375 0.35363418 0.37500003 0.45806721 0.625 0.45806721
		 0.625 0.35363418 0.625 0.35363418 0.625 0.45806718 0.625 0.45806718 0.625 0.35363418
		 0.625 0.35363418 0.625 0.45806718 0.625 0.45806718 0.625 0.35363418 0.72863424 0.25
		 0.83306718 0.24999999 0.83306718 0 0.72863424 0 0.625 0.89636582 0.625 0.79193282
		 0.37500003 0.79193282 0.375 0.89636582 0.27136579 0 0.16693279 0 0.16693279 0.24999999
		 0.27136579 0.25 0.375 0.35363418 0.375 0.45806718 0.375 0.45806718 0.375 0.35363418
		 0.375 0.35363418 0.375 0.45806718 0.375 0.45806718 0.375 0.35363418 0.375 0.35363418
		 0.37500003 0.45806721 0.625 0.45806721 0.625 0.35363418 0.625 0.35363418 0.625 0.45806718
		 0.625 0.45806718 0.625 0.35363418 0.625 0.35363418 0.625 0.45806718 0.625 0.45806718
		 0.625 0.35363418 0.72863424 0.25 0.83306718 0.24999999 0.83306718 0 0.72863424 0
		 0.625 0.89636582 0.625 0.79193282 0.37500003 0.79193282 0.375 0.89636582 0.27136579
		 0 0.16693279 0 0.16693279 0.24999999 0.27136579 0.25 0.375 0.35363418 0.375 0.45806718
		 0.375 0.45806718 0.375 0.35363418 0.375 0.35363418 0.375 0.45806718 0.375 0.45806718
		 0.375 0.35363418 0.375 0.35363421 0.375 0.45806721 0.625 0.45806718 0.625 0.35363418
		 0.625 0.35363418 0.625 0.45806718 0.625 0.45806718 0.625 0.35363418 0.625 0.35363418
		 0.625 0.45806718 0.625 0.45806718 0.625 0.35363418 0.72863424 0.25 0.83306718 0.24999999
		 0.83306718 0 0.72863424 0 0.625 0.89636582 0.625 0.79193282 0.37500003 0.79193282
		 0.375 0.89636582 0.27136579 0 0.16693279 0 0.16693279 0.24999999 0.27136579 0.25
		 0.375 0.35363418 0.375 0.45806718 0.375 0.45806718 0.375 0.35363418 0.375 0.3431018
		 0.375 0.49901566 0.375 0.49901566 0.375 0.3431018 0.375 0.3431018 0.375 0.49901566
		 0.62500006 0.49901566 0.625 0.3431018 0.625 0.3431018 0.62500006 0.49901566 0.62500006
		 0.49901566 0.625 0.3431018 0.625 0.3431018 0.62500006 0.49901566 0.62500006 0.49901566
		 0.625 0.3431018 0.7181018 0.25 0.87401563 0.25 0.87401563 0 0.7181018 0 0.625 0.90689814
		 0.625 0.75098431 0.375 0.75098437 0.375 0.9068982 0.2818982 0 0.12598434 0 0.12598434
		 0.25 0.2818982 0.25 0.37500003 0.3431018 0.375 0.49901566 0.375 0.49901566 0.37500003
		 0.3431018 0.375 0.3431018 0.375 0.49901566 0.375 0.49901566 0.375 0.3431018 0.375
		 0.3431018 0.375 0.49901566 0.62500006 0.49901566 0.625 0.3431018 0.625 0.3431018
		 0.62500006 0.49901566 0.62500006 0.49901566 0.625 0.3431018 0.625 0.3431018 0.62500006
		 0.49901566 0.62500006 0.49901566 0.625 0.3431018 0.7181018 0.25 0.87401563 0.25 0.87401563
		 0 0.7181018 0 0.625 0.90689814 0.625 0.75098431 0.375 0.75098437 0.375 0.9068982
		 0.2818982 0 0.12598434 0 0.12598434 0.25 0.2818982 0.25 0.37500003 0.3431018 0.375
		 0.49901566 0.375 0.49901566 0.37500003 0.3431018 0.37500003 0.3431018 0.375 0.49901563
		 0.375 0.49901563 0.37500003 0.3431018 0.375 0.3431018 0.375 0.49901566 0.62500006
		 0.49901566 0.625 0.3431018 0.625 0.3431018 0.625 0.49901563 0.625 0.49901563 0.625
		 0.3431018 0.625 0.3431018 0.62500006 0.49901566 0.62500006 0.49901566 0.625 0.3431018
		 0.7181018 0.25 0.87401563 0.25 0.87401563 0 0.7181018 0 0.625 0.9068982 0.625 0.75098431
		 0.375 0.75098437 0.375 0.9068982 0.2818982 0 0.12598434 0 0.12598434 0.25 0.2818982
		 0.25 0.37500003 0.3431018 0.375 0.49901566 0.375 0.49901566 0.37500003 0.3431018
		 0.375 0.30802089 0.375 0.42651182 0.375 0.42651182 0.375 0.30802089 0.375 0.30802092
		 0.375 0.42651182 0.625 0.42651185 0.625 0.30802089 0.625 0.30802092 0.62500006 0.42651188
		 0.62500006 0.42651188 0.625 0.30802092 0.625 0.30802092 0.625 0.42651182 0.625 0.42651182
		 0.625 0.30802092 0.68302095 0.25 0.80151176 0.25 0.80151176 0 0.68302095 0 0.625
		 0.94197905 0.625 0.82348812 0.375 0.82348818 0.375 0.94197911 0.31697908 0 0.19848815
		 0 0.19848815 0.25 0.31697908 0.25 0.375 0.30802092 0.375 0.42651182 0.375 0.42651182
		 0.375 0.30802092 0.375 0.30802089 0.375 0.42651182 0.375 0.42651182 0.375 0.30802089
		 0.375 0.30802092 0.375 0.42651182 0.625 0.42651185 0.625 0.30802089 0.625 0.30802092
		 0.62500006 0.42651188 0.62500006 0.42651188 0.625 0.30802092 0.625 0.30802092 0.625
		 0.42651182 0.625 0.42651182 0.625 0.30802092 0.68302095 0.25 0.80151176 0.25 0.80151176
		 0 0.68302095 0 0.625 0.94197905 0.625 0.82348812 0.375 0.82348818 0.375 0.94197911
		 0.31697908 0 0.19848815 0;
	setAttr ".uvst[0].uvsp[250:499]" 0.19848815 0.25 0.31697908 0.25 0.375 0.30802092
		 0.375 0.42651182 0.375 0.42651182 0.375 0.30802092 0.375 0.30802092 0.375 0.42651182
		 0.375 0.42651182 0.375 0.30802092 0.375 0.30802089 0.375 0.42651182 0.625 0.42651182
		 0.625 0.30802089 0.625 0.30802092 0.62500006 0.42651188 0.62500006 0.42651188 0.625
		 0.30802092 0.625 0.30802092 0.625 0.42651182 0.625 0.42651182 0.625 0.30802092 0.68302095
		 0.25 0.80151176 0.25 0.80151176 0 0.68302095 0 0.625 0.94197905 0.625 0.82348812
		 0.375 0.82348818 0.375 0.94197911 0.31697908 0 0.19848815 0 0.19848815 0.25 0.31697908
		 0.25 0.375 0.30802092 0.375 0.42651182 0.375 0.42651182 0.375 0.30802092 0.375 0.30802092
		 0.375 0.42651182 0.375 0.42651182 0.375 0.30802092 0.375 0.30802092 0.375 0.42651182
		 0.625 0.42651185 0.625 0.30802089 0.625 0.30802092 0.625 0.42651182 0.625 0.42651182
		 0.625 0.30802092 0.625 0.30802092 0.625 0.42651182 0.625 0.42651182 0.625 0.30802092
		 0.68302095 0.25 0.80151176 0.25 0.80151176 0 0.68302095 0 0.625 0.94197905 0.625
		 0.82348812 0.375 0.82348818 0.375 0.94197911 0.31697908 0 0.19848815 0 0.19848815
		 0.25 0.31697908 0.25 0.375 0.30802092 0.375 0.42651182 0.375 0.42651182 0.375 0.30802092
		 0.375 0 0.625 0 0.625 0.25 0.375 0.25 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND -1.#IND -1.#IND 0.42230624 0.014757661 0.38432425 0.014757661 0.38432428
		 0.081848994 0.38779062 0.09172786 0.39545038 0.097630933 0.41118008 0.097630933 0.41883981
		 0.09172786 0.42230624 0.081848994 0.57725018 0.11650284 0.55180943 0.11650285 0.55180937
		 0.16144145 0.55413121 0.16805843 0.55926168 0.17201234 0.56979769 0.17201236 0.57492828
		 0.16805841 0.57725012 0.16144142 0.51021326 0.11650285 0.48477244 0.11650284 0.48477238
		 0.16144145 0.48709422 0.16805843 0.49222478 0.17201236 0.50276071 0.17201236 0.5078913
		 0.16805841 0.51021314 0.16144145 0.44317621 0.11650284 0.41773546 0.11650284 0.41773543
		 0.16144143 0.42005724 0.1680584 0.42518789 0.17201236 0.43572378 0.17201236 0.44085437
		 0.16805841 0.44317624 0.16144145 0.60931897 0.1854427 0.59011346 0.18544269 0.59011346
		 0.21936724 0.59186625 0.22436246 0.59573931 0.22734734 0.60369307 0.22734734 0.60756618
		 0.22436246 0.60931897 0.21936725 0.55081397 0.18544272 0.5316084 0.18544267 0.53160846
		 0.21936725 0.5333612 0.22436245 0.53723437 0.22734734 0.54518801 0.22734734 0.54906112
		 0.22436245 0.55081391 0.21936725 0.49230894 0.1854427 0.47310346 0.18544269 0.47310343
		 0.21936722 0.47485626 0.22436245 0.4787294 0.22734734 0.48668301 0.22734731 0.49055615
		 0.22436243 0.49230891 0.21936724 0.43380401 0.18544272 0.41459849 0.18544269 0.41459846
		 0.21936725 0.41635129 0.22436245 0.4202244 0.22734737 0.4281781 0.22734736 0.43205124
		 0.22436248 0.43380395 0.21936724 0.39892554 0.22734736 0.40279874 0.22436248 0.40455148
		 0.21936725 0.40455151 0.18544272 0.385346 0.18544272 0.385346 0.21936725 0.38709876
		 0.22436248 0.3909719 0.22734736 0.45743066 0.22734737 0.46130368 0.22436245 0.46305642
		 0.21936724 0.46305645 0.18544269 0.44385102 0.18544272 0.44385096 0.21936722 0.44560376
		 0.22436246 0.4494769 0.22734736 0.51593554 0.22734734 0.51980865 0.22436245 0.52156138
		 0.21936724 0.52156138 0.18544269 0.50235593 0.18544269 0.50235593 0.21936724 0.50410867
		 0.22436243 0.5079819 0.22734733 0.57444054 0.22734734 0.57831371 0.22436246 0.58006638
		 0.21936724 0.58006638 0.1854427 0.56086099 0.18544272 0.56086093 0.21936724 0.56261373
		 0.22436245 0.56648684 0.22734734 0.40220529 0.17201236 0.40733588 0.16805841 0.40965772
		 0.16144143 0.40965772 0.11650284 0.38421693 0.11650284 0.38421696 0.16144145 0.38653877
		 0.16805841 0.39166936 0.17201237 0.46924222 0.17201233 0.47437286 0.1680584 0.4766947
		 0.16144145 0.47669476 0.11650285 0.45125389 0.11650284 0.45125398 0.16144145 0.45357573
		 0.1680584 0.45870632 0.17201236 0.5362792 0.17201236 0.54140973 0.1680584 0.54373169
		 0.16144145 0.54373175 0.11650285 0.51829094 0.11650284 0.51829088 0.16144145 0.52061272
		 0.16805843 0.52574331 0.17201236 0.60331619 0.17201236 0.60844684 0.16805841 0.61076862
		 0.16144143 -1.#IND -1.#IND -1.#IND -1.#IND 0.58532774 0.16144142 0.5876497 0.1680584
		 0.59278023 0.17201234 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND 0.46923208
		 0.014757659 0.43125018 0.014757661 -1.#IND -1.#IND -1.#IND -1.#IND 0.44237626 0.097630933
		 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75
		 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND;
	setAttr ".uvst[0].uvsp[500:749]" -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND -1.#IND -1.#IND 0.39545044 0.65236831 0.38779068 0.65827143 0.38432422
		 0.66815031 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND -1.#IND -1.#IND 0.50276077 0.57798618 0.49222484 0.57798618 0.48709425
		 0.58194023 0.48477238 0.58855718 -1.#IND -1.#IND -1.#IND -1.#IND 0.5102132 0.58855724
		 0.5078913 0.58194017 0.43572372 0.57798624 0.42518786 0.57798618 0.42005724 0.58194017
		 0.41773546 0.58855724 0.41773546 0.63349622 0.44317621 0.63349622 0.44317621 0.58855718
		 0.44085437 0.58194017 0.60369307 0.52265084 0.59573936 0.52265078 0.59186625 0.52563572
		 0.59011352 0.53063095 0.59011352 0.56455576 0.60931897 0.56455576 0.60931897 0.53063095
		 0.60756612 0.52563572 0.54518807 0.52265084 0.53723437 0.52265078 0.53336126 0.52563572
		 0.53160846 0.53063095 0.53160846 0.56455576 0.55081391 0.56455576 0.55081391 0.53063095
		 0.54906118 0.52563572 0.48668304 0.52265078 0.47872937 0.52265084 0.4748562 0.52563566
		 0.47310346 0.53063095 0.47310352 0.56455582 0.49230897 0.56455576 0.49230894 0.53063095
		 0.49055621 0.52563572 0.42817807 0.52265078 0.42022446 0.52265084 0.41635126 0.52563572
		 0.41459852 0.53063101 0.41459852 0.56455576 0.43380401 0.56455576 0.43380398 0.53063095
		 0.43205121 0.52563572 0.40455151 0.56455576 0.40455148 0.53063095 0.40279871 0.52563572
		 0.39892563 0.52265084 0.39097196 0.52265084 0.38709879 0.52563572 0.38534603 0.53063101
		 0.385346 0.56455576 0.46305647 0.56455582 0.46305645 0.53063095 0.46130368 0.52563572
		 0.4574306 0.52265084 0.4494769 0.52265078 0.44560379 0.52563572 0.44385099 0.53063095
		 0.44385099 0.56455576 0.52156144 0.56455576 0.52156144 0.53063095 0.51980865 0.52563572
		 0.51593554 0.52265084 0.50798196 0.52265084 0.50410879 0.52563572 0.50235599 0.53063095
		 0.50235605 0.56455576 0.58006644 0.56455576 0.58006644 0.53063095 0.57831365 0.52563572
		 0.5744406 0.52265084 0.5664869 0.52265084 0.56261373 0.52563572 0.56086093 0.53063095
		 0.56086093 0.56455576 0.40965778 0.63349622 0.40965772 0.58855724 0.40733588 0.58194017
		 0.40220529 0.57798618 0.39166936 0.57798618 0.3865388 0.58194023 0.38421693 0.58855718
		 0.38421693 0.63349617 0.4766947 0.63349622 0.4766947 0.58855724 0.47437289 0.58194017
		 0.46924227 0.57798618 0.45870632 0.57798624 0.45357573 0.58194017 0.45125395 0.58855718
		 0.45125392 0.63349628 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND 0.53627926
		 0.57798624 0.52574325 0.57798624 0.52061272 0.58194023 -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND -1.#IND
		 -1.#IND -1.#IND -1.#IND -1.#IND 0.625 0.42651182 0.625 0.30802092 0.625 0.30802092
		 0.625 0.42651182 0.625 0.42651182 0.625 0.30802092 0.625 0.30802092 0.625 0.42651182
		 0.80151176 0 0.68302095 0 0.68302095 0.25 0.80151176 0.25 0.375 0.82348818 0.375
		 0.94197911 0.625 0.94197905 0.625 0.82348812 0.19848815 0.25 0.31697908 0.25 0.31697908
		 0 0.19848815 0 0.375 0.42651182 0.375 0.30802092 0.375 0.30802092 0.375 0.42651182
		 0.375 0.42651182 0.375 0.30802092 0.375 0.30802092 0.375 0.42651182 0.625 0.42651185
		 0.625 0.30802089 0.375 0.30802092 0.375 0.42651182 0.625 0.42651182 0.625 0.30802092
		 0.625 0.30802092 0.625 0.42651182 0.625 0.42651182 0.625 0.30802092 0.625 0.30802092
		 0.625 0.42651182 0.80151176 0 0.68302095 0 0.68302095 0.25 0.80151176 0.25 0.375
		 0.82348818 0.375 0.94197911 0.625 0.94197905 0.625 0.82348812 0.19848815 0.25 0.31697908
		 0.25 0.31697908 0 0.19848815 0 0.375 0.42651182 0.375 0.30802092 0.375 0.30802092
		 0.375 0.42651182 0.375 0.42651182 0.375 0.30802092 0.375 0.30802092 0.375 0.42651182
		 0.625 0.42651185 0.625 0.30802089 0.375 0.30802092 0.375 0.42651182 0.62500006 0.42651188
		 0.625 0.30802092 0.625 0.30802092 0.62500006 0.42651188 0.625 0.42651182 0.625 0.30802092
		 0.625 0.30802092 0.625 0.42651182 0.80151176 0 0.68302095 0 0.68302095 0.25 0.80151176
		 0.25 0.375 0.82348818 0.375 0.94197911 0.625 0.94197905 0.625 0.82348812 0.19848815
		 0.25 0.31697908 0.25 0.31697908 0 0.19848815 0 0.375 0.42651182 0.375 0.30802092
		 0.375 0.30802092 0.375 0.42651182 0.375 0.42651182 0.375 0.30802089 0.375 0.30802089
		 0.375 0.42651182 0.625 0.42651185 0.625 0.30802089 0.375 0.30802092 0.375 0.42651182
		 0.62500006 0.42651188 0.625 0.30802092 0.625 0.30802092 0.62500006 0.42651188 0.625
		 0.42651182 0.625 0.30802092;
	setAttr ".uvst[0].uvsp[750:967]" 0.625 0.30802092 0.625 0.42651182 0.80151176
		 0 0.68302095 0 0.68302095 0.25 0.80151176 0.25 0.375 0.82348818 0.375 0.94197911
		 0.625 0.94197905 0.625 0.82348812 0.19848815 0.25 0.31697908 0.25 0.31697908 0 0.19848815
		 0 0.375 0.42651182 0.375 0.30802092 0.375 0.30802092 0.375 0.42651182 0.375 0.42651182
		 0.375 0.30802089 0.375 0.30802089 0.375 0.42651182 0.625 0.42651185 0.625 0.30802089
		 0.375 0.30802092 0.375 0.42651182 0.62500006 0.49901566 0.625 0.3431018 0.625 0.3431018
		 0.62500006 0.49901566 0.62500006 0.49901566 0.625 0.3431018 0.625 0.3431018 0.62500006
		 0.49901566 0.87401563 0 0.7181018 0 0.7181018 0.25 0.87401563 0.25 0.375 0.75098437
		 0.375 0.9068982 0.625 0.9068982 0.625 0.75098431 0.12598434 0.25 0.2818982 0.25 0.2818982
		 0 0.12598434 0 0.375 0.49901566 0.37500003 0.3431018 0.37500003 0.3431018 0.375 0.49901566
		 0.375 0.49901566 0.375 0.3431018 0.375 0.3431018 0.375 0.49901566 0.62500006 0.49901566
		 0.625 0.3431018 0.375 0.3431018 0.375 0.49901566 0.625 0.49901563 0.625 0.3431018
		 0.625 0.3431018 0.625 0.49901563 0.62500006 0.49901566 0.625 0.3431018 0.625 0.3431018
		 0.62500006 0.49901566 0.87401563 0 0.7181018 0 0.7181018 0.25 0.87401563 0.25 0.375
		 0.75098437 0.375 0.9068982 0.625 0.9068982 0.625 0.75098431 0.12598434 0.25 0.2818982
		 0.25 0.2818982 0 0.12598434 0 0.375 0.49901566 0.37500003 0.3431018 0.37500003 0.3431018
		 0.375 0.49901566 0.375 0.49901563 0.37500003 0.3431018 0.37500003 0.3431018 0.375
		 0.49901563 0.62500006 0.49901566 0.625 0.3431018 0.375 0.3431018 0.375 0.49901566
		 0.62500006 0.49901566 0.625 0.3431018 0.625 0.3431018 0.62500006 0.49901566 0.62500006
		 0.49901566 0.625 0.3431018 0.625 0.3431018 0.62500006 0.49901566 0.87401563 0 0.7181018
		 0 0.7181018 0.25 0.87401563 0.25 0.375 0.75098437 0.375 0.9068982 0.625 0.90689814
		 0.625 0.75098431 0.12598434 0.25 0.2818982 0.25 0.2818982 0 0.12598434 0 0.375 0.49901566
		 0.37500003 0.3431018 0.37500003 0.3431018 0.375 0.49901566 0.375 0.49901566 0.375
		 0.3431018 0.375 0.3431018 0.375 0.49901566 0.62500006 0.49901566 0.625 0.3431018
		 0.375 0.3431018 0.375 0.49901566 0.62500006 0.49901566 0.625 0.3431018 0.625 0.3431018
		 0.62500006 0.49901566 0.62500006 0.49901566 0.625 0.3431018 0.625 0.3431018 0.62500006
		 0.49901566 0.87401563 0 0.7181018 0 0.7181018 0.25 0.87401563 0.25 0.375 0.75098437
		 0.375 0.9068982 0.625 0.90689814 0.625 0.75098431 0.12598434 0.25 0.2818982 0.25
		 0.2818982 0 0.12598434 0 0.375 0.49901566 0.37500003 0.3431018 0.37500003 0.3431018
		 0.375 0.49901566 0.375 0.49901566 0.375 0.3431018 0.375 0.3431018 0.375 0.49901566
		 0.62500006 0.49901566 0.625 0.3431018 0.375 0.3431018 0.375 0.49901566 0.625 0.45806718
		 0.625 0.35363418 0.625 0.35363418 0.625 0.45806718 0.625 0.45806718 0.625 0.35363418
		 0.625 0.35363418 0.625 0.45806718 0.83306718 0 0.72863424 0 0.72863424 0.25 0.83306718
		 0.24999999 0.37500003 0.79193282 0.375 0.89636582 0.625 0.89636582 0.625 0.79193282
		 0.16693279 0.24999999 0.27136579 0.25 0.27136579 0 0.16693279 0 0.375 0.45806718
		 0.375 0.35363418 0.375 0.35363418 0.375 0.45806718 0.375 0.45806718 0.375 0.35363418
		 0.375 0.35363418 0.375 0.45806718 0.625 0.45806721 0.625 0.35363418 0.375 0.35363418
		 0.37500003 0.45806721 0.625 0.45806718 0.625 0.35363418 0.625 0.35363418 0.625 0.45806718
		 0.625 0.45806718 0.625 0.35363418 0.625 0.35363418 0.625 0.45806718 0.83306718 0
		 0.72863424 0 0.72863424 0.25 0.83306718 0.24999999 0.37500003 0.79193282 0.375 0.89636582
		 0.625 0.89636582 0.625 0.79193282 0.16693279 0.24999999 0.27136579 0.25 0.27136579
		 0 0.16693279 0 0.375 0.45806718 0.375 0.35363418 0.375 0.35363418 0.375 0.45806718
		 0.375 0.45806718 0.375 0.35363418 0.375 0.35363418 0.375 0.45806718 0.625 0.45806721
		 0.625 0.35363418 0.375 0.35363418 0.37500003 0.45806721;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 328 ".vt";
	setAttr ".vt[0:165]"  202.66586304 36.14884567 -163.31292725 202.66586304 36.14884567 -200.018127441
		 208.95024109 40.43362045 -200.018127441 208.95024109 40.43362045 -163.31292725 221.85554504 40.43362045 -200.018127441
		 221.85554504 40.43362045 -163.31292725 228.1399231 36.14884567 -200.018127441 228.1399231 36.14884567 -163.31292725
		 230.98390198 28.97822189 -200.018127441 230.98390198 28.97822189 -163.31292725 230.98390198 -19.7203598 -200.018127441
		 230.98390198 -19.7203598 -163.31292725 199.82188416 -19.7203598 -200.018127441 199.82188416 -19.7203598 -163.31292725
		 199.82188416 28.97822189 -200.018127441 199.82188416 28.97822189 -163.31292725 125.66586304 36.14884567 -163.31292725
		 125.66586304 36.14884567 -200.018127441 131.95024109 40.43362045 -200.018127441 131.95024109 40.43362045 -163.31292725
		 144.85554504 40.43362045 -200.018127441 144.85554504 40.43362045 -163.31292725 151.1399231 36.14884567 -200.018127441
		 151.1399231 36.14884567 -163.31292725 153.98390198 28.97822189 -200.018127441 153.98390198 28.97822189 -163.31292725
		 153.98390198 -19.7203598 -200.018127441 153.98390198 -19.7203598 -163.31292725 122.82188416 -19.7203598 -200.018127441
		 122.82188416 -19.7203598 -163.31292725 122.82188416 28.97822189 -200.018127441 122.82188416 28.97822189 -163.31292725
		 48.66586304 36.14884567 -163.31292725 48.66586304 36.14884567 -200.018127441 54.95024109 40.43362045 -200.018127441
		 54.95024109 40.43362045 -163.31292725 67.85554504 40.43362045 -200.018127441 67.85554504 40.43362045 -163.31292725
		 74.1399231 36.14884567 -200.018127441 74.1399231 36.14884567 -163.31292725 76.98390198 28.97822189 -200.018127441
		 76.98390198 28.97822189 -163.31292725 76.98390198 -19.7203598 -200.018127441 76.98390198 -19.7203598 -163.31292725
		 45.82188416 -19.7203598 -200.018127441 45.82188416 -19.7203598 -163.31292725 45.82188416 28.97822189 -200.018127441
		 45.82188416 28.97822189 -163.31292725 185.13876343 91.55375671 -163.31292725 185.13876343 91.55375671 -200.018127441
		 189.34811401 94.42375183 -200.018127441 189.34811401 94.42375183 -163.31292725 197.99224854 94.42375183 -200.018127441
		 197.99224854 94.42375183 -163.31292725 202.20159912 91.55375671 -200.018127441 202.20159912 91.55375671 -163.31292725
		 204.10653687 86.75079346 -200.018127441 204.10653687 86.75079346 -163.31292725 204.10653687 54.13188934 -200.018127441
		 204.10653687 54.13188934 -163.31292725 183.23382568 54.13188934 -200.018127441 183.23382568 54.13188934 -163.31292725
		 183.23382568 86.75079346 -200.018127441 183.23382568 86.75079346 -163.31292725 130.13876343 91.55375671 -163.31292725
		 130.13876343 91.55375671 -200.018127441 134.34811401 94.42375183 -200.018127441 134.34811401 94.42375183 -163.31292725
		 142.99224854 94.42375183 -200.018127441 142.99224854 94.42375183 -163.31292725 147.20159912 91.55375671 -200.018127441
		 147.20159912 91.55375671 -163.31292725 149.10653687 86.75079346 -200.018127441 149.10653687 86.75079346 -163.31292725
		 149.10653687 54.13188934 -200.018127441 149.10653687 54.13188934 -163.31292725 128.23382568 54.13188934 -200.018127441
		 128.23382568 54.13188934 -163.31292725 128.23382568 86.75079346 -200.018127441 128.23382568 86.75079346 -163.31292725
		 75.13877869 91.55375671 -163.31292725 75.13877869 91.55375671 -200.018127441 79.34812927 94.42375183 -200.018127441
		 79.34812927 94.42375183 -163.31292725 87.99224854 94.42375183 -200.018127441 87.99224854 94.42375183 -163.31292725
		 92.20161438 91.55375671 -200.018127441 92.20161438 91.55375671 -163.31292725 94.10653687 86.75079346 -200.018127441
		 94.10653687 86.75079346 -163.31292725 94.10653687 54.13188934 -200.018127441 94.10653687 54.13188934 -163.31292725
		 73.23384094 54.13188934 -200.018127441 73.23384094 54.13188934 -163.31292725 73.23384094 86.75079346 -200.018127441
		 73.23384094 86.75079346 -163.31292725 216.098236084 132.42233276 -163.31292725 216.098236084 132.42233276 -200.018127441
		 219.27590942 134.58892822 -200.018127441 219.27590942 134.58892822 -163.31292725
		 225.80145264 134.58892822 -200.018127441 225.80145264 134.58892822 -163.31292725
		 228.97912598 132.42233276 -200.018127441 228.97912598 132.42233276 -163.31292725
		 230.41717529 128.79653931 -200.018127441 230.41717529 128.79653931 -163.31292725
		 230.41717529 104.17223358 -200.018127441 230.41717529 104.17223358 -163.31292725
		 214.66018677 104.17223358 -200.018127441 214.66018677 104.17223358 -163.31292725
		 214.66018677 128.79653931 -200.018127441 214.66018677 128.79653931 -163.31292725
		 168.098220825 132.42233276 -163.31292725 168.098220825 132.42233276 -200.018127441
		 171.27590942 134.58892822 -200.018127441 171.27590942 134.58892822 -163.31292725
		 177.80143738 134.58892822 -200.018127441 177.80143738 134.58892822 -163.31292725
		 180.97911072 132.42233276 -200.018127441 180.97911072 132.42233276 -163.31292725
		 182.41716003 128.79653931 -200.018127441 182.41716003 128.79653931 -163.31292725
		 182.41716003 104.17223358 -200.018127441 182.41716003 104.17223358 -163.31292725
		 166.66017151 104.17223358 -200.018127441 166.66017151 104.17223358 -163.31292725
		 166.66017151 128.79653931 -200.018127441 166.66017151 128.79653931 -163.31292725
		 120.098220825 132.42233276 -163.31292725 120.098220825 132.42233276 -200.018127441
		 123.27590179 134.58892822 -200.018127441 123.27590179 134.58892822 -163.31292725
		 129.80143738 134.58892822 -200.018127441 129.80143738 134.58892822 -163.31292725
		 132.97911072 132.42233276 -200.018127441 132.97911072 132.42233276 -163.31292725
		 134.41716003 128.79653931 -200.018127441 134.41716003 128.79653931 -163.31292725
		 134.41716003 104.17223358 -200.018127441 134.41716003 104.17223358 -163.31292725
		 118.66017151 104.17223358 -200.018127441 118.66017151 104.17223358 -163.31292725
		 118.66017151 128.79653931 -200.018127441 118.66017151 128.79653931 -163.31292725
		 72.098220825 132.42233276 -163.31292725 72.098220825 132.42233276 -200.018127441
		 75.27590942 134.58892822 -200.018127441 75.27590942 134.58892822 -163.31292725 81.80142212 134.58892822 -200.018127441
		 81.80142212 134.58892822 -163.31292725 84.97911072 132.42233276 -200.018127441 84.97911072 132.42233276 -163.31292725
		 86.41716003 128.79653931 -200.018127441 86.41716003 128.79653931 -163.31292725 86.41716003 104.17223358 -200.018127441
		 86.41716003 104.17223358 -163.31292725 70.66017151 104.17223358 -200.018127441 70.66017151 104.17223358 -163.31292725
		 70.66017151 128.79653931 -200.018127441 70.66017151 128.79653931 -163.31292725 38.171875 -30.43227959 -163.31292725
		 243.28253174 -30.43227959 -163.31292725 243.28253174 151.031463623 -163.31292725
		 38.171875 151.031463623 -163.31292725 57.80142212 134.58892822 -163.31292725 60.97911072 132.42233276 -163.31292725;
	setAttr ".vt[166:327]" 62.41716003 128.79653931 -163.31292725 62.41716003 104.17223358 -163.31292725
		 46.66017151 104.17223358 -163.31292725 46.66017151 128.79653931 -163.31292725 48.098220825 132.42233276 -163.31292725
		 51.27590942 134.58892822 -163.31292725 105.80142975 134.58892822 -163.31292725 108.97911072 132.42233276 -163.31292725
		 110.41716003 128.79653931 -163.31292725 110.41716003 104.17223358 -163.31292725 94.66017151 104.17223358 -163.31292725
		 94.66017151 128.79653931 -163.31292725 96.098220825 132.42233276 -163.31292725 99.27590179 134.58892822 -163.31292725
		 153.80143738 134.58892822 -163.31292725 156.97911072 132.42233276 -163.31292725 158.41716003 128.79653931 -163.31292725
		 158.41716003 104.17223358 -163.31292725 142.66017151 104.17223358 -163.31292725 142.66017151 128.79653931 -163.31292725
		 144.098220825 132.42233276 -163.31292725 147.27590942 134.58892822 -163.31292725
		 201.80145264 134.58892822 -163.31292725 204.97912598 132.42233276 -163.31292725 206.41717529 128.79653931 -163.31292725
		 206.41717529 104.17223358 -163.31292725 190.66018677 104.17223358 -163.31292725 190.66018677 128.79653931 -163.31292725
		 192.098236084 132.42233276 -163.31292725 195.27590942 134.58892822 -163.31292725
		 60.49224854 94.42375183 -163.31292725 64.70161438 91.55375671 -163.31292725 66.60653687 86.75079346 -163.31292725
		 66.60653687 54.13188934 -163.31292725 45.73384094 54.13188934 -163.31292725 45.73384094 86.75079346 -163.31292725
		 47.63877869 91.55375671 -163.31292725 51.84812927 94.42375183 -163.31292725 115.49224854 94.42375183 -163.31292725
		 119.70160675 91.55375671 -163.31292725 121.60653687 86.75079346 -163.31292725 121.60653687 54.13188934 -163.31292725
		 100.73384094 54.13188934 -163.31292725 100.73384094 86.75079346 -163.31292725 102.63877106 91.55375671 -163.31292725
		 106.84812927 94.42375183 -163.31292725 170.49224854 94.42375183 -163.31292725 174.70159912 91.55375671 -163.31292725
		 176.60653687 86.75079346 -163.31292725 176.60653687 54.13188934 -163.31292725 155.73382568 54.13188934 -163.31292725
		 155.73382568 86.75079346 -163.31292725 157.63876343 91.55375671 -163.31292725 161.84811401 94.42375183 -163.31292725
		 225.49224854 94.42375183 -163.31292725 229.70159912 91.55375671 -163.31292725 231.60653687 86.75079346 -163.31292725
		 231.60653687 54.13188934 -163.31292725 210.73382568 54.13188934 -163.31292725 210.73382568 86.75079346 -163.31292725
		 212.63876343 91.55375671 -163.31292725 216.84811401 94.42375183 -163.31292725 106.35554504 40.43362045 -163.31292725
		 112.63993073 36.14884567 -163.31292725 115.48390198 28.97822189 -163.31292725 115.48390198 -19.7203598 -163.31292725
		 84.32188416 -19.7203598 -163.31292725 84.32188416 28.97822189 -163.31292725 87.16586304 36.14884567 -163.31292725
		 93.45024109 40.43362045 -163.31292725 183.35554504 40.43362045 -163.31292725 189.6399231 36.14884567 -163.31292725
		 192.48390198 28.97822189 -163.31292725 192.48390198 -19.7203598 -163.31292725 161.32188416 -19.7203598 -163.31292725
		 161.32188416 28.97822189 -163.31292725 164.16586304 36.14884567 -163.31292725 170.45024109 40.43362045 -163.31292725
		 243.28253174 151.029998779 -200.018127441 38.171875 151.029998779 -200.018127441
		 243.28253174 -30.43227959 -200.018127441 38.171875 -30.43227959 -200.018127441 62.41716003 104.17223358 -200.018127441
		 62.41716003 128.79653931 -200.018127441 60.97911072 132.42233276 -200.018127441 57.80142212 134.58892822 -200.018127441
		 51.27590942 134.58892822 -200.018127441 48.098220825 132.42233276 -200.018127441
		 46.66017151 128.79653931 -200.018127441 46.66017151 104.17223358 -200.018127441 110.41716003 104.17223358 -200.018127441
		 110.41716003 128.79653931 -200.018127441 108.97911072 132.42233276 -200.018127441
		 105.80142975 134.58892822 -200.018127441 99.27590179 134.58892822 -200.018127441
		 96.098220825 132.42233276 -200.018127441 94.66017151 128.79653931 -200.018127441
		 94.66017151 104.17223358 -200.018127441 158.41716003 104.17223358 -200.018127441
		 158.41716003 128.79653931 -200.018127441 156.97911072 132.42233276 -200.018127441
		 153.80143738 134.58892822 -200.018127441 147.27590942 134.58892822 -200.018127441
		 144.098220825 132.42233276 -200.018127441 142.66017151 128.79653931 -200.018127441
		 142.66017151 104.17223358 -200.018127441 206.41717529 104.17223358 -200.018127441
		 206.41717529 128.79653931 -200.018127441 204.97912598 132.42233276 -200.018127441
		 201.80145264 134.58892822 -200.018127441 195.27590942 134.58892822 -200.018127441
		 192.098236084 132.42233276 -200.018127441 190.66018677 128.79653931 -200.018127441
		 190.66018677 104.17223358 -200.018127441 66.60653687 54.13188934 -200.018127441 66.60653687 86.75079346 -200.018127441
		 64.70161438 91.55375671 -200.018127441 60.49224854 94.42375183 -200.018127441 51.84812927 94.42375183 -200.018127441
		 47.63877869 91.55375671 -200.018127441 45.73384094 86.75079346 -200.018127441 45.73384094 54.13188934 -200.018127441
		 121.60653687 54.13188934 -200.018127441 121.60653687 86.75079346 -200.018127441 119.70160675 91.55375671 -200.018127441
		 115.49224854 94.42375183 -200.018127441 106.84812927 94.42375183 -200.018127441 102.63877106 91.55375671 -200.018127441
		 100.73384094 86.75079346 -200.018127441 100.73384094 54.13188934 -200.018127441 176.60653687 54.13188934 -200.018127441
		 176.60653687 86.75079346 -200.018127441 174.70159912 91.55375671 -200.018127441 170.49224854 94.42375183 -200.018127441
		 161.84811401 94.42375183 -200.018127441 157.63876343 91.55375671 -200.018127441 155.73382568 86.75079346 -200.018127441
		 155.73382568 54.13188934 -200.018127441 231.60653687 54.13188934 -200.018127441 231.60653687 86.75079346 -200.018127441
		 229.70159912 91.55375671 -200.018127441 225.49224854 94.42375183 -200.018127441 216.84811401 94.42375183 -200.018127441
		 212.63876343 91.55375671 -200.018127441 210.73382568 86.75079346 -200.018127441 210.73382568 54.13188934 -200.018127441
		 115.48390198 -19.7203598 -200.018127441 115.48390198 28.97822189 -200.018127441 112.63993073 36.14884567 -200.018127441
		 106.35554504 40.43362045 -200.018127441 93.45024109 40.43362045 -200.018127441 87.16586304 36.14884567 -200.018127441
		 84.32188416 28.97822189 -200.018127441 84.32188416 -19.7203598 -200.018127441 192.48390198 -19.7203598 -200.018127441
		 192.48390198 28.97822189 -200.018127441 189.6399231 36.14884567 -200.018127441 183.35554504 40.43362045 -200.018127441
		 170.45024109 40.43362045 -200.018127441 164.16586304 36.14884567 -200.018127441 161.32188416 28.97822189 -200.018127441
		 161.32188416 -19.7203598 -200.018127441;
	setAttr -s 490 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 0 0 2 4 0 4 5 0 5 3 0 4 6 0 6 7 0
		 7 5 0 6 8 0 8 9 0 9 7 0 8 10 0 10 11 0 11 9 0 10 12 0 12 13 0 13 11 0 12 14 0 14 15 0
		 15 13 0 14 1 0 0 15 0 16 17 0 17 18 0 18 19 0 19 16 0 18 20 0 20 21 0 21 19 0 20 22 0
		 22 23 0 23 21 0 22 24 0 24 25 0 25 23 0 24 26 0 26 27 0 27 25 0 26 28 0 28 29 0 29 27 0
		 28 30 0 30 31 0 31 29 0 30 17 0 16 31 0 32 33 0 33 34 0 34 35 0 35 32 0 34 36 0 36 37 0
		 37 35 0 36 38 0 38 39 0 39 37 0 38 40 0 40 41 0 41 39 0 40 42 0 42 43 0 43 41 0 42 44 0
		 44 45 0 45 43 0 44 46 0 46 47 0 47 45 0 46 33 0 32 47 0 48 49 0 49 50 0 50 51 0 51 48 0
		 50 52 0 52 53 0 53 51 0 52 54 0 54 55 0 55 53 0 54 56 0 56 57 0 57 55 0 56 58 0 58 59 0
		 59 57 0 58 60 0 60 61 0 61 59 0 60 62 0 62 63 0 63 61 0 62 49 0 48 63 0 64 65 0 65 66 0
		 66 67 0 67 64 0 66 68 0 68 69 0 69 67 0 68 70 0 70 71 0 71 69 0 70 72 0 72 73 0 73 71 0
		 72 74 0 74 75 0 75 73 0 74 76 0 76 77 0 77 75 0 76 78 0 78 79 0 79 77 0 78 65 0 64 79 0
		 80 81 0 81 82 0 82 83 0 83 80 0 82 84 0 84 85 0 85 83 0 84 86 0 86 87 0 87 85 0 86 88 0
		 88 89 0 89 87 0 88 90 0 90 91 0 91 89 0 90 92 0 92 93 0 93 91 0 92 94 0 94 95 0 95 93 0
		 94 81 0 80 95 0 96 97 0 97 98 0 98 99 0 99 96 0 98 100 0 100 101 0 101 99 0 100 102 0
		 102 103 0 103 101 0 102 104 0 104 105 0 105 103 0 104 106 0 106 107 0 107 105 0 106 108 0
		 108 109 0 109 107 0 108 110 0 110 111 0 111 109 0;
	setAttr ".ed[166:331]" 110 97 0 96 111 0 112 113 0 113 114 0 114 115 0 115 112 0
		 114 116 0 116 117 0 117 115 0 116 118 0 118 119 0 119 117 0 118 120 0 120 121 0 121 119 0
		 120 122 0 122 123 0 123 121 0 122 124 0 124 125 0 125 123 0 124 126 0 126 127 0 127 125 0
		 126 113 0 112 127 0 128 129 0 129 130 0 130 131 0 131 128 0 130 132 0 132 133 0 133 131 0
		 132 134 0 134 135 0 135 133 0 134 136 0 136 137 0 137 135 0 136 138 0 138 139 0 139 137 0
		 138 140 0 140 141 0 141 139 0 140 142 0 142 143 0 143 141 0 142 129 0 128 143 0 144 145 0
		 145 146 0 146 147 0 147 144 0 146 148 0 148 149 0 149 147 0 148 150 0 150 151 0 151 149 0
		 150 152 0 152 153 0 153 151 0 152 154 0 154 155 0 155 153 0 154 156 0 156 157 0 157 155 0
		 156 158 0 158 159 0 159 157 0 158 145 0 144 159 0 160 161 0 161 162 0 162 163 0 163 160 0
		 164 165 0 165 166 0 166 167 0 167 168 0 168 169 0 169 170 0 170 171 0 171 164 0 172 173 0
		 173 174 0 174 175 0 175 176 0 176 177 0 177 178 0 178 179 0 179 172 0 180 181 0 181 182 0
		 182 183 0 183 184 0 184 185 0 185 186 0 186 187 0 187 180 0 188 189 0 189 190 0 190 191 0
		 191 192 0 192 193 0 193 194 0 194 195 0 195 188 0 196 197 0 197 198 0 198 199 0 199 200 0
		 200 201 0 201 202 0 202 203 0 203 196 0 204 205 0 205 206 0 206 207 0 207 208 0 208 209 0
		 209 210 0 210 211 0 211 204 0 212 213 0 213 214 0 214 215 0 215 216 0 216 217 0 217 218 0
		 218 219 0 219 212 0 220 221 0 221 222 0 222 223 0 223 224 0 224 225 0 225 226 0 226 227 0
		 227 220 0 228 229 0 229 230 0 230 231 0 231 232 0 232 233 0 233 234 0 234 235 0 235 228 0
		 236 237 0 237 238 0 238 239 0 239 240 0 240 241 0 241 242 0 242 243 0 243 236 0 162 244 0
		 244 245 0 245 163 0 244 246 0 246 247 0 247 245 0 248 249 0 249 250 0;
	setAttr ".ed[332:489]" 250 251 0 251 252 0 252 253 0 253 254 0 254 255 0 255 248 0
		 256 257 0 257 258 0 258 259 0 259 260 0 260 261 0 261 262 0 262 263 0 263 256 0 264 265 0
		 265 266 0 266 267 0 267 268 0 268 269 0 269 270 0 270 271 0 271 264 0 272 273 0 273 274 0
		 274 275 0 275 276 0 276 277 0 277 278 0 278 279 0 279 272 0 280 281 0 281 282 0 282 283 0
		 283 284 0 284 285 0 285 286 0 286 287 0 287 280 0 288 289 0 289 290 0 290 291 0 291 292 0
		 292 293 0 293 294 0 294 295 0 295 288 0 296 297 0 297 298 0 298 299 0 299 300 0 300 301 0
		 301 302 0 302 303 0 303 296 0 304 305 0 305 306 0 306 307 0 307 308 0 308 309 0 309 310 0
		 310 311 0 311 304 0 312 313 0 313 314 0 314 315 0 315 316 0 316 317 0 317 318 0 318 319 0
		 319 312 0 320 321 0 321 322 0 322 323 0 323 324 0 324 325 0 325 326 0 326 327 0 327 320 0
		 250 165 0 164 251 0 249 166 0 248 167 0 255 168 0 254 169 0 253 170 0 252 171 0 258 173 0
		 172 259 0 257 174 0 256 175 0 263 176 0 262 177 0 261 178 0 260 179 0 266 181 0 180 267 0
		 265 182 0 264 183 0 271 184 0 270 185 0 269 186 0 268 187 0 274 189 0 188 275 0 273 190 0
		 272 191 0 279 192 0 278 193 0 277 194 0 276 195 0 282 197 0 196 283 0 281 198 0 280 199 0
		 287 200 0 286 201 0 285 202 0 284 203 0 290 205 0 204 291 0 289 206 0 288 207 0 295 208 0
		 294 209 0 293 210 0 292 211 0 298 213 0 212 299 0 297 214 0 296 215 0 303 216 0 302 217 0
		 301 218 0 300 219 0 306 221 0 220 307 0 305 222 0 304 223 0 311 224 0 310 225 0 309 226 0
		 308 227 0 314 229 0 228 315 0 313 230 0 312 231 0 319 232 0 318 233 0 317 234 0 316 235 0
		 322 237 0 236 323 0 321 238 0 320 239 0 327 240 0 326 241 0 325 242 0 324 243 0;
	setAttr -s 163 -ch 972 ".fc[0:162]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -3 4 5 6
		mu 0 4 4 5 6 7
		f 4 -6 7 8 9
		mu 0 4 8 9 10 11
		f 4 -9 10 11 12
		mu 0 4 12 13 14 15
		f 4 -12 13 14 15
		mu 0 4 16 17 18 19
		f 4 -15 16 17 18
		mu 0 4 20 21 22 23
		f 4 -18 19 20 21
		mu 0 4 24 25 26 27
		f 4 -21 22 -1 23
		mu 0 4 28 29 30 31
		f 4 24 25 26 27
		mu 0 4 32 33 34 35
		f 4 -27 28 29 30
		mu 0 4 36 37 38 39
		f 4 -30 31 32 33
		mu 0 4 40 41 42 43
		f 4 -33 34 35 36
		mu 0 4 44 45 46 47
		f 4 -36 37 38 39
		mu 0 4 48 49 50 51
		f 4 -39 40 41 42
		mu 0 4 52 53 54 55
		f 4 -42 43 44 45
		mu 0 4 56 57 58 59
		f 4 -45 46 -25 47
		mu 0 4 60 61 62 63
		f 4 48 49 50 51
		mu 0 4 64 65 66 67
		f 4 -51 52 53 54
		mu 0 4 68 69 70 71
		f 4 -54 55 56 57
		mu 0 4 72 73 74 75
		f 4 -57 58 59 60
		mu 0 4 76 77 78 79
		f 4 -60 61 62 63
		mu 0 4 80 81 82 83
		f 4 -63 64 65 66
		mu 0 4 84 85 86 87
		f 4 -66 67 68 69
		mu 0 4 88 89 90 91
		f 4 -69 70 -49 71
		mu 0 4 92 93 94 95
		f 4 72 73 74 75
		mu 0 4 96 97 98 99
		f 4 -75 76 77 78
		mu 0 4 100 101 102 103
		f 4 -78 79 80 81
		mu 0 4 104 105 106 107
		f 4 -81 82 83 84
		mu 0 4 108 109 110 111
		f 4 -84 85 86 87
		mu 0 4 112 113 114 115
		f 4 -87 88 89 90
		mu 0 4 116 117 118 119
		f 4 -90 91 92 93
		mu 0 4 120 121 122 123
		f 4 -93 94 -73 95
		mu 0 4 124 125 126 127
		f 4 96 97 98 99
		mu 0 4 128 129 130 131
		f 4 -99 100 101 102
		mu 0 4 132 133 134 135
		f 4 -102 103 104 105
		mu 0 4 136 137 138 139
		f 4 -105 106 107 108
		mu 0 4 140 141 142 143
		f 4 -108 109 110 111
		mu 0 4 144 145 146 147
		f 4 -111 112 113 114
		mu 0 4 148 149 150 151
		f 4 -114 115 116 117
		mu 0 4 152 153 154 155
		f 4 -117 118 -97 119
		mu 0 4 156 157 158 159
		f 4 120 121 122 123
		mu 0 4 160 161 162 163
		f 4 -123 124 125 126
		mu 0 4 164 165 166 167
		f 4 -126 127 128 129
		mu 0 4 168 169 170 171
		f 4 -129 130 131 132
		mu 0 4 172 173 174 175
		f 4 -132 133 134 135
		mu 0 4 176 177 178 179
		f 4 -135 136 137 138
		mu 0 4 180 181 182 183
		f 4 -138 139 140 141
		mu 0 4 184 185 186 187
		f 4 -141 142 -121 143
		mu 0 4 188 189 190 191
		f 4 144 145 146 147
		mu 0 4 192 193 194 195
		f 4 -147 148 149 150
		mu 0 4 196 197 198 199
		f 4 -150 151 152 153
		mu 0 4 200 201 202 203
		f 4 -153 154 155 156
		mu 0 4 204 205 206 207
		f 4 -156 157 158 159
		mu 0 4 208 209 210 211
		f 4 -159 160 161 162
		mu 0 4 212 213 214 215
		f 4 -162 163 164 165
		mu 0 4 216 217 218 219
		f 4 -165 166 -145 167
		mu 0 4 220 221 222 223
		f 4 168 169 170 171
		mu 0 4 224 225 226 227
		f 4 -171 172 173 174
		mu 0 4 228 229 230 231
		f 4 -174 175 176 177
		mu 0 4 232 233 234 235
		f 4 -177 178 179 180
		mu 0 4 236 237 238 239
		f 4 -180 181 182 183
		mu 0 4 240 241 242 243
		f 4 -183 184 185 186
		mu 0 4 244 245 246 247
		f 4 -186 187 188 189
		mu 0 4 248 249 250 251
		f 4 -189 190 -169 191
		mu 0 4 252 253 254 255
		f 4 192 193 194 195
		mu 0 4 256 257 258 259
		f 4 -195 196 197 198
		mu 0 4 260 261 262 263
		f 4 -198 199 200 201
		mu 0 4 264 265 266 267
		f 4 -201 202 203 204
		mu 0 4 268 269 270 271
		f 4 -204 205 206 207
		mu 0 4 272 273 274 275
		f 4 -207 208 209 210
		mu 0 4 276 277 278 279
		f 4 -210 211 212 213
		mu 0 4 280 281 282 283
		f 4 -213 214 -193 215
		mu 0 4 284 285 286 287
		f 4 216 217 218 219
		mu 0 4 288 289 290 291
		f 4 -219 220 221 222
		mu 0 4 292 293 294 295
		f 4 -222 223 224 225
		mu 0 4 296 297 298 299
		f 4 -225 226 227 228
		mu 0 4 300 301 302 303
		f 4 -228 229 230 231
		mu 0 4 304 305 306 307
		f 4 -231 232 233 234
		mu 0 4 308 309 310 311
		f 4 -234 235 236 237
		mu 0 4 312 313 314 315
		f 4 -237 238 -217 239
		mu 0 4 316 317 318 319
		f 4 240 241 242 243
		mu 0 4 320 321 322 323
		h 8 -19 -22 -24 -4 -7 -10 -13 -16
		mu 0 8 324 325 326 327 328 329 330 331
		h 8 -43 -46 -48 -28 -31 -34 -37 -40
		mu 0 8 332 333 334 335 336 337 338 339
		h 8 -67 -70 -72 -52 -55 -58 -61 -64
		mu 0 8 340 341 342 343 344 345 346 347
		h 8 -91 -94 -96 -76 -79 -82 -85 -88
		mu 0 8 348 349 350 351 352 353 354 355
		h 8 -115 -118 -120 -100 -103 -106 -109 -112
		mu 0 8 356 357 358 359 360 361 362 363
		h 8 -139 -142 -144 -124 -127 -130 -133 -136
		mu 0 8 364 365 366 367 368 369 370 371
		h 8 -163 -166 -168 -148 -151 -154 -157 -160
		mu 0 8 372 373 374 375 376 377 378 379
		h 8 -187 -190 -192 -172 -175 -178 -181 -184
		mu 0 8 380 381 382 383 384 385 386 387
		h 8 -211 -214 -216 -196 -199 -202 -205 -208
		mu 0 8 388 389 390 391 392 393 394 395
		h 8 -235 -238 -240 -220 -223 -226 -229 -232
		mu 0 8 396 397 398 399 400 401 402 403
		h 8 244 245 246 247 248 249 250 251
		mu 0 8 404 405 406 407 408 409 410 411
		h 8 252 253 254 255 256 257 258 259
		mu 0 8 412 413 414 415 416 417 418 419
		h 8 260 261 262 263 264 265 266 267
		mu 0 8 420 421 422 423 424 425 426 427
		h 8 268 269 270 271 272 273 274 275
		mu 0 8 428 429 430 431 432 433 434 435
		h 8 276 277 278 279 280 281 282 283
		mu 0 8 436 437 438 439 440 441 442 443
		h 8 284 285 286 287 288 289 290 291
		mu 0 8 444 445 446 447 448 449 450 451
		h 8 292 293 294 295 296 297 298 299
		mu 0 8 452 453 454 455 456 457 458 459
		h 8 300 301 302 303 304 305 306 307
		mu 0 8 460 461 462 463 464 465 466 467
		h 8 308 309 310 311 312 313 314 315
		mu 0 8 468 469 470 471 472 473 474 475
		h 8 316 317 318 319 320 321 322 323
		mu 0 8 476 477 478 479 480 481 482 483
		f 4 -243 324 325 326
		mu 0 4 323 322 484 485
		f 4 -326 327 328 329
		mu 0 4 485 484 486 487
		h 8 -5 -2 -23 -20 -17 -14 -11 -8
		mu 0 8 488 489 490 491 492 493 494 495
		h 8 -29 -26 -47 -44 -41 -38 -35 -32
		mu 0 8 496 497 498 499 500 501 502 503
		h 8 -53 -50 -71 -68 -65 -62 -59 -56
		mu 0 8 504 505 506 507 508 509 510 511
		h 8 -77 -74 -95 -92 -89 -86 -83 -80
		mu 0 8 512 513 514 515 516 517 518 519
		h 8 -101 -98 -119 -116 -113 -110 -107 -104
		mu 0 8 520 521 522 523 524 525 526 527
		h 8 -125 -122 -143 -140 -137 -134 -131 -128
		mu 0 8 528 529 530 531 532 533 534 535
		h 8 -149 -146 -167 -164 -161 -158 -155 -152
		mu 0 8 536 537 538 539 540 541 542 543
		h 8 -173 -170 -191 -188 -185 -182 -179 -176
		mu 0 8 544 545 546 547 548 549 550 551
		h 8 -197 -194 -215 -212 -209 -206 -203 -200
		mu 0 8 552 553 554 555 556 557 558 559
		h 8 -221 -218 -239 -236 -233 -230 -227 -224
		mu 0 8 560 561 562 563 564 565 566 567
		h 8 330 331 332 333 334 335 336 337
		mu 0 8 568 569 570 571 572 573 574 575
		h 8 338 339 340 341 342 343 344 345
		mu 0 8 576 577 578 579 580 581 582 583
		h 8 346 347 348 349 350 351 352 353
		mu 0 8 584 585 586 587 588 589 590 591
		h 8 354 355 356 357 358 359 360 361
		mu 0 8 592 593 594 595 596 597 598 599
		h 8 362 363 364 365 366 367 368 369
		mu 0 8 600 601 602 603 604 605 606 607
		h 8 370 371 372 373 374 375 376 377
		mu 0 8 608 609 610 611 612 613 614 615
		h 8 378 379 380 381 382 383 384 385
		mu 0 8 616 617 618 619 620 621 622 623
		h 8 386 387 388 389 390 391 392 393
		mu 0 8 624 625 626 627 628 629 630 631
		h 8 394 395 396 397 398 399 400 401
		mu 0 8 632 633 634 635 636 637 638 639
		h 8 402 403 404 405 406 407 408 409
		mu 0 8 640 641 642 643 644 645 646 647
		f 4 410 -245 411 -333
		mu 0 4 648 649 650 651
		f 4 412 -246 -411 -332
		mu 0 4 652 653 654 655
		f 4 413 -247 -413 -331
		mu 0 4 656 657 658 659
		f 4 414 -248 -414 -338
		mu 0 4 660 661 662 663
		f 4 415 -249 -415 -337
		mu 0 4 664 665 666 667
		f 4 416 -250 -416 -336
		mu 0 4 668 669 670 671
		f 4 417 -251 -417 -335
		mu 0 4 672 673 674 675
		f 4 -412 -252 -418 -334
		mu 0 4 676 677 678 679
		f 4 418 -253 419 -341
		mu 0 4 680 681 682 683
		f 4 420 -254 -419 -340
		mu 0 4 684 685 686 687
		f 4 421 -255 -421 -339
		mu 0 4 688 689 690 691
		f 4 422 -256 -422 -346
		mu 0 4 692 693 694 695
		f 4 423 -257 -423 -345
		mu 0 4 696 697 698 699
		f 4 424 -258 -424 -344
		mu 0 4 700 701 702 703
		f 4 425 -259 -425 -343
		mu 0 4 704 705 706 707
		f 4 -420 -260 -426 -342
		mu 0 4 708 709 710 711
		f 4 426 -261 427 -349
		mu 0 4 712 713 714 715
		f 4 428 -262 -427 -348
		mu 0 4 716 717 718 719
		f 4 429 -263 -429 -347
		mu 0 4 720 721 722 723
		f 4 430 -264 -430 -354
		mu 0 4 724 725 726 727
		f 4 431 -265 -431 -353
		mu 0 4 728 729 730 731
		f 4 432 -266 -432 -352
		mu 0 4 732 733 734 735
		f 4 433 -267 -433 -351
		mu 0 4 736 737 738 739
		f 4 -428 -268 -434 -350
		mu 0 4 740 741 742 743
		f 4 434 -269 435 -357
		mu 0 4 744 745 746 747
		f 4 436 -270 -435 -356
		mu 0 4 748 749 750 751
		f 4 437 -271 -437 -355
		mu 0 4 752 753 754 755
		f 4 438 -272 -438 -362
		mu 0 4 756 757 758 759
		f 4 439 -273 -439 -361
		mu 0 4 760 761 762 763
		f 4 440 -274 -440 -360
		mu 0 4 764 765 766 767
		f 4 441 -275 -441 -359
		mu 0 4 768 769 770 771
		f 4 -436 -276 -442 -358
		mu 0 4 772 773 774 775
		f 4 442 -277 443 -365
		mu 0 4 776 777 778 779
		f 4 444 -278 -443 -364
		mu 0 4 780 781 782 783
		f 4 445 -279 -445 -363
		mu 0 4 784 785 786 787
		f 4 446 -280 -446 -370
		mu 0 4 788 789 790 791
		f 4 447 -281 -447 -369
		mu 0 4 792 793 794 795
		f 4 448 -282 -448 -368
		mu 0 4 796 797 798 799
		f 4 449 -283 -449 -367
		mu 0 4 800 801 802 803
		f 4 -444 -284 -450 -366
		mu 0 4 804 805 806 807
		f 4 450 -285 451 -373
		mu 0 4 808 809 810 811
		f 4 452 -286 -451 -372
		mu 0 4 812 813 814 815
		f 4 453 -287 -453 -371
		mu 0 4 816 817 818 819
		f 4 454 -288 -454 -378
		mu 0 4 820 821 822 823
		f 4 455 -289 -455 -377
		mu 0 4 824 825 826 827
		f 4 456 -290 -456 -376
		mu 0 4 828 829 830 831
		f 4 457 -291 -457 -375
		mu 0 4 832 833 834 835
		f 4 -452 -292 -458 -374
		mu 0 4 836 837 838 839
		f 4 458 -293 459 -381
		mu 0 4 840 841 842 843
		f 4 460 -294 -459 -380
		mu 0 4 844 845 846 847
		f 4 461 -295 -461 -379
		mu 0 4 848 849 850 851
		f 4 462 -296 -462 -386
		mu 0 4 852 853 854 855
		f 4 463 -297 -463 -385
		mu 0 4 856 857 858 859
		f 4 464 -298 -464 -384
		mu 0 4 860 861 862 863
		f 4 465 -299 -465 -383
		mu 0 4 864 865 866 867
		f 4 -460 -300 -466 -382
		mu 0 4 868 869 870 871
		f 4 466 -301 467 -389
		mu 0 4 872 873 874 875
		f 4 468 -302 -467 -388
		mu 0 4 876 877 878 879
		f 4 469 -303 -469 -387
		mu 0 4 880 881 882 883
		f 4 470 -304 -470 -394
		mu 0 4 884 885 886 887
		f 4 471 -305 -471 -393
		mu 0 4 888 889 890 891
		f 4 472 -306 -472 -392
		mu 0 4 892 893 894 895
		f 4 473 -307 -473 -391
		mu 0 4 896 897 898 899
		f 4 -468 -308 -474 -390
		mu 0 4 900 901 902 903
		f 4 474 -309 475 -397
		mu 0 4 904 905 906 907
		f 4 476 -310 -475 -396
		mu 0 4 908 909 910 911
		f 4 477 -311 -477 -395
		mu 0 4 912 913 914 915
		f 4 478 -312 -478 -402
		mu 0 4 916 917 918 919
		f 4 479 -313 -479 -401
		mu 0 4 920 921 922 923
		f 4 480 -314 -480 -400
		mu 0 4 924 925 926 927
		f 4 481 -315 -481 -399
		mu 0 4 928 929 930 931
		f 4 -476 -316 -482 -398
		mu 0 4 932 933 934 935
		f 4 482 -317 483 -405
		mu 0 4 936 937 938 939
		f 4 484 -318 -483 -404
		mu 0 4 940 941 942 943
		f 4 485 -319 -485 -403
		mu 0 4 944 945 946 947
		f 4 486 -320 -486 -410
		mu 0 4 948 949 950 951
		f 4 487 -321 -487 -409
		mu 0 4 952 953 954 955
		f 4 488 -322 -488 -408
		mu 0 4 956 957 958 959
		f 4 489 -323 -489 -407
		mu 0 4 960 961 962 963
		f 4 -484 -324 -490 -406
		mu 0 4 964 965 966 967;
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
createNode transform -n "polySurface44";
createNode mesh -n "polySurfaceShape46" -p "polySurface44";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.46988683938980103 0.50000771880149841 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 144 ".uvst[0].uvsp[0:143]" -type "float2" 0.07278353 0.74893618
		 0.14214724 0.74893618 0.1285733 0.76414192 0.086357534 0.76414192 0.14756119 0.7279917
		 0.06736958 0.7279917 0.06736958 0.5864687 0.14756119 0.5864687 0.045746144 0.54341578
		 0.0070348163 0.54341578 0.0070348163 0.51484144 0.045746144 0.51484144 0.045746144
		 0.55260354 0.0070348163 0.55260354 0.0070348163 0.50565368 0.045746144 0.50565368
		 0.439392 0.58687311 0.40068066 0.58687311 0.40068066 0.57640266 0.439392 0.57640266
		 0.40068066 0.50565374 0.439392 0.50565374 0.051523447 0.50565374 0.090234779 0.50565374
		 0.090234779 0.55993265 0.051523447 0.55993265 0.35619202 0.50565374 0.39490336 0.50565374
		 0.39490336 0.57640266 0.35619202 0.57640266 0.39490336 0.58687311 0.35619202 0.58687311
		 0.042292595 0.53825104 0.087448239 0.53825104 0.078611612 0.54892528 0.051129222
		 0.54892528 0.090972722 0.52354825 0.038768113 0.52354825 0.038768113 0.42420095 0.090972722
		 0.42420095 0.0078570535 0.5950734 0.0078570535 0.55636209 0.026458925 0.55636209
		 0.026458925 0.5950734 0.0018758286 0.5950734 0.0018758286 0.55636209 0.032440148
		 0.55636209 0.032440148 0.5950734 0.17921197 0.56266868 0.14050065 0.56266868 0.14050065
		 0.55531853 0.17921197 0.55531853 0.14050065 0.50565374 0.17921197 0.50565374 0.074099459
		 0.56369108 0.074099459 0.60240245 0.038763937 0.60240245 0.038763937 0.56369108 0.096012019
		 0.50565374 0.13472335 0.50565374 0.13472335 0.55531853 0.096012019 0.55531853 0.13472335
		 0.56266868 0.096012019 0.56266868 0.0018757681 0.0095409136 0.321565 0.0019920303
		 0.321565 0.50189519 0.0018757681 0.50189519 0.32873023 0.0019920303 0.64841944 0.0095409136
		 0.64841944 0.50189519 0.32873023 0.50189519 0.65200067 0.50565362 0.79299843 0.50565362
		 0.79299843 0.82534289 0.65200067 0.82534289 0.79877585 0.50565362 0.93977362 0.50565362
		 0.93977362 0.99800795 0.79877585 0.99800795 0.50522548 0.50565374 0.64622331 0.50565374
		 0.64622331 0.82534295 0.50522548 0.82534295 5.9604645e-008 1.5437603e-005 0.20831013
		 1.5437603e-005 0.20831013 1 5.9604645e-008 1 0.14756119 0.5864687 0.06736958 0.5864687
		 0.06736958 0.7279917 0.07278353 0.74893618 0.086357534 0.76414192 0.1285733 0.76414192
		 0.14214724 0.74893618 0.14756119 0.7279917 0.090972722 0.42420095 0.038768113 0.42420095
		 0.038768113 0.52354825 0.042292595 0.53825104 0.051129222 0.54892528 0.078611612
		 0.54892528 0.087448239 0.53825104 0.090972722 0.52354825 0.17386645 0.42420095 0.12166178
		 0.42420095 0.12166178 0.52354825 0.12518626 0.53825104 0.13402289 0.54892528 0.16150534
		 0.54892528 0.17034197 0.53825104 0.17386645 0.52354825 0.2705906 0.55531853 0.30930194
		 0.55531853 0.30930194 0.56266868 0.2705906 0.56266868 0.2705906 0.50565374 0.30930194
		 0.50565374 0.30930194 0.56800479 0.2705906 0.56800479 0.11630975 0.56642717 0.11630975
		 0.60513848 0.080974229 0.60513848 0.080974229 0.56642717 0.26481339 0.55531853 0.22610207
		 0.55531853 0.22610207 0.50565374 0.26481339 0.50565374 0.26481339 0.56266868 0.22610207
		 0.56266868 0.26481339 0.56800479 0.22610207 0.56800479 0.12318452 0.60513848 0.12318452
		 0.56642717 0.14178643 0.56642717 0.14178643 0.60513848 0.12166178 0.52354825 0.17386645
		 0.52354825 0.17034197 0.53825104 0.12518626 0.53825104 0.12166178 0.42420095 0.17386645
		 0.42420095 0.16150534 0.54892528 0.13402289 0.54892528;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -9.71943474 87.023353577 -64.69038391 14.69228363 87.023353577 -64.69038391
		 9.91508865 90.97577667 -64.69038391 -4.94223881 90.97577667 -64.69038391 16.59766197 81.57922363 -64.69038391
		 -11.62481117 81.57922363 -64.69038391 -11.62481117 44.7931366 -64.69038391 16.59766197 44.7931366 -64.69038391
		 -9.71943474 87.023353577 -44.56232834 -4.94223881 90.97577667 -44.56232834 9.91508865 90.97577667 -44.56232834
		 14.69228363 87.023353577 -44.56232834 16.59766197 81.57922363 -44.56232834 16.59766197 44.7931366 -44.56232834
		 -11.62481117 44.7931366 -44.56232834 -11.62481117 81.57922363 -44.56232834 -20.45036697 32.25991821 -64.69038391
		 -4.55836678 32.25991821 -64.69038391 -7.66831589 35.034469604 -64.69038391 -17.34041595 35.034469604 -64.69038391
		 -3.31796837 28.43821335 -64.69038391 -21.69076538 28.43821335 -64.69038391 -21.69076538 2.61486816 -64.69038391
		 -3.31796837 2.61486816 -64.69038391 -20.45036697 32.25991821 -44.56232834 -17.34041595 35.034469604 -44.56232834
		 -7.66831589 35.034469604 -44.56232834 -4.55836678 32.25991821 -44.56232834 -3.31796837 28.43821335 -44.56232834
		 -3.31796837 2.61486816 -44.56232834 -21.69076538 2.61486816 -44.56232834 -21.69076538 28.43821335 -44.56232834
		 -35.3347168 -103.71865845 -210.78564453 -35.3347168 -107.64372253 -44.56232834 -35.3347168 152.28237915 -44.56232834
		 -35.3347168 152.28237915 -210.78564453 37.9775238 -107.64372253 -44.56232834 37.9775238 -103.71865845 -210.78564453
		 37.9775238 152.28237915 -210.78564453 37.9775238 152.28237915 -44.56232834 25.85547256 2.61486816 -44.56232834
		 7.48267555 2.61486816 -44.56232834 7.48267555 28.43821335 -44.56232834 8.72307301 32.25991821 -44.56232834
		 11.83302116 35.034469604 -44.56232834 21.50512505 35.034469604 -44.56232834 24.61507416 32.25991821 -44.56232834
		 25.85547256 28.43821335 -44.56232834 7.48267555 28.43821335 -64.69038391 8.72307301 32.25991821 -64.69038391
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
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 -5 8 -1 9
		mu 0 4 5 4 1 0
		f 4 10 -4 11 12
		mu 0 4 12 13 9 8
		f 4 -12 -3 13 14
		mu 0 4 8 9 10 11
		f 4 -14 -2 15 16
		mu 0 4 11 10 14 15
		f 4 -16 -9 17 18
		mu 0 4 16 17 18 19
		f 4 -18 -8 19 20
		mu 0 4 19 18 20 21
		f 4 -20 -7 21 22
		mu 0 4 22 23 24 25
		f 4 -22 -6 23 24
		mu 0 4 26 27 28 29
		f 4 -24 -10 -11 25
		mu 0 4 29 28 30 31
		f 4 26 27 28 29
		mu 0 4 32 33 34 35
		f 4 30 31 32 33
		mu 0 4 36 37 38 39
		f 4 -31 34 -27 35
		mu 0 4 37 36 33 32
		f 4 36 -30 37 38
		mu 0 4 44 45 41 40
		f 4 -38 -29 39 40
		mu 0 4 40 41 42 43
		f 4 -40 -28 41 42
		mu 0 4 43 42 46 47
		f 4 -42 -35 43 44
		mu 0 4 48 49 50 51
		f 4 -44 -34 45 46
		mu 0 4 51 50 52 53
		f 4 -46 -33 47 48
		mu 0 4 54 55 56 57
		f 4 -48 -32 49 50
		mu 0 4 58 59 60 61
		f 4 -50 -36 -37 51
		mu 0 4 61 60 62 63
		f 4 52 53 54 55
		mu 0 4 64 65 66 67
		f 4 56 57 58 59
		mu 0 4 68 69 70 71
		f 4 60 -57 61 -53
		mu 0 4 72 73 74 75
		f 4 62 -58 -61 -56
		mu 0 4 76 77 78 79
		f 4 63 -59 -63 -55
		mu 0 4 80 81 82 83
		f 4 -62 -60 -64 -54
		mu 0 4 84 85 86 87
		h 8 -23 -25 -26 -13 -15 -17 -19 -21
		mu 0 8 88 89 90 91 92 93 94 95
		h 8 -49 -51 -52 -39 -41 -43 -45 -47
		mu 0 8 96 97 98 99 100 101 102 103
		h 8 64 65 66 67 68 69 70 71
		mu 0 8 104 105 106 107 108 109 110 111
		f 4 72 73 74 -67
		mu 0 4 112 113 114 115
		f 4 75 76 -73 -66
		mu 0 4 116 117 113 112
		f 4 77 78 -76 -65
		mu 0 4 120 121 122 123
		f 4 79 80 -78 -72
		mu 0 4 124 125 126 127
		f 4 81 82 -80 -71
		mu 0 4 128 129 125 124
		f 4 83 84 -82 -70
		mu 0 4 130 131 129 128
		f 4 85 86 -84 -69
		mu 0 4 132 133 134 135
		f 4 -75 87 -86 -68
		mu 0 4 115 114 118 119
		f 4 88 -83 89 -74
		mu 0 4 136 137 138 139
		f 4 -89 -77 -79 -81
		mu 0 4 137 136 140 141
		f 4 -90 -85 -87 -88
		mu 0 4 139 138 142 143;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface45";
	setAttr ".t" -type "double3" 278.62573305035897 0 0 ;
createNode mesh -n "polySurfaceShape45" -p "polySurface45";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:38]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 144 ".uvst[0].uvsp[0:143]" -type "float2" 0.86447346 0.74893618
		 0.93383718 0.74893618 0.92026317 0.76414192 0.87804747 0.76414192 0.93925107 0.7279917
		 0.85905945 0.7279917 0.85905945 0.5864687 0.93925107 0.5864687 0.045746144 0.54341578
		 0.0070348163 0.54341578 0.0070348163 0.51484144 0.045746144 0.51484144 0.045746144
		 0.55260354 0.0070348163 0.55260354 0.0070348163 0.50565368 0.045746144 0.50565368
		 0.439392 0.58687311 0.40068066 0.58687311 0.40068066 0.57640266 0.439392 0.57640266
		 0.40068066 0.50565374 0.439392 0.50565374 0.051523447 0.50565374 0.090234779 0.50565374
		 0.090234779 0.55993265 0.051523447 0.55993265 0.35619202 0.50565374 0.39490336 0.50565374
		 0.39490336 0.57640266 0.35619202 0.57640266 0.39490336 0.58687311 0.35619202 0.58687311
		 0.83398247 0.53825104 0.87913811 0.53825104 0.87030149 0.54892528 0.84281909 0.54892528
		 0.88266265 0.52354825 0.83045793 0.52354825 0.83045793 0.42420095 0.88266265 0.42420095
		 0.0078570535 0.5950734 0.0078570535 0.55636209 0.026458925 0.55636209 0.026458925
		 0.5950734 0.0018758286 0.5950734 0.0018758286 0.55636209 0.032440148 0.55636209 0.032440148
		 0.5950734 0.17921197 0.56266868 0.14050065 0.56266868 0.14050065 0.55531853 0.17921197
		 0.55531853 0.14050065 0.50565374 0.17921197 0.50565374 0.074099459 0.56369108 0.074099459
		 0.60240245 0.038763937 0.60240245 0.038763937 0.56369108 0.096012019 0.50565374 0.13472335
		 0.50565374 0.13472335 0.55531853 0.096012019 0.55531853 0.13472335 0.56266868 0.096012019
		 0.56266868 0.0018757681 0.0095409136 0.321565 0.0019920303 0.321565 0.50189519 0.0018757681
		 0.50189519 0.32873023 0.0019920303 0.64841944 0.0095409136 0.64841944 0.50189519
		 0.32873023 0.50189519 0.65200067 0.50565362 0.79299843 0.50565362 0.79299843 0.82534289
		 0.65200067 0.82534289 0.79877585 0.50565362 0.93977362 0.50565362 0.93977362 0.99800795
		 0.79877585 0.99800795 0.50522548 0.50565374 0.64622331 0.50565374 0.64622331 0.82534295
		 0.50522548 0.82534295 0.79168987 1.5437603e-005 1 1.5437603e-005 1 1 0.79168987 1
		 0.93925107 0.5864687 0.85905945 0.5864687 0.85905945 0.7279917 0.86447346 0.74893618
		 0.87804747 0.76414192 0.92026317 0.76414192 0.93383718 0.74893618 0.93925107 0.7279917
		 0.88266265 0.42420095 0.83045793 0.42420095 0.83045793 0.52354825 0.83398247 0.53825104
		 0.84281909 0.54892528 0.87030149 0.54892528 0.87913811 0.53825104 0.88266265 0.52354825
		 0.96555638 0.42420095 0.91335166 0.42420095 0.91335166 0.52354825 0.9168762 0.53825104
		 0.92571282 0.54892528 0.95319521 0.54892528 0.96203184 0.53825104 0.96555638 0.52354825
		 0.2705906 0.55531853 0.30930194 0.55531853 0.30930194 0.56266868 0.2705906 0.56266868
		 0.2705906 0.50565374 0.30930194 0.50565374 0.30930194 0.56800479 0.2705906 0.56800479
		 0.11630975 0.56642717 0.11630975 0.60513848 0.080974229 0.60513848 0.080974229 0.56642717
		 0.26481339 0.55531853 0.22610207 0.55531853 0.22610207 0.50565374 0.26481339 0.50565374
		 0.26481339 0.56266868 0.22610207 0.56266868 0.26481339 0.56800479 0.22610207 0.56800479
		 0.12318452 0.60513848 0.12318452 0.56642717 0.14178643 0.56642717 0.14178643 0.60513848
		 0.91335166 0.52354825 0.96555638 0.52354825 0.96203184 0.53825104 0.9168762 0.53825104
		 0.91335166 0.42420095 0.96555638 0.42420095 0.95319521 0.54892528 0.92571282 0.54892528;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -9.71942139 87.023353577 -64.69038391 14.69229126 87.023353577 -64.69038391
		 9.9151001 90.97577667 -64.69038391 -4.94223022 90.97577667 -64.69038391 16.59765625 81.57922363 -64.69038391
		 -11.62481689 81.57922363 -64.69038391 -11.62481689 44.7931366 -64.69038391 16.59765625 44.7931366 -64.69038391
		 -9.71942139 87.023353577 -44.56232834 -4.94223022 90.97577667 -44.56232834 9.9151001 90.97577667 -44.56232834
		 14.69229126 87.023353577 -44.56232834 16.59765625 81.57922363 -44.56232834 16.59765625 44.7931366 -44.56232834
		 -11.62481689 44.7931366 -44.56232834 -11.62481689 81.57922363 -44.56232834 -20.45037842 32.25991821 -64.69038391
		 -4.55838013 32.25991821 -64.69038391 -7.66830444 35.034469604 -64.69038391 -17.34042358 35.034469604 -64.69038391
		 -3.31796265 28.43821335 -64.69038391 -21.69076538 28.43821335 -64.69038391 -21.69076538 2.61486816 -64.69038391
		 -3.31796265 2.61486816 -64.69038391 -20.45037842 32.25991821 -44.56232834 -17.34042358 35.034469604 -44.56232834
		 -7.66830444 35.034469604 -44.56232834 -4.55838013 32.25991821 -44.56232834 -3.31796265 28.43821335 -44.56232834
		 -3.31796265 2.61486816 -44.56232834 -21.69076538 2.61486816 -44.56232834 -21.69076538 28.43821335 -44.56232834
		 -35.3347168 -103.71865845 -210.78564453 -35.3347168 -107.64372253 -44.56232834 -35.3347168 152.28237915 -44.56232834
		 -35.3347168 152.28237915 -210.78564453 37.97753906 -107.64372253 -44.56232834 37.97753906 -103.71865845 -210.78564453
		 37.97753906 152.28237915 -210.78564453 37.97753906 152.28237915 -44.56232834 25.85546875 2.61486816 -44.56232834
		 7.48266602 2.61486816 -44.56232834 7.48266602 28.43821335 -44.56232834 8.7230835 32.25991821 -44.56232834
		 11.83300781 35.034469604 -44.56232834 21.50512695 35.034469604 -44.56232834 24.61508179 32.25991821 -44.56232834
		 25.85546875 28.43821335 -44.56232834 7.48266602 28.43821335 -64.69038391 8.7230835 32.25991821 -64.69038391
		 7.48266602 2.61486816 -64.69038391 25.85546875 2.61486816 -64.69038391 25.85546875 28.43821335 -64.69038391
		 24.61508179 32.25991821 -64.69038391 21.50512695 35.034469604 -64.69038391 11.83300781 35.034469604 -64.69038391;
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
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 -5 8 -1 9
		mu 0 4 5 4 1 0
		f 4 10 -4 11 12
		mu 0 4 12 13 9 8
		f 4 -12 -3 13 14
		mu 0 4 8 9 10 11
		f 4 -14 -2 15 16
		mu 0 4 11 10 14 15
		f 4 -16 -9 17 18
		mu 0 4 16 17 18 19
		f 4 -18 -8 19 20
		mu 0 4 19 18 20 21
		f 4 -20 -7 21 22
		mu 0 4 22 23 24 25
		f 4 -22 -6 23 24
		mu 0 4 26 27 28 29
		f 4 -24 -10 -11 25
		mu 0 4 29 28 30 31
		f 4 26 27 28 29
		mu 0 4 32 33 34 35
		f 4 30 31 32 33
		mu 0 4 36 37 38 39
		f 4 -31 34 -27 35
		mu 0 4 37 36 33 32
		f 4 36 -30 37 38
		mu 0 4 44 45 41 40
		f 4 -38 -29 39 40
		mu 0 4 40 41 42 43
		f 4 -40 -28 41 42
		mu 0 4 43 42 46 47
		f 4 -42 -35 43 44
		mu 0 4 48 49 50 51
		f 4 -44 -34 45 46
		mu 0 4 51 50 52 53
		f 4 -46 -33 47 48
		mu 0 4 54 55 56 57
		f 4 -48 -32 49 50
		mu 0 4 58 59 60 61
		f 4 -50 -36 -37 51
		mu 0 4 61 60 62 63
		f 4 52 53 54 55
		mu 0 4 64 65 66 67
		f 4 56 57 58 59
		mu 0 4 68 69 70 71
		f 4 60 -57 61 -53
		mu 0 4 72 73 74 75
		f 4 62 -58 -61 -56
		mu 0 4 76 77 78 79
		f 4 63 -59 -63 -55
		mu 0 4 80 81 82 83
		f 4 -62 -60 -64 -54
		mu 0 4 84 85 86 87
		h 8 -23 -25 -26 -13 -15 -17 -19 -21
		mu 0 8 88 89 90 91 92 93 94 95
		h 8 -49 -51 -52 -39 -41 -43 -45 -47
		mu 0 8 96 97 98 99 100 101 102 103
		h 8 64 65 66 67 68 69 70 71
		mu 0 8 104 105 106 107 108 109 110 111
		f 4 72 73 74 -67
		mu 0 4 112 113 114 115
		f 4 75 76 -73 -66
		mu 0 4 116 117 113 112
		f 4 77 78 -76 -65
		mu 0 4 120 121 122 123
		f 4 79 80 -78 -72
		mu 0 4 124 125 126 127
		f 4 81 82 -80 -71
		mu 0 4 128 129 125 124
		f 4 83 84 -82 -70
		mu 0 4 130 131 129 128
		f 4 85 86 -84 -69
		mu 0 4 132 133 134 135
		f 4 -75 87 -86 -68
		mu 0 4 115 114 118 119
		f 4 88 -83 89 -74
		mu 0 4 136 137 138 139
		f 4 -89 -77 -79 -81
		mu 0 4 137 136 140 141
		f 4 -90 -85 -87 -88
		mu 0 4 139 138 142 143;
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
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 0.59650463 0
		 0 1 0.59650463 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -180.82928467 -6.7312414e-014 303.14816284
		 180.82928467 -6.7312414e-014 303.14816284 -180.82928467 6.7312414e-014 -303.14816284
		 180.82928467 6.7312414e-014 -303.14816284;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube67";
	setAttr ".t" -type "double3" 92.024291998607694 7.3399213964896628 3.3018881778227369 ;
	setAttr ".s" -type "double3" 0.64165749593796773 0.64165749593796773 0.64165749593796773 ;
createNode mesh -n "pCubeShape67" -p "pCube67";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "pCube68";
	setAttr ".t" -type "double3" 88.101043714109267 7.3399213964896628 18.733711938114428 ;
	setAttr ".s" -type "double3" 0.64165749593796773 0.64165749593796773 0.64165749593796773 ;
createNode transform -n "polySurface46" -p "pCube68";
	setAttr ".t" -type "double3" 6.1142405556463819 0 0 ;
createNode mesh -n "polySurfaceShape48" -p "polySurface46";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.125 0.875 0.25 0.125 0 0.125 0.25 0.125 0.125 0.375 0.625 0.625 0.625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -1.53887939 -1.53887272 1.53886795 1.53886414 -1.53887272 1.53886795
		 -1.53887939 23.75040436 1.53886795 1.53886414 23.75040436 1.53886795 -1.53887939 23.75040436 -1.53887558
		 1.53886414 23.75040436 -1.53887558 -1.53887939 -1.53887272 -1.53887558 1.53886414 -1.53887272 -1.53887558
		 1.53886414 11.10576725 -1.53887558 -1.53887939 11.10576725 -1.53887558;
	setAttr -s 15 ".ed[0:14]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 9 0 5 8 0 6 0 0 7 1 0 8 7 0 9 6 0 8 9 0;
	setAttr -s 6 -ch 26 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 3 11 -1 -11
		mu 0 4 6 7 8 9
		f 5 -12 -13 -10 -8 -6
		mu 0 5 1 10 11 12 2
		f 5 10 4 6 8 13
		mu 0 5 13 0 3 14 15
		f 4 -15 12 -4 -14
		mu 0 4 16 17 7 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "BoxWall" -p "pCube68";
	setAttr ".t" -type "double3" 6.1142405556463819 0 0 ;
createNode mesh -n "BoxWallShape" -p "BoxWall";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.625 0.375 0.625 0.375 0.5 0.625 0.5 0.625 0.625 0.375 0.625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1.53887939 23.75040436 -22.53930473 1.53886414 23.75040436 -22.53930473
		 1.53886414 11.10576725 -22.53930473 -1.53887939 11.10576725 -22.53930473 -1.53887939 23.75040436 -1.53887558
		 1.53886414 23.75040436 -1.53887558 1.53886414 11.10576725 -1.53887558 -1.53887939 11.10576725 -1.53887558;
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
createNode transform -n "Hallway";
createNode transform -n "polySurface48" -p "Hallway";
	setAttr ".s" -type "double3" 0.76030403545336989 1 1 ;
createNode transform -n "polySurface53" -p "polySurface48";
createNode transform -n "polySurface55" -p "polySurface53";
createNode mesh -n "polySurfaceShape58" -p "polySurface55";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.625 0.4791874 0.625
		 0.26444504 0.625 0.26444504 0.625 0.4791874 0.625 0.47918737 0.62499994 0.26444501
		 0.62500006 0.26444504 0.625 0.47918743 0.85418743 -6.5590884e-009 0.63944507 -6.5590884e-009
		 0.63944507 0.25 0.85418743 0.25 0.625 0.47918737 0.625 0.26444504 0.625 0.26444504
		 0.625 0.47918737 0.625 0.47918737 0.625 0.26444504 0.625 0.26444504 0.62500006 0.47918743;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -35.65332031 30.38841248 6.42329788 -35.65332031 30.52298164 6.57205486
		 -391.086151123 30.16425705 6.57205486 -391.086151123 28.029163361 4.21184874 -35.65332031 31.45925713 10.046735764
		 -391.086151123 31.10053253 10.046735764 -35.65334702 6.2758956 3.49586296 -391.086151123 6.2758956 3.49586296
		 -35.65334702 24.69745064 3.49586296 -391.086151123 24.69745064 3.49586296 -35.65334702 27.80050659 3.99751568
		 -391.086151123 27.80050659 3.99751568;
	setAttr -s 16 ".ed[0:15]"  3 0 1 1 2 0 4 5 0 6 7 0 8 9 0 10 11 0 0 1 0
		 2 3 0 1 4 0 5 2 0 6 8 0 9 7 0 8 10 0 11 9 0 10 0 0 3 11 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 6 1 7
		mu 0 4 0 1 2 3
		f 4 -2 8 2 9
		mu 0 4 4 5 6 7
		f 4 -4 10 4 11
		mu 0 4 8 9 10 11
		f 4 -5 12 5 13
		mu 0 4 12 13 14 15
		f 4 -6 14 -1 15
		mu 0 4 16 17 18 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "box" -p "polySurface53";
createNode mesh -n "boxShape" -p "|Hallway|polySurface48|polySurface53|box";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.37500003 0.77081263
		 0.375 0.98555493 0.625 0.98555493 0.625 0.77081263 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  -35.65332031 6.2758956 18.10075569 -391.086151123 6.2758956 18.10075569
		 -35.65332031 -60.40270996 18.10075569 -391.086151123 -60.40270996 18.10075569 -35.65334702 6.2758956 3.49586296
		 -391.086151123 6.2758956 3.49586296;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 4 0 5 1 0 0 2 0 1 3 0 2 3 0 4 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 -1 1 6 2
		mu 0 4 0 1 2 3
		f 4 0 4 -6 -4
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface54" -p "polySurface48";
createNode mesh -n "polySurfaceShape57" -p "polySurface54";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.625 0.47918737
		 0.625 0.26444504 0.375 0.26444504 0.375 0.47918737 0.375 0.47918737 0.375 0.26444504
		 0.375 0.26444504 0.375 0.47918737 0.375 0.47918737 0.37500003 0.26444504 0.37500003
		 0.26444507 0.375 0.47918737 0.375 0.47918743 0.37499997 0.26444504 0.375 0.26444504
		 0.375 0.47918743 0.375 0.47918737 0.375 0.26444504 0.375 0.26444504 0.375 0.47918737
		 0.1458126 0.25 0.36055496 0.25 0.36055499 -6.5590884e-009 0.1458126 -6.5590884e-009;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  -35.65334702 31.45925713 11.54988289 -391.086151123 31.10053253 11.54988289
		 -35.65334702 30.52298164 15.024565697 -391.086151123 30.16425705 15.024565697 -35.65334702 30.38841248 15.17332268
		 -391.086151123 28.029163361 17.38477135 -35.65332031 27.80050659 17.59910202 -391.086151123 27.80050659 17.59910202
		 -35.65332031 24.69745064 18.10075569 -391.086151123 24.69745064 18.10075569 -391.086151123 31.10053253 10.046735764
		 -35.65332031 31.45925713 10.046735764 -35.65332031 6.2758956 18.10075569 -391.086151123 6.2758956 18.10075569;
	setAttr -s 19 ".ed[0:18]"  0 1 0 2 3 0 4 5 1 6 7 0 8 9 0 11 0 0 1 10 0
		 0 2 0 3 1 0 2 4 0 5 3 0 4 6 0 7 5 0 6 8 0 9 7 0 8 12 0 13 9 0 11 10 0 12 13 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -18 5 0 6
		mu 0 4 0 1 2 3
		f 4 -1 7 1 8
		mu 0 4 4 5 6 7
		f 4 -2 9 2 10
		mu 0 4 8 9 10 11
		f 4 -3 11 3 12
		mu 0 4 12 13 14 15
		f 4 -4 13 4 14
		mu 0 4 16 17 18 19
		f 4 -5 15 18 16
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface49" -p "Hallway";
createNode transform -n "polySurface50" -p "polySurface49";
	setAttr ".s" -type "double3" 0.76030403545336989 1 1 ;
createNode transform -n "polySurface51" -p "polySurface50";
createNode mesh -n "polySurfaceShape54" -p "polySurface51";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:6]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 46 ".uvst[0].uvsp[0:45]" -type "float2" 0.125 0 0.24328414
		 0 0.375 0 0.375 0.25 0.24328414 0.25 0.125 0.25 0.2262056 0.11041818 0.2262056 0.12788266
		 0.22726849 0.13086444 0.22772262 0.13108416 0.23272344 0.13313584 0.2400856 0.13403551
		 0.24327049 0.13403551 0.25063264 0.13313583 0.25563341 0.13108416 0.25608757 0.13086443
		 0.25715047 0.12788264 0.25715047 0.11041817 0.625 0 0.75671589 0 0.875 0 0.875 0.25
		 0.75671589 0.25 0.625 0.25 0.7599144 0.13438022 0.76727659 0.13348052 0.76759171
		 0.13335122 0.77273148 0.13086443 0.77379441 0.12788263 0.77379441 0.11041816 0.74284953
		 0.11041817 0.74284953 0.12788264 0.7439124 0.13086446 0.74905217 0.13335121 0.74936736
		 0.13348052 0.75672954 0.13438024 0.375 0.75 0.625 0.75 0.625 0.86828411 0.375 0.86828411
		 0.375 0.5 0.625 0.5 0.625 0.38171589 0.375 0.38171589 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  -391.086151123 28.029163361 4.21184683 -35.65332031 30.38841248 6.42329788
		 -35.65332031 30.52298164 6.57205486 -391.086151123 30.16425705 6.57205296 -35.65332031 31.45925713 10.046737671
		 -391.086151123 31.10053253 10.046735764 -35.65334702 31.45925713 11.5498848 -391.086151123 31.10053253 11.54988289
		 -35.65334702 30.52298164 15.024567604 -391.086151123 30.16425705 15.024565697 -35.65334702 30.38841248 15.17332458
		 -391.086151123 28.029163361 17.38477135 -35.65332031 27.80050659 17.59910393 -391.086151123 27.80050659 17.59910202
		 -35.65332031 24.69745064 18.1007576 -391.086151123 24.69745064 18.10075569 -35.65332031 6.2758956 18.1007576
		 -391.086151123 6.2758956 18.10075569 -35.65334702 6.2758956 3.49586487 -391.086151123 6.2758956 3.49586296
		 -35.65334702 24.69745064 3.49586487 -391.086151123 24.69745064 3.49586296 -35.65334702 27.80050659 3.99751759
		 -391.086151123 27.80050659 3.99751568 -391.086151123 -108.38555908 -44.26960373 -391.086151123 -108.38555908 73.72157288
		 -391.086151123 151.7807312 73.72157288 -391.086151123 151.7807312 -44.26960373 -35.65334702 -108.38555908 73.72157288
		 -35.65334702 -108.38555908 -44.26960373 -35.65334702 151.7807312 -44.26960373 -35.65334702 151.7807312 73.72157288
		 -391.086151123 -108.38555908 11.55632782 -391.086151123 151.7807312 11.55632782 -35.65334702 -108.38555908 11.55632973
		 -35.65334702 151.7807312 11.55632782;
	setAttr -s 42 ".ed[0:41]"  1 2 0 3 0 0 2 4 0 5 3 0 4 6 0 7 5 0 6 8 0
		 9 7 0 8 10 0 11 9 0 10 12 0 13 11 0 12 14 0 15 13 0 14 16 0 17 15 0 16 18 0 19 17 0
		 18 20 0 21 19 0 20 22 0 23 21 0 22 1 0 0 23 0 24 32 0 25 26 0 26 33 0 27 24 0 28 34 0
		 29 30 0 30 35 0 31 28 0 24 29 0 28 25 0 27 30 0 26 31 0 32 25 0 33 27 0 34 29 0 35 31 0
		 34 32 1 35 33 1;
	setAttr -s 7 -ch 56 ".fc[0:6]" -type "polyFaces" 
		f 6 24 36 25 26 37 27
		mu 0 6 0 1 2 3 4 5
		h 12 -20 -22 -24 -2 -4 -6 -8 -10 -12 -14 -16 -18
		mu 0 12 6 7 8 9 10 11 12 13 14 15 16 17
		f 6 28 38 29 30 39 31
		mu 0 6 18 19 20 21 22 23
		h 12 -3 -1 -23 -21 -19 -17 -15 -13 -11 -9 -7 -5
		mu 0 12 24 25 26 27 28 29 30 31 32 33 34 35
		f 4 32 -39 40 -25
		mu 0 4 36 37 38 39
		f 4 34 -30 -33 -28
		mu 0 4 40 41 37 36
		f 4 35 -40 41 -27
		mu 0 4 3 23 42 43
		f 4 -41 -29 33 -37
		mu 0 4 39 38 44 45
		f 4 -42 -31 -35 -38
		mu 0 4 43 42 41 40;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface52" -p "polySurface50";
createNode mesh -n "polySurfaceShape55" -p "polySurface52";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -391.086151123 -108.38555908 73.72157288
		 -35.65334702 -108.38555908 73.72157288 -35.65334702 151.7807312 73.72157288 -391.086151123 151.7807312 73.72157288;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 2 0 0 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -1 -2 -3 -4
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RedCandles";
createNode transform -n "pCube73" -p "RedCandles";
	setAttr ".t" -type "double3" 187.46195217104301 13.307564638568486 214.52558575430152 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 0.64374684051452569 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -188.38034057617182 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -188.38034057617187 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 7.1054273576010019e-014 ;
createNode mesh -n "pCubeShape73" -p "pCube73";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube83" -p "RedCandles";
	setAttr ".t" -type "double3" 241.36863441552106 13.307564638568486 214.52558575430152 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 0.64374684051452569 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -188.38034057617182 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -188.38034057617187 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 7.1054273576010019e-014 ;
createNode mesh -n "pCubeShape83" -p "pCube83";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube79" -p "RedCandles";
	setAttr ".t" -type "double3" 329.06549343139238 6.2519063477146606 134.89015704425657 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 0.64374684051452569 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -188.38034057617182 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -188.38034057617187 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 7.1054273576010019e-014 ;
createNode mesh -n "pCubeShape79" -p "pCube79";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube80" -p "RedCandles";
	setAttr ".t" -type "double3" 358.73226520686524 6.2519063477146606 134.89015704425657 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 0.64374684051452569 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -188.38034057617182 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -188.38034057617187 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 7.1054273576010019e-014 ;
createNode mesh -n "pCubeShape80" -p "pCube80";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube81" -p "RedCandles";
	setAttr ".t" -type "double3" 344.30558312388166 48.564931028656396 134.89015704425657 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 0.64374684051452569 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -188.38034057617182 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -188.38034057617187 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 7.1054273576010019e-014 ;
createNode mesh -n "pCubeShape81" -p "pCube81";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube82" -p "RedCandles";
	setAttr ".t" -type "double3" 80.388151536776107 6.2519063477146606 134.89015704425657 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 0.64374684051452569 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -188.38034057617182 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -188.38034057617187 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 7.1054273576010019e-014 ;
createNode mesh -n "pCubeShape82" -p "pCube82";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube72" -p "RedCandles";
	setAttr ".t" -type "double3" 50.721379761303268 6.2519063477146606 134.89015704425657 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 0.64374684051452569 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -188.38034057617182 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -188.38034057617187 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 7.1054273576010019e-014 ;
createNode mesh -n "pCubeShape72" -p "pCube72";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube74" -p "RedCandles";
	setAttr ".t" -type "double3" 65.96146945379256 48.564931028656396 134.89015704425657 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 0.64374684051452569 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -188.38034057617182 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -188.38034057617187 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 7.1054273576010019e-014 ;
createNode mesh -n "pCubeShape74" -p "pCube74";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube75" -p "RedCandles";
	setAttr ".t" -type "double3" 146.40927771405435 58.153110781222367 -6.1664166084306942 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 0.64374684051452569 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -188.38034057617182 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -188.38034057617187 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 7.1054273576010019e-014 ;
createNode mesh -n "pCubeShape75" -p "pCube75";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube77" -p "RedCandles";
	setAttr ".t" -type "double3" 165.49613193707154 107.69598780907752 -6.1664166084306942 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 0.64374684051452569 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -188.38034057617182 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -188.38034057617187 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 7.1054273576010019e-014 ;
createNode mesh -n "pCubeShape77" -p "pCube77";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube78" -p "RedCandles";
	setAttr ".t" -type "double3" 238.96045958169356 107.69598780907752 -6.1664166084306942 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 0.64374684051452569 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -188.38034057617182 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -188.38034057617187 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 7.1054273576010019e-014 ;
createNode mesh -n "pCubeShape78" -p "pCube78";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube76" -p "RedCandles";
	setAttr ".t" -type "double3" 258.68859268885376 58.153110781222367 -6.1664166084306942 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 0.64374684051452569 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -188.38034057617182 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -188.38034057617187 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 7.1054273576010019e-014 ;
createNode mesh -n "pCubeShape76" -p "pCube76";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube231" -p "RedCandles";
	setAttr ".t" -type "double3" 241.36863441552106 13.307564638568486 214.52558575430152 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 -0.57840342214242435 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -203.97050986647622 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -212.598198139315 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 8.6276882728390945 ;
createNode mesh -n "pCubeShape231" -p "pCube231";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube233" -p "RedCandles";
	setAttr ".t" -type "double3" 187.46195217104301 13.307564638568486 214.52558575430152 ;
	setAttr ".s" -type "double3" 0.64374684051452569 0.64374684051452569 -0.57840342214242435 ;
	setAttr ".rp" -type "double3" -63.104377615851924 -0.81115052895660988 -203.97050986647622 ;
	setAttr ".sp" -type "double3" -63.104358673095703 -2.4511981010437012 -212.598198139315 ;
	setAttr ".spt" -type "double3" -1.8942756220496904e-005 1.6400475720870913 8.6276882728390945 ;
createNode mesh -n "pCubeShape233" -p "pCube233";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.5 0.875 0.75 0.125
		 0.25 0.125 0.5 0 0.625 0.125 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375
		 0.625 0.625 0.5 0.75 0.375 0.625 0.625 0.875 0.5 1 0.375 0.875 0.75 0 0.875 0.125
		 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0.25 0.625 0.25 0.625 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[2]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[3]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[4]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[5]" -type "float3" 0 1.3375766 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[15]" -type "float3" 0 0.23272526 0 ;
	setAttr ".pt[25]" -type "float3" -5.8152259e-006 -0.85602164 -2.2506983 ;
	setAttr ".pt[26]" -type "float3" -1.6672564 0.24881765 -1.6672626 ;
	setAttr ".pt[27]" -type "float3" -2.2507918 -0.85602164 0 ;
	setAttr ".pt[28]" -type "float3" -4.4598514e-006 32.699139 0 ;
	setAttr ".pt[29]" -type "float3" -1.6672564 0.24881765 1.6672701 ;
	setAttr ".pt[30]" -type "float3" -5.8152259e-006 -0.85602164 2.2506983 ;
	setAttr ".pt[31]" -type "float3" 1.6672328 0.24881765 1.6672701 ;
	setAttr ".pt[32]" -type "float3" 2.2507937 -0.85602164 0 ;
	setAttr ".pt[33]" -type "float3" 1.6672328 0.24881765 -1.6672626 ;
	setAttr -s 34 ".vt[0:33]"  -66.26101685 -7.50156593 -185.22367859 -59.94776154 -7.50156593 -185.22367859
		 -66.26101685 0.074223518 -185.22367859 -59.94776154 0.074223518 -185.22367859 -66.26101685 0.074223518 -191.53701782
		 -59.94776154 0.074223518 -191.53701782 -66.26101685 -7.50156593 -191.53701782 -59.94776154 -7.50156593 -191.53701782
		 -63.10440063 -7.50173378 -184.11904907 -63.10440063 1.17905235 -184.11904907 -63.10440063 1.17905235 -192.64163208
		 -63.10440063 -7.50173378 -192.64163208 -67.36588287 -3.082429886 -184.11904907 -58.84294128 -3.082429886 -184.11904907
		 -67.36588287 1.17905235 -188.38034058 -58.84294128 1.17905235 -188.38034058 -67.36588287 -3.082429886 -192.64163208
		 -58.84294128 -3.082429886 -192.64163208 -67.36588287 -7.50173378 -188.38034058 -58.84294128 -7.50173378 -188.38034058
		 -63.10440063 -3.082429886 -182.69836426 -63.10440063 -3.082429886 -194.062347412
		 -63.10440063 -7.50193882 -188.38034058 -57.42233276 -3.082429886 -188.38034058 -68.78639221 -3.082429886 -188.38034058
		 -63.10440063 1.17905235 -184.11904907 -59.94776154 0.074223518 -185.22367859 -58.84294128 1.17905235 -188.38034058
		 -63.10440063 2.59954262 -188.38034058 -59.94776154 0.074223518 -191.53701782 -63.10440063 1.17905235 -192.64163208
		 -66.26101685 0.074223518 -191.53701782 -67.36588287 1.17905235 -188.38034058 -66.26101685 0.074223518 -185.22367859;
	setAttr -s 64 ".ed[0:63]"  0 8 1 8 1 1 2 9 0 9 3 0 4 10 0 10 5 0 6 11 1
		 11 7 1 0 12 1 12 2 1 1 13 1 13 3 1 2 14 0 14 4 0 3 15 0 15 5 0 4 16 1 16 6 1 5 17 1
		 17 7 1 6 18 1 18 0 1 7 19 1 19 1 1 20 8 1 20 13 1 20 9 1 20 12 1 21 10 1 21 17 1
		 21 11 1 21 16 1 22 11 1 22 19 1 22 8 1 22 18 1 23 19 1 23 17 1 23 15 1 23 13 1 24 18 1
		 24 12 1 24 14 1 24 16 1 9 25 0 3 26 0 25 26 0 15 27 0 26 27 0 28 27 1 28 25 1 5 29 0
		 27 29 0 10 30 0 30 29 0 28 30 1 4 31 0 31 30 0 14 32 0 32 31 0 28 32 1 2 33 0 33 32 0
		 33 25 0;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 20 1 21 14
		f 4 11 -4 -27 25
		mu 0 4 21 3 22 14
		f 4 -3 -10 -28 26
		mu 0 4 22 2 23 14
		f 4 -9 0 -25 27
		mu 0 4 23 0 20 14
		f 4 46 48 -50 50
		mu 0 4 39 40 41 15
		f 4 52 -55 -56 49
		mu 0 4 41 42 43 15
		f 4 -58 -60 -61 55
		mu 0 4 43 44 45 15
		f 4 -63 63 -51 60
		mu 0 4 45 46 39 15
		f 4 5 18 -30 28
		mu 0 4 25 5 27 16
		f 4 19 -8 -31 29
		mu 0 4 27 7 28 16
		f 4 -7 -18 -32 30
		mu 0 4 28 6 29 16
		f 4 -17 4 -29 31
		mu 0 4 29 4 25 16
		f 4 7 22 -34 32
		mu 0 4 28 7 30 17
		f 4 23 -2 -35 33
		mu 0 4 30 9 31 17
		f 4 -1 -22 -36 34
		mu 0 4 31 8 32 17
		f 4 -21 6 -33 35
		mu 0 4 32 6 28 17
		f 4 -23 -20 -38 36
		mu 0 4 33 10 34 18
		f 4 -19 -16 -39 37
		mu 0 4 34 11 35 18
		f 4 -15 -12 -40 38
		mu 0 4 35 3 21 18
		f 4 -11 -24 -37 39
		mu 0 4 21 1 33 18
		f 4 21 8 -42 40
		mu 0 4 36 0 23 19
		f 4 9 12 -43 41
		mu 0 4 23 2 37 19
		f 4 13 16 -44 42
		mu 0 4 37 13 38 19
		f 4 17 20 -41 43
		mu 0 4 38 12 36 19
		f 4 3 45 -47 -45
		mu 0 4 22 3 40 39
		f 4 14 47 -49 -46
		mu 0 4 3 24 41 40
		f 4 15 51 -53 -48
		mu 0 4 24 5 42 41
		f 4 -6 53 54 -52
		mu 0 4 5 25 43 42
		f 4 -5 56 57 -54
		mu 0 4 25 4 44 43
		f 4 -14 58 59 -57
		mu 0 4 4 26 45 44
		f 4 -13 61 62 -59
		mu 0 4 26 2 46 45
		f 4 2 44 -64 -62
		mu 0 4 2 22 39 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stairs";
createNode transform -n "pCube29" -p "Stairs";
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
createNode transform -n "pCube28" -p "Stairs";
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
createNode transform -n "pCube23" -p "Stairs";
	setAttr ".t" -type "double3" 42.298739273122365 29.930703281020165 -151.6080298385281 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
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
createNode transform -n "pCube62" -p "Stairs";
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
createNode transform -n "Lanyap";
createNode transform -n "pCube24" -p "Lanyap";
	setAttr ".t" -type "double3" 157.13466937581052 911.37548904186792 -151.60802983852781 ;
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
createNode transform -n "pCube25" -p "Lanyap";
	setAttr ".t" -type "double3" 148.93466937581053 919.57548904186797 -151.60802983852784 ;
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
createNode transform -n "pCube26" -p "Lanyap";
	setAttr ".t" -type "double3" 140.73466937581054 927.77548904186801 -151.60802983852787 ;
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
createNode transform -n "pCube27" -p "Lanyap";
	setAttr ".t" -type "double3" 132.53466937581055 935.97548904186795 -151.6080298385279 ;
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
createNode transform -n "pCube21" -p "Lanyap";
	setAttr ".t" -type "double3" 124.29928481474734 944.15406062075738 -151.60802983852781 ;
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
createNode transform -n "pCube20" -p "Lanyap";
	setAttr ".t" -type "double3" 116.09928481474735 952.35406062075731 -151.60802983852784 ;
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
createNode transform -n "pCube19" -p "Lanyap";
	setAttr ".t" -type "double3" 107.89928481474736 960.55406062075735 -151.60802983852787 ;
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
createNode transform -n "pCube18" -p "Lanyap";
	setAttr ".t" -type "double3" 99.699284814747372 968.7540606207574 -151.6080298385279 ;
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
createNode transform -n "pCube17" -p "Lanyap";
	setAttr ".t" -type "double3" 91.499284814747384 976.95406062075745 -151.60802983852793 ;
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
createNode transform -n "pCube16" -p "Lanyap";
	setAttr ".t" -type "double3" 83.299284814747395 985.15406062075738 -151.60802983852795 ;
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
createNode transform -n "pCube15" -p "Lanyap";
	setAttr ".t" -type "double3" 75.099284814747406 993.35406062075731 -151.60802983852798 ;
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
createNode transform -n "pCube14" -p "Lanyap";
	setAttr ".t" -type "double3" 66.899284814747418 1001.5540606207574 -151.60802983852801 ;
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
createNode transform -n "pCube13" -p "Lanyap";
	setAttr ".t" -type "double3" 58.699284814747401 1009.7540606207574 -151.60802983852804 ;
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
createNode transform -n "pCube12" -p "Lanyap";
	setAttr ".t" -type "double3" 50.499284814747398 1017.9540606207574 -151.60802983852804 ;
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
createNode transform -n "pCube3" -p "Lanyap";
	setAttr ".t" -type "double3" 42.298739273122344 1026.1546061623824 -151.60802983852804 ;
	setAttr ".s" -type "double3" 1.2230492242527926 1.2230492242527926 1.2230492242527926 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "pCube71" -p "Lanyap";
	setAttr ".t" -type "double3" -287.52175079023584 689.14211443598288 234.41246808914582 ;
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
createNode transform -n "pCube4" -p "Lanyap";
	setAttr ".t" -type "double3" 162.05263602709667 581.81682707851292 12.84474671980005 ;
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
createNode transform -n "pCube232";
	setAttr ".t" -type "double3" 147.81335593584964 28.886964069164065 25.725324380174357 ;
	setAttr ".s" -type "double3" 1 1 -0.89849516260169282 ;
	setAttr ".rp" -type "double3" 0 0 -15.590169290304189 ;
	setAttr ".sp" -type "double3" 0 0 -15.590169290304189 ;
createNode mesh -n "pCubeShape232" -p "pCube232";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75
		 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625
		 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 1 0.375
		 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.625 1 0.625 0.75 0.375 0.75 0.375 1 0.625
		 1 0.625 0.75 0.375 0.75 0.375 1;
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
	setAttr -s 40 ".vt[0:39]"  -27.9626236 -19.70025253 -7.24381638 34.38182068 -19.70025253 -7.24381638
		 34.38182068 -19.70025253 7.24381638 -27.9626236 -19.70025253 7.24381638 -27.9626236 -28.061569214 -7.24381638
		 34.38182068 -28.061569214 -7.24381638 34.38182068 -28.061569214 7.24381638 -27.9626236 -28.061569214 7.24381638
		 -19.54858398 -28.061569214 -7.24381638 25.96780396 -28.061569214 -7.24381638 25.96780396 -28.061569214 7.24381638
		 -19.54858398 -28.061569214 7.24381638 -19.54858398 -36.49890518 -7.24381638 25.96780396 -36.49890518 -7.24381638
		 25.96780396 -36.49890518 7.24381638 -19.54858398 -36.49890518 7.24381638 -11.44758606 -36.49890518 -7.24381638
		 17.86680603 -36.49890518 -7.24381638 17.86680603 -36.49890518 7.24381638 -11.44758606 -36.49890518 7.24381638
		 -11.44758606 -44.65400314 -7.24381638 17.86680603 -44.65400314 -7.24381638 17.86680603 -44.65400314 7.24381638
		 -11.44758606 -44.65400314 7.24381638 -3.69787598 -44.65400314 -7.24381638 10.11709595 -44.65400314 -7.24381638
		 10.11709595 -44.65400314 7.24381638 -3.69787598 -44.65400314 7.24381638 -3.69787598 -52.73911667 -7.24381638
		 10.11709595 -52.73911667 -7.24381638 10.11709595 -52.73911667 7.24381638 -3.69787598 -52.73911667 7.24381638
		 25.36834717 -19.70025253 -7.24381638 25.36834717 -19.70025253 7.24381638 -18.94915771 -19.70025253 -7.24381638
		 -18.94915771 -19.70025253 7.24381638 25.36834717 -19.70025253 -7.24381638 25.36834717 -19.70025253 7.24381638
		 -18.94915771 -19.70025253 -7.24381638 -18.94915771 -19.70025253 7.24381638;
	setAttr -s 76 ".ed[0:75]"  0 1 0 1 2 0 3 2 0 0 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 5 6 0 3 7 0 7 6 0 4 7 0 4 8 0 5 9 0 8 9 0 6 10 0 9 10 0 7 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 17 18 0 15 19 0 19 18 0 16 19 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0
		 23 22 0 20 23 0 20 24 0 21 25 0 24 25 0 22 26 0 25 26 0 23 27 0 27 26 0 24 27 0 24 28 0
		 25 29 0 28 29 0 26 30 0 29 30 0 27 31 0 31 30 0 28 31 0 1 32 0 2 33 0 32 33 0 0 34 0
		 34 32 0 3 35 0 34 35 0 35 33 0 32 36 0 33 37 0 36 37 0 34 38 0 38 36 0 35 39 0 38 39 0
		 39 37 0;
	setAttr -s 38 -ch 152 ".fc[0:37]" -type "polyFaces" 
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
		mu 0 4 27 24 28 31
		f 4 -71 -73 74 75
		mu 0 4 36 37 38 39
		f 4 -2 60 62 -62
		mu 0 4 2 1 33 32
		f 4 -1 63 64 -61
		mu 0 4 1 0 34 33
		f 4 3 65 -67 -64
		mu 0 4 0 3 35 34
		f 4 2 61 -68 -66
		mu 0 4 3 2 32 35
		f 4 -63 68 70 -70
		mu 0 4 32 33 37 36
		f 4 -65 71 72 -69
		mu 0 4 33 34 38 37
		f 4 66 73 -75 -72
		mu 0 4 34 35 39 38
		f 4 67 69 -76 -74
		mu 0 4 35 32 36 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface57";
	setAttr ".t" -type "double3" 0 5.0054220367835995 -29.209415187309766 ;
	setAttr ".s" -type "double3" 0.63594116859167493 0.63594116859167493 -0.57139006367888767 ;
	setAttr ".rp" -type "double3" 151.02296447753912 -5.8405141830444336 29.092425009012217 ;
	setAttr ".sp" -type "double3" 151.02296447753906 -5.8405141830444336 20.167481801049572 ;
	setAttr ".spt" -type "double3" 6.5369931689929217e-013 0 8.9249432079626896 ;
createNode mesh -n "polySurfaceShape57" -p "polySurface57";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:34]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 0.75 0.375 0.75 0.625 1 0.625 1
		 0.375 1 0.375 1 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625
		 0.75 0.375 0.75 0.625 1 0.625 1 0.375 1 0.375 1 0.625 0.75 0.375 0.75 0.625 1 0.375
		 1 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.375 0.75 0.625 0.75 0.625 0.75 0.375 0.75
		 0.625 1 0.625 1 0.375 1 0.375 1 0.625 0.75 0.375 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 44 ".vt[0:43]"  165.68017578 6.47140884 36.39950943 136.36578369 6.47140884 36.39950943
		 136.36578369 6.47140884 52.96567917 165.68017578 6.47140884 52.96567917 157.93048096 6.47140884 36.39950943
		 144.11550903 6.47140884 36.39950943 144.11550903 6.47140884 52.96567917 157.93048096 6.47140884 52.96567917
		 157.93048096 14.55652237 36.39950943 144.11550903 14.55652237 36.39950943 144.11550903 14.55652237 52.96567917
		 157.93048096 14.55652237 52.96567917 165.68017578 -1.68368912 36.39950943 136.36578369 -1.68368912 36.39950943
		 136.36578369 -1.68368912 52.96567917 165.68017578 -1.68368912 52.96567917 128.26477051 -1.56000328 36.39950943
		 173.78115845 -1.56000328 36.39950943 173.78115845 -1.56000328 52.96567917 128.26477051 -1.56000328 52.96567917
		 128.26477051 -9.99733925 36.39950943 173.78115845 -9.99733925 36.39950943 173.78115845 -9.99733925 52.96567917
		 128.26477051 -9.99733925 52.96567917 136.36578369 -9.99733925 36.39950943 165.68017578 -9.99733925 36.39950943
		 165.68017578 -9.99733925 52.96567917 136.36578369 -9.99733925 52.96567917 136.36578369 -18.15243721 36.39950943
		 165.68017578 -18.15243721 36.39950943 165.68017578 -18.15243721 52.96567917 136.36578369 -18.15243721 52.96567917
		 144.11547852 -18.15243721 36.39950943 157.93045044 -18.15243721 36.39950943 157.93045044 -18.15243721 52.96567917
		 144.11547852 -18.15243721 52.96567917 144.11547852 -26.23755074 36.39950943 157.93045044 -26.23755074 36.39950943
		 157.93045044 -26.23755074 52.96567917 144.11547852 -26.23755074 52.96567917 136.36578369 -9.99733925 36.39950943
		 165.68017578 -9.99733925 36.39950943 165.68017578 -9.99733925 52.96567917 136.36578369 -9.99733925 52.96567917;
	setAttr -s 76 ".ed[0:75]"  12 0 0 13 1 0 0 1 0 14 2 0 1 2 0 15 3 0 3 2 0
		 0 3 0 0 4 0 1 5 0 4 5 0 2 6 0 5 6 0 3 7 0 7 6 0 4 7 0 4 8 0 5 9 0 8 9 0 6 10 0 9 10 0
		 7 11 0 11 10 0 8 11 0 12 13 0 13 14 0 15 14 0 12 15 0 16 17 0 17 18 1 19 18 0 16 19 1
		 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0 23 22 0 20 23 0 20 24 0 21 25 0 24 25 0
		 22 26 0 25 26 0 23 27 0 27 26 0 24 27 0 40 28 0 41 29 0 28 29 0 42 30 0 29 30 0 43 31 0
		 31 30 0 28 31 0 28 32 0 29 33 0 32 33 0 30 34 0 33 34 0 31 35 0 35 34 0 32 35 0 32 36 0
		 33 37 0 36 37 0 34 38 0 37 38 0 35 39 0 39 38 0 36 39 0 40 41 0 41 42 0 43 42 0 40 43 0;
	setAttr -s 35 -ch 140 ".fc[0:34]" -type "polyFaces" 
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
		mu 0 4 15 13 0 3
		f 4 28 33 -35 -33
		mu 0 4 16 17 18 19
		f 4 29 35 -37 -34
		mu 0 4 17 20 21 18
		f 4 -31 37 38 -36
		mu 0 4 20 22 23 21
		f 4 -32 32 39 -38
		mu 0 4 22 16 19 23
		f 4 34 41 -43 -41
		mu 0 4 19 18 24 25
		f 4 36 43 -45 -42
		mu 0 4 18 21 26 24
		f 4 -39 45 46 -44
		mu 0 4 21 23 27 26
		f 4 -40 40 47 -46
		mu 0 4 23 19 25 27
		f 4 -30 -29 31 30
		mu 0 4 20 17 16 22
		f 4 66 68 -71 -72
		mu 0 4 28 29 30 31
		f 4 72 49 -51 -49
		mu 0 4 32 33 34 35
		f 4 73 51 -53 -50
		mu 0 4 33 36 37 34
		f 4 -75 53 54 -52
		mu 0 4 36 38 39 37
		f 4 -76 48 55 -54
		mu 0 4 38 32 35 39
		f 4 50 57 -59 -57
		mu 0 4 35 34 40 41
		f 4 52 59 -61 -58
		mu 0 4 34 37 42 40
		f 4 -55 61 62 -60
		mu 0 4 37 39 43 42
		f 4 -56 56 63 -62
		mu 0 4 39 35 41 43
		f 4 58 65 -67 -65
		mu 0 4 41 40 29 28
		f 4 60 67 -69 -66
		mu 0 4 40 42 30 29
		f 4 -63 69 70 -68
		mu 0 4 42 43 31 30
		f 4 -64 64 71 -70
		mu 0 4 43 41 28 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 3;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
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
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
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
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"UV Texture Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"polyTexturePlacementPanel\\\" -l (localizedPanelLabel(\\\"UV Texture Editor\\\")) -mbv $menusOkayInPanels `\"\n\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"UV Texture Editor\\\")) -mbv $menusOkayInPanels  $panelName\"\n\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode displayLayer -n "Foreground";
	setAttr ".do" 1;
createNode lambert -n "SkyholdWhiteGlow";
	setAttr ".c" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".ic" -type "float3" 0.52205694 0.52205694 0.52205694 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode displayLayer -n "BackStairs";
	setAttr ".do" 2;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	setAttr ".tp" 0.8793;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 0;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	setAttr ".tp" 0.8793;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 0;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	setAttr ".tp" 0.8793;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 0;
createNode polyBridgeEdge -n "polyBridgeEdge7";
	setAttr ".tp" 0.8793;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 0;
createNode polyBridgeEdge -n "polyBridgeEdge8";
	setAttr ".tp" 0.8793;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 0;
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId145";
	setAttr ".ihi" 0;
createNode displayLayer -n "ToDisappear";
	setAttr ".v" no;
	setAttr ".do" 3;
createNode lambert -n "RedGlowShader";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 148 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode blinn -n "OutsideMainTextureSkyhold";
	setAttr ".dc" 0.5;
	setAttr ".sc" -type "float3" 0.095582515 0.095582515 0.095582515 ;
	setAttr ".ec" 0.036761030554771423;
	setAttr ".sro" 0;
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "D:/Documents/RunnersFiles/SkyholdTextures/SkyholdOutsideTexture.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode animCurveTU -n "Minutes_scaleX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 1.7041191436106817;
createNode animCurveTU -n "Minutes_scaleY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 2.6816807525567037;
createNode animCurveTU -n "Minutes_scaleZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 1.7041191436106817;
createNode animCurveTU -n "Minutes_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Minutes_translateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 -257.04711881877319;
createNode animCurveTL -n "Minutes_translateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 -129.23310983859565;
createNode animCurveTL -n "Minutes_translateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 160.66274638505004;
createNode animCurveTA -n "Minutes_rotateX";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 0;
createNode animCurveTA -n "Minutes_rotateY";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 0;
createNode animCurveTA -n "Minutes_rotateZ";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  18 0;
createNode groupId -n "groupId162";
	setAttr ".ihi" 0;
createNode groupId -n "groupId163";
	setAttr ".ihi" 0;
createNode groupId -n "groupId166";
	setAttr ".ihi" 0;
createNode groupId -n "groupId167";
	setAttr ".ihi" 0;
createNode groupId -n "groupId168";
	setAttr ".ihi" 0;
createNode groupId -n "groupId169";
	setAttr ".ihi" 0;
createNode groupId -n "groupId170";
	setAttr ".ihi" 0;
createNode groupId -n "groupId171";
	setAttr ".ihi" 0;
createNode groupId -n "groupId172";
	setAttr ".ihi" 0;
createNode groupId -n "groupId173";
	setAttr ".ihi" 0;
createNode groupId -n "groupId174";
	setAttr ".ihi" 0;
createNode groupId -n "groupId175";
	setAttr ".ihi" 0;
createNode groupId -n "groupId176";
	setAttr ".ihi" 0;
createNode groupId -n "groupId177";
	setAttr ".ihi" 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 117.50763 22.437485 11.304897 ;
	setAttr ".rs" 64417;
	setAttr ".lt" -type "double3" -3.1898435654941448e-015 -17.634221707070395 -3.6287011330635616e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 117.50763083819339 22.437485197869893 3.0218116154299342 ;
	setAttr ".cbx" -type "double3" 117.50763083819339 22.437485197869893 19.58798230787378 ;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:12]";
	setAttr ".gi" 276;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 135.14185 22.437485 11.304897 ;
	setAttr ".rs" 48197;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 135.14184714678714 22.437485197869893 -8.8493240962399877 ;
	setAttr ".cbx" -type "double3" 135.14184714678714 22.437485197869893 31.459118973218018 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[16:17]" -type "float3"  0 0 11.87113667 0 0 -11.87113667;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
	setAttr ".gi" 277;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 168.58572 22.437485 11.304896 ;
	setAttr ".rs" 64262;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 168.58572913531253 22.437485197869893 -8.8493240962399877 ;
	setAttr ".cbx" -type "double3" 168.58572913531253 22.437485197869893 31.459117065869385 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[18:19]" -type "float3"  33.44388199 0 0 33.44388199
		 0 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
	setAttr ".gi" 278;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[28:29]" "e[31:32]" "e[34:36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 147.81335593584964 11.218742827264425 11.3048964848147 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 151.01331 22.437485 11.304896 ;
	setAttr ".rs" 57231;
	setAttr ".lt" -type "double3" 0 -4.5637325640478355e-016 -4.110644854972886 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 117.50763083819339 22.437485197869893 -8.8493240962399877 ;
	setAttr ".cbx" -type "double3" 184.51898719195316 22.437485197869893 31.459117065869385 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[20:21]" -type "float3"  15.93326187 0 -11.82521534
		 15.93326187 0 11.82521534;
createNode groupId -n "groupId178";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId179";
	setAttr ".ihi" 0;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
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
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
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
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
lockNode -l 1 ;
select -ne :time1;
	setAttr ".o" 18;
	setAttr ".unw" 18;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :initialShadingGroup;
	setAttr -s 62 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 21 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
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
connectAttr "Foreground.di" "|box.do";
connectAttr "groupId162.id" "polySurfaceShape59.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape59.iog.og[0].gco";
connectAttr "groupId163.id" "polySurfaceShape59.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape59.iog.og[1].gco";
connectAttr "Foreground.di" "pCube2.do";
connectAttr "groupParts4.og" "WallBoxLedgeShape.i";
connectAttr "groupId178.id" "WallBoxLedgeShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallBoxLedgeShape.iog.og[0].gco";
connectAttr "groupId166.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "Foreground.di" "pCube5.do";
connectAttr "Foreground.di" "polySurface6.do";
connectAttr "groupId167.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupId18.id" "pCubeShape9.iog.og[7].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape9.iog.og[7].gco";
connectAttr "groupId19.id" "pCubeShape9.ciog.cog[7].cgid";
connectAttr "groupId177.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupId168.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "Minutes_scaleX.o" "Minutes.sx";
connectAttr "Minutes_scaleY.o" "Minutes.sy";
connectAttr "Minutes_scaleZ.o" "Minutes.sz";
connectAttr "Minutes_visibility.o" "Minutes.v";
connectAttr "Minutes_translateX.o" "Minutes.tx";
connectAttr "Minutes_translateY.o" "Minutes.ty";
connectAttr "Minutes_translateZ.o" "Minutes.tz";
connectAttr "Minutes_rotateX.o" "Minutes.rx";
connectAttr "Minutes_rotateY.o" "Minutes.ry";
connectAttr "Minutes_rotateZ.o" "Minutes.rz";
connectAttr "groupId29.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupId30.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupId31.id" "|FuturisticClock|polySurface11|polySurfaceShape13.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|FuturisticClock|polySurface11|polySurfaceShape13.iog.og[0].gco"
		;
connectAttr "groupId25.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupId169.id" "|FuturisticClock|polySurface13|polySurfaceShape13.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|FuturisticClock|polySurface13|polySurfaceShape13.iog.og[0].gco"
		;
connectAttr "groupId170.id" "polySurfaceShape48.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape48.iog.og[0].gco";
connectAttr "groupId171.id" "BoxWallShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "BoxWallShape.iog.og[0].gco";
connectAttr "groupId172.id" "polySurfaceShape58.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape58.iog.og[0].gco";
connectAttr "groupId173.id" "boxShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "boxShape.iog.og[0].gco";
connectAttr "ToDisappear.di" "polySurface54.do";
connectAttr "groupId174.id" "|Hallway|polySurface48|polySurface54|polySurfaceShape57.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|Hallway|polySurface48|polySurface54|polySurfaceShape57.iog.og[0].gco"
		;
connectAttr "groupId175.id" "polySurfaceShape54.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape54.iog.og[0].gco";
connectAttr "ToDisappear.di" "polySurface52.do";
connectAttr "groupId176.id" "polySurfaceShape55.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape55.iog.og[0].gco";
connectAttr "BackStairs.di" "pCube29.do";
connectAttr "BackStairs.di" "pCube28.do";
connectAttr "BackStairs.di" "pCube23.do";
connectAttr "BackStairs.di" "pCube62.do";
connectAttr "Foreground.di" "pCube4.do";
connectAttr "Foreground.di" "pCube232.do";
connectAttr "Foreground.di" "polySurface57.do";
connectAttr "groupId179.id" "|polySurface57|polySurfaceShape57.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|polySurface57|polySurfaceShape57.iog.og[0].gco"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "Foreground.id";
connectAttr "SkyholdWhiteGlow.oc" "lambert2SG.ss";
connectAttr "pPlaneShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "SkyholdWhiteGlow.msg" "materialInfo1.m";
connectAttr "layerManager.dli[2]" "BackStairs.id";
connectAttr "layerManager.dli[3]" "ToDisappear.id";
connectAttr "RedGlowShader.oc" "lambert3SG.ss";
connectAttr "pCubeShape84.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape85.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape86.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape87.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape88.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape89.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape90.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape91.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape92.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape93.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape94.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape95.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape96.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape97.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape98.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape99.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape100.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape101.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape102.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape103.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape104.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape105.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape106.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape107.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape108.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape109.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape110.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape111.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape112.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape113.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape114.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape115.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape116.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape117.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape118.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape119.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape120.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape121.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape122.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape123.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape124.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape125.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape126.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape127.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape128.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape129.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape130.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape131.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape132.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape133.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape134.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape135.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape136.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape137.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape138.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape139.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape140.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape141.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape142.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape143.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape144.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape145.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape146.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape147.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape148.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape149.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape150.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape151.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape152.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape153.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape154.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape155.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape156.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape157.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape158.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape159.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape160.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape161.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape162.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape163.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape164.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape165.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape166.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape167.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape168.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape169.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape170.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape171.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape172.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape173.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape174.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape175.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape176.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape177.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape178.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape179.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape180.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape181.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape182.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape183.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape184.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape185.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape186.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape187.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape188.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape189.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape190.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape191.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape192.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape193.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape194.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape195.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape196.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape197.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape198.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape199.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape200.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape201.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape202.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape203.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape204.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape205.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape206.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape207.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape208.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape209.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape210.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape211.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape212.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape213.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape214.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape215.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape216.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape217.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape218.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape219.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape220.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape221.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape222.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape223.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape224.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape225.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape226.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape227.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape228.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape229.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape230.iog" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape59.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "groupId163.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "RedGlowShader.msg" "materialInfo2.m";
connectAttr "file1.oc" "OutsideMainTextureSkyhold.c";
connectAttr "OutsideMainTextureSkyhold.oc" "blinn1SG.ss";
connectAttr "polySurfaceShape45.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape46.iog" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape16.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo3.sg";
connectAttr "OutsideMainTextureSkyhold.msg" "materialInfo3.m";
connectAttr "file1.msg" "materialInfo3.t" -na;
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
connectAttr "polySurfaceShape60.o" "polyExtrudeEdge1.ip";
connectAttr "WallBoxLedgeShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "groupParts1.ig";
connectAttr "polyTweak1.out" "polyExtrudeEdge2.ip";
connectAttr "WallBoxLedgeShape.wm" "polyExtrudeEdge2.mp";
connectAttr "groupParts1.og" "polyTweak1.ip";
connectAttr "polyExtrudeEdge2.out" "groupParts2.ig";
connectAttr "polyTweak2.out" "polyExtrudeEdge3.ip";
connectAttr "WallBoxLedgeShape.wm" "polyExtrudeEdge3.mp";
connectAttr "groupParts2.og" "polyTweak2.ip";
connectAttr "polyExtrudeEdge3.out" "groupParts3.ig";
connectAttr "polyTweak3.out" "polyExtrudeEdge4.ip";
connectAttr "WallBoxLedgeShape.wm" "polyExtrudeEdge4.mp";
connectAttr "groupParts3.og" "polyTweak3.ip";
connectAttr "polyExtrudeEdge4.out" "groupParts4.ig";
connectAttr "groupId178.id" "groupParts4.gi";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog.og[7]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.ciog.cog[7]" ":initialShadingGroup.dsm" -na;
connectAttr "SecondRingShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MinuteRingShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|FuturisticClock|polySurface11|polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
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
connectAttr "pCubeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape62.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape43.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape67.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape71.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape72.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape73.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape74.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape75.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape76.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape77.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape78.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape79.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape80.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape81.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape82.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape83.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape59.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|FuturisticClock|polySurface13|polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape48.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "BoxWallShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape58.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "boxShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|Hallway|polySurface48|polySurface54|polySurfaceShape57.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape54.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape55.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallBoxLedgeShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape231.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape232.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface57|polySurfaceShape57.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape233.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId162.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId166.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId167.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId168.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId169.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId170.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId171.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId172.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId173.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId174.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId175.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId176.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId177.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId178.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId179.msg" ":initialShadingGroup.gn" -na;
connectAttr "SkyholdWhiteGlow.msg" ":defaultShaderList1.s" -na;
connectAttr "RedGlowShader.msg" ":defaultShaderList1.s" -na;
connectAttr "OutsideMainTextureSkyhold.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Skyhold.ma
