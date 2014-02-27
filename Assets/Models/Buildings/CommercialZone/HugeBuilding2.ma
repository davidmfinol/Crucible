//Maya ASCII 2014 scene
//Name: HugeBuilding2.ma
//Last modified: Wed, Feb 26, 2014 05:40:47 PM
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
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010035-864206";
fileInfo "osv" "Mac OS X 10.9.1";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 51.058678439430921 -1.0436088429743675 8.7374178517156089 ;
	setAttr ".r" -type "double3" -9.3383527296316586 89.000000000011795 0 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" 8.9956534977223877e-15 -4.0282982863532784e-16 -6.3014025307961907e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 31.480612001225534;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 20 -6.1517904447643028 8.1952866029770224 ;
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
	setAttr ".t" -type "double3" 118.81128292094755 -6.1517904447643028 8.1667076833598422 ;
	setAttr ".r" -type "double3" 0 90.016571502596094 0 ;
	setAttr ".rpt" -type "double3" 2.8903572447056314e-16 0 1.0519139154885848e-15 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 0.86602540378443871;
	setAttr ".ow" 6.5403618738531142;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 19.421671569109343 0 0.70612484946310883 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.35855208665461 -6.419994315693045 -0.52016002350110735 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 7.2541612952416878;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pPlane1";
	setAttr ".t" -type "double3" -5.2260262821977683 13.123828845887481 3.3223217518983041 ;
	setAttr ".r" -type "double3" -179.99999999999679 90 89.99999999999865 ;
	setAttr ".s" -type "double3" 1.0436416126003736 1 1.431394188234784 ;
createNode mesh -n "BG" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge1";
	setAttr ".t" -type "double3" 20 25 3 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.39572192278435137 0.39572192278435137 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape1" -p "Ledge1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ground";
	setAttr ".t" -type "double3" 20 -12.094117813955851 3 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.39572192278435137 36.997175584709709 ;
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
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 20 -6.419994315693045 -0.52016002350112511 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.37903328624077992 3.9374340770297396 ;
	setAttr -l on ".sx";
createNode mesh -n "polySurfaceShape1" -p "pCube3";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.34962818 0 0 0.34962818 
		0 0 0.34962818 0 0 0.34962818;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge49" -p "pCube3";
createNode mesh -n "LedgeShape49" -p "|pCube3|Ledge49";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "WallSurface50" -p "pCube3";
createNode mesh -n "WallSurfaceShape50" -p "WallSurface50";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform19" -p "pCube3";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform19";
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
createNode transform -n "Ledge4";
	setAttr ".t" -type "double3" 20 4.1177919965150966 4.9404655234734651 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.50124776493558021 2.5795210750697528 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape4" -p "Ledge4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "LedgeWall5";
	setAttr ".t" -type "double3" 20 6.673527183108571 6.2656614907236365 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 1.3255218568957083 4.3565252921819519 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeWallShape5" -p "LedgeWall5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "LedgeWall6";
	setAttr ".t" -type "double3" 20 2.1187311678586047 7.0541939438738535 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.79245269293327913 3.0675390363877746 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeWallShape6" -p "LedgeWall6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" 20 -1.0922414173005368 20.286401559337445 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.79245269293327913 3.0675390363877746 ;
	setAttr -l on ".sx";
createNode mesh -n "polySurfaceShape2" -p "pCube7";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -3.4966192 0 0 -3.4966192 
		0 0 -3.4966192 0 0 -3.4966192;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8";
	setAttr ".t" -type "double3" 20 4.9515813201781791 11.700179527406762 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.14205449470940637 3.0675390363877746 ;
	setAttr -l on ".sx";
createNode mesh -n "polySurfaceShape23" -p "pCube8";
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
	setAttr ".pt[4]" -type "float3" 0 0 -3.7400811 ;
	setAttr ".pt[5]" -type "float3" 0 0 -3.7400811 ;
	setAttr ".pt[6]" -type "float3" 0 0 -3.7400811 ;
	setAttr ".pt[7]" -type "float3" 0 0 -3.7400811 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 4.8275843906724552 18.579545619317031 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 7.5394334996625085 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape9" -p "Ledge9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	setAttr ".t" -type "double3" 20 7.6843137163643416 18.014843334369388 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 1.5078863531336524 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape10" -p "Ledge10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge11";
	setAttr ".t" -type "double3" 20 11.077785314512724 11.844895232165165 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 3.1492356126941479 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape11" -p "Ledge11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "pCube12";
	setAttr ".t" -type "double3" 20 13.643610028658426 1.5815968048572522 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 3.1492356126941479 ;
	setAttr -l on ".sx";
createNode mesh -n "polySurfaceShape3" -p "pCube12";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -1.7937193 0 0 -1.7937193 
		0 0 -1.7937193 0 0 -1.7937193;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 10.999961385709163 4.499108336079316 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.46490562245038175 2.1694736013309828 ;
	setAttr -l on ".sx";
createNode mesh -n "polySurfaceShape8" -p "pCube13";
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
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 0 -0.65501016 0 0 -0.65501016 
		0 0 -0.65501016 0 0 -0.65501016;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 20.380380493318984 6.6857772399991999 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.42138443071603826 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape14" -p "Ledge14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.044944741 0 0 -0.044944741 
		0 0 -0.044944741 0 0 -0.044944741;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 19.282617892056003 2.4636135655848346 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.42138443071603826 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape15" -p "Ledge15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge16";
	setAttr ".t" -type "double3" 20 20.861682378518346 1.0849607965676586 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.19109158261002221 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape16" -p "Ledge16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "pCube17";
	setAttr ".t" -type "double3" 20 20.051101300571979 1.611127439191955 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.19109158261002221 1.3546194151164281 ;
	setAttr -l on ".sx";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 19.482176455423819 6.1340797689418647 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.19109158261002221 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "pCubeShape18" -p "pCube18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[14:17]" -type "float3"  -0.00081097771 5.806551 0.77296358 
		-0.00081097771 5.806551 0.77296358 -0.00081097771 5.806551 0.77296358 -0.00081097771 
		5.806551 0.77296358;
createNode mesh -n "polySurfaceShape4" -p "pCube18";
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
	setAttr -s 5 ".pt";
	setAttr ".pt[4]" -type "float3" 0 -4.4408921e-16 -0.3720068 ;
	setAttr ".pt[5]" -type "float3" 0 -4.4408921e-16 -0.3720068 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.3720068 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.3720068 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 16.538651504918171 -0.80353546297030976 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.29965115648978352 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape19" -p "Ledge19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge20";
	setAttr ".t" -type "double3" 20 17.846219841736932 -2.3186542660711655 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.29965115648978352 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape20" -p "Ledge20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge21";
	setAttr ".t" -type "double3" 20 18.676421960352023 -3.0658361415729574 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.29965115648978352 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape21" -p "Ledge21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge22";
	setAttr ".t" -type "double3" 20 18.966433097145853 -4.4104331741049467 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.29965115648978352 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape22" -p "Ledge22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -1.5342233 0 0 -1.5342233 
		0 0 -1.5342233 0 0 -1.5342233;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 21.66396167558332 -5.5987501420225083 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.29965115648978352 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape23" -p "Ledge23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge24";
	setAttr ".t" -type "double3" 20 24.439799088232391 -5.5987501420225083 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.29965115648978352 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape24" -p "Ledge24";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LedgeWall25";
	setAttr ".t" -type "double3" 20 22.571485864320536 -3.315251862047544 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.53403177642370603 0.75777028846299865 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.20789684618769408 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.14196042452992677 ;
createNode mesh -n "LedgeWallShape25" -p "LedgeWall25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LedgeWall26";
	setAttr ".t" -type "double3" 20 21.079544756080054 -3.2749291310789426 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.53403177642370603 0.75777028846299865 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.20789684618769408 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.14196042452992677 ;
createNode mesh -n "LedgeWallShape26" -p "LedgeWall26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge27";
	setAttr ".t" -type "double3" 20 23.853997146178912 -0.9706907327337182 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.18987796607898683 0.75777028846299865 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.20789684618769408 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.14196042452992677 ;
createNode mesh -n "LedgeShape27" -p "Ledge27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -3.9144619 0 0 -3.9144619 
		0 0 -3.9144619 0 0 -3.9144619;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 25.13847682704796 -0.26422693780444639 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.18987796607898683 0.93593410005437927 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.20789684618769408 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.14196042452992677 ;
createNode mesh -n "LedgeShape28" -p "Ledge28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape5" -p "Ledge28";
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
	setAttr -s 5 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0 -3.9144619 ;
	setAttr ".pt[5]" -type "float3" 0 0 -3.9144619 ;
	setAttr ".pt[6]" -type "float3" 0 0 -3.9144619 ;
	setAttr ".pt[7]" -type "float3" 0 0 -3.9144619 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge29";
	setAttr ".t" -type "double3" 20 19.945953339862537 -1.5482107417383837 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.18987796607898683 0.45727809302649569 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.20789684618769408 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.14196042452992677 ;
createNode mesh -n "LedgeShape29" -p "Ledge29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -3.9144619 0 0 -3.9144619 
		0 0 -3.9144619 0 0 -3.9144619;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 20.607013840220461 11.844895232165165 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 3.1492356126941479 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape32" -p "Ledge32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge33";
	setAttr ".t" -type "double3" 20 27.325145587885324 3.4423711232243983 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 1.5924823303297011 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape33" -p "Ledge33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge34";
	setAttr ".t" -type "double3" 20 29.046826058403564 3.5837126956954024 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.21826702251721963 1.5924823303297011 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape34" -p "Ledge34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape9" -p "Ledge34";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 0.16102119 0 0 0.16102119 
		0 0 0.16102119 0 0 0.16102119 0 0 -0.35161078 0 0 -0.35161078 0 0 -0.35161078 0 0 
		-0.35161078;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 30.930716616585045 2.8927442340979796 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.1813502606189363 4.4529108354735714 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape35" -p "Ledge35";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape10" -p "Ledge35";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge36";
	setAttr ".t" -type "double3" 20 32.183628789868365 4.9446148088704307 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.1813502606189363 2.4143677600866975 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape36" -p "Ledge36";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge37";
	setAttr ".t" -type "double3" 20 32.183628789868365 0.65929183405387626 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.1813502606189363 2.4143677600866975 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape37" -p "Ledge37";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge38";
	setAttr ".t" -type "double3" 20 33.238575400469202 0.69380070277427119 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.1813502606189363 2.4143677600866975 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape38" -p "Ledge38";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge40";
	setAttr ".t" -type "double3" 20 36.078238087247321 1.3137270380431423 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.1813502606189363 0.75513882528295762 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape40" -p "Ledge40";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 36.658169199335816 2.9135369422025947 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.11764626583005604 2.0468247184846349 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape41" -p "Ledge41";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 37.298093185088632 5.0532826800661166 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.10714413449800633 2.0468247184846349 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape42" -p "Ledge42";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 37.778036174403248 4.1533896127403356 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.10632004667410036 2.0468247184846349 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape43" -p "Ledge43";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 36.901231762320521 0.10481410963532589 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.07624579010909012 1.4896344946681137 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape44" -p "Ledge44";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 37.52239164550366 0.10481410963532589 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.060130313693551748 1.4896344946681137 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape45" -p "Ledge45";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 34.833228148644814 -8.2097374333355564 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.07624579010909012 1.4896344946681137 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape46" -p "Ledge46";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 36.075734393232082 -8.3038808174894303 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.060130313693551748 1.4896344946681137 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape47" -p "Ledge47";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 34.117738399149147 -8.1720800796740072 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.07624579010909012 1.4896344946681137 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape48" -p "Ledge48";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 32.441986091119823 -8.1909087565047827 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.07624579010909012 2.0016071450514654 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape49" -p "|Ledge49";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 34.588455339606824 -5.3289498782270064 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.20416928271248969 1.4334862374114066 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape50" -p "Ledge50";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 31.234526256391938 -4.4826313599168754 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.20416928271248969 0.91404762702555065 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape51" -p "Ledge51";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 29.295019469448945 -3.2732918845227452 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.20416928271248969 0.79611081230372682 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape52" -p "Ledge52";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 28.496399027766536 -7.0838521068592497 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.20416928271248969 1.8964027707570492 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape53" -p "Ledge53";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.17867345 0 0 -0.17867345 
		0 0 -0.17867345 0 0 -0.17867345;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 29.33104626527874 -13.142528517748987 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.13642421231719418 0.6167267594147855 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape55" -p "Ledge55";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 29.347235768909567 -14.729099807209746 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.13642421231719418 0.6167267594147855 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape56" -p "Ledge56";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 30.693654003511401 -12.752443332704383 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 2.067946733320019 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape57" -p "Ledge57";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 31.753600273304333 -12.122205036485282 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.7761466884435283 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape58" -p "Ledge58";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 31.753600273304333 -14.242097487404077 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.7761466884435283 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape59" -p "Ledge59";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 23.320524742793509 -12.065607216500133 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.7761466884435283 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape61" -p "Ledge61";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 23.388317651183652 -13.896015666474888 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.7761466884435283 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape62" -p "Ledge62";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape14" -p "Ledge62";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 0.24204239 0 0 0.24204239 
		0 0 0.24204239 0 0 0.24204239;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 19.821078417233899 -11.599014392607996 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.7761466884435283 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape63" -p "Ledge63";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0 0.26666337 0 0 0.26666337 
		0 0 -0.26666337 0 0 -0.26666337 0;
createNode mesh -n "polySurfaceShape15" -p "Ledge63";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -2.2252891 0 0 -2.2252891 
		0 0 -2.2252891 0 0 -2.2252891;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 17.831388555132303 -8.5916899354886382 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.40396606988884998 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape64" -p "Ledge64";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 16.271681151912663 -8.5916899354886382 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.40396606988884998 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape66" -p "Ledge66";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 14.868789159955298 -8.5916899354886382 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.40396606988884998 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape67" -p "Ledge67";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 14.341771937717049 -9.3343050812181279 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.40396606988884998 ;
	setAttr -l on ".sx";
createNode mesh -n "polySurfaceShape17" -p "pCube68";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface51" -p "pCube68";
createNode mesh -n "polySurfaceShape75" -p "polySurface51";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface52" -p "pCube68";
createNode transform -n "Ledge253" -p "polySurface52";
createNode mesh -n "LedgeShape253" -p "Ledge253";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge254" -p "polySurface52";
createNode mesh -n "LedgeShape254" -p "Ledge254";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform21" -p "polySurface52";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape76" -p "transform21";
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
createNode transform -n "transform20" -p "pCube68";
	setAttr ".v" no;
createNode mesh -n "pCubeShape68" -p "transform20";
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
createNode transform -n "Ledge69";
	setAttr ".t" -type "double3" 20 15.492541396326391 -11.672833367749911 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.84420535309424383 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape69" -p "Ledge69";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube70";
	setAttr ".t" -type "double3" 20 14.32383176294698 -13.231112813745533 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.84420535309424383 ;
	setAttr -l on ".sx";
createNode mesh -n "polySurfaceShape18" -p "pCube70";
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
	setAttr -s 5 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0 -0.16137081 ;
	setAttr ".pt[5]" -type "float3" 0 0 -0.16137081 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.16137081 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.16137081 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge255" -p "pCube70";
createNode mesh -n "LedgeShape255" -p "Ledge255";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface56" -p "pCube70";
createNode transform -n "polySurface57" -p "polySurface56";
createNode transform -n "transform28" -p "polySurface57";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape81" -p "transform28";
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
createNode transform -n "polySurface58" -p "polySurface56";
createNode transform -n "polySurface59" -p "polySurface58";
createNode transform -n "transform26" -p "polySurface59";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape83" -p "transform26";
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
createNode transform -n "polySurface60" -p "polySurface58";
createNode transform -n "transform25" -p "polySurface60";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape84" -p "transform25";
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
createNode transform -n "Ledge261" -p "polySurface58";
createNode mesh -n "LedgeShape261" -p "Ledge261";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform24" -p "polySurface58";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape82" -p "transform24";
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
createNode transform -n "transform23" -p "polySurface56";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape80" -p "transform23";
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
createNode transform -n "transform22" -p "pCube70";
	setAttr ".v" no;
createNode mesh -n "pCubeShape70" -p "transform22";
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
createNode transform -n "Ledge71";
	setAttr ".t" -type "double3" 20 10.533032946902665 -8.5333281503457492 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.84420535309424383 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.29535138075875761 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.054505889958863254 ;
createNode mesh -n "LedgeShape71" -p "Ledge71";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[24:27]" -type "float3"  0.0021359446 0.4590928 -0.13158131 
		0.0021359446 0.4590928 -0.13158131 0.0021359446 1.4789163 -0.078756474 0.0021359446 
		1.4789163 -0.078756474;
createNode mesh -n "polySurfaceShape20" -p "Ledge71";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 9.2417100977500013 -8.5333281503457492 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.84420535309424383 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.29535138075875761 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.054505889958863254 ;
createNode mesh -n "LedgeShape72" -p "Ledge72";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 8.1620795189502342 -8.5333281503457492 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.84420535309424383 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.29535138075875761 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.054505889958863254 ;
createNode mesh -n "LedgeShape73" -p "Ledge73";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 7.1459566212563352 -8.5333281503457492 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.84420535309424383 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.29535138075875761 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.054505889958863254 ;
createNode mesh -n "LedgeShape74" -p "Ledge74";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 5.9816491343154095 -8.5333281503457492 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.84420535309424383 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.29535138075875761 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.054505889958863254 ;
createNode mesh -n "LedgeShape75" -p "Ledge75";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 4.8231058972923124 -8.5333281503457492 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.84420535309424383 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.29535138075875761 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.054505889958863254 ;
createNode mesh -n "LedgeShape76" -p "Ledge76";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 6.4367911202887704 -11.057297239720864 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.84420535309424383 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.29535138075875761 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.054505889958863254 ;
createNode mesh -n "LedgeShape77" -p "Ledge77";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube78";
	setAttr ".t" -type "double3" 20 8.7952541385143661 -11.38830957931104 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.84420535309424383 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.29535138075875761 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.054505889958863254 ;
createNode mesh -n "pCubeShape78" -p "pCube78";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape19" -p "pCube78";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  -0.0012399015 17.336454 -2.7092235 
		-0.0012399015 17.336454 -2.7092235 -0.0012399015 17.336454 -2.7092235 -0.0012399015 
		17.336454 -2.7092235;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LedgeWall79";
	setAttr ".t" -type "double3" 20 8.5094310454953437 0.96817242464897224 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 1.8557306550134838 2.2266686422290545 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeWallShape79" -p "LedgeWall79";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "LedgeWall80";
	setAttr ".t" -type "double3" 20 11.300617552481992 -2.7765189883898218 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.90724611324390225 3.4142248803479065 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeWallShape80" -p "LedgeWall80";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "LedgeWall81";
	setAttr ".t" -type "double3" 20 8.6216282515298381 -6.1064676260208142 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 1.5787837939201026 2.0370556151014561 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeWallShape81" -p "LedgeWall81";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge82";
	setAttr ".t" -type "double3" 20 11.463866808444761 -5.8996610478267906 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 1.4172180865046364 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.29535138075875761 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.054505889958863254 ;
createNode mesh -n "LedgeShape82" -p "Ledge82";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 9.7453124353271985 7.3924860416019156 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 27.303346539539959 0 0 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.18377369202409211 4.6560623815585123 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape83" -p "Ledge83";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	setAttr ".t" -type "double3" 20 11.481274796657141 19.914684537524813 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 3.1492356126941479 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape84" -p "Ledge84";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge85";
	setAttr ".t" -type "double3" 20 -8.7790546334312349 -9.9990947227785583 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 10.987333430797623 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape85" -p "Ledge85";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge86";
	setAttr ".t" -type "double3" 20 1.3556489650667256 -12.315598305544668 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 2.4416297663427096 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape86" -p "Ledge86";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge87";
	setAttr ".t" -type "double3" 20 5.2097281843141516 -14.364989550696059 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 2.4416297663427096 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape87" -p "Ledge87";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge88";
	setAttr ".t" -type "double3" 20 7.8890783795254649 -13.497031073057782 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 51.264779906063943 0 0 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 2.4416297663427096 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape88" -p "Ledge88";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0.15613943 -2.2162516 -0.29466507 
		-0.15613943 -2.2162516 -0.29466507 -0.15613943 -1.1004264 -0.12748662 0.15613943 
		-1.1004264 -0.12748662;
createNode mesh -n "polySurfaceShape21" -p "Ledge88";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LedgeWall89";
	setAttr ".t" -type "double3" 20 0.95977070306784551 -3.6865987457662941 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 1.4847995316835283 2.6774001722971263 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.29535138075875761 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.054505889958863254 ;
createNode mesh -n "LedgeWallShape89" -p "LedgeWall89";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge90";
	setAttr ".t" -type "double3" 20 -1.7484336581616473 -4.5302347103838132 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.19797327063183676 2.6774001722971263 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.29535138075875761 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.054505889958863254 ;
createNode mesh -n "LedgeShape90" -p "Ledge90";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape22" -p "Ledge90";
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
	setAttr -s 5 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0 -0.69971454 ;
	setAttr ".pt[5]" -type "float3" 0 0 -0.69971454 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.69971454 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.69971454 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 20 -7.5068378990635214 2.9954384047997769 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.237735806725756 2.2836124781830578 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape91" -p "Ledge91";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge92";
	setAttr ".t" -type "double3" 20 -3.9122891288638142 2.3320552346543888 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.237735806725756 2.2836124781830578 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape92" -p "Ledge92";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge93";
	setAttr ".t" -type "double3" 20 16.107347864045195 5.9869343900789502 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 2.274447926519426 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeShape93" -p "Ledge93";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "pasted__Ledge15";
	setAttr ".t" -type "double3" 20 -9.164548767346961 20.261782312697726 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.42138443071603826 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "pasted__LedgeShape15" -p "pasted__Ledge15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "pasted__Ledge16";
	setAttr ".t" -type "double3" 20 -8.8327116264636771 18.883129543680546 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.19109158261002221 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "pasted__LedgeShape16" -p "pasted__Ledge16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "pasted__Ledge17";
	setAttr ".t" -type "double3" 20 -8.3960653588309846 19.409296186304843 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.19109158261002221 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "pasted__LedgeShape17" -p "pasted__Ledge17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "pasted__Ledge23";
	setAttr ".t" -type "double3" 20 -6.783204983819644 12.199418605090381 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.29965115648978352 1.3546194151164281 ;
	setAttr -l on ".sx";
createNode mesh -n "pasted__LedgeShape23" -p "pasted__Ledge23";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__Ledge25";
	setAttr ".t" -type "double3" 20 -7.2431322695475977 17.202971207558818 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.53403177642370603 0.75777028846299865 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.265111444952569 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.084745825765051866 ;
createNode mesh -n "pasted__LedgeShape25" -p "pasted__Ledge25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__Ledge26";
	setAttr ".t" -type "double3" 20 -8.0147430835413012 14.580454214798822 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.53403177642370603 0.75777028846299865 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.265111444952569 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.084745825765051866 ;
createNode mesh -n "pasted__LedgeShape26" -p "pasted__Ledge26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__Ledge27";
	setAttr ".t" -type "double3" 20 -5.4091565131756205 16.317049506485315 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.18987796607898683 0.75777028846299865 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.265111444952569 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.084745825765051866 ;
createNode mesh -n "pasted__LedgeShape27" -p "pasted__Ledge27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -3.9144619 0 0 -3.9144619 
		0 0 -3.9144619 0 0 -3.9144619;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__Ledge28";
	setAttr ".t" -type "double3" 20 -5.7946967354121668 22.788562090752123 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.18987796607898683 0.93593410005437927 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.3274433498165778 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.022413920901043063 ;
createNode mesh -n "pasted__LedgeShape28" -p "pasted__Ledge28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pasted__polySurfaceShape5" -p "pasted__Ledge28";
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
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -3.9144619 0 0 -3.9144619 
		0 0 -3.9144619 0 0 -3.9144619;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__Ledge29";
	setAttr ".t" -type "double3" 20 -9.4718950898680241 16.606493945491874 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.18987796607898683 0.45727809302649569 ;
	setAttr -l on ".sx";
	setAttr ".rp" -type "double3" 0 0 -0.15998206558520817 ;
	setAttr ".sp" -type "double3" 0 0 -0.34985727071762085 ;
	setAttr ".spt" -type "double3" 0 0 0.18987520513241268 ;
createNode mesh -n "pasted__LedgeShape29" -p "pasted__Ledge29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -3.9144619 0 0 -3.9144619 
		0 0 -3.9144619 0 0 -3.9144619;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__Ledge61";
	setAttr ".t" -type "double3" 20 -5.1266419166094543 5.732561530612756 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.7761466884435283 ;
	setAttr -l on ".sx";
createNode mesh -n "pasted__LedgeShape61" -p "pasted__Ledge61";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69971454 0 0 -0.69971454 
		0 0 -0.69971454 0 0 -0.69971454;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__LedgeWall80";
	setAttr ".t" -type "double3" 20 -9.9945211110060761 11.63877626307548 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.90724611324390225 3.4142248803479065 ;
	setAttr -l on ".sx";
createNode mesh -n "pasted__LedgeWallShape80" -p "pasted__LedgeWall80";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge226";
	setAttr ".t" -type "double3" 20 -5.0151187085583011 8.2161571739917783 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.84420535309424383 ;
createNode mesh -n "LedgeShape226" -p "Ledge226";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.50123978 18.33645439 -4.28749609 0.49876022 18.33645439 -4.28749609
		 0.49876022 16.3364563 -4.28749609 -0.50123978 16.3364563 -4.28749609 -0.50123978 18.33645439 -3.20922232
		 0.49876022 18.33645439 -3.20922232 0.49876022 16.3364563 -3.20922232 -0.50123978 16.3364563 -3.20922232;
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
createNode transform -n "Ledge227";
	setAttr ".t" -type "double3" 20 -5.0151187085583011 8.2161571739917783 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.84420535309424383 ;
createNode mesh -n "LedgeShape227" -p "Ledge227";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.49983597 -2.7955265 3.54022503 0.50016403 -2.7955265 3.54022503
		 0.50016403 -0.7955265 3.54022503 -0.49983597 -0.7955265 3.54022503 -0.49983597 -2.7955265 3.025880814
		 0.50016403 -2.7955265 3.025880814 0.50016403 -0.7955265 3.025880814 -0.49983597 -0.7955265 3.025880814;
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
createNode transform -n "polySurface28";
	setAttr ".t" -type "double3" 20 -5.0151187085583011 8.2161571739917783 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.84420535309424383 ;
createNode mesh -n "polySurfaceShape52" -p "polySurface28";
	setAttr -k off ".v";
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
	setAttr -s 8 ".vt[0:7]"  -0.49983597 -2.7955265 3.025880814 0.50016403 -2.7955265 3.025880814
		 -0.49983597 -0.7955265 3.025880814 0.50016403 -0.7955265 3.025880814 -0.50123978 18.33645058 -3.20922279
		 0.49876022 18.33645058 -3.20922279 -0.50123978 16.3364563 -3.20922279 0.49876022 16.3364563 -3.20922279;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 1 7 -3 -7
		mu 0 4 0 1 2 3
		f 4 3 11 -1 -11
		mu 0 4 4 5 6 7
		f 4 -12 -10 -8 -6
		mu 0 4 8 9 10 1
		f 4 10 4 6 8
		mu 0 4 11 12 0 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge230";
	setAttr ".t" -type "double3" 20 13.643610028658426 1.5815968048572522 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 3.1492356126941479 ;
createNode mesh -n "LedgeShape230" -p "Ledge230";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge233";
	setAttr ".t" -type "double3" 20 -8.6260882421690646 6.199154354504893 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.7761466884435283 ;
createNode mesh -n "LedgeShape233" -p "Ledge233";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.99999619 0.5 0.5 -0.99999619 0.5
		 -0.5 1.000003814697 0.5 0.5 1.000003814697 0.5 -0.5 1.000003814697 -2.72528791 0.5 1.000003814697 -2.72528791
		 -0.5 -0.99999619 -2.72528791 0.5 -0.99999619 -2.72528791;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 3 11 -1 -11
		mu 0 4 6 7 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface34";
	setAttr ".t" -type "double3" 20 -8.6260882421690646 6.199154354504893 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.7761466884435283 ;
createNode mesh -n "polySurfaceShape58" -p "polySurface34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.50104904 7.74082184 -4.5754528 0.49894714 7.74082184 -4.5754528
		 0.49894714 5.20749283 -4.5754528 -0.50104904 5.20749283 -4.5754528 -0.5 1.000003814697 -2.72528791
		 0.5 1.000003814697 -2.72528791 0.5 -0.99999619 -2.72528791 -0.5 -0.99999619 -2.72528791;
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
createNode transform -n "pasted__Ledge214";
	setAttr ".t" -type "double3" 20 -8.7233071698696598 9.2064788116242511 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.40396606988884998 ;
createNode mesh -n "pasted__LedgeShape214" -p "pasted__Ledge214";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  0.5 10.42610168 2.2273941 -0.5 10.42610168 2.2273941
		 0.5 12.14683533 2.2273941 -0.5 12.14683533 2.2273941 -0.5 10.42610168 0.5 0.5 10.42610168 0.5
		 0.5 12.14683533 0.5 -0.5 12.14683533 0.5;
	setAttr -s 12 ".ed[0:11]"  5 0 0 4 1 0 0 1 0 6 2 0 0 2 0 7 3 0 3 2 0
		 1 3 0 5 4 0 5 6 0 7 6 0 4 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -3 4 -7 -8
		mu 0 4 0 1 2 3
		f 4 -9 0 2 -2
		mu 0 4 4 5 1 0
		f 4 9 3 -5 -1
		mu 0 4 5 6 2 1
		f 4 -11 5 6 -4
		mu 0 4 6 7 3 2
		f 4 -12 1 7 -6
		mu 0 4 7 4 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge231";
	setAttr ".t" -type "double3" 20 13.643610028658426 1.5815968048572522 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 3.1492356126941479 ;
createNode mesh -n "LedgeShape231" -p "Ledge231";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface32";
	setAttr ".t" -type "double3" 20 13.643610028658426 1.5815968048572522 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.38742133623565767 3.1492356126941479 ;
createNode mesh -n "polySurfaceShape56" -p "polySurface32";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__Ledge215";
	setAttr ".t" -type "double3" 20 -8.7233071698696598 9.2064788116242511 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.40396606988884998 ;
createNode mesh -n "pasted__LedgeShape215" -p "pasted__Ledge215";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 -1.19972038
		 0.5 1 -1.19972038 -0.5 -1 -1.19972038 0.5 -1 -1.19972038 0.5 1 0.5 -0.5 1 0.5 0.5 1 -0.34986115
		 -0.5 1 -0.34986115;
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
createNode transform -n "pasted__Ledge216";
	setAttr ".t" -type "double3" 20 -8.7233071698696598 9.2064788116242511 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.40396606988884998 ;
createNode mesh -n "pasted__LedgeShape216" -p "pasted__Ledge216";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -0.5 1 0.5 0.5 1 0.5 0.5 1 -0.34986115 -0.5 1 -0.34986115
		 -0.5 12.14683533 0.5 0.5 12.14683533 0.5 0.5 12.14683533 -0.34986115 -0.5 12.14683533 -0.34986115
		 0.5 10.42610168 0.5 -0.5 10.42610168 0.5;
	setAttr -s 15 ".ed[0:14]"  0 1 0 0 3 0 1 2 0 2 3 0 0 9 0 1 8 0 4 5 0
		 2 6 0 5 6 0 3 7 0 6 7 0 4 7 0 8 5 0 9 4 0 8 9 0;
	setAttr -s 5 -ch 22 ".fc[0:4]" -type "polyFaces" 
		f 4 6 8 10 -12
		mu 0 4 0 1 2 3
		f 4 0 5 14 -5
		mu 0 4 4 5 6 7
		f 5 2 7 -9 -13 -6
		mu 0 5 5 8 2 1 6
		f 4 3 9 -11 -8
		mu 0 4 8 9 3 2
		f 5 -2 4 13 11 -10
		mu 0 5 9 4 7 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge217";
	setAttr ".t" -type "double3" 20 26.499228138197722 -10.755211960328007 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.20416928271248969 3.8987052028476823 ;
createNode mesh -n "LedgeShape217" -p "Ledge217";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface18";
	setAttr ".t" -type "double3" 20 26.499228138197722 -10.755211960328007 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.20416928271248969 3.8987052028476823 ;
createNode mesh -n "polySurfaceShape41" -p "polySurface18";
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20 26.499228138197722 -10.755211960328007 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.20416928271248969 3.8987052028476823 ;
createNode mesh -n "pCubeShape54" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.625 0.375
		 0.375 0.375 0.375 0.375 0.625 0.375 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625
		 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.375 0.5
		 0.625 0.5 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.375 0.375 0.375 0.375 0.75
		 0.625 0.75 0.875 0 0.875 0.25 0.75 0.25 0.125 0 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  -0.5 -1.000061035156 0.49999905 0.5 -1.000061035156 0.49999905
		 -0.5 0.99993896 0.49999905 0.5 0.99993896 0.49999905 -0.5 0.99993896 -0.67867351
		 0.5 0.99993896 -0.67867351 -0.5 -1.000061035156 -0.67867351 0.5 -1.000061035156 -0.67867351
		 0.5 0.99993896 -0.5898931 -0.5 0.99993896 -0.5898931 0.5 7.74282837 -0.5898931 -0.5 7.74282837 -0.5898931
		 0.5 7.74282837 -0.67867351 -0.5 7.74282837 -0.67867351 -0.5 6.30026245 -0.67867351
		 0.5 6.30026245 -0.67867351 -0.5 6.30026245 -1.1062634 0.5 6.30026245 -1.1062634 -0.5 7.74282837 -1.1062634
		 0.5 7.74282837 -1.1062634 0.5 7.74282837 -0.79225898 0.5 7.74282837 -0.9926784 -0.5 7.74282837 -0.79225898
		 -0.5 7.74282837 -0.9926784 0.5 10.40164185 -0.79225898 -0.5 10.40164185 -0.79225898
		 0.5 10.40164185 -0.9926784 -0.5 10.40164185 -0.9926784 -0.5 7.74282837 -1.064687014
		 0.5 7.74282837 -1.064687014 0.5 0.99993896 -0.5898931 -0.5 0.99993896 -0.5898931
		 -0.5 -1.000061035156 -0.67867351 0.5 -1.000061035156 -0.67867351 0.5 0.99993896 -0.67867351
		 -0.5 0.99993896 -0.67867351;
	setAttr -s 57 ".ed[0:56]"  0 1 0 2 3 0 4 5 1 6 7 0 0 2 0 1 3 0 2 31 0
		 3 30 0 4 6 0 5 7 0 32 0 0 33 1 0 8 5 0 9 4 0 8 9 0 8 10 0 9 11 0 10 11 0 5 15 0 10 12 0
		 4 14 0 13 12 1 11 13 0 14 13 1 15 12 1 14 15 0 14 16 0 15 17 0 16 17 0 13 22 0 16 18 0
		 12 20 0 18 19 0 17 19 0 20 21 1 21 29 0 22 23 1 23 28 0 21 23 0 20 22 0 20 24 0 22 25 0
		 24 25 0 21 26 0 24 26 0 23 27 0 26 27 0 25 27 0 28 18 0 29 19 0 29 28 1 30 31 0 32 33 0
		 34 33 0 30 34 0 31 35 0 35 32 0;
	setAttr -s 23 -ch 102 ".fc[0:22]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 51 -7
		mu 0 4 2 3 32 33
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 52 11 -1 -11
		mu 0 4 34 35 9 8
		f 5 -12 -54 -55 -8 -6
		mu 0 5 1 36 37 38 3
		f 5 10 4 6 55 56
		mu 0 5 39 0 2 40 41
		f 4 -18 19 -22 -23
		mu 0 4 12 13 14 15
		f 4 -15 15 17 -17
		mu 0 4 11 10 13 12
		f 5 12 18 24 -20 -16
		mu 0 5 10 5 17 14 13
		f 4 -3 20 25 -19
		mu 0 4 5 4 16 17
		f 5 -14 16 22 -24 -21
		mu 0 5 4 11 12 15 16
		f 4 -29 30 32 -34
		mu 0 4 18 19 20 21
		f 4 -26 26 28 -28
		mu 0 4 17 16 19 18
		f 7 23 29 36 37 48 -31 -27
		mu 0 7 16 15 24 25 30 20 19
		f 4 21 31 39 -30
		mu 0 4 15 14 22 24
		f 7 -25 27 33 -50 -36 -35 -32
		mu 0 7 14 17 18 21 31 23 22
		f 4 -39 35 50 -38
		mu 0 4 25 23 31 30
		f 4 -43 44 46 -48
		mu 0 4 26 27 28 29
		f 4 -40 40 42 -42
		mu 0 4 24 22 27 26
		f 4 34 43 -45 -41
		mu 0 4 22 23 28 27
		f 4 38 45 -47 -44
		mu 0 4 23 25 29 28
		f 4 -37 41 47 -46
		mu 0 4 25 24 26 29
		f 4 -51 49 -33 -49
		mu 0 4 30 31 21 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge219";
	setAttr ".t" -type "double3" 20 33.300548883272398 -12.952973699683188 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 1.7918555748089837 ;
createNode mesh -n "LedgeShape219" -p "Ledge219";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface20";
	setAttr ".t" -type "double3" 20 33.300548883272398 -12.952973699683188 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 1.7918555748089837 ;
createNode mesh -n "polySurfaceShape43" -p "polySurface20";
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20 33.300548883272398 -12.952973699683188 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 1.7918555748089837 ;
createNode mesh -n "pCubeShape60" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.125 0
		 0.125 0.25 0.625 0.875 0.25 0 0.375 0.875 0.625 0.375 0.25 0.25 0.375 0.375 0.375
		 0.375 0.625 0.375 0.625 0.5 0.375 0.5 0.375 0.4375 0.625 0.4375 0.375 0.4375 0.625
		 0.4375 0.625 0.5 0.375 0.5 0.625 0.375 0.375 0.375 0.75 0 0.875 0 0.875 0.25 0.75
		 0.25 0.25 0.25 0.25 0 0.375 0.875 0.625 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  -0.5 -1 0.50000143 0.5 -1 0.50000143 -0.5 1 0.50000143
		 0.5 1 0.50000143 -0.5 1 -1.19971275 0.5 1 -1.19971275 -0.5 -1 -1.19971275 0.5 -1 -1.19971275
		 0.5 -1 -0.3498559 -0.5 -1 -0.3498559 0.5 1 -0.3498559 -0.5 1 -0.3498559 -0.46673203 6.84057617 -0.33378172
		 -1.46673203 6.84057617 -0.33378172 -0.46673203 6.84057617 -1.18363953 -1.46673203 6.84057617 -1.18363953
		 -1.46673203 6.84057617 -0.75870991 -0.46673203 6.84057617 -0.75870991 -0.46673203 9.95314026 -0.75870991
		 -1.46673203 9.95314026 -0.75870991 -0.46673203 9.95314026 -1.18363953 -1.46673203 9.95314026 -1.18363953
		 0.5 1 -0.3498559 -0.5 1 -0.3498559 0.5 -1 -0.3498559 0.5 -1 -1.19971275 0.5 1 -1.19971275
		 -0.5 -1 -0.3498559;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 4 5 1 6 7 0 0 2 0 1 3 0 2 23 0
		 3 22 0 4 6 0 5 7 0 6 9 0 7 8 0 24 1 0 27 0 0 10 5 0 11 4 1 11 9 0 8 9 0 10 11 0 10 12 0
		 11 13 0 12 13 0 5 14 0 12 17 0 4 15 0 15 14 1 13 16 0 16 15 1 17 14 1 17 16 0 17 18 0
		 16 19 0 18 19 0 14 20 0 18 20 0 15 21 0 21 20 0 19 21 0 22 23 0 25 24 0 26 25 0 22 26 0
		 23 27 0 24 27 0;
	setAttr -s 18 -ch 76 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 38 -7
		mu 0 4 2 3 28 29
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 17 -11
		mu 0 4 6 7 12 14
		f 6 -13 -40 -41 -42 -8 -6
		mu 0 6 1 30 31 32 33 3
		f 4 42 13 4 6
		mu 0 4 34 35 0 2
		f 4 10 -17 15 8
		mu 0 4 10 13 16 11
		f 4 -44 12 -1 -14
		mu 0 4 36 37 9 8
		f 4 -22 23 29 -27
		mu 0 4 18 19 23 22
		f 4 -19 19 21 -21
		mu 0 4 17 15 19 18
		f 5 14 22 -29 -24 -20
		mu 0 5 15 5 20 23 19
		f 4 -3 24 25 -23
		mu 0 4 5 4 21 20
		f 5 -16 20 26 27 -25
		mu 0 5 4 17 18 22 21
		f 4 -33 34 -37 -38
		mu 0 4 24 25 26 27
		f 4 -30 30 32 -32
		mu 0 4 22 23 25 24
		f 4 28 33 -35 -31
		mu 0 4 23 20 26 25
		f 4 -26 35 36 -34
		mu 0 4 20 21 27 26
		f 4 -28 31 37 -36
		mu 0 4 21 22 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge240";
	setAttr ".t" -type "double3" 20 10.999961385709163 4.499108336079316 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.46490562245038175 2.1694736013309828 ;
createNode mesh -n "LedgeShape240" -p "Ledge240";
	setAttr -k off ".v";
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
	setAttr ".t" -type "double3" 20 10.999961385709163 4.499108336079316 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.46490562245038175 2.1694736013309828 ;
createNode mesh -n "pCubeShape13" -p "transform15";
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
createNode transform -n "Ledge262";
	setAttr ".t" -type "double3" 20 -1.0922414173005368 20.286401559337445 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.79245269293327913 3.0675390363877746 ;
createNode mesh -n "LedgeShape262" -p "Ledge262";
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
	setAttr ".t" -type "double3" 20 -1.0922414173005368 20.286401559337445 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.79245269293327913 3.0675390363877746 ;
createNode mesh -n "pCubeShape7" -p "transform1";
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
createNode transform -n "Ledge222";
	setAttr ".t" -type "double3" 20 34.950538903247349 1.5383693288197176 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.1813502606189363 2.4143677600866975 ;
createNode mesh -n "LedgeShape222" -p "Ledge222";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.25 0.625
		 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.625 0 0.875 0 0.875
		 0.25 0.125 0 0.375 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 1 -0.67867345 0.5 1 -0.67867345 -0.5 -1 -0.67867345
		 0.5 -1 -0.67867345 -0.5 1 1.10090876 0.5 1 1.10090876 0.5 -1 1.10090876 -0.5 -1 1.10090876;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 0 0 5 1 0 0 2 0 1 3 0 2 7 0
		 3 6 0 4 5 0 7 6 0 6 5 0 7 4 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 8 3 -1 -3
		mu 0 4 0 1 2 3
		f 4 0 5 -2 -5
		mu 0 4 3 2 4 5
		f 4 1 7 -10 -7
		mu 0 4 5 4 6 7
		f 4 -8 -6 -4 -11
		mu 0 4 8 9 10 1
		f 4 6 11 2 4
		mu 0 4 11 12 0 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge235";
	setAttr ".t" -type "double3" 20 -10.274922430179942 4.8766022120983816 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.26902693124255578 3.1492356126941479 ;
createNode mesh -n "LedgeShape235" -p "Ledge235";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.5 0.375 0.5 0.625 0.75 0.625 0.75 0.375 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 1 -2.29371929 0.5 1 -2.29371929 0.49917221 2.71007538 -2.65259337
		 -0.50082779 2.71007538 -2.65259337 0.5 -1 -2.29371929 0.49917221 0.71007538 -2.65259337
		 -0.5 -1 -2.29371929 -0.50082779 0.71007538 -2.65259337;
	setAttr -s 12 ".ed[0:11]"  0 3 0 1 2 0 4 5 0 6 7 0 0 1 0 3 2 0 1 4 0
		 2 5 0 6 4 0 7 5 0 0 6 0 3 7 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 1 2 3
		f 4 6 2 -8 -2
		mu 0 4 1 4 5 2
		f 4 -9 3 9 -3
		mu 0 4 4 6 7 5
		f 4 -11 0 11 -4
		mu 0 4 6 0 3 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge241";
	setAttr ".t" -type "double3" 20 10.999961385709163 4.499108336079316 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.46490562245038175 2.1694736013309828 ;
createNode mesh -n "LedgeShape241" -p "Ledge241";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface42";
	setAttr ".t" -type "double3" 20 10.999961385709163 4.499108336079316 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.46490562245038175 2.1694736013309828 ;
createNode mesh -n "polySurfaceShape66" -p "polySurface42";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge237";
	setAttr ".t" -type "double3" 20 -10.274922430179942 4.8766022120983816 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.26902693124255578 3.1492356126941479 ;
createNode mesh -n "LedgeShape237" -p "Ledge237";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -2.29371929 0.5 1 -2.29371929 -0.5 -1 -2.29371929 0.5 -1 -2.29371929;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 3 11 -1 -11
		mu 0 4 6 7 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge238";
	setAttr ".t" -type "double3" 20 -10.274922430179942 4.8766022120983816 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.26902693124255578 3.1492356126941479 ;
createNode mesh -n "LedgeShape238" -p "Ledge238";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.50082779 2.71007538 -2.65259337 0.49917221 2.71007538 -2.65259337
		 0.49917221 0.71007538 -2.65259337 -0.50082779 0.71007538 -2.65259337 -0.50082779 2.71007538 -2.83203053
		 0.49917221 2.71007538 -2.83203053 0.49917221 0.71007538 -2.83203053 -0.50082779 0.71007538 -2.83203053;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 3 2 0 0 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 5 6 0 3 7 0 7 6 0 4 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 6 8 -11 -12
		mu 0 4 0 1 2 3
		f 4 0 5 -7 -5
		mu 0 4 4 5 1 0
		f 4 1 7 -9 -6
		mu 0 4 5 6 2 1
		f 4 -3 9 10 -8
		mu 0 4 6 7 3 2
		f 4 -4 4 11 -10
		mu 0 4 7 4 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge223";
	setAttr ".t" -type "double3" 20 34.950538903247349 1.5383693288197176 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.1813502606189363 2.4143677600866975 ;
createNode mesh -n "LedgeShape223" -p "Ledge223";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.49949646 -6.19631958 1.97160029 0.50049973 -6.19631958 1.97160029
		 0.50049973 -4.19630432 1.97160029 -0.49949646 -4.19630432 1.97160029 -0.49949646 -6.19631958 1.38313293
		 0.50049973 -6.19631958 1.38313293 0.50049973 -4.19630432 1.38313293 -0.49949646 -4.19630432 1.38313293;
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
createNode transform -n "polySurface24";
	setAttr ".t" -type "double3" 20 34.950538903247349 1.5383693288197176 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.1813502606189363 2.4143677600866975 ;
createNode mesh -n "polySurfaceShape47" -p "polySurface24";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0 0.625 0 0.625
		 0 0.375 0 0.625 0.25 0.625 0.25 0.375 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 1.10090876 0.5 -1 1.10090876 -0.5 1 1.10090876
		 0.5 1 1.10090876 -0.49949646 -6.19631958 1.38313293 0.50049973 -6.19631958 1.38313293
		 0.50049973 -4.19630432 1.38313293 -0.49949646 -4.19630432 1.38313293;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 0 2 0 1 3 0 0 4 0 1 5 0 4 5 0
		 3 6 0 5 6 0 2 7 0 7 6 0 4 7 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 5 -7 -5
		mu 0 4 0 1 2 3
		f 4 3 7 -9 -6
		mu 0 4 1 4 5 2
		f 4 -2 9 10 -8
		mu 0 4 4 6 7 5
		f 4 -3 4 11 -10
		mu 0 4 6 0 3 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge263";
	setAttr ".t" -type "double3" 20 -1.0922414173005368 20.286401559337445 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.79245269293327913 3.0675390363877746 ;
createNode mesh -n "LedgeShape263" -p "Ledge263";
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
	setAttr ".t" -type "double3" 20 -1.0922414173005368 20.286401559337445 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.79245269293327913 3.0675390363877746 ;
createNode mesh -n "polySurfaceShape27" -p "polySurface4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LedgeWall";
	setAttr ".t" -type "double3" 20 -6.1517904447643028 8.1952866029770224 ;
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.39572192278435137 0.90724611324390225 3.4142248803479065 ;
	setAttr -l on ".sx";
createNode mesh -n "LedgeWallShape" -p "LedgeWall";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge214";
	setAttr ".t" -type "double3" 20 19.723859489533304 -8.5916899354886382 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.40396606988884998 ;
createNode mesh -n "LedgeShape214" -p "Ledge214";
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20 19.723859489533304 -8.5916899354886382 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.40396606988884998 ;
createNode mesh -n "pCubeShape65" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.375 0.75 0.25 0.25 0.25 0.375 0.375 0.375 0.25
		 0.625 0.25 0.625 0.375 0.375 0.375 0.625 0.25 0.375 0.25 0.375 0.25 0.625 0.25 0.625
		 0.25 0.375 0.25 0.375 0.25 0.625 0.25 0.625 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -1.19972038 0.5 1 -1.19972038 -0.5 -1 -1.19972038 0.5 -1 -1.19972038 0.5 1 -0.34986115
		 -0.5 1 -0.34986115 -0.5 12.14683533 0.5 0.5 12.14683533 0.5 0.5 12.14683533 -0.34986115
		 -0.5 12.14683533 -0.34986115 0.5 10.42610168 0.5 -0.5 10.42610168 0.5 0.5 10.42610168 2.2273941
		 -0.5 10.42610168 2.2273941 0.5 12.14683533 2.2273941 -0.5 12.14683533 2.2273941 -0.5 10.42610168 0.5
		 0.5 10.42610168 0.5 0.5 12.14683533 0.5 -0.5 12.14683533 0.5;
	setAttr -s 38 ".ed[0:37]"  0 1 0 2 3 1 4 5 0 6 7 0 0 2 0 1 3 0 2 9 1
		 3 8 1 4 6 0 5 7 0 6 0 0 7 1 0 8 5 0 9 4 0 8 9 0 2 15 0 3 14 0 10 11 0 8 12 0 11 12 0
		 9 13 0 12 13 0 10 13 0 14 11 0 15 10 0 14 15 0 21 16 0 20 17 0 16 17 0 22 18 0 16 18 0
		 23 19 0 19 18 0 17 19 0 21 20 0 21 22 0 23 22 0 20 23 0;
	setAttr -s 16 -ch 68 ".fc[0:15]" -type "polyFaces" 
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
		f 4 1 16 25 -16
		mu 0 4 2 3 22 23
		f 5 7 18 -20 -24 -17
		mu 0 5 3 14 20 19 22
		f 4 14 20 -22 -19
		mu 0 4 14 17 21 20
		f 5 -7 15 24 22 -21
		mu 0 5 17 2 23 18 21
		f 4 -29 30 -33 -34
		mu 0 4 24 25 26 27
		f 4 -35 26 28 -28
		mu 0 4 28 29 25 24
		f 4 35 29 -31 -27
		mu 0 4 29 30 26 25
		f 4 -37 31 32 -30
		mu 0 4 30 31 27 26
		f 4 -38 27 33 -32
		mu 0 4 31 28 24 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge215";
	setAttr ".t" -type "double3" 20 19.723859489533304 -8.5916899354886382 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.40396606988884998 ;
createNode mesh -n "LedgeShape215" -p "Ledge215";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface16";
	setAttr ".t" -type "double3" 20 19.723859489533304 -8.5916899354886382 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.17900089138895678 0.40396606988884998 ;
createNode mesh -n "polySurfaceShape39" -p "polySurface16";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge210";
	setAttr ".t" -type "double3" 20 16.513893043405204 -4.9549194961315042 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.23889242930090698 2.1033877450184533 ;
createNode mesh -n "LedgeShape210" -p "Ledge210";
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20 16.513893043405204 -4.9549194961315042 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.23889242930090698 2.1033877450184533 ;
createNode mesh -n "pCubeShape30" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.375 0.25 0.625 0.25 0.625 1 0.375 1 0.625 0 0.375 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.99998474 0.50000036 0.5 -0.99998474 0.50000036
		 -0.5 1 0.50000036 0.5 1 0.50000036 -0.5 1 -1.19971442 0.5 1 -1.19971442 -0.5 -0.99998474 -1.19971442
		 0.5 -0.99998474 -1.19971442 -0.49871826 -8.48548508 1.33333063 0.50128174 -8.48548508 1.33333063
		 0.50128174 -6.48549271 1.33333063 -0.49871826 -6.48549271 1.33333063 -0.49871826 -8.48548508 1.68686461
		 0.50128174 -8.48548508 1.68686461 0.50128174 -6.48549271 1.68686461 -0.49871826 -6.48549271 1.68686461
		 -0.5 1 0.50000036 0.5 1 0.50000036 0.5 -0.99998474 0.50000036 -0.5 -0.99998474 0.50000036;
	setAttr -s 32 ".ed[0:31]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 16 4 0
		 17 5 0 4 6 0 5 7 0 6 19 0 7 18 0 0 8 0 1 9 0 8 9 0 3 10 0 9 10 1 2 11 0 11 10 0 8 11 1
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0 16 17 0 19 18 0 18 17 0
		 19 16 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 22 24 -27 -28
		mu 0 4 16 17 18 19
		f 4 28 7 -3 -7
		mu 0 4 20 21 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -30 -11
		mu 0 4 6 7 22 23
		f 4 -12 -10 -8 -31
		mu 0 4 24 8 9 21
		f 4 10 31 6 8
		mu 0 4 10 25 20 11
		f 4 0 13 -15 -13
		mu 0 4 0 1 13 12
		f 4 5 15 -17 -14
		mu 0 4 1 3 14 13
		f 4 -2 17 18 -16
		mu 0 4 3 2 15 14
		f 4 -5 12 19 -18
		mu 0 4 2 0 12 15
		f 4 14 21 -23 -21
		mu 0 4 12 13 17 16
		f 4 16 23 -25 -22
		mu 0 4 13 14 18 17
		f 4 -19 25 26 -24
		mu 0 4 14 15 19 18
		f 4 -20 20 27 -26
		mu 0 4 15 12 16 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge264";
	setAttr ".t" -type "double3" 20 15.017091868370969 0.44032524642849857 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.29965115648978352 1.3546194151164281 ;
createNode mesh -n "LedgeShape264" -p "Ledge264";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20 15.017091868370969 0.44032524642849857 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.29965115648978352 1.3546194151164281 ;
createNode mesh -n "pCubeShape31" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  -0.50002289 0.82760239 0.47473282 0.49997711 0.82760239 0.47473282
		 -0.50002289 2.82760239 0.47473282 0.49997711 2.82760239 0.47473282 -0.5 1.000007629395 -0.5
		 0.5 1.000007629395 -0.5 -0.5 -0.99999237 -0.5 0.5 -0.99999237 -0.5 -0.50002289 0.82760239 1.283283
		 0.49997711 0.82760239 1.283283 0.49997711 2.82760239 1.283283 -0.50002289 2.82760239 1.283283
		 -0.49954605 4.93968201 1.76335931 0.50045395 4.93968201 1.76335931 0.50045395 6.93968201 1.76335931
		 -0.49954605 6.93968201 1.76335931 -0.74772263 5.8440094 2.3226738 0.25227356 5.8440094 2.3226738
		 0.25227356 7.8440094 2.3226738 -0.74772263 7.8440094 2.3226738 -0.92277527 5.90710068 2.78587079
		 0.077224731 5.90710068 2.78587079 0.077224731 7.90710068 2.78587079 -0.92277527 7.90710068 2.78587079
		 -0.74772263 5.8440094 2.3226738 0.25227356 5.8440094 2.3226738 0.25227356 7.8440094 2.3226738
		 -0.74772263 7.8440094 2.3226738;
	setAttr -s 48 ".ed[0:47]"  0 1 1 2 3 1 4 5 0 6 7 0 0 2 1 1 3 1 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 0 8 0 1 9 0 8 9 0 3 10 0 9 10 0 2 11 0 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 1 11 15 0 15 14 0 12 15 1 12 16 0 13 17 0 16 17 0
		 14 18 0 17 18 0 15 19 0 19 18 0 16 19 0 24 20 0 25 21 0 20 21 0 26 22 0 21 22 0 27 23 0
		 23 22 0 20 23 0 24 25 0 25 26 0 27 26 0 24 27 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 38 40 -43 -44
		mu 0 4 26 27 28 29
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 0 13 -15 -13
		mu 0 4 0 1 15 14
		f 4 5 15 -17 -14
		mu 0 4 1 3 16 15
		f 4 -2 17 18 -16
		mu 0 4 3 2 17 16
		f 4 -5 12 19 -18
		mu 0 4 2 0 14 17
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
		mu 0 4 21 18 22 25
		f 4 44 37 -39 -37
		mu 0 4 30 31 27 26
		f 4 45 39 -41 -38
		mu 0 4 31 32 28 27
		f 4 -47 41 42 -40
		mu 0 4 32 33 29 28
		f 4 -48 36 43 -42
		mu 0 4 33 30 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge265";
	setAttr ".t" -type "double3" 20 15.017091868370969 0.44032524642849857 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.29965115648978352 1.3546194151164281 ;
createNode mesh -n "LedgeShape265" -p "Ledge265";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface8";
	setAttr ".t" -type "double3" 20 15.017091868370969 0.44032524642849857 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.29965115648978352 1.3546194151164281 ;
createNode mesh -n "polySurfaceShape31" -p "polySurface8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20 15.017091868370969 0.44032524642849857 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.29965115648978352 1.3546194151164281 ;
createNode mesh -n "polySurfaceShape29" -p "transform4";
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
createNode transform -n "Ledge211";
	setAttr ".t" -type "double3" 20 16.513893043405204 -4.9549194961315042 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.23889242930090698 2.1033877450184533 ;
createNode mesh -n "LedgeShape211" -p "Ledge211";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge212";
	setAttr ".t" -type "double3" 20 16.513893043405204 -4.9549194961315042 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.23889242930090698 2.1033877450184533 ;
createNode mesh -n "LedgeShape212" -p "Ledge212";
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20 16.513893043405204 -4.9549194961315042 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.23889242930090698 2.1033877450184533 ;
createNode mesh -n "polySurfaceShape32" -p "transform6";
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
	setAttr ".t" -type "double3" 20 4.9515813201781791 11.700179527406762 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.14205449470940637 3.0675390363877746 ;
createNode mesh -n "pCubeShape8" -p "transform16";
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
createNode transform -n "Ledge245";
	setAttr ".t" -type "double3" 20 4.9515813201781791 11.700179527406762 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.14205449470940637 3.0675390363877746 ;
createNode mesh -n "LedgeShape245" -p "Ledge245";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge246";
	setAttr ".t" -type "double3" 20 4.9515813201781791 11.700179527406762 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.14205449470940637 3.0675390363877746 ;
createNode mesh -n "LedgeShape246" -p "Ledge246";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform17";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20 4.9515813201781791 11.700179527406762 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.14205449470940637 3.0675390363877746 ;
createNode mesh -n "polySurfaceShape67" -p "transform17";
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
createNode transform -n "Ledge247";
	setAttr ".t" -type "double3" 20 4.9515813201781791 11.700179527406762 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.14205449470940637 3.0675390363877746 ;
createNode mesh -n "LedgeShape247" -p "Ledge247";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge248";
	setAttr ".t" -type "double3" 20 4.9515813201781791 11.700179527406762 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.14205449470940637 3.0675390363877746 ;
createNode mesh -n "LedgeShape248" -p "Ledge248";
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
	setAttr ".t" -type "double3" 20 4.9515813201781791 11.700179527406762 ;
	setAttr ".s" -type "double3" 0.39572192278435137 0.14205449470940637 3.0675390363877746 ;
createNode mesh -n "polySurfaceShape68" -p "transform18";
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
createNode transform -n "Ledge267";
createNode mesh -n "LedgeShape267" -p "Ledge267";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge268";
createNode mesh -n "LedgeShape268" -p "Ledge268";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ledge266";
createNode mesh -n "LedgeShape266" -p "Ledge266";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform29";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape87" -p "transform29";
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
createNode transform -n "transform27";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape86" -p "transform27";
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
createNode mentalrayItemsList -s -n "mentalrayItemsList";
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
createNode polyPlane -n "polyPlane1";
	setAttr ".w" 35.236015925217032;
	setAttr ".h" 35.236015925217032;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/nathanwaters/Documents/RunnerFiles/CommercialZone/1938058_10152219942259337_1533307733_n.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode displayLayer -n "BackGround";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode polyCube -n "polyCube1";
	setAttr ".h" 2;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.37903328624077992 0 0
		 0 0 3.9374340770297396 0 20 -6.419994315693045 -0.52016002350112511 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -6.4199944 -1.1122391 ;
	setAttr ".rs" 1451851898;
	setAttr ".lt" -type "double3" 7.1054273576010019e-15 -0.83620848272356973 1.1828016998615083 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -6.7990276019338252 -1.1122391507490073 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 -6.0409610294522649 -1.1122391507490073 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.37903328624077992 0 0
		 0 0 3.9374340770297396 0 20 -6.419994315693045 -0.52016002350112511 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -5.583786 -2.2950408 ;
	setAttr ".rs" 1041358629;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 2.8855810937853661e-17 4.6521248830481268 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -5.962818958981086 -2.2950407834022521 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 -5.2047531094481467 -2.2950407834022521 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.37903328624077992 0 0
		 0 0 3.9374340770297396 0 20 -6.419994315693045 -0.52016002350112511 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -5.2047529 -4.6211033 ;
	setAttr ".rs" 1696483193;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 -1.5790839100803414e-15 0.88843829097542848 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -5.2047531094481467 -6.9471661527528372 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 -5.2047531094481467 -2.2950405487128926 ;
createNode polySubdFace -n "polySubdFace1";
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[18]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.37903328624077992 0 0
		 0 0 3.9374340770297396 0 20 -6.419994315693045 -0.52016002350112511 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -4.3163147 -5.2340794 ;
	setAttr ".rs" 1177980455;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 1.0857361717832497e-15 0.88972101866571274 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -4.3163146819473956 -6.9471661527528372 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 -4.3163146819473956 -3.5209929884143367 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[20]" -type "float3" 0 -2.6645353e-15 0.27939776 ;
	setAttr ".tk[21]" -type "float3" 0 -2.6645353e-15 0.27939776 ;
createNode polySubdFace -n "polySubdFace2";
	setAttr ".ics" -type "componentList" 1 "f[18]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[23]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.37903328624077992 0 0
		 0 0 3.9374340770297396 0 20 -6.419994315693045 -0.52016002350112511 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -3.4265938 -6.2097116 ;
	setAttr ".rs" 91973717;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 1.5030481577274232e-16 0.67691271230611338 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -3.4265937435942293 -6.9471661527528372 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 -3.4265937435942293 -5.4722571180215311 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[26]" -type "float3" 0 0 -0.060490571 ;
	setAttr ".tk[27]" -type "float3" 0 0 -0.060490571 ;
createNode polySubdFace -n "polySubdFace3";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 -0 0 -0 4.2430854965141365e-17 -0.19109158261002221 0
		 0 1.3546194151164281 3.0078593285330427e-16 0 20 19.482176455423819 6.1340797689418647 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 18.460041 5.9429884 ;
	setAttr ".rs" 873080290;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 2.1700603953924666e-16 1.7719887864022077 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 18.300939149319909 5.9429881863318421 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 18.619143768360388 5.9429881863318421 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[8]" -type "float3" 0 -5.5511151e-16 -0.45110002 ;
	setAttr ".tk[9]" -type "float3" 0 -5.5511151e-16 -0.45110002 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 -0 0 -0 4.2430854965141365e-17 -0.19109158261002221 0
		 0 1.3546194151164281 3.0078593285330427e-16 0 20 19.482176455423819 6.1340797689418647 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 18.460041 4.1709995 ;
	setAttr ".rs" 643337118;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 18.300938341903819 4.1709994485279651 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 18.619142960944295 4.1709994485279651 ;
createNode polySubdFace -n "polySubdFace4";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
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
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.18987796607898683 0 0
		 0 0 0.93593410005437927 0 20 25.13847682704796 -0.1446804341755627 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 24.948599 0.11259387 ;
	setAttr ".rs" 358722401;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 4.0662100883650205e-19 1.1231687417761229 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 24.948598860968971 -0.098098884693109428 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 24.948598860968971 0.32328661585162694 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 2.0070012 ;
	setAttr ".tk[9]" -type "float3" 0 0 2.0070012 ;
createNode polySubdFace -n "polySubdFace5";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polySubdFace -n "polySubdFace6";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[7]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.21826702251721963 0 0
		 0 0 1.5924823303297011 0 20 29.046826058403564 3.5837126956954024 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 29.265093 3.4319575 ;
	setAttr ".rs" 1682044795;
	setAttr ".lt" -type "double3" 0 1.3399493700545751e-16 0.60345954836731153 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 29.265093080920785 2.227537576605692 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 29.265093080920785 4.6363772336722491 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 0.49862385 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.49862385 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.1256606 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.1256606 ;
createNode polySubdFace -n "polySubdFace7";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[12]" -type "float3" 0 1.2249222 0 ;
	setAttr ".tk[13]" -type "float3" 0 1.2249222 0 ;
	setAttr ".tk[14]" -type "float3" 0 1.2249222 0 ;
	setAttr ".tk[15]" -type "float3" 0 1.2249222 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	setAttr ".ics" -type "componentList" 1 "f[16]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.21826702251721963 0 0
		 0 0 1.5924823303297011 0 20 29.046826058403564 3.5837126956954024 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 30.030693 4.6363769 ;
	setAttr ".rs" 75809064;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 0 1.6967301004540953 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 29.925475738243033 4.6363769489142186 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 30.135911424686707 4.6363769489142186 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[20]" -type "float3" 0 1.030726 0 ;
	setAttr ".tk[21]" -type "float3" 0 1.030726 0 ;
createNode polySubdFace -n "polySubdFace8";
	setAttr ".ics" -type "componentList" 1 "f[14]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	setAttr ".ics" -type "componentList" 1 "f[21]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.21826702251721963 0 0
		 0 0 1.5924823303297011 0 20 29.046826058403564 3.5837126956954024 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 29.717688 2.2275369 ;
	setAttr ".rs" 143176212;
	setAttr ".lt" -type "double3" 7.1054273576010019e-15 1.0372083205130472e-14 2.3358394556715867 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 29.566822194262613 2.2275370070896301 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 29.868551307604438 2.2275370070896301 ;
createNode polySubdFace -n "polySubdFace9";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polySubdFace -n "polySubdFace10";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[8]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polySubdFace -n "polySubdFace11";
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	setAttr ".ics" -type "componentList" 1 "f[10:11]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.1813502606189363 0 0 0 0 4.4529108354735714 0
		 20 30.930716616585045 2.8927442340979796 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 31.112066 2.6857231 ;
	setAttr ".rs" 642429869;
	setAttr ".lt" -type "double3" 0 5.722285513852639e-17 1.2577088290789433 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 31.112066877203979 1.3681678264634831 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 31.112066877203979 4.0032783209231493 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[12]" -type "float3" 0 0 0.13228607 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.13228607 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.032622524 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.032622524 ;
	setAttr ".tk[18]" -type "float3" 0 0 -0.00060491939 ;
	setAttr ".tk[19]" -type "float3" 0 0 -0.00060491939 ;
	setAttr ".tk[20]" -type "float3" 0 0 0.032622524 ;
	setAttr ".tk[21]" -type "float3" 0 0 0.032622524 ;
createNode polyExtrudeFace -n "polyExtrudeFace34";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.7761466884435283 0 20 23.388317651183652 -13.896015666474888 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 23.388317 -14.096229 ;
	setAttr ".rs" 2059542102;
	setAttr ".lt" -type "double3" -0.00026143411170664876 -0.81351490068169252 0.90390540739494074 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 23.209316759794696 -14.096228609300809 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 23.567318542572607 -14.096228609300809 ;
createNode polyExtrudeFace -n "polyExtrudeFace35";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.7761466884435283 0 20 19.821078417233899 -11.599014392607996 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 19.821079 -13.714238 ;
	setAttr ".rs" 217302201;
	setAttr ".lt" -type "double3" -0.00041533016164407854 -1.1588766071266081 1.4359992139857807 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 19.642077525844943 -13.714238507567533 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 20.000079308622855 -13.714238507567533 ;
createNode polyExtrudeFace -n "polyExtrudeFace38";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.40396606988884998 0 20 14.341771937717049 -9.3343050812181279 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 14.341772 -9.8189487 ;
	setAttr ".rs" 431458017;
	setAttr ".lt" -type "double3" -0.00047621523818008882 0.94086213057527801 1.6465086596395151 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 14.162771046328091 -9.818949049510227 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 14.520772829106006 -9.818949049510227 ;
createNode polyExtrudeFace -n "polyExtrudeFace39";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.40396606988884998 0 20 14.341771937717049 -9.3343050812181279 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 19.999523 13.400909 -11.465458 ;
	setAttr ".rs" 1038055446;
	setAttr ".lt" -type "double3" -7.1054273576010019e-15 4.8907741741399093e-15 3.5789612512440421 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.801662017857396 13.221908809445948 -11.465457867524448 ;
	setAttr ".cbx" -type "double3" 20.19738394064175 13.579910592223861 -11.465457867524448 ;
createNode polyExtrudeFace -n "polyExtrudeFace40";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.40396606988884998 0 20 14.341771937717049 -9.3343050812181279 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.40396606988884998 0 20 14.341771937717049 -9.3343050812181279 1;
	setAttr ".pvt" -type "float3" 19.999523 13.400909 -11.465458 ;
	setAttr ".rs" 1038055446;
	setAttr ".lt" -type "double3" -7.1054273576010019e-15 4.8907741741399093e-15 3.5789612512440421 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.801662017857396 13.221908809445948 -11.465457867524448 ;
	setAttr ".cbx" -type "double3" 20.19738394064175 13.579910592223861 -11.465457867524448 ;
createNode polySubdFace -n "polySubdFace20";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace41";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 14.32383176294698 -13.231112813745533 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 14.502832 -13.63055 ;
	setAttr ".rs" 1021601051;
	setAttr ".lt" -type "double3" -7.1054273576010019e-15 -5.0721217109891532e-15 1.1571945524114486 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 14.502832654335938 -13.789445595175119 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 14.502832654335938 -13.471654652500225 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 -0.20424743 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.20424743 ;
createNode polySubdFace -n "polySubdFace21";
	setAttr ".ics" -type "componentList" 2 "f[7]" "f[9]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polyExtrudeFace -n "polyExtrudeFace42";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 14.32383176294698 -13.231112813745533 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 15.526852 -13.789445 ;
	setAttr ".rs" 1454692473;
	setAttr ".lt" -type "double3" -7.1054273576010019e-15 2.9550742568401168e-15 0.50309958581304137 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 15.393676090307892 -13.789445142308077 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 15.660026328918358 -13.789445142308077 ;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[14]" -type "float3" 0 1.7443855 0 ;
	setAttr ".tk[15]" -type "float3" 0 1.7443855 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace43";
	setAttr ".ics" -type "componentList" 1 "f[11]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 14.32383176294698 -13.231112813745533 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 15.526851 -14.292543 ;
	setAttr ".rs" 1541625410;
	setAttr ".lt" -type "double3" -0.00021018128128957869 -0.91303254347201357 0.72669934093979005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 15.393675919599339 -14.292543793722727 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 15.660026328918358 -14.292543793722727 ;
createNode polyExtrudeFace -n "polyExtrudeFace44";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 8.7952541385143661 -11.38830957931104 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 19.99951 11.898495 -14.097553 ;
	setAttr ".rs" 1237552450;
	setAttr ".lt" -type "double3" 7.1054273576010019e-15 -1.1147763991865626e-16 0.91028401002045101 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.801648384649639 11.719494036724232 -14.097553244745303 ;
	setAttr ".cbx" -type "double3" 20.197370307433989 12.077495819502147 -14.097553244745303 ;
createNode polyExtrudeFace -n "polyExtrudeFace45";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 10.533032946902665 -8.5333281503457492 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 10.533033 -9.546134 ;
	setAttr ".rs" 601552568;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 -3.6153097137928224e-17 0.29521244135941416 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 10.354032055513708 -9.5461335884103864 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 10.712033838291623 -9.5461335884103864 ;
createNode polyExtrudeFace -n "polyExtrudeFace46";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 10.533032946902665 -8.5333281503457492 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 10.354033 -9.6937389 ;
	setAttr ".rs" 149278156;
	setAttr ".lt" -type "double3" 0 -7.2323124745544819e-17 0.32571439765430554 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 10.35403273834792 -9.8413442281562968 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 10.35403273834792 -9.546132883950543 ;
createNode polyExtrudeFace -n "polyExtrudeFace47";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 10.533032946902665 -8.5333281503457492 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 10.191176 -9.8413439 ;
	setAttr ".rs" 93697489;
	setAttr ".lt" -type "double3" -1.0658141036401503e-14 1.6459793162147877e-15 1.0646132687092855 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 10.028319454067848 -9.8413434230593335 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 10.35403342118213 -9.8413434230593335 ;
createNode polyExtrudeFace -n "polyExtrudeFace48";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 10.533032946902665 -8.5333281503457492 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 10.191176 -10.905956 ;
	setAttr ".rs" 104394527;
	setAttr ".lt" -type "double3" -7.1054273576010019e-15 1.7278692586658265e-15 0.39593114331563051 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 10.028320136902058 -10.905956146234377 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 10.35403342118213 -10.905956146234377 ;
createNode polyExtrudeFace -n "polyExtrudeFace49";
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 10.533032946902665 -8.5333281503457492 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 10.02832 -11.103922 ;
	setAttr ".rs" 156663257;
	setAttr ".lt" -type "double3" 7.1054273576010019e-15 -2.7898871826458574e-16 1.2564534876169606 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 10.028320136902058 -11.30188673070769 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 10.028320136902058 -10.905956146234377 ;
createNode polyExtrudeFace -n "polyExtrudeFace50";
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 10.533032946902665 -8.5333281503457492 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 10.533032946902665 -8.5333281503457492 1;
	setAttr ".pvt" -type "float3" 20 10.02832 -11.103922 ;
	setAttr ".rs" 156663257;
	setAttr ".lt" -type "double3" 7.1054273576010019e-15 -2.7898871826458574e-16 1.2564534876169606 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 10.028320136902058 -11.30188673070769 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 10.028320136902058 -10.905956146234377 ;
createNode polyExtrudeFace -n "polyExtrudeFace51";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.24241815946710649 0.30220643231275379 0
		 0 -1.9045833352508579 1.5277821294201188 0 20 7.8890783795254649 -13.497031073057782 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 8.8413696 -14.260922 ;
	setAttr ".rs" 761895908;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 8.5989518876837874 -14.563128570080595 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 9.0837882066179994 -13.958715705455088 ;
createNode polyExtrudeFace -n "polyExtrudeFace52";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.19797327063183676 0 0
		 0 0 2.6774001722971263 0 20 -1.7484336581616473 -3.8888781742438105 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -1.7484337 -2.5501781 ;
	setAttr ".rs" 1135194440;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 0 0.24696237266040599 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -1.946406928793484 -2.5501780880952474 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 -1.5504603875298106 -2.5501780880952474 ;
createNode polyExtrudeFace -n "polyExtrudeFace53";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.19797327063183676 0 0
		 0 0 2.6774001722971263 0 20 -1.7484336581616473 -3.8888781742438105 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -1.9464071 -2.4266968 ;
	setAttr ".rs" 337377827;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 3.7049874809835877e-16 0.33142197612299618 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -1.9464071175955076 -2.5501780880952474 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 -1.9464071175955076 -2.3032155585769942 ;
createNode polyExtrudeFace -n "polyExtrudeFace54";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.19797327063183676 0 0
		 0 0 2.6774001722971263 0 20 -1.7484336581616473 -3.8888781742438105 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -2.1121182 -2.3032155 ;
	setAttr ".rs" 414956804;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 0 0.37788633668708416 ;
	setAttr ".ls" -type "double3" 1 1 2.4255788273153716 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -2.2778292457014082 -2.3032155585769942 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 -1.9464073063975311 -2.3032155585769942 ;
createNode polyExtrudeFace -n "polyExtrudeFace55";
	setAttr ".ics" -type "componentList" 1 "f[16]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.19797327063183676 0 0
		 0 0 2.6774001722971263 0 20 -1.7484336581616473 -3.8888781742438105 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -2.2778292 -2.1142724 ;
	setAttr ".rs" 736315500;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -2.2778292457014082 -2.3032155585769942 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 -2.2778292457014082 -1.9253292557728519 ;
createNode polyExtrudeFace -n "polyExtrudeFace56";
	setAttr ".ics" -type "componentList" 1 "f[16]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.19797327063183676 0 0
		 0 0 2.6774001722971263 0 20 -1.7484336581616473 -3.8888781742438105 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -2.9744546 -2.1142724 ;
	setAttr ".rs" 333388542;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 -7.5534680627041387e-17 0.34017795952549301 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -2.9744545263704358 -2.3032155585769942 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 -2.9744545263704358 -1.9253292557728519 ;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[9]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[10]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[11]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[20]" -type "float3" 0 -3.5187848 0 ;
	setAttr ".tk[21]" -type "float3" 0 -3.5187848 0 ;
	setAttr ".tk[22]" -type "float3" 0 -3.5187848 0 ;
	setAttr ".tk[23]" -type "float3" 0 -3.5187848 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace57";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.19797327063183676 0 0
		 0 0 2.6774001722971263 0 20 -1.7484336581616473 -3.8888781742438105 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -3.1445436 -1.9253292 ;
	setAttr ".rs" 1039427478;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -3.3146325371198668 -1.9253292557728519 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 -2.9744545263704358 -1.9253292557728519 ;
createNode polyExtrudeFace -n "polyExtrudeFace58";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.19797327063183676 0 0
		 0 0 2.6774001722971263 0 20 -1.7484336581616473 -3.8888781742438105 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.000126 -3.4271815 -1.4919511 ;
	setAttr ".rs" 2112118095;
	setAttr ".lt" -type "double3" 7.6296818136256661e-05 -0.11305516040885477 0.26379536325376596 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802264438173669 -3.5972704879682116 -1.4919510897828259 ;
	setAttr ".cbx" -type "double3" 20.197986372751451 -3.2570923828177691 -1.4919510897828259 ;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[28:31]" -type "float3"  0.00031689869 -1.42765677
		 0.16186526 0.00031689869 -1.42765677 0.16186526 0.00031689869 -1.42765677 0.16186526
		 0.00031689869 -1.42765677 0.16186526;
createNode polyExtrudeFace -n "polyExtrudeFace59";
	setAttr ".ics" -type "componentList" 1 "f[32]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.19797327063183676 0 0
		 0 0 2.6774001722971263 0 20 -1.7484336581616473 -3.8888781742438105 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.000164 -3.6537981 -1.3600534 ;
	setAttr ".rs" 1002381982;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802265841592114 -3.7103257060679544 -1.4919510897828259 ;
	setAttr ".cbx" -type "double3" 20.198063242343306 -3.5972706767702354 -1.2281556427665965 ;
createNode polyExtrudeFace -n "polyExtrudeFace60";
	setAttr ".ics" -type "componentList" 1 "f[36]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.19797327063183676 0 0
		 0 0 2.6774001722971263 0 20 -1.7484336581616473 -3.8888781742438105 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.000202 -3.8881111 -1.2259644 ;
	setAttr ".rs" 588805770;
	setAttr ".lt" -type "double3" 0 -9.3414859181351062e-16 0.40015360458220883 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802341319558955 -4.0658965569942946 -1.2281556427665965 ;
	setAttr ".cbx" -type "double3" 20.198063242343306 -3.7103257060679544 -1.223773265730296 ;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[36]" -type "float3" 0 -2.3917394 -0.0016367941 ;
	setAttr ".tk[37]" -type "float3" 0 -2.3917394 -0.0016367941 ;
	setAttr ".tk[38]" -type "float3" 0 -1.7960546 0.0016367941 ;
	setAttr ".tk[39]" -type "float3" 0 -1.7960546 0.0016367941 ;
createNode polyExtrudeFace -n "polyExtrudeFace61";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.14205449470940637 0 0
		 0 0 3.0675390363877746 0 20 4.9515813201781791 11.700179527406762 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 4.9515815 -1.3064339 ;
	setAttr ".rs" 983704051;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 8.2186164040825623e-16 0.54151759787427123 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 4.8095268254687724 -1.3064339465948898 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 5.0936358148875858 -1.3064339465948898 ;
createNode polyExtrudeFace -n "polyExtrudeFace62";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.14205449470940637 0 0
		 0 0 3.0675390363877746 0 20 4.9515813201781791 11.700179527406762 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 5.0936365 -1.5771923 ;
	setAttr ".rs" 209196761;
	setAttr ".lt" -type "double3" 7.1054273576010019e-15 -7.4019026741195627e-17 2.6666479387500246 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 5.0936363567824783 -1.8479506460416761 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 5.0936363567824783 -1.3064339465948898 ;
createNode polyExtrudeFace -n "polyExtrudeFace63";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.14205449470940637 0 0
		 0 0 3.0675390363877746 0 20 4.9515813201781791 11.700179527406762 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 7.7602849 -1.5771923 ;
	setAttr ".rs" 1068871391;
	setAttr ".lt" -type "double3" 7.1054273576010019e-15 4.9548950599098303e-16 0.38425682272650885 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 7.76028486611379 -1.8479506460416761 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 7.76028486611379 -1.3064339465948898 ;
createNode polyExtrudeFace -n "polyExtrudeFace64";
	setAttr ".ics" -type "componentList" 1 "f[16]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.14205449470940637 0 0
		 0 0 3.0675390363877746 0 20 4.9515813201781791 11.700179527406762 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 7.9524136 -1.8479507 ;
	setAttr ".rs" 248853419;
	setAttr ".lt" -type "double3" 0 3.6297340162511553e-16 0.92701687794085386 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 7.7602854080086825 -1.8479506460416761 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 8.1445419925173894 -1.8479506460416761 ;
createNode polyExtrudeFace -n "polyExtrudeFace65";
	setAttr ".ics" -type "componentList" 1 "f[16]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.14205449470940637 0 0
		 0 0 3.0675390363877746 0 20 4.9515813201781791 11.700179527406762 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 7.952414 -2.7749677 ;
	setAttr ".rs" 1883095095;
	setAttr ".lt" -type "double3" 0 7.0657404336155298e-16 0.32054210485425205 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 7.7602854080086825 -2.7749677672886151 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 8.1445430763071762 -2.7749677672886151 ;
createNode polyExtrudeFace -n "polyExtrudeFace66";
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.14205449470940637 0 0
		 0 0 3.0675390363877746 0 20 4.9515813201781791 11.700179527406762 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 7.7602854 -2.9352391 ;
	setAttr ".rs" 1191702531;
	setAttr ".lt" -type "double3" 7.1054273576010019e-15 -1.0214326348979628e-15 4.6001236339105294 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 7.7602854080086825 -3.0955104077419975 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 7.7602854080086825 -2.7749677672886151 ;
createNode polyExtrudeFace -n "polyExtrudeFace67";
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.14205449470940637 0 0
		 0 0 3.0675390363877746 0 20 4.9515813201781791 11.700179527406762 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 3.160162 -2.9352391 ;
	setAttr ".rs" 992024158;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 -4.8382961711347283e-16 0.17897488334304601 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 3.1601618829466265 -3.0955104077419975 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 3.1601618829466265 -2.7749677672886151 ;
createNode polyExtrudeFace -n "polyExtrudeFace68";
	setAttr ".ics" -type "componentList" 1 "f[32]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.14205449470940637 0 0
		 0 0 3.0675390363877746 0 20 4.9515813201781791 11.700179527406762 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 3.0706744 -3.0955105 ;
	setAttr ".rs" 416541003;
	setAttr ".lt" -type "double3" 0 4.4825603045152883e-16 3.3608575936217928 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 2.9811870054188407 -3.0955104077419975 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 3.1601618829466265 -3.0955104077419975 ;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 9 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode polyChipOff -n "polyChipOff2";
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.79245269293327913 0 0
		 0 0 3.0675390363877746 0 20 -1.0922414173005368 20.286401559337445 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 0.39572192278435137 0 0 0 0 0.79245269293327913 0 0
		 0 0 3.0675390363877746 0 20 -1.0922414173005368 20.286401559337445 1;
	setAttr ".pvt" -type "float3" 20 -1.0922414 20.286402 ;
	setAttr ".rs" 1357449706;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0]" "f[1]" "f[2]" "f[3]";
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode polyChipOff -n "polyChipOff4";
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.29965115648978352 0 0
		 0 0 1.3546194151164281 0 20 15.017091868370969 0.44032524642849857 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 15.017092 0.44032526 ;
	setAttr ".rs" 1005793520;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate4";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode polySeparate -n "polySeparate5";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 9 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode polyChipOff -n "polyChipOff6";
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.23889242930090698 0 0
		 0 0 2.1033877450184533 0 20 16.513893043405204 -4.9549194961315042 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 16.513893 -4.9549193 ;
	setAttr ".rs" 2096528808;
	setAttr ".dup" no;
createNode polyChipOff -n "polyChipOff7";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[5:8]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.23889242930090698 0 0
		 0 0 2.1033877450184533 0 20 16.513893043405204 -4.9549194961315042 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 16.513893 -4.9549193 ;
	setAttr ".rs" 985603765;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate6";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0]" "f[1]" "f[2]" "f[3]";
createNode polySeparate -n "polySeparate9";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 18 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]";
createNode polyExtrudeFace -n "pasted__polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.18987796607898683 0 0
		 0 0 0.93593410005437927 0 20 25.13847682704796 -0.1446804341755627 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 24.948599 0.11259387 ;
	setAttr ".rs" 358722401;
	setAttr ".lt" -type "double3" 3.5527136788005009e-15 4.0662100883650205e-19 1.1231687417761229 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 24.948598860968971 -0.098098884693109428 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 24.948598860968971 0.32328661585162694 ;
createNode polyTweak -n "pasted__polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[8:9]" -type "float3"  0 0 2.0070011616 0 0 2.0070011616;
createNode polySubdFace -n "pasted__polySubdFace4";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".dvv" 2;
	setAttr ".sbm" 1;
createNode polySeparate -n "polySeparate19";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode polyChipOff -n "polyChipOff19";
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.46490562245038175 0 0
		 0 0 2.1694736013309828 0 20 10.999961385709163 4.499108336079316 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 0.39572192278435137 0 0 0 0 0.46490562245038175 0 0
		 0 0 2.1694736013309828 0 20 10.999961385709163 4.499108336079316 1;
	setAttr ".pvt" -type "float3" 20 10.999962 4.4991083 ;
	setAttr ".rs" 606645991;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate20";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.46490562245038175 0 0
		 0 0 2.1694736013309828 0 20 10.999961385709163 4.499108336079316 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 11.464867 3.7885947 ;
	setAttr ".rs" 1210515243;
	setAttr ".lt" -type "double3" 0.0005845059273070774 -2.0209224605403939 1.8188302905611313 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 11.464867008159544 3.4143715354138244 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 11.464867008159544 4.162817877811877 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 -0.7668376 -0.12004931 0
		 -0.7668376 -0.12004931 0 0.7668376 0.12004928 0 0.7668376 0.12004928;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.46490562245038175 0 0
		 0 0 2.1694736013309828 0 20 10.999961385709163 4.499108336079316 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.000584 13.283699 5.8095174 ;
	setAttr ".rs" 584799619;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802723238071163 12.92719159416702 5.6957378176702544 ;
	setAttr ".cbx" -type "double3" 20.198443651296177 13.6402058147711 5.9232969830879156 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0.002424211 0.26753938 1.52885711
		 0.002424211 0.26753938 1.52885711 0.002424211 0.26753938 1.52885711 0.002424211 0.26753938
		 1.52885711;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.46490562245038175 0 0
		 0 0 2.1694736013309828 0 20 10.999961385709163 4.499108336079316 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.001543 13.40808 9.1263323 ;
	setAttr ".rs" 236468267;
	setAttr ".lt" -type "double3" 0.00095931353342848524 3.2177682748446221 4.5085989155262176 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.803682551236264 13.051572877550736 9.0125525742792441 ;
	setAttr ".cbx" -type "double3" 20.19940297625471 13.764587541523365 9.2401125155611261 ;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.46490562245038175 0 0
		 0 0 2.1694736013309828 0 20 10.999961385709163 4.499108336079316 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.002501 17.84432 12.443149 ;
	setAttr ".rs" 2056771094;
	setAttr ".lt" -type "double3" 0.0014751411866313902 -1.6002836270641594 4.8430045412974581 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.804640378428889 17.487812418930609 12.32936901192738 ;
	setAttr ".cbx" -type "double3" 20.200360791653907 18.200827082903238 12.556928953209262 ;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0 -0.035829645 1.81277764
		 0 -0.035829645 1.81277764 0 0.035829846 1.89173591 0 0.035829846 1.89173591;
createNode polyChipOff -n "polyChipOff18";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[18:21]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.46490562245038175 0 0
		 0 0 2.1694736013309828 0 20 10.999961385709163 4.499108336079316 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.003977 17.792269 21.561855 ;
	setAttr ".rs" 1737975724;
	setAttr ".dup" no;
createNode groupParts -n "groupParts47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.38742133623565767 0 0
		 0 0 3.1492356126941479 0 20 13.643610028658426 1.5815968048572522 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 0.39572192278435137 0 0 0 0 0.38742133623565767 0 0
		 0 0 3.1492356126941479 0 20 13.643610028658426 1.5815968048572522 1;
	setAttr ".pvt" -type "float3" 20 13.64361 -5.6418657 ;
	setAttr ".rs" 274693105;
	setAttr ".lt" -type "double3" -0.00032687875493309093 -0.66251904599706368 1.1301795017826883 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 13.256188692422768 -5.6418656740470814 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 14.031031364894083 -5.6418656740470814 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.38742133623565767 0 0
		 0 0 3.1492356126941479 0 20 13.643610028658426 1.5815968048572522 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 0.39572192278435137 0 0 0 0 0.38742133623565767 0 0
		 0 0 3.1492356126941479 0 20 13.643610028658426 1.5815968048572522 1;
	setAttr ".pvt" -type "float3" 19.999672 14.306129 -6.7720447 ;
	setAttr ".rs" 233013360;
	setAttr ".lt" -type "double3" 0 -6.9203541255049695e-17 0.5650897981624734 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.80181146423174 13.918708380593156 -6.7720447153346885 ;
	setAttr ".cbx" -type "double3" 20.19753338701609 14.693551053064471 -6.7720447153346885 ;
createNode polyChipOff -n "polyChipOff14";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[10:13]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.38742133623565767 0 0
		 0 0 3.1492356126941479 0 20 13.643610028658426 1.5815968048572522 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 0.39572192278435137 0 0 0 0 0.38742133623565767 0 0
		 0 0 3.1492356126941479 0 20 13.643610028658426 1.5815968048572522 1;
	setAttr ".pvt" -type "float3" 20 13.64361 1.5815969 ;
	setAttr ".rs" 1757722752;
	setAttr ".dup" no;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId45";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate15";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 9 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]";
createNode groupId -n "groupId47";
	setAttr ".ihi" 0;
createNode polyChipOff -n "polyChipOff15";
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.38742133623565767 0 0
		 0 0 3.1492356126941479 0 20 13.643610028658426 1.5815968048572522 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 0.39572192278435137 0 0 0 0 0.38742133623565767 0 0
		 0 0 3.1492356126941479 0 20 13.643610028658426 1.5815968048572522 1;
	setAttr ".pvt" -type "float3" 20 13.64361 1.5815969 ;
	setAttr ".rs" 742161593;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate16";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupParts -n "groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0]" "f[1]" "f[2]" "f[3]";
createNode groupId -n "groupId50";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId49";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.79245269293327913 0 0
		 0 0 3.0675390363877746 0 20 -1.0922414173005368 20.286401559337445 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -1.0922414 8.0266161 ;
	setAttr ".rs" 827326083;
	setAttr ".lt" -type "double3" -0.00081638663009897527 -1.4963432092942242 2.8226472994716429 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -1.8846941102338159 8.0266160744575767 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 -0.29978872436725768 8.0266160744575767 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.79245269293327913 0 0
		 0 0 3.0675390363877746 0 20 -1.0922414173005368 20.286401559337445 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 19.999184 0.40410197 5.203968 ;
	setAttr ".rs" 1483431518;
	setAttr ".lt" -type "double3" 0 2.6329960946249412e-17 1.5981313478714521 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.80132236700662 -0.38835074998678942 5.2039679761372923 ;
	setAttr ".cbx" -type "double3" 20.19704428979097 1.19655468311363 5.2039679761372923 ;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  6.4392935e-15 0.0085836183
		 4.2695247e-06 -6.4392935e-15 0.0085836183 4.2695247e-06 -6.4392935e-15 -0.008583609
		 -4.2695247e-06 6.4392935e-15 -0.008583609 -4.2695247e-06;
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[10:13]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.79245269293327913 0 0
		 0 0 3.0675390363877746 0 20 -1.0922414173005368 20.286401559337445 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 19.999184 0.40410194 3.6058359 ;
	setAttr ".rs" 1626666183;
	setAttr ".dup" no;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate10";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 13 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]";
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate7";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]";
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode polyChipOff -n "polyChipOff9";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2:6]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.40396606988884998 0 20 19.723859489533304 -8.5916899354886382 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.40396606988884998 0 20 19.723859489533304 -8.5916899354886382 1;
	setAttr ".pvt" -type "float3" 20 19.72386 -8.5916901 ;
	setAttr ".rs" 1113849821;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate8";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode polyExtrudeFace -n "polyExtrudeFace69";
	setAttr ".ics" -type "componentList" 2 "f[0:1]" "f[3:5]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.37903328624077992 0 0
		 0 0 3.9374340770297396 0 20 -6.419994315693045 -0.52016002350112511 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -6.4199944 0.16815837 ;
	setAttr ".rs" 1541936311;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -6.7990276019338252 -1.1122390920766674 ;
	setAttr ".cbx" -type "double3" 20.197860961392177 -6.0409613909265749 1.4485558415669471 ;
createNode polyExtrudeFace -n "polyExtrudeFace70";
	setAttr ".ics" -type "componentList" 3 "f[6]" "f[10:13]" "f[15:41]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.19797327063183676 0 0
		 0 0 2.6774001722971263 0 20 -1.7484336581616473 -3.8888781742438105 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.000101 -3.0085893 -1.6869141 ;
	setAttr ".rs" 37861292;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802139038607823 -4.0707714252420075 -2.5501780880952474 ;
	setAttr ".cbx" -type "double3" 20.198063242343306 -1.9464073063975311 -0.82365016169476624 ;
createNode polyExtrudeFace -n "polyExtrudeFace71";
	setAttr ".ics" -type "componentList" 2 "f[36]" "f[38:41]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.19797327063183676 0 0
		 0 0 2.6774001722971263 0 20 -1.7484336581616473 -3.8888781742438105 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.000202 -3.8856454 -1.0259029 ;
	setAttr ".rs" 99179041;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 19.802341319558955 -4.0658965569942946 -1.2281556427665965 ;
	setAttr ".cbx" -type "double3" 20.198063242343306 -3.7053941972131801 -0.82365016169476624 ;
createNode polyChipOff -n "polyChipOff20";
	setAttr ".ics" -type "componentList" 3 "f[6]" "f[10:21]" "f[23:29]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.14205449470940637 0 0
		 0 0 3.0675390363877746 0 20 4.9515813201781791 11.700179527406762 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 4.9515815 11.700179 ;
	setAttr ".rs" 2003566673;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate21";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 1 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId63";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:37]";
createNode groupId -n "groupId64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId65";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId66";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode polyChipOff -n "polyChipOff21";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[5:8]" "f[10:15]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.14205449470940637 0 0
		 0 0 3.0675390363877746 0 20 4.9515813201781791 11.700179527406762 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 4.9515815 11.700179 ;
	setAttr ".rs" 1981915154;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate22";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId67";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]";
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 9 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]";
createNode polyChipOff -n "polyChipOff22";
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.14205449470940637 0 0
		 0 0 3.0675390363877746 0 20 4.9515813201781791 11.700179527406762 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 4.9515815 11.700179 ;
	setAttr ".rs" 2057728069;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate23";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 9 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]";
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 9 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]";
createNode polyChipOff -n "polyChipOff23";
	setAttr ".ics" -type "componentList" 2 "f[0:1]" "f[3:5]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.37903328624077992 0 0
		 0 0 3.9374340770297396 0 20 -6.419994315693045 -0.52016002350112511 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 -6.4199944 -0.52016002 ;
	setAttr ".rs" 1739403254;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate24";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:31]";
createNode groupId -n "groupId72";
	setAttr ".ihi" 0;
createNode groupId -n "groupId73";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId74";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 27 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]";
createNode polyChipOff -n "polyChipOff24";
	setAttr ".ics" -type "componentList" 1 "f[6:9]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.40396606988884998 0 20 14.341771937717049 -9.3343050812181279 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 14.341772 -9.3343048 ;
	setAttr ".rs" 974670234;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate25";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 2 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId75";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId77";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0]" "f[1]" "f[2]" "f[3]";
createNode groupId -n "groupId78";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode polyChipOff -n "polyChipOff25";
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.40396606988884998 0 20 14.341771937717049 -9.3343050812181279 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 14.341772 -9.3343048 ;
	setAttr ".rs" 851102063;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate26";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId79";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId80";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode polyChipOff -n "polyChipOff26";
	setAttr ".ics" -type "componentList" 1 "f[13:16]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 14.32383176294698 -13.231112813745533 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 14.323832 -13.231112 ;
	setAttr ".rs" 1700218772;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate27";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 2 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId81";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:20]";
createNode groupId -n "groupId82";
	setAttr ".ihi" 0;
createNode groupId -n "groupId83";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0]" "f[1]" "f[2]" "f[3]";
createNode groupId -n "groupId84";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts69";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode polyChipOff -n "polyChipOff27";
	setAttr ".ics" -type "componentList" 2 "f[7:10]" "f[12]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 14.32383176294698 -13.231112813745533 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 14.323832 -13.231112 ;
	setAttr ".rs" 1681836039;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate28";
	setAttr ".ic" 4;
	setAttr ".rs" -type "Int32Array" 1 2 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId85";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId86";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode polyChipOff -n "polyChipOff28";
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".ix" -type "matrix" 0.39572192278435137 0 0 0 0 0.17900089138895678 0 0
		 0 0 0.84420535309424383 0 20 14.32383176294698 -13.231112813745533 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20 14.323832 -13.231112 ;
	setAttr ".rs" 919547526;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate29";
	setAttr ".ic" 3;
	setAttr -s 3 ".out";
createNode groupId -n "groupId87";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts72";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId88";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts73";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId89";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts74";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".muv" 2;
createNode groupId -n "groupId90";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts75";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:6]";
createNode polyUnite -n "polyUnite2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".muv" 2;
createNode groupId -n "groupId91";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts76";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode polyChipOff -n "polyChipOff29";
	setAttr ".ics" -type "componentList" 2 "f[0:4]" "f[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 2073860971;
	setAttr ".dup" no;
createNode polySeparate -n "polySeparate30";
	setAttr ".ic" 3;
	setAttr -s 3 ".out";
createNode groupId -n "groupId92";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId93";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts78";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
createNode groupId -n "groupId94";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts79";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr -s 176 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 70 ".gn";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "BackGround.di" "pPlane1.do";
connectAttr "polyPlane1.out" "BG.i";
connectAttr "polyCube1.out" "LedgeShape1.i";
connectAttr "groupParts60.og" "|pCube3|Ledge49|LedgeShape49.i";
connectAttr "groupId73.id" "|pCube3|Ledge49|LedgeShape49.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|pCube3|Ledge49|LedgeShape49.iog.og[0].gco"
		;
connectAttr "groupParts61.og" "WallSurfaceShape50.i";
connectAttr "groupId74.id" "WallSurfaceShape50.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallSurfaceShape50.iog.og[0].gco";
connectAttr "groupId71.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupParts59.og" "pCubeShape3.i";
connectAttr "groupId72.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace11.out" "pCubeShape18.i";
connectAttr "polyExtrudeFace12.out" "LedgeShape28.i";
connectAttr "polyExtrudeFace25.out" "LedgeShape34.i";
connectAttr "polyExtrudeFace26.out" "LedgeShape35.i";
connectAttr "polyExtrudeFace34.out" "LedgeShape62.i";
connectAttr "polyExtrudeFace35.out" "LedgeShape63.i";
connectAttr "polyChipOff25.out" "polySurfaceShape75.i";
connectAttr "groupId77.id" "polySurfaceShape75.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape75.iog.og[0].gco";
connectAttr "groupParts65.og" "LedgeShape253.i";
connectAttr "groupId79.id" "LedgeShape253.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape253.iog.og[0].gco";
connectAttr "groupParts66.og" "LedgeShape254.i";
connectAttr "groupId80.id" "LedgeShape254.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape254.iog.og[0].gco";
connectAttr "groupParts64.og" "polySurfaceShape76.i";
connectAttr "groupId78.id" "polySurfaceShape76.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape76.iog.og[0].gco";
connectAttr "groupId75.id" "pCubeShape68.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape68.iog.og[0].gco";
connectAttr "groupParts62.og" "pCubeShape68.i";
connectAttr "groupId76.id" "pCubeShape68.ciog.cog[0].cgid";
connectAttr "groupParts68.og" "LedgeShape255.i";
connectAttr "groupId83.id" "LedgeShape255.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape255.iog.og[0].gco";
connectAttr "groupParts70.og" "polySurfaceShape81.i";
connectAttr "groupId85.id" "polySurfaceShape81.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape81.iog.og[0].gco";
connectAttr "groupParts72.og" "polySurfaceShape83.i";
connectAttr "groupId87.id" "polySurfaceShape83.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape83.iog.og[0].gco";
connectAttr "groupParts73.og" "polySurfaceShape84.i";
connectAttr "groupId88.id" "polySurfaceShape84.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape84.iog.og[0].gco";
connectAttr "groupParts74.og" "LedgeShape261.i";
connectAttr "groupId89.id" "LedgeShape261.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape261.iog.og[0].gco";
connectAttr "polyChipOff28.out" "polySurfaceShape82.i";
connectAttr "groupId86.id" "polySurfaceShape82.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape82.iog.og[0].gco";
connectAttr "polyChipOff27.out" "polySurfaceShape80.i";
connectAttr "groupId84.id" "polySurfaceShape80.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape80.iog.og[0].gco";
connectAttr "groupId81.id" "pCubeShape70.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape70.iog.og[0].gco";
connectAttr "groupParts67.og" "pCubeShape70.i";
connectAttr "groupId82.id" "pCubeShape70.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace49.out" "LedgeShape71.i";
connectAttr "polyExtrudeFace44.out" "pCubeShape78.i";
connectAttr "polyExtrudeFace51.out" "LedgeShape88.i";
connectAttr "polyExtrudeFace71.out" "LedgeShape90.i";
connectAttr "pasted__polyExtrudeFace12.out" "pasted__LedgeShape28.i";
connectAttr ":initialShadingGroup.mwc" "LedgeShape226.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "LedgeShape227.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape52.iog.og[0].gco";
connectAttr "groupParts39.og" "LedgeShape230.i";
connectAttr "groupId48.id" "LedgeShape230.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape230.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "LedgeShape233.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape58.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "pasted__LedgeShape214.iog.og[0].gco";
connectAttr "groupParts40.og" "LedgeShape231.i";
connectAttr "groupId49.id" "LedgeShape231.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape231.iog.og[0].gco";
connectAttr "groupParts41.og" "polySurfaceShape56.i";
connectAttr "groupId50.id" "polySurfaceShape56.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape56.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "pasted__LedgeShape215.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "pasted__LedgeShape216.iog.og[0].gco";
connectAttr "groupParts22.og" "LedgeShape217.i";
connectAttr "groupId27.id" "LedgeShape217.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape217.iog.og[0].gco";
connectAttr "groupParts23.og" "polySurfaceShape41.i";
connectAttr "groupId28.id" "polySurfaceShape41.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape41.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "pCubeShape54.iog.og[0].gco";
connectAttr "groupId26.id" "pCubeShape54.ciog.cog[0].cgid";
connectAttr "groupParts25.og" "LedgeShape219.i";
connectAttr "groupId31.id" "LedgeShape219.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape219.iog.og[0].gco";
connectAttr "groupParts26.og" "polySurfaceShape43.i";
connectAttr "groupId32.id" "polySurfaceShape43.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape43.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "pCubeShape60.iog.og[0].gco";
connectAttr "groupId30.id" "pCubeShape60.ciog.cog[0].cgid";
connectAttr "groupParts49.og" "LedgeShape240.i";
connectAttr "groupId60.id" "LedgeShape240.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape240.iog.og[0].gco";
connectAttr "groupId57.id" "pCubeShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape13.iog.og[0].gco";
connectAttr "groupParts47.og" "pCubeShape13.i";
connectAttr "groupId58.id" "pCubeShape13.ciog.cog[0].cgid";
connectAttr "groupParts3.og" "LedgeShape262.i";
connectAttr "groupId4.id" "LedgeShape262.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape262.iog.og[0].gco";
connectAttr "groupId1.id" "pCubeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape7.i";
connectAttr "groupId2.id" "pCubeShape7.ciog.cog[0].cgid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape222.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "LedgeShape235.iog.og[0].gco";
connectAttr "groupParts50.og" "LedgeShape241.i";
connectAttr "groupId61.id" "LedgeShape241.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape241.iog.og[0].gco";
connectAttr "groupParts51.og" "polySurfaceShape66.i";
connectAttr "groupId62.id" "polySurfaceShape66.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape66.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "LedgeShape237.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "LedgeShape238.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "LedgeShape223.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape47.iog.og[0].gco";
connectAttr "groupParts4.og" "LedgeShape263.i";
connectAttr "groupId5.id" "LedgeShape263.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape263.iog.og[0].gco";
connectAttr "groupParts5.og" "polySurfaceShape27.i";
connectAttr "groupId6.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupParts18.og" "LedgeShape214.i";
connectAttr "groupId22.id" "LedgeShape214.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape214.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "pCubeShape65.iog.og[0].gco";
connectAttr "groupId20.id" "pCubeShape65.ciog.cog[0].cgid";
connectAttr "groupParts19.og" "LedgeShape215.i";
connectAttr "groupId23.id" "LedgeShape215.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape215.iog.og[0].gco";
connectAttr "groupParts20.og" "polySurfaceShape39.i";
connectAttr "groupId24.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "polyChipOff6.out" "LedgeShape210.i";
connectAttr "groupId16.id" "LedgeShape210.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape210.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "pCubeShape30.iog.og[0].gco";
connectAttr "groupId14.id" "pCubeShape30.ciog.cog[0].cgid";
connectAttr "groupParts7.og" "LedgeShape264.i";
connectAttr "groupId9.id" "LedgeShape264.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape264.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "pCubeShape31.iog.og[0].gco";
connectAttr "groupId8.id" "pCubeShape31.ciog.cog[0].cgid";
connectAttr "groupParts9.og" "LedgeShape265.i";
connectAttr "groupId11.id" "LedgeShape265.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape265.iog.og[0].gco";
connectAttr "groupParts10.og" "polySurfaceShape31.i";
connectAttr "groupId12.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "polyChipOff4.out" "polySurfaceShape29.i";
connectAttr "groupId10.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupParts14.og" "LedgeShape211.i";
connectAttr "groupId17.id" "LedgeShape211.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape211.iog.og[0].gco";
connectAttr "groupParts15.og" "LedgeShape212.i";
connectAttr "groupId18.id" "LedgeShape212.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape212.iog.og[0].gco";
connectAttr "polyChipOff7.out" "polySurfaceShape32.i";
connectAttr "groupId15.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape32.iog.og[0].gco";
connectAttr "groupId63.id" "pCubeShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "groupParts52.og" "pCubeShape8.i";
connectAttr "groupId64.id" "pCubeShape8.ciog.cog[0].cgid";
connectAttr "groupParts55.og" "LedgeShape245.i";
connectAttr "groupId67.id" "LedgeShape245.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape245.iog.og[0].gco";
connectAttr "groupParts56.og" "LedgeShape246.i";
connectAttr "groupId68.id" "LedgeShape246.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape246.iog.og[0].gco";
connectAttr "polyChipOff21.out" "polySurfaceShape67.i";
connectAttr "groupId65.id" "polySurfaceShape67.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape67.iog.og[0].gco";
connectAttr "groupParts57.og" "LedgeShape247.i";
connectAttr "groupId69.id" "LedgeShape247.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape247.iog.og[0].gco";
connectAttr "groupParts58.og" "LedgeShape248.i";
connectAttr "groupId70.id" "LedgeShape248.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape248.iog.og[0].gco";
connectAttr "polyChipOff22.out" "polySurfaceShape68.i";
connectAttr "groupId66.id" "polySurfaceShape68.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape68.iog.og[0].gco";
connectAttr "groupParts77.og" "LedgeShape267.i";
connectAttr "groupId92.id" "LedgeShape267.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape267.iog.og[0].gco";
connectAttr "groupParts78.og" "LedgeShape268.i";
connectAttr "groupId93.id" "LedgeShape268.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape268.iog.og[0].gco";
connectAttr "groupParts79.og" "LedgeShape266.i";
connectAttr "groupId94.id" "LedgeShape266.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape266.iog.og[0].gco";
connectAttr "polyChipOff29.out" "polySurfaceShape87.i";
connectAttr "groupId91.id" "polySurfaceShape87.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape87.iog.og[0].gco";
connectAttr "groupParts75.og" "polySurfaceShape86.i";
connectAttr "groupId90.id" "polySurfaceShape86.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape86.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "BG.iog" "lambert2SG.dsm" -na;
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
connectAttr "layerManager.dli[1]" "BackGround.id";
connectAttr "polySurfaceShape1.o" "polyExtrudeFace1.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polySubdFace1.ip";
connectAttr "polyTweak1.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace4.mp";
connectAttr "polySubdFace1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace4.out" "polySubdFace2.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace5.mp";
connectAttr "polySubdFace2.out" "polyTweak2.ip";
connectAttr "polySurfaceShape4.o" "polySubdFace3.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape18.wm" "polyExtrudeFace10.mp";
connectAttr "polySubdFace3.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace10.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape18.wm" "polyExtrudeFace11.mp";
connectAttr "polySurfaceShape5.o" "polySubdFace4.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace12.ip";
connectAttr "LedgeShape28.wm" "polyExtrudeFace12.mp";
connectAttr "polySubdFace4.out" "polyTweak4.ip";
connectAttr "polySurfaceShape9.o" "polySubdFace5.ip";
connectAttr "polySubdFace5.out" "polySubdFace6.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace23.ip";
connectAttr "LedgeShape34.wm" "polyExtrudeFace23.mp";
connectAttr "polySubdFace6.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polySubdFace7.ip";
connectAttr "polyExtrudeFace23.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace24.ip";
connectAttr "LedgeShape34.wm" "polyExtrudeFace24.mp";
connectAttr "polySubdFace7.out" "polyTweak10.ip";
connectAttr "polyExtrudeFace24.out" "polySubdFace8.ip";
connectAttr "polySubdFace8.out" "polyExtrudeFace25.ip";
connectAttr "LedgeShape34.wm" "polyExtrudeFace25.mp";
connectAttr "polySurfaceShape10.o" "polySubdFace9.ip";
connectAttr "polySubdFace9.out" "polySubdFace10.ip";
connectAttr "polySubdFace10.out" "polySubdFace11.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace26.ip";
connectAttr "LedgeShape35.wm" "polyExtrudeFace26.mp";
connectAttr "polySubdFace11.out" "polyTweak11.ip";
connectAttr "polySurfaceShape14.o" "polyExtrudeFace34.ip";
connectAttr "LedgeShape62.wm" "polyExtrudeFace34.mp";
connectAttr "polySurfaceShape15.o" "polyExtrudeFace35.ip";
connectAttr "LedgeShape63.wm" "polyExtrudeFace35.mp";
connectAttr "polySurfaceShape17.o" "polyExtrudeFace38.ip";
connectAttr "pCubeShape68.wm" "polyExtrudeFace38.mp";
connectAttr "polyExtrudeFace38.out" "polyExtrudeFace39.ip";
connectAttr "pCubeShape68.wm" "polyExtrudeFace39.mp";
connectAttr "polySurfaceShape18.o" "polySubdFace20.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace41.ip";
connectAttr "pCubeShape70.wm" "polyExtrudeFace41.mp";
connectAttr "polySubdFace20.out" "polyTweak17.ip";
connectAttr "polyExtrudeFace41.out" "polySubdFace21.ip";
connectAttr "polyTweak18.out" "polyExtrudeFace42.ip";
connectAttr "pCubeShape70.wm" "polyExtrudeFace42.mp";
connectAttr "polySubdFace21.out" "polyTweak18.ip";
connectAttr "polyExtrudeFace42.out" "polyExtrudeFace43.ip";
connectAttr "pCubeShape70.wm" "polyExtrudeFace43.mp";
connectAttr "polySurfaceShape19.o" "polyExtrudeFace44.ip";
connectAttr "pCubeShape78.wm" "polyExtrudeFace44.mp";
connectAttr "polySurfaceShape20.o" "polyExtrudeFace45.ip";
connectAttr "LedgeShape71.wm" "polyExtrudeFace45.mp";
connectAttr "polyExtrudeFace45.out" "polyExtrudeFace46.ip";
connectAttr "LedgeShape71.wm" "polyExtrudeFace46.mp";
connectAttr "polyExtrudeFace46.out" "polyExtrudeFace47.ip";
connectAttr "LedgeShape71.wm" "polyExtrudeFace47.mp";
connectAttr "polyExtrudeFace47.out" "polyExtrudeFace48.ip";
connectAttr "LedgeShape71.wm" "polyExtrudeFace48.mp";
connectAttr "polyExtrudeFace48.out" "polyExtrudeFace49.ip";
connectAttr "LedgeShape71.wm" "polyExtrudeFace49.mp";
connectAttr "polySurfaceShape21.o" "polyExtrudeFace51.ip";
connectAttr "LedgeShape88.wm" "polyExtrudeFace51.mp";
connectAttr "polySurfaceShape22.o" "polyExtrudeFace52.ip";
connectAttr "LedgeShape90.wm" "polyExtrudeFace52.mp";
connectAttr "polyExtrudeFace52.out" "polyExtrudeFace53.ip";
connectAttr "LedgeShape90.wm" "polyExtrudeFace53.mp";
connectAttr "polyExtrudeFace53.out" "polyExtrudeFace54.ip";
connectAttr "LedgeShape90.wm" "polyExtrudeFace54.mp";
connectAttr "polyExtrudeFace54.out" "polyExtrudeFace55.ip";
connectAttr "LedgeShape90.wm" "polyExtrudeFace55.mp";
connectAttr "polyTweak19.out" "polyExtrudeFace56.ip";
connectAttr "LedgeShape90.wm" "polyExtrudeFace56.mp";
connectAttr "polyExtrudeFace55.out" "polyTweak19.ip";
connectAttr "polyExtrudeFace56.out" "polyExtrudeFace57.ip";
connectAttr "LedgeShape90.wm" "polyExtrudeFace57.mp";
connectAttr "polyTweak20.out" "polyExtrudeFace58.ip";
connectAttr "LedgeShape90.wm" "polyExtrudeFace58.mp";
connectAttr "polyExtrudeFace57.out" "polyTweak20.ip";
connectAttr "polyExtrudeFace58.out" "polyExtrudeFace59.ip";
connectAttr "LedgeShape90.wm" "polyExtrudeFace59.mp";
connectAttr "polyTweak21.out" "polyExtrudeFace60.ip";
connectAttr "LedgeShape90.wm" "polyExtrudeFace60.mp";
connectAttr "polyExtrudeFace59.out" "polyTweak21.ip";
connectAttr "polySurfaceShape23.o" "polyExtrudeFace61.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace61.mp";
connectAttr "polyExtrudeFace61.out" "polyExtrudeFace62.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace62.mp";
connectAttr "polyExtrudeFace62.out" "polyExtrudeFace63.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace63.mp";
connectAttr "polyExtrudeFace63.out" "polyExtrudeFace64.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace64.mp";
connectAttr "polyExtrudeFace64.out" "polyExtrudeFace65.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace65.mp";
connectAttr "polyExtrudeFace65.out" "polyExtrudeFace66.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace66.mp";
connectAttr "polyExtrudeFace66.out" "polyExtrudeFace67.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace67.mp";
connectAttr "polyExtrudeFace67.out" "polyExtrudeFace68.ip";
connectAttr "pCubeShape8.wm" "polyExtrudeFace68.mp";
connectAttr "pCubeShape7.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polySeparate1.out[1]" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "groupParts2.og" "polyChipOff2.ip";
connectAttr "polyChipOff2.out" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "polySeparate2.out[1]" "groupParts5.ig";
connectAttr "groupId6.id" "groupParts5.gi";
connectAttr "pCubeShape31.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[0]" "groupParts7.ig";
connectAttr "groupId9.id" "groupParts7.gi";
connectAttr "polySeparate3.out[1]" "groupParts8.ig";
connectAttr "groupId10.id" "groupParts8.gi";
connectAttr "groupParts8.og" "polyChipOff4.ip";
connectAttr "polySurfaceShape29.wm" "polyChipOff4.mp";
connectAttr "polySurfaceShape29.o" "polySeparate4.ip";
connectAttr "polySeparate4.out[0]" "groupParts9.ig";
connectAttr "groupId11.id" "groupParts9.gi";
connectAttr "polySeparate4.out[1]" "groupParts10.ig";
connectAttr "groupId12.id" "groupParts10.gi";
connectAttr "pCubeShape30.o" "polySeparate5.ip";
connectAttr "polySeparate5.out[0]" "groupParts12.ig";
connectAttr "groupId15.id" "groupParts12.gi";
connectAttr "polySeparate5.out[1]" "groupParts13.ig";
connectAttr "groupId16.id" "groupParts13.gi";
connectAttr "groupParts13.og" "polyChipOff6.ip";
connectAttr "LedgeShape210.wm" "polyChipOff6.mp";
connectAttr "groupParts12.og" "polyChipOff7.ip";
connectAttr "polySurfaceShape32.wm" "polyChipOff7.mp";
connectAttr "polySurfaceShape32.o" "polySeparate6.ip";
connectAttr "polySeparate6.out[0]" "groupParts14.ig";
connectAttr "groupId17.id" "groupParts14.gi";
connectAttr "polySeparate6.out[1]" "groupParts15.ig";
connectAttr "groupId18.id" "groupParts15.gi";
connectAttr "pCubeShape54.o" "polySeparate9.ip";
connectAttr "polySeparate9.out[0]" "groupParts22.ig";
connectAttr "groupId27.id" "groupParts22.gi";
connectAttr "polySeparate9.out[1]" "groupParts23.ig";
connectAttr "groupId28.id" "groupParts23.gi";
connectAttr "pasted__polyTweak4.out" "pasted__polyExtrudeFace12.ip";
connectAttr "pasted__LedgeShape28.wm" "pasted__polyExtrudeFace12.mp";
connectAttr "pasted__polySubdFace4.out" "pasted__polyTweak4.ip";
connectAttr "pasted__polySurfaceShape5.o" "pasted__polySubdFace4.ip";
connectAttr "pCubeShape13.o" "polySeparate19.ip";
connectAttr "polySeparate19.out[0]" "groupParts48.ig";
connectAttr "groupId59.id" "groupParts48.gi";
connectAttr "polySeparate19.out[1]" "groupParts49.ig";
connectAttr "groupId60.id" "groupParts49.gi";
connectAttr "groupParts48.og" "polyChipOff19.ip";
connectAttr "polyChipOff19.out" "polySeparate20.ip";
connectAttr "polySeparate20.out[0]" "groupParts50.ig";
connectAttr "groupId61.id" "groupParts50.gi";
connectAttr "polySeparate20.out[1]" "groupParts51.ig";
connectAttr "groupId62.id" "groupParts51.gi";
connectAttr "polySurfaceShape8.o" "polyExtrudeFace19.ip";
connectAttr "pCubeShape13.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace20.ip";
connectAttr "pCubeShape13.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace21.ip";
connectAttr "pCubeShape13.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace21.out" "polyExtrudeFace22.ip";
connectAttr "pCubeShape13.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak23.ip";
connectAttr "polyTweak23.out" "polyChipOff18.ip";
connectAttr "pCubeShape13.wm" "polyChipOff18.mp";
connectAttr "polyChipOff18.out" "groupParts47.ig";
connectAttr "groupId57.id" "groupParts47.gi";
connectAttr "polySurfaceShape3.o" "polyExtrudeFace8.ip";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "polyExtrudeFace9.out" "polyChipOff14.ip";
connectAttr "polyChipOff14.out" "groupParts37.ig";
connectAttr "groupId45.id" "groupParts37.gi";
connectAttr "groupParts37.og" "polySeparate15.ip";
connectAttr "polySeparate15.out[0]" "groupParts38.ig";
connectAttr "groupId47.id" "groupParts38.gi";
connectAttr "groupParts38.og" "polyChipOff15.ip";
connectAttr "polyChipOff15.out" "polySeparate16.ip";
connectAttr "polySeparate16.out[1]" "groupParts41.ig";
connectAttr "groupId50.id" "groupParts41.gi";
connectAttr "polySeparate16.out[0]" "groupParts40.ig";
connectAttr "groupId49.id" "groupParts40.gi";
connectAttr "polySeparate15.out[1]" "groupParts39.ig";
connectAttr "groupId48.id" "groupParts39.gi";
connectAttr "polySurfaceShape2.o" "polyExtrudeFace6.ip";
connectAttr "pCubeShape7.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape7.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak22.ip";
connectAttr "polyTweak22.out" "polyChipOff1.ip";
connectAttr "pCubeShape7.wm" "polyChipOff1.mp";
connectAttr "polyChipOff1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "pCubeShape60.o" "polySeparate10.ip";
connectAttr "polySeparate10.out[0]" "groupParts25.ig";
connectAttr "groupId31.id" "groupParts25.gi";
connectAttr "polySeparate10.out[1]" "groupParts26.ig";
connectAttr "groupId32.id" "groupParts26.gi";
connectAttr "pCubeShape65.o" "polySeparate7.ip";
connectAttr "polySeparate7.out[1]" "groupParts18.ig";
connectAttr "groupId22.id" "groupParts18.gi";
connectAttr "polySeparate7.out[0]" "groupParts17.ig";
connectAttr "groupId21.id" "groupParts17.gi";
connectAttr "groupParts17.og" "polyChipOff9.ip";
connectAttr "polyChipOff9.out" "polySeparate8.ip";
connectAttr "polySeparate8.out[1]" "groupParts20.ig";
connectAttr "groupId24.id" "groupParts20.gi";
connectAttr "polySeparate8.out[0]" "groupParts19.ig";
connectAttr "groupId23.id" "groupParts19.gi";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace69.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace69.mp";
connectAttr "polyExtrudeFace60.out" "polyExtrudeFace70.ip";
connectAttr "LedgeShape90.wm" "polyExtrudeFace70.mp";
connectAttr "polyExtrudeFace70.out" "polyExtrudeFace71.ip";
connectAttr "LedgeShape90.wm" "polyExtrudeFace71.mp";
connectAttr "polyExtrudeFace68.out" "polyChipOff20.ip";
connectAttr "pCubeShape8.wm" "polyChipOff20.mp";
connectAttr "pCubeShape8.o" "polySeparate21.ip";
connectAttr "polyChipOff20.out" "groupParts52.ig";
connectAttr "groupId63.id" "groupParts52.gi";
connectAttr "polySeparate21.out[0]" "groupParts53.ig";
connectAttr "groupId65.id" "groupParts53.gi";
connectAttr "polySeparate21.out[1]" "groupParts54.ig";
connectAttr "groupId66.id" "groupParts54.gi";
connectAttr "groupParts53.og" "polyChipOff21.ip";
connectAttr "polySurfaceShape67.wm" "polyChipOff21.mp";
connectAttr "polySurfaceShape67.o" "polySeparate22.ip";
connectAttr "polySeparate22.out[0]" "groupParts55.ig";
connectAttr "groupId67.id" "groupParts55.gi";
connectAttr "polySeparate22.out[1]" "groupParts56.ig";
connectAttr "groupId68.id" "groupParts56.gi";
connectAttr "groupParts54.og" "polyChipOff22.ip";
connectAttr "polySurfaceShape68.wm" "polyChipOff22.mp";
connectAttr "polySurfaceShape68.o" "polySeparate23.ip";
connectAttr "polySeparate23.out[0]" "groupParts57.ig";
connectAttr "groupId69.id" "groupParts57.gi";
connectAttr "polySeparate23.out[1]" "groupParts58.ig";
connectAttr "groupId70.id" "groupParts58.gi";
connectAttr "polyExtrudeFace69.out" "polyChipOff23.ip";
connectAttr "pCubeShape3.wm" "polyChipOff23.mp";
connectAttr "pCubeShape3.o" "polySeparate24.ip";
connectAttr "polyChipOff23.out" "groupParts59.ig";
connectAttr "groupId71.id" "groupParts59.gi";
connectAttr "polySeparate24.out[0]" "groupParts60.ig";
connectAttr "groupId73.id" "groupParts60.gi";
connectAttr "polySeparate24.out[1]" "groupParts61.ig";
connectAttr "groupId74.id" "groupParts61.gi";
connectAttr "polyExtrudeFace39.out" "polyChipOff24.ip";
connectAttr "pCubeShape68.wm" "polyChipOff24.mp";
connectAttr "pCubeShape68.o" "polySeparate25.ip";
connectAttr "polyChipOff24.out" "groupParts62.ig";
connectAttr "groupId75.id" "groupParts62.gi";
connectAttr "polySeparate25.out[0]" "groupParts63.ig";
connectAttr "groupId77.id" "groupParts63.gi";
connectAttr "polySeparate25.out[1]" "groupParts64.ig";
connectAttr "groupId78.id" "groupParts64.gi";
connectAttr "groupParts63.og" "polyChipOff25.ip";
connectAttr "polySurfaceShape75.wm" "polyChipOff25.mp";
connectAttr "polySurfaceShape76.o" "polySeparate26.ip";
connectAttr "polySeparate26.out[0]" "groupParts65.ig";
connectAttr "groupId79.id" "groupParts65.gi";
connectAttr "polySeparate26.out[1]" "groupParts66.ig";
connectAttr "groupId80.id" "groupParts66.gi";
connectAttr "polyExtrudeFace43.out" "polyChipOff26.ip";
connectAttr "pCubeShape70.wm" "polyChipOff26.mp";
connectAttr "pCubeShape70.o" "polySeparate27.ip";
connectAttr "polyChipOff26.out" "groupParts67.ig";
connectAttr "groupId81.id" "groupParts67.gi";
connectAttr "polySeparate27.out[0]" "groupParts68.ig";
connectAttr "groupId83.id" "groupParts68.gi";
connectAttr "polySeparate27.out[1]" "groupParts69.ig";
connectAttr "groupId84.id" "groupParts69.gi";
connectAttr "groupParts69.og" "polyChipOff27.ip";
connectAttr "polySurfaceShape80.wm" "polyChipOff27.mp";
connectAttr "polySurfaceShape80.o" "polySeparate28.ip";
connectAttr "polySeparate28.out[0]" "groupParts70.ig";
connectAttr "groupId85.id" "groupParts70.gi";
connectAttr "polySeparate28.out[1]" "groupParts71.ig";
connectAttr "groupId86.id" "groupParts71.gi";
connectAttr "groupParts71.og" "polyChipOff28.ip";
connectAttr "polySurfaceShape82.wm" "polyChipOff28.mp";
connectAttr "polySurfaceShape82.o" "polySeparate29.ip";
connectAttr "polySeparate29.out[0]" "groupParts72.ig";
connectAttr "groupId87.id" "groupParts72.gi";
connectAttr "polySeparate29.out[1]" "groupParts73.ig";
connectAttr "groupId88.id" "groupParts73.gi";
connectAttr "polySeparate29.out[2]" "groupParts74.ig";
connectAttr "groupId89.id" "groupParts74.gi";
connectAttr "polySurfaceShape83.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape84.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape83.wm" "polyUnite1.im[0]";
connectAttr "polySurfaceShape84.wm" "polyUnite1.im[1]";
connectAttr "polyUnite1.out" "groupParts75.ig";
connectAttr "groupId90.id" "groupParts75.gi";
connectAttr "polySurfaceShape81.o" "polyUnite2.ip[0]";
connectAttr "polySurfaceShape86.o" "polyUnite2.ip[1]";
connectAttr "polySurfaceShape81.wm" "polyUnite2.im[0]";
connectAttr "polySurfaceShape86.wm" "polyUnite2.im[1]";
connectAttr "polyUnite2.out" "groupParts76.ig";
connectAttr "groupId91.id" "groupParts76.gi";
connectAttr "groupParts76.og" "polyChipOff29.ip";
connectAttr "polySurfaceShape87.wm" "polyChipOff29.mp";
connectAttr "polySurfaceShape87.o" "polySeparate30.ip";
connectAttr "polySeparate30.out[0]" "groupParts77.ig";
connectAttr "groupId92.id" "groupParts77.gi";
connectAttr "polySeparate30.out[1]" "groupParts78.ig";
connectAttr "groupId93.id" "groupParts78.gi";
connectAttr "polySeparate30.out[2]" "groupParts79.ig";
connectAttr "groupId94.id" "groupParts79.gi";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "LedgeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "GroundShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeWallShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeWallShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeWallShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeWallShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape32.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape33.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape34.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape35.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape36.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape37.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape38.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape40.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape41.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape42.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape43.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape44.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape45.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape46.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape48.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|Ledge49|LedgeShape49.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape50.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape51.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape52.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape53.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape55.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape56.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape57.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape58.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape59.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape61.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape62.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape63.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape64.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape66.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape67.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape69.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape71.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape72.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape73.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape74.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape75.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape76.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape77.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape78.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeWallShape79.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeWallShape80.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeWallShape81.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape82.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape83.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape84.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape85.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape86.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape87.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape88.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeWallShape89.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape90.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape91.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape92.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape93.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape262.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape263.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape31.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape264.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape265.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape30.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape30.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape32.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape210.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape211.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape212.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape65.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape65.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape214.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape215.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape54.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape54.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape217.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape41.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape60.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape60.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape219.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape43.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape222.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape223.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape47.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeShape61.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeWallShape80.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeShape214.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeShape215.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__LedgeShape216.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape226.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape227.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape52.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape230.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape231.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape56.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape233.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape58.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape235.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape237.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape238.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape240.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape241.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape66.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeWallShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape67.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape68.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape245.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape246.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape247.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape248.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|pCube3|Ledge49|LedgeShape49.iog.og[0]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "WallSurfaceShape50.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape68.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape68.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape75.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape76.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape253.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape254.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape70.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape70.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape255.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape80.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape81.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape82.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape83.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape84.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape261.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape86.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape87.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape267.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape268.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape266.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
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
connectAttr "groupId77.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId78.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId79.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId80.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId81.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId82.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId83.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId84.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId85.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId86.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId87.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId88.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId89.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId90.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId91.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId92.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId93.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId94.msg" ":initialShadingGroup.gn" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of HugeBuilding2.ma
