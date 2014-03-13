//Maya ASCII 2014 scene
//Name: CommercialZoneFrozenTransformations.ma
//Last modified: Thu, Mar 13, 2014 02:48:59 PM
//Codeset: 1252
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
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".t" -type "double3" 182.29192132899254 124.22544474066845 -47.687274714388607 ;
	setAttr ".r" -type "double3" -28.19999999999682 90.799999999961898 -3.3077768687220577e-013 ;
	setAttr ".rpt" -type "double3" 5.8541916972959969e-017 -1.1998575666381109e-016 
		-4.3892264882142993e-018 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v";
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 206.86369912618557;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 26.471845494957964 -45.141833915181707 ;
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
	setAttr ".rp" -type "double3" 0 0 -1.1102230246251563e-016 ;
	setAttr ".rpt" -type "double3" 2.2589794332341524e-016 9.512285815109368e-022 2.4287527243684052e-016 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 0.86602540378443893;
	setAttr ".ow" 5.5406629003860379;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -2.2204460492503131e-016 2 -1.9239070305551741e-016 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 288.50439352785008 36.58512817720981 -62.685903887721906 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 72.191404599982064;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Ledge1";
	setAttr ".t" -type "double3" 0 4.7166795869616482 5.2000479194003839 ;
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
createNode transform -n "Ledge211";
	setAttr ".rp" -type "double3" 0 2.3888982681595894 21.785668791348961 ;
	setAttr ".sp" -type "double3" 0 2.3888982681595894 21.785668791348961 ;
createNode mesh -n "Ledge211Shape" -p "Ledge211";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
		0.5 1.0254159 34.598877 -0.5 2.1941249 34.598877 0.5 2.1941249 34.598877 -0.5 2.1941249 
		8.9724588 0.5 2.1941249 8.9724588 -0.5 1.0254159 8.9724588 0.5 1.0254159 8.9724588;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
createNode transform -n "LedgeLeftOnly7";
	setAttr ".rp" -type "double3" 0 14.471242246377733 20.677690231818147 ;
	setAttr ".sp" -type "double3" 0 14.471242246377733 20.677690231818147 ;
createNode mesh -n "LedgeLeftOnly7Shape" -p "LedgeLeftOnly7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "LedgeRightOnly11";
	setAttr ".t" -type "double3" 0 -1.0379105337350971 0 ;
	setAttr ".rp" -type "double3" 0 14.471242246377733 12.970067278487557 ;
	setAttr ".sp" -type "double3" 0 14.471242246377733 12.970067278487557 ;
createNode mesh -n "LedgeRightOnly11Shape" -p "LedgeRightOnly11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
		8.409709 0.5 13.926809 8.409709 -0.5 15.015675 8.409709 0.5 15.015675 8.409709;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 0 -4.6780425814853253 0.3237395185053682 ;
	setAttr ".s" -type "double3" 1 0.81627207291121995 0.63615238142727437 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 22.42577 14.919129 0.5 
		22.42577 14.919129 -0.5 22.15605 14.919129 0.5 22.15605 14.919129 -0.5 22.15605 -1.3500135 
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
	setAttr ".t" -type "double3" 0 -1.7988398676039488 -0.54964668205711575 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 23.271381 26.629524 
		0.5 23.271381 26.629524 -0.5 24.211029 26.629524 0.5 24.211029 26.629524 -0.5 24.211029 
		20.511919 0.5 24.211029 20.511919 -0.5 23.271381 20.511919 0.5 23.271381 20.511919;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge173";
	setAttr ".t" -type "double3" 0 0.43406167088100744 1.4247327437200423 ;
	setAttr ".rp" -type "double3" 0 23.123253257543357 32.724297496685786 ;
	setAttr ".sp" -type "double3" 0 23.123253257543357 32.724297496685786 ;
createNode mesh -n "WallLedge173Shape" -p "WallLedge173";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	setAttr ".t" -type "double3" 0 -0.74189383193557745 11.333183200246568 ;
	setAttr ".s" -type "double3" 1 0.75190231426582732 1 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 30.822866 26.165146 
		0.5 30.822866 26.165146 -0.5 30.214716 26.165146 0.5 30.214716 26.165146 -0.5 30.214716 
		5.3482218 0.5 30.214716 5.3482218 -0.5 30.822866 5.3482218 0.5 30.822866 5.3482218;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
	setAttr ".t" -type "double3" 0 0 167.02744611393797 ;
	setAttr ".rp" -type "double3" 0 38.039157867431641 29.537490844726559 ;
	setAttr ".sp" -type "double3" 0 38.039157867431641 29.537490844726559 ;
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
	setAttr ".t" -type "double3" 0 0 167.02744611393797 ;
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
	setAttr ".t" -type "double3" 0 0 167.02744611393797 ;
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
createNode transform -n "polySurface19" -p "MeterMan31";
	setAttr ".t" -type "double3" 0 0 42.558580870904152 ;
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
	setAttr ".t" -type "double3" 0 0 167.02744611393797 ;
	setAttr ".rp" -type "double3" 0 38.207096099853523 3.0856368541717529 ;
	setAttr ".sp" -type "double3" 0 38.207096099853523 3.0856368541717529 ;
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
	setAttr ".t" -type "double3" 0 0 167.02744611393797 ;
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
	setAttr ".t" -type "double3" 0 0 167.02744611393797 ;
	setAttr ".rp" -type "double3" 0 38.207096099853523 0.085193097591400146 ;
	setAttr ".sp" -type "double3" 0 38.207096099853523 0.085193097591400146 ;
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
createNode transform -n "WallLedge167";
	setAttr ".t" -type "double3" 0 -4.7300451594548107 11.113789193663848 ;
	setAttr ".rp" -type "double3" 0 50.655538659444765 3.8396042755852631 ;
	setAttr ".sp" -type "double3" 0 50.655538659444765 3.8396042755852631 ;
createNode mesh -n "WallLedge167Shape" -p "WallLedge167";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "LedgeRightOnly";
	setAttr ".t" -type "double3" 0 -0.70523581449931783 5.1826160366431893 ;
	setAttr ".rp" -type "double3" 0 79.167709111542649 11.417072883532867 ;
	setAttr ".sp" -type "double3" 0 79.167709111542649 11.417072883532867 ;
createNode mesh -n "LedgeRightOnlyShape" -p "LedgeRightOnly";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 21.871418 -4.7800932 
		0.5 21.871418 -4.7800932 -0.5 21.771692 -4.7800932 0.5 21.771692 -4.7800932 -0.5 
		21.771692 -27.824799 0.5 21.771692 -27.824799 -0.5 21.871418 -27.824799 0.5 21.871418 
		-27.824799;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
		-30.997896 0.5 52.780018 -30.997896 -0.5 53.92889 -30.997896 0.5 53.92889 -30.997896;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
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
createNode transform -n "LedgeRightOnly3";
	setAttr ".t" -type "double3" 0 -4.1044047384144591 8.8412411859238631 ;
	setAttr ".s" -type "double3" 1 1 2.7254413731998768 ;
	setAttr ".rp" -type "double3" 0 79.593516346155994 -21.74814964879705 ;
	setAttr ".sp" -type "double3" 0 79.593516346155994 -21.74814964879705 ;
createNode mesh -n "LedgeRightOnly3Shape" -p "LedgeRightOnly3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedgeLeftOnly1";
	setAttr ".t" -type "double3" 0 1.1823443732206442 -4.0065742684538002 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 1 5.194444587072498 1.4143209400769592 ;
	setAttr ".rp" -type "double3" 0 76.503683085758041 -5.2929911224915216 ;
	setAttr ".sp" -type "double3" 0 76.503683085758041 -5.2929911224915207 ;
createNode mesh -n "WallLedgeLeftOnly1Shape" -p "WallLedgeLeftOnly1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "LedgeLeftOnly3";
	setAttr ".t" -type "double3" 0 -0.69419898494451004 0 ;
	setAttr ".rp" -type "double3" 0 5.6147365982077027 -46.487475998011902 ;
	setAttr ".sp" -type "double3" 0 5.6147365982077027 -46.487475998011902 ;
createNode mesh -n "LedgeLeftOnly3Shape" -p "LedgeLeftOnly3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedgeRightOnly4";
	setAttr ".t" -type "double3" 0 0 -1.1223995418841 ;
	setAttr ".rp" -type "double3" 0 34.918500079473439 -38.188121075140259 ;
	setAttr ".sp" -type "double3" 0 34.918500079473439 -38.188121075140259 ;
createNode mesh -n "WallLedgeRightOnly4Shape" -p "WallLedgeRightOnly4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedgeLeftOnly6";
	setAttr ".rp" -type "double3" 0 42.286622184918826 -45.554002894178339 ;
	setAttr ".sp" -type "double3" 0 42.286622184918826 -45.554002894178339 ;
createNode mesh -n "WallLedgeLeftOnly6Shape" -p "WallLedgeLeftOnly6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedgeLeftOnly2";
	setAttr ".t" -type "double3" 0 0 -1.2398498859502212 ;
	setAttr ".rp" -type "double3" 0 34.918500079473439 -33.173344250161968 ;
	setAttr ".sp" -type "double3" 0 34.918500079473439 -33.173344250161968 ;
createNode mesh -n "WallLedgeLeftOnly2Shape" -p "WallLedgeLeftOnly2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Box";
	setAttr ".t" -type "double3" 0 0.032745063203506675 -1.1223995418841 ;
	setAttr ".rp" -type "double3" 0 43.317738774316936 -35.042242856137037 ;
	setAttr ".sp" -type "double3" 0 43.317738774316936 -35.042242856137037 ;
createNode mesh -n "BoxShape" -p "Box";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Box1";
	setAttr ".t" -type "double3" 0 0 -1.1223995418841 ;
	setAttr ".rp" -type "double3" 0 27.353662695115325 -35.042242856137037 ;
	setAttr ".sp" -type "double3" 0 27.353662695115325 -35.042242856137037 ;
createNode mesh -n "Box1Shape" -p "Box1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 48.137325 -29.431562 
		0.5 48.137325 -29.431562 -0.5 47.127487 -29.431562 0.5 47.127487 -29.431562 -0.5 
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
	setAttr ".t" -type "double3" 0 0.72992427303432805 -0.94955800635997178 ;
	setAttr ".s" -type "double3" 1 1 1.4489194659100619 ;
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
	setAttr ".rp" -type "double3" 1.3877787807814457e-017 52.492615678681901 -63.004094104053557 ;
	setAttr ".sp" -type "double3" 1.3877787807814457e-017 52.492615678681901 -63.004094104053557 ;
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
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0 0.026558936 0 0 0.026558936 
		0 0 0.026558936 0 0 0.026558936 0;
	setAttr -s 12 ".vt[0:11]"  -1 59.98215103 -63.92074585 1 59.98215103 -63.92074585
		 -1 60.97231674 -63.92074585 1 60.97231674 -63.92074585 -1 60.97231674 -75.4599762
		 1 60.97231674 -75.4599762 -1 59.98215103 -75.4599762 1 59.98215103 -75.4599762 -1 60.97231674 -63.92074585
		 1 60.97231674 -63.92074585 1 60.97231674 -75.4599762 -1 60.97231674 -75.4599762;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0;
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
	setAttr ".t" -type "double3" 0 0 -1.1668670250979858 ;
	setAttr ".s" -type "double3" 1 1 3.3599093063930896 ;
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
		0.5 61.756725 -69.774933 -0.5 61.336742 -69.774933 0.5 61.336742 -69.774933 -0.5 
		61.336742 -70.145622 0.5 61.336742 -70.145622 -0.5 61.756725 -70.145622 0.5 61.756725 
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
createNode transform -n "Mesh3";
	setAttr ".t" -type "double3" 0.14432304051369815 -0.67887240798967241 -13.672435707202638 ;
	setAttr ".s" -type "double3" 5.9485955076822634 1 1 ;
	setAttr ".rp" -type "double3" 1.0863297493801714 69.048954796867662 -67.261351072631783 ;
	setAttr ".sp" -type "double3" 1.0863297493801714 69.048954796867662 -67.261351072631783 ;
createNode mesh -n "Mesh3Shape" -p "Mesh3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Mesh4";
	setAttr ".t" -type "double3" 0.14432304051369815 -0.67887240798967241 -13.672435707202638 ;
	setAttr ".s" -type "double3" 5.9485955076822634 1 1 ;
	setAttr ".rp" -type "double3" 1.0863297493801714 69.048954796867662 -66.758073012734769 ;
	setAttr ".sp" -type "double3" 1.0863297493801714 69.048954796867662 -66.758073012734769 ;
createNode mesh -n "Mesh4Shape" -p "Mesh4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	setAttr ".rp" -type "double3" 0 55.078117370605469 -73.836196899414063 ;
	setAttr ".sp" -type "double3" 0 55.078117370605469 -73.836196899414063 ;
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
	setAttr ".rp" -type "double3" 0 50.599288940429688 -73.836196899414063 ;
	setAttr ".sp" -type "double3" 0 50.599288940429688 -73.836196899414063 ;
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
	setAttr ".rp" -type "double3" 0 46.338356018066406 -73.836196899414063 ;
	setAttr ".sp" -type "double3" 0 46.338356018066406 -73.836196899414063 ;
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
	setAttr ".t" -type "double3" 0 0.94427291335336605 0 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 39.872356 -73.934097 
		0.5 39.872356 -73.934097 -0.5 40.752609 -73.934097 0.5 40.752609 -73.934097 -0.5 
		40.752609 -77.551453 0.5 40.752609 -77.551453 -0.5 39.872356 -77.551453 0.5 39.872356 
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
	setAttr ".t" -type "double3" 0 0.94427291335336605 0 ;
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
createNode transform -n "LedgeRightOnly4";
	setAttr ".rp" -type "double3" 0 41.988863478697631 -47.51656426450252 ;
	setAttr ".sp" -type "double3" 0 41.988863478697631 -47.51656426450252 ;
createNode mesh -n "LedgeRightOnly4Shape" -p "LedgeRightOnly4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	setAttr ".rp" -type "double3" 0 -5.5982200881057514e-015 0 ;
	setAttr ".sp" -type "double3" 0 -5.6843418860808015e-014 0 ;
	setAttr ".spt" -type "double3" 0 5.1245198772702253e-014 0 ;
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
createNode transform -n "Box6";
	setAttr ".t" -type "double3" 0 25.744979368587323 -79.079638434109441 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
	setAttr ".rp" -type "double3" 0 -5.5982200881057514e-015 0 ;
	setAttr ".sp" -type "double3" 0 -5.6843418860808015e-014 0 ;
	setAttr ".spt" -type "double3" 0 5.1245198772702253e-014 0 ;
createNode mesh -n "BoxShape6" -p "Box6";
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
createNode transform -n "Wall";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 2.9169326854977062 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.97773608911478804 0 0 ;
	setAttr ".sp" -type "double3" 0.97773608911478804 0 0 ;
createNode mesh -n "WallShape" -p "Wall";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0.87663037 0.625 0.87663037 0.625 1 0.375 1 0.25163037 0.25
		 0.25163037 0 0.625 0.3733696 0.375 0.3733696 0.74836957 0 0.74836963 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 45.84327316 -64.840065 1 45.84327316 -64.840065
		 -1 46.83343887 -64.840065 1 46.83343887 -64.840065 1 45.84326935 -67.847435 -1 45.84326935 -67.847435
		 -1 46.83343506 -67.847435 1 46.83343506 -67.847435;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 0 2 0 1 3 0 2 6 0 3 7 0 4 1 0
		 5 0 0 4 5 0 5 6 0 6 7 0 7 4 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 2 3
		f 4 -9 6 -1 -8
		mu 0 4 4 5 6 7
		f 4 -10 7 2 4
		mu 0 4 8 9 0 3
		f 4 1 5 -11 -5
		mu 0 4 3 2 10 11
		f 4 -7 -12 -6 -4
		mu 0 4 1 12 13 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall1";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 2.9169326854977062 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.97773608911478804 0 0 ;
	setAttr ".sp" -type "double3" 0.97773608911478804 0 0 ;
createNode mesh -n "WallShape1" -p "Wall1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.375 0.41634384
		 0.625 0.41634384 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 0.83365613 0.375
		 0.83365613 0.79134381 0 0.875 0 0.875 0.25 0.79134387 0.25 0.125 0 0.20865615 0 0.20865616
		 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 0 -1.6053433 0 0 -1.6053433 
		0 0 -1.6053433 0 0 -1.6053433;
	setAttr -s 8 ".vt[0:7]"  -1 46.83343887 -82.8323288 1 46.83343887 -82.8323288
		 -1 45.84327316 -82.8323288 1 45.84327316 -82.8323288 -1 45.84326935 -71.86092377
		 -1 46.83343887 -71.86092377 1 46.83343887 -71.86092377 1 45.84326935 -71.86092377;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 0 2 0 1 3 0 2 4 0 3 7 0 5 0 0
		 4 5 0 6 1 0 5 6 0 6 7 0 7 4 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 9 8 -1 -7
		mu 0 4 0 1 2 3
		f 4 0 3 -2 -3
		mu 0 4 3 2 4 5
		f 4 1 5 11 -5
		mu 0 4 5 4 6 7
		f 4 -6 -4 -9 10
		mu 0 4 8 9 10 11
		f 4 4 7 6 2
		mu 0 4 12 13 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
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
createNode transform -n "LedgeRightOnly10";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 2.9169326854977062 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.97773608911478804 0 0 ;
	setAttr ".sp" -type "double3" 0.97773608911478804 0 0 ;
createNode mesh -n "LedgeRightOnlyShape10" -p "LedgeRightOnly10";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.24123156 0 0.25163037
		 0 0.25163037 0.25 0.24123156 0.25 0.375 0.3733696 0.625 0.3733696 0.625 0.38376844
		 0.375 0.38376844 0.74836963 0.25 0.74836957 0 0.75876838 0 0.75876844 0.25 0.375
		 0.86623156 0.625 0.86623156 0.625 0.87663037 0.375 0.87663037 0.375 0.38376844 0.375
		 0.3733696 0.625 0.3733696 0.625 0.3733696 0.375 0.3733696 0.625 0.38376844 0.625
		 0.38376844 0.375 0.38376844;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  1 46.83343506 -68.5958252 -1 46.83343506 -68.5958252
		 -1 45.84326935 -68.5958252 1 45.84326935 -68.5958252 -1 52.65020752 -67.847435 1 52.65020752 -67.847435
		 1 52.65020752 -68.5958252 -1 52.65020752 -68.5958252 -1 53.49485016 -67.847435 1 53.49485016 -67.847435
		 1 53.49485016 -68.5958252 -1 53.49485016 -68.5958252 -1 45.84326935 -67.847435 -1 46.83343506 -67.847435
		 1 46.83343506 -67.847435 1 45.84326935 -67.847435;
	setAttr -s 28 ".ed[0:27]"  13 1 1 14 0 1 0 1 1 2 12 0 1 2 0 3 15 0 2 3 0
		 3 0 0 13 4 0 14 5 0 4 5 1 0 6 0 5 6 1 1 7 0 6 7 0 4 7 1 4 8 0 5 9 0 8 9 0 6 10 0
		 9 10 0 7 11 0 10 11 0 8 11 0 12 13 0 14 15 0 15 12 0 13 14 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 3 24 0 4
		mu 0 4 0 1 2 3
		f 4 18 20 22 -24
		mu 0 4 4 5 6 7
		f 4 25 -6 7 -2
		mu 0 4 8 9 10 11
		f 4 6 5 26 -4
		mu 0 4 12 13 14 15
		f 4 -3 -8 -7 -5
		mu 0 4 16 11 13 0
		f 4 27 9 -11 -9
		mu 0 4 17 18 19 20
		f 4 1 11 -13 -10
		mu 0 4 18 21 22 19
		f 4 2 13 -15 -12
		mu 0 4 21 16 23 22
		f 4 -1 8 15 -14
		mu 0 4 16 17 20 23
		f 4 10 17 -19 -17
		mu 0 4 20 19 5 4
		f 4 12 19 -21 -18
		mu 0 4 19 22 6 5
		f 4 -16 16 23 -22
		mu 0 4 23 20 4 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall2";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 2.9169326854977062 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.97773608911478804 0 0 ;
	setAttr ".sp" -type "double3" 0.97773608911478804 0 0 ;
createNode mesh -n "WallShape2" -p "Wall2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.625 0.38376844
		 0.375 0.38376844 0.375 0.38376844 0.625 0.38376844 0.625 0.38376844 0.375 0.38376844
		 0.375 0.38376844 0.625 0.38376844;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1 52.65020752 -71.45241547 -1 52.65020752 -71.45241547
		 -1 53.49485016 -71.45241547 1 53.49485016 -71.45241547 1 52.65020752 -68.5958252
		 -1 52.65020752 -68.5958252 -1 53.49485016 -68.5958252 1 53.49485016 -68.5958252;
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
	setAttr ".rp" -type "double3" 0 52.385831832885742 -73.836196899414063 ;
	setAttr ".sp" -type "double3" 0 52.385831832885742 -73.836196899414063 ;
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
	setAttr ".rp" -type "double3" 0.9777360891147886 -17.227968747441579 -103.81015137362924 ;
	setAttr ".sp" -type "double3" 0.97773608911478815 -17.227968747441579 -103.81015137362924 ;
createNode mesh -n "LedgeShape142" -p "Ledge142";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0.40734106
		 0.625 0.40734106 0.625 0.41634384 0.375 0.41634384 0.375 0.40734106 0.625 0.40734106
		 0.625 0.41634384 0.375 0.41634384 0.375 0.41634381 0.375 0.40734106 0.625 0.41634381
		 0.625 0.40734106;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.04267842 1.334806 20.053022 
		-3.791187 1.334806 20.053022 0.04267842 1.9827209 20.700945 -3.791187 1.9827209 20.700945 
		0.04267842 0.49015564 20.897657 -3.791187 0.49015564 20.897657 0.04267842 1.1380706 
		21.54558 -3.791187 1.1380706 21.54558 -3.791187 3.0476966 19.635984 0.04267842 3.0476966 
		19.635984 -3.791187 2.3997779 18.988066 0.04267842 2.3997779 18.988066;
	setAttr -s 12 ".vt[0:11]"  1 52.65019989 -71.21297455 -1 52.65019989 -71.21297455
		 1 52.6502037 -71.86089325 -1 52.6502037 -71.86089325 1 53.49484253 -71.21296692 -1 53.49484253 -71.21296692
		 1 53.49484634 -71.86088562 -1 53.49484634 -71.86088562 -1 51.5852356 -71.86090088
		 1 51.5852356 -71.86090088 -1 51.5852356 -71.21298218 1 51.5852356 -71.21298218;
	setAttr -s 20 ".ed[0:19]"  0 1 1 0 2 1 3 2 1 1 3 1 0 4 0 1 5 0 4 5 0
		 2 6 0 4 6 0 3 7 0 7 6 0 5 7 0 8 3 0 9 2 0 10 1 0 11 0 0 10 8 0 8 9 0 9 11 0 11 10 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 -7 8 -11 -12
		mu 0 4 0 1 2 3
		f 4 -1 4 6 -6
		mu 0 4 4 5 1 0
		f 4 1 7 -9 -5
		mu 0 4 5 6 2 1
		f 4 -3 9 10 -8
		mu 0 4 6 7 3 2
		f 4 -4 5 11 -10
		mu 0 4 7 4 0 3
		f 4 -17 14 3 -13
		mu 0 4 8 9 4 7
		f 4 -18 12 2 -14
		mu 0 4 10 8 7 6
		f 4 -19 13 -2 -16
		mu 0 4 11 10 6 5
		f 4 -20 15 0 -15
		mu 0 4 9 11 5 4
		f 4 17 18 19 16
		mu 0 4 8 10 11 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LedgeLeftOnly6";
	setAttr ".t" -type "double3" 0 -17.227968747441579 -103.81015137362924 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 2.9169326854977062 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.97773608911478804 0 0 ;
	setAttr ".sp" -type "double3" 0.97773608911478804 0 0 ;
createNode mesh -n "LedgeLeftOnlyShape6" -p "LedgeLeftOnly6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.20865615 0 0.21765894
		 0 0.21765895 0.25 0.20865616 0.25 0.375 0.83365613 0.625 0.83365613 0.625 0.84265888
		 0.375 0.84265888 0.78234106 0.25 0.782341 0 0.79134381 0 0.79134387 0.25 0.625 0.40734106
		 0.375 0.40734106 0.625 0.40734106 0.375 0.40734106 0.625 0.41634384 0.625 0.41634381
		 0.375 0.41634384 0.375 0.41634381;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  1 46.83343506 -71.21300507 -1 46.83343506 -71.21300507
		 -1 45.84326935 -71.21300507 1 45.84326935 -71.21300507 -1 46.83343887 -71.86092377
		 -1 45.84326935 -71.86092377 1 45.84326935 -71.86092377 1 46.83343887 -71.86092377
		 -1 49.64631271 -71.86091614 1 49.64631271 -71.86091614 -1 49.6463089 -71.21299744
		 1 49.6463089 -71.21299744;
	setAttr -s 20 ".ed[0:19]"  5 2 0 6 3 0 0 7 1 1 4 1 0 1 1 1 2 0 2 3 0
		 3 0 0 0 11 0 1 10 0 7 9 0 4 8 0 5 4 0 6 5 0 7 6 0 4 7 0 10 8 0 8 9 0 9 11 0 11 10 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 -6 3 -13
		mu 0 4 0 1 2 3
		f 4 -14 1 -7 -1
		mu 0 4 4 5 6 7
		f 4 -8 -2 -15 -3
		mu 0 4 8 9 10 11
		f 4 5 6 7 4
		mu 0 4 2 7 9 12
		f 4 -5 8 19 -10
		mu 0 4 13 12 14 15
		f 4 2 10 18 -9
		mu 0 4 12 16 17 14
		f 4 -16 11 17 -11
		mu 0 4 16 18 19 17
		f 4 -4 9 16 -12
		mu 0 4 18 13 15 19
		f 4 -17 -20 -19 -18
		mu 0 4 19 15 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
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
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375
		 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -1 4.46878147 -62.70258713 1 4.46878147 -62.70258713
		 -1 5.63155079 -62.70256424 1 5.63155079 -62.70256424 -1 5.63154316 -71.33596802 1 5.63154316 -71.33596802
		 -1 4.46878529 -71.33595276 1 4.46878529 -71.33595276 -1 5.63154697 -72.54222107 1 5.63154697 -72.54222107
		 1 4.46878147 -72.54223633 -1 4.46878147 -72.54223633;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 1 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 1 5 7 1 6 0 0 7 1 0 4 8 0 5 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 14 16 -19 -20
		mu 0 4 6 7 8 9
		f 4 3 11 -1 -11
		mu 0 4 10 11 12 13
		f 4 -12 -10 -8 -6
		mu 0 4 1 14 15 2
		f 4 10 4 6 8
		mu 0 4 16 0 3 17
		f 4 2 13 -15 -13
		mu 0 4 5 4 7 6
		f 4 9 15 -17 -14
		mu 0 4 4 11 8 7
		f 4 -9 12 19 -18
		mu 0 4 10 5 6 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge145";
	setAttr ".t" -type "double3" 0 27.134288565478016 -39.410695381425555 ;
	setAttr ".r" -type "double3" 39.653975829009617 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode mesh -n "LedgeShape145" -p "Ledge145";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.625 0.75 0.375
		 0.75 0.375 0.75 0.625 0.75 0.625 0.75 0.375 0.75 0.375 0.75 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -13.26661587 -71.33587646 1 -13.26661587 -71.33587646
		 -1 -13.2666235 -72.54214478 1 -13.2666235 -72.54214478 1 4.46878529 -71.33595276
		 -1 4.46878529 -71.33595276 -1 4.46878147 -72.54223633 1 4.46878147 -72.54223633;
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
createNode transform -n "Wall3";
	setAttr ".t" -type "double3" 0 -29.782339473899953 50.439387328082915 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "WallShape3" -p "Wall3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -24.097147 0 0 ;
	setAttr ".pt[3]" -type "float3" -24.097147 0 0 ;
	setAttr ".pt[6]" -type "float3" -24.097147 0 0 ;
	setAttr ".pt[7]" -type "float3" -24.097147 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -1 46.556427 -82.1995163 1 46.556427 -82.1995163
		 1 48.39294815 -82.1995163 -1 48.39294815 -82.1995163 1 46.556427 -83.76360321 1 48.39294815 -83.76360321
		 -1 46.556427 -83.76360321 -1 48.39294815 -83.76360321;
	setAttr -s 12 ".ed[0:11]"  1 2 0 0 3 0 5 4 0 6 7 0 1 0 0 2 3 0 4 1 0
		 5 2 0 0 6 0 3 7 0 4 6 0 5 7 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 -5 0 5 -2
		mu 0 4 0 1 2 3
		f 4 -7 -3 7 -1
		mu 0 4 4 5 6 7
		f 4 -4 -9 1 9
		mu 0 4 8 9 10 11
		f 4 2 10 3 -12
		mu 0 4 12 13 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge131";
	setAttr ".t" -type "double3" 0 -29.782339473899953 50.439387328082915 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "WallLedgeShape131" -p "WallLedge131";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:14]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 55 ".uvst[0].uvsp[0:54]" -type "float2" 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt";
	setAttr ".pt[0]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[1]" -type "float3" 9.5367432e-007 0 0 ;
	setAttr ".pt[2]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[3]" -type "float3" 9.5367432e-007 0 0 ;
	setAttr ".pt[4]" -type "float3" 9.5367432e-007 0 0 ;
	setAttr ".pt[5]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[6]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[7]" -type "float3" 9.5367432e-007 0 0 ;
	setAttr ".pt[9]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[10]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[12]" -type "float3" 9.5367432e-007 0 0 ;
	setAttr ".pt[14]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[15]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[16]" -type "float3" -14.879371 0 0 ;
	setAttr ".pt[17]" -type "float3" 9.5367432e-007 0 0 ;
	setAttr -s 18 ".vt[0:17]"  -1 50.82007599 -82.1995163 1 50.82007599 -82.1995163
		 -1 50.82007599 -86.81689453 1 50.82007599 -86.81689453 1 49.01159668 -82.1995163
		 -1 49.01159668 -82.1995163 -1 49.01159668 -86.81689453 1 49.01159668 -86.81689453
		 1 48.39294815 -82.1995163 -1 48.39294815 -82.1995163 -1 48.39294815 -86.81689453
		 1 48.39294815 -86.81689453 1 49.01159668 -86.049530029 1 48.39294815 -83.76360321
		 -1 48.39294815 -83.76360321 -1 49.01159668 -86.049530029 -1 50.82007599 -86.049530029
		 1 50.82007599 -86.049530029;
	setAttr -s 32 ".ed[0:31]"  0 1 0 2 3 0 0 16 0 1 17 0 2 6 0 3 7 0 4 1 0
		 5 0 0 4 5 0 6 10 0 5 15 0 7 11 0 6 7 0 7 12 0 8 4 0 9 5 0 8 9 0 9 14 0 10 11 0 11 13 0
		 12 4 0 13 8 0 12 13 0 14 10 0 15 6 0 14 15 0 16 2 0 15 16 0 17 3 0 16 17 0 17 12 0
		 13 14 0;
	setAttr -s 15 -ch 60 ".fc[0:14]" -type "polyFaces" 
		f 4 29 28 -2 -27
		mu 0 4 0 1 2 3
		f 4 -9 6 -1 -8
		mu 0 4 4 5 6 7
		f 4 -25 27 26 4
		mu 0 4 8 9 10 11
		f 4 1 5 -13 -5
		mu 0 4 12 13 14 15
		f 4 30 -14 -6 -29
		mu 0 4 16 17 18 19
		f 4 -17 14 8 -16
		mu 0 4 20 21 22 23
		f 4 -24 25 24 9
		mu 0 4 24 25 26 8
		f 4 12 11 -19 -10
		mu 0 4 27 28 29 24
		f 4 -20 -12 13 22
		mu 0 4 30 31 32 33
		f 4 -22 -23 20 -15
		mu 0 4 34 35 36 37
		f 4 -26 -18 15 10
		mu 0 4 38 39 20 40
		f 4 -28 -11 7 2
		mu 0 4 41 42 43 44
		f 4 0 3 -30 -3
		mu 0 4 45 46 47 48
		f 4 -21 -31 -4 -7
		mu 0 4 49 50 51 52
		f 4 19 31 23 18
		mu 0 4 53 35 54 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LedgeRightOnly12";
	setAttr ".t" -type "double3" 0 28.115450144013273 -56.709812171187679 ;
	setAttr ".s" -type "double3" 2 0.098484929307543351 24.784200889809185 ;
createNode mesh -n "LedgeRightOnlyShape12" -p "LedgeRightOnly12";
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
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 0 -0.064962514 0 0 -0.064962514 
		0 0 -0.064962514 0 0 -0.064962514;
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
createNode transform -n "TrainTracks1";
	setAttr ".t" -type "double3" 83.002411691968419 77.261691980696327 -399.3449736398577 ;
	setAttr ".s" -type "double3" 0.12039022700312275 0.12039022700312275 0.12039022700312275 ;
	setAttr ".rp" -type "double3" -92.008393986455516 21.189561620873476 349.14345648451047 ;
	setAttr ".sp" -type "double3" -92.008393986455516 21.189561620873476 349.14345648451052 ;
	setAttr ".spt" -type "double3" 1.4210854715202004e-014 0 -5.6843418860808015e-014 ;
createNode transform -n "Ledge" -p "TrainTracks1";
	setAttr ".t" -type "double3" -17.540527451570835 -13.008696617515213 5.0843984153307957 ;
createNode mesh -n "LedgeShape" -p "|TrainTracks1|Ledge";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 13.040146 149.79857 0 13.040146 
		149.79857 0 -13.040146 149.79857 0 -13.040146 149.79857 0 -13.040146 0 0 -13.040146 
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
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 
		0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 
		0 0 62.342239 0 0 62.336342 0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 3.0957942 -13.419831 -0.084549755 
		17.267553 -13.419831 -0.084549755;
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
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 
		0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 
		0 0 62.342239 0 0 62.336342 0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 3.0957942 -13.419831 -0.084549755 
		17.267553 -13.419831 -0.084549755;
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
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 
		0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 
		0 0 62.342239 0 0 62.336342 0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 3.0957942 -13.419831 -0.084549755 
		17.267553 -13.419831 -0.084549755;
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
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 
		0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 
		0 0 62.342239 0 0 62.336342 0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 3.0957942 -13.419831 -0.084549755 
		17.267553 -13.419831 -0.084549755;
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
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 
		0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 
		0 0 62.342239 0 0 62.336342 0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 3.0957942 -13.419831 -0.084549755 
		17.267553 -13.419831 -0.084549755;
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
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 
		0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 
		0 0 62.342239 0 0 62.336342 0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 3.0957942 -13.419831 -0.084549755 
		17.267553 -13.419831 -0.084549755;
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
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 
		0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 
		0 0 62.342239 0 0 62.336342 0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 3.0957942 -13.419831 -0.084549755 
		17.267553 -13.419831 -0.084549755;
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
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 
		0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 
		0 0 62.342239 0 0 62.336342 0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 3.0957942 -13.419831 -0.084549755 
		17.267553 -13.419831 -0.084549755;
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
	setAttr -s 20 ".pt[0:19]" -type "float3"  7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 
		0 7.0858803 1.9539925e-014 0 -7.0858793 1.9539925e-014 0 7.0858803 1.9539925e-014 
		0 -7.0858793 1.9539925e-014 0 30.903444 0 0 21.771769 0 0 21.771769 0 0 30.903444 
		0 0 62.342239 0 0 62.336342 0 0 62.336342 0 0 62.342239 0 0 17.267553 -13.419831 
		-0.084549755 3.0957942 -13.419831 -0.084549755 3.0957942 -13.419831 -0.084549755 
		17.267553 -13.419831 -0.084549755;
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
	setAttr ".rp" -type "double3" 1.8659898373825503e-014 0 151.90800919943558 ;
	setAttr ".rpt" -type "double3" 84.036711363131658 0 -84.036711363132071 ;
	setAttr ".sp" -type "double3" 1.8659898373825503e-014 0 151.90800919943558 ;
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
		135.7426 2.9359298 -13.576586 1.8225421e-012 -2.9359298 -13.576586 1.8225421e-012 
		2.9359298 13.576586 1.8225421e-012 -2.9359298 13.576586 1.8225421e-012;
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
	setAttr ".rp" -type "double3" 1.8659898373825503e-014 0 151.90800919943558 ;
	setAttr ".rpt" -type "double3" 84.036711363131658 0 -84.036711363132071 ;
	setAttr ".sp" -type "double3" 1.8659898373825503e-014 0 151.90800919943558 ;
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
		135.7426 2.9359298 -13.576586 1.8225421e-012 -2.9359298 -13.576586 1.8225421e-012 
		2.9359298 13.576586 1.8225421e-012 -2.9359298 13.576586 1.8225421e-012;
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
	setAttr ".rp" -type "double3" 1.8659898373825503e-014 0 151.90800919943558 ;
	setAttr ".rpt" -type "double3" 84.036711363131658 0 -84.036711363132071 ;
	setAttr ".sp" -type "double3" 1.8659898373825503e-014 0 151.90800919943558 ;
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
		135.7426 2.9359298 -13.576586 1.8225421e-012 -2.9359298 -13.576586 1.8225421e-012 
		2.9359298 13.576586 1.8225421e-012 -2.9359298 13.576586 1.8225421e-012;
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
	setAttr ".rp" -type "double3" 1.8659898373825503e-014 0 151.90800919943558 ;
	setAttr ".rpt" -type "double3" 84.036711363131658 0 -84.036711363132071 ;
	setAttr ".sp" -type "double3" 1.8659898373825503e-014 0 151.90800919943558 ;
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
		135.7426 2.9359298 -13.576586 1.8225421e-012 -2.9359298 -13.576586 1.8225421e-012 
		2.9359298 13.576586 1.8225421e-012 -2.9359298 13.576586 1.8225421e-012;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.2434498e-013 13.040146 
		153.28029 1.2434498e-013 13.040146 153.28029 1.2434498e-013 -13.040146 153.28029 
		1.2434498e-013 -13.040146 153.28029 8.5265128e-014 -13.040146 -75.428268 8.5265128e-014 
		-13.040146 -75.428268 8.5265128e-014 13.040146 -75.428268 8.5265128e-014 13.040146 
		-75.428268;
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
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 46 ".uvst[0].uvsp[0:45]" -type "float2" 0.375 0 0.625 0 0.625
		 0.13812788 0.375 0.13812788 0.375 0.61187208 0.625 0.61187208 0.625 0.75 0.375 0.75
		 0.625 1 0.375 1 0.875 0 0.875 0.13812788 0.125 0 0.125 0.13812788 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -1 36.12131882 -82.19953918 1 36.12131882 -82.19953918
		 -1 36.12131882 -86.81689453 1 36.12131882 -86.81689453 1 43.77495575 -82.19953918
		 -1 43.77495575 -82.19953918 -1 43.77495575 -86.81689453 1 43.77495575 -86.81689453
		 -1 38.90702057 -83.88012695 -1 40.98925781 -83.88012695 -1 38.90702057 -85.13631439
		 -1 40.98925781 -85.13631439 -6.1490078 38.90702057 -83.88012695 -6.1490078 40.98925781 -83.88012695
		 -6.1490078 38.90702057 -85.13631439 -6.1490078 40.98925781 -85.13631439;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 0 5 0 1 4 0 2 0 0 3 1 0 4 5 0
		 6 2 0 5 6 0 7 3 0 6 7 0 7 4 0 0 8 0 5 9 0 8 9 0 2 10 0 10 8 0 6 11 0 11 10 0 9 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 14 12 0 11 15 0 15 14 0 13 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 3 6 -3
		mu 0 4 0 1 2 3
		f 4 10 9 -2 -8
		mu 0 4 4 5 6 7
		f 4 1 5 -1 -5
		mu 0 4 7 6 8 9
		f 4 -6 -10 11 -4
		mu 0 4 1 10 11 2
		f 4 4 2 8 7
		mu 0 4 12 0 3 13
		f 4 -7 -12 -11 -9
		mu 0 4 3 2 5 13
		f 4 2 13 -15 -13
		mu 0 4 14 15 16 17
		f 4 4 12 -17 -16
		mu 0 4 18 19 20 21
		f 4 7 15 -19 -18
		mu 0 4 22 23 24 25
		f 4 8 17 -20 -14
		mu 0 4 26 27 28 29
		f 4 14 21 -23 -21
		mu 0 4 30 31 32 33
		f 4 16 20 -25 -24
		mu 0 4 34 35 36 37
		f 4 18 23 -27 -26
		mu 0 4 38 39 40 41
		f 4 19 25 -28 -22
		mu 0 4 42 43 44 45;
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
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.25 0 0.375 0.875 0.25 0.25 0.375 0.375 0.125 0 0.25
		 0 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
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
createNode transform -n "Nada4";
	setAttr ".t" -type "double3" -9.4894969086914891 24.526366776838664 -15.958631091978084 ;
	setAttr ".r" -type "double3" 34.057260741030916 0 0 ;
	setAttr ".s" -type "double3" 0.53988932001208634 0.94219629331696098 1.2586186495605278 ;
	setAttr ".rp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "Nada4Shape" -p "Nada4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedge132";
	setAttr ".t" -type "double3" 0 3.7603647129281792 80.835014203788006 ;
	setAttr ".s" -type "double3" 3.1843889069612485 1.7239242361205167 1.7239242361205167 ;
	setAttr ".rp" -type "double3" 1.0351582050972954 81.207015500585655 -138.89197838003042 ;
	setAttr ".sp" -type "double3" 1.0351582050972954 47.105907440185547 -80.567333221435547 ;
	setAttr ".spt" -type "double3" 0 34.101108060400264 -58.324645158595125 ;
createNode mesh -n "WallLedgeShape132" -p "WallLedge132";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.17389631
		 0.625 0.17389631 0.625 0.21194816 0.375 0.21194816 0.375 0.17389631 0.625 0.17389631
		 0.625 0.21194816 0.375 0.21194816;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 0 0.70166945 0 0 0.70166945 
		0 0 0.70166945 0 0 0.70166945;
	setAttr -s 8 ".vt[0:7]"  1 45.7568779 -79.63679504 -1 45.7568779 -79.63679504
		 1 48.45493698 -79.63679504 -1 48.45493698 -79.63679504 -1 45.7568779 -82.19953918
		 1 45.7568779 -82.19953918 1 48.45493698 -82.19953918 -1 48.45493698 -82.19953918;
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
createNode transform -n "pPlane1";
	setAttr ".s" -type "double3" -0.78501225796279794 1 1 ;
	setAttr ".rp" -type "double3" -11.497882842330608 64.073423087596893 -68.757925033569336 ;
	setAttr ".sp" -type "double3" -11.497892379760742 64.073423087596893 -68.757925033569336 ;
	setAttr ".spt" -type "double3" 9.5374301345430013e-006 0 0 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.019230785 0.98076922
		 0.019230785 0.019230751 0.98076934 0.019230751 0.98076934 0.98076922;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -11.49789047 129.08984375 -1.53522873 -11.49789429 -0.94299757 -1.53522873
		 -11.49789047 129.08984375 -135.98062134 -11.49789429 -0.94299757 -135.98062134;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Nada1";
	setAttr ".t" -type "double3" -4.9979196010017244 22.112159733798535 -10.068822530899196 ;
	setAttr ".r" -type "double3" -40.81382696375244 0 0 ;
	setAttr ".s" -type "double3" 0.7974507360659413 0.7974507360659413 0.7974507360659413 ;
	setAttr ".rp" -type "double3" 0 21.739081092482859 -37.681008737088519 ;
	setAttr ".rpt" -type "double3" 0 0.15160004180689768 0.43557912734707038 ;
	setAttr ".sp" -type "double3" 0 21.571138381958008 -37.684576034545898 ;
	setAttr ".spt" -type "double3" 0 0.16794271052485055 0.0035672974573834892 ;
createNode mesh -n "Nada1Shape" -p "Nada1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Nada2";
	setAttr ".t" -type "double3" -4.9979196010017244 23.254953155604145 -9.1233075817320497 ;
	setAttr ".r" -type "double3" -114.1591329794994 0 0 ;
	setAttr ".s" -type "double3" 0.7974507360659413 0.7974507360659413 0.7974507360659413 ;
	setAttr ".rp" -type "double3" 0 21.739081092482859 -37.681008737088519 ;
	setAttr ".rpt" -type "double3" 0 0.15160004180689768 0.43557912734707038 ;
	setAttr ".sp" -type "double3" 0 21.571138381958008 -37.684576034545898 ;
	setAttr ".spt" -type "double3" 0 0.16794271052485055 0.0035672974573834892 ;
createNode mesh -n "Nada2Shape" -p "Nada2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Nada";
	setAttr ".t" -type "double3" -4.9979196010017244 22.19157694713623 -10.449685541638154 ;
	setAttr ".r" -type "double3" -139.37547762941088 -0.41711736695649032 -0.96853565388400398 ;
	setAttr ".s" -type "double3" 0.7974507360659413 0.7974507360659413 0.7974507360659413 ;
	setAttr ".rp" -type "double3" 0 21.739081092482859 -37.681008737088519 ;
	setAttr ".rpt" -type "double3" 0 0.15160004180689768 0.43557912734707038 ;
	setAttr ".sp" -type "double3" 0 21.571138381958008 -37.684576034545898 ;
	setAttr ".spt" -type "double3" 0 0.16794271052485055 0.0035672974573834892 ;
createNode mesh -n "NadaShape" -p "Nada";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Nothing7";
	setAttr ".t" -type "double3" -1.6826956597179066 22.201342532781112 -3.2121416604477706 ;
	setAttr ".s" -type "double3" 0.54823889913369139 0.22341582297422036 0.79544900640634142 ;
	setAttr ".rp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
	setAttr ".sp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
createNode mesh -n "Nothing7Shape" -p "Nothing7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Nothing8";
	setAttr ".t" -type "double3" -1.6826956597179066 19.80842909072588 -3.2121416604477706 ;
	setAttr ".s" -type "double3" 0.54823889913369139 0.22341582297422036 0.79544900640634142 ;
	setAttr ".rp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
	setAttr ".sp" -type "double3" 0 38.264493605906395 -52.706746209230538 ;
createNode mesh -n "Nothing8Shape" -p "Nothing8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.15187497
		 0.625 0.15178947 0.125 0.1476756 0.375 0.60232443 0.625 0.60240996 0.875 0.1475901;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[12:15]" -type "float3"  0.43342453 -0.015505043 0.87989539 
		0.43342453 -0.015505043 0.87989539 0.43342453 -0.015505043 0.87989539 0.43342453 
		-0.015505043 0.87989539;
	setAttr -s 16 ".vt[0:15]"  -0.99999988 28.2678566 -51.9785614 1.000003814697 28.2678566 -51.9785614
		 -0.99999988 32.42020798 -51.9785614 1.000003814697 32.42020798 -51.9785614 -0.99999988 32.42020798 -53.67921448
		 1.000003814697 32.42020798 -53.67921448 -0.99999988 28.2678566 -53.67921448 1.000003814697 28.2678566 -53.67921448
		 -0.99999988 32.97507858 -50.43785095 1.000003814697 32.97507858 -50.43785095 1.000003814697 32.97507858 -55.21990967
		 -0.99999988 32.97507858 -55.21990967 -0.99999988 30.79040718 -51.9785614 1.000003814697 30.78898811 -51.9785614
		 -0.99999988 30.72065926 -53.67921448 1.000003814697 30.71924019 -53.67922974;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 1 4 5 1 6 7 0 0 12 0 1 13 0 2 4 1
		 3 5 1 4 14 0 5 15 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 12 2 0 13 3 0 14 6 0 15 7 0 13 12 1 15 14 1 15 13 1 12 14 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 24 -5
		mu 0 4 0 1 19 18
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 2 9 25 -9
		mu 0 4 4 5 22 21
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -24 26 -6
		mu 0 4 1 10 23 19
		f 4 10 4 27 22
		mu 0 4 12 0 18 20
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 -25 21 -2 -21
		mu 0 4 18 19 3 2
		f 4 -26 23 -4 -23
		mu 0 4 21 22 7 6
		f 4 -27 -10 -8 -22
		mu 0 4 19 23 11 3
		f 4 -28 20 6 8
		mu 0 4 20 18 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "Nada6";
	setAttr ".t" -type "double3" 0.57359635344850801 3.0305400837123342 -54.008992667527934 ;
	setAttr ".s" -type "double3" 0.26661785275270022 1 0.36922278082232696 ;
	setAttr ".rp" -type "double3" 0 31.273520463341452 -19.505628848879699 ;
	setAttr ".sp" -type "double3" 0 31.273520463341452 -52.828887766451111 ;
	setAttr ".spt" -type "double3" 0 0 33.323258917571415 ;
createNode mesh -n "Nada6Shape" -p "Nada6";
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
createNode mesh -n "polySurfaceShape60" -p "Nada6";
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
createNode transform -n "Nada7";
	setAttr ".t" -type "double3" 0.57359635344850801 3.0305400837123342 -59.008992667527934 ;
	setAttr ".s" -type "double3" 0.26661785275270022 1 0.3692227808223269 ;
	setAttr ".rp" -type "double3" 0 31.273520463341452 -19.505628848879692 ;
	setAttr ".sp" -type "double3" 0 31.273520463341452 -52.828887766451111 ;
	setAttr ".spt" -type "double3" 0 0 33.323258917571422 ;
createNode mesh -n "Nada7Shape" -p "Nada7";
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
createNode mesh -n "polySurfaceShape60" -p "Nada7";
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
createNode transform -n "MeshLedge";
	setAttr ".t" -type "double3" -3.7427259843890841 30.418443553042817 -87.695953316717407 ;
	setAttr ".s" -type "double3" 9.2855246170102497 0.25020103167842483 129.45678893207631 ;
	setAttr ".rp" -type "double3" 3.2222042261947168 5.8163627115106875 11.665895755719424 ;
	setAttr ".sp" -type "double3" 0.3470136970281601 23.246757507324219 0.090114206075668335 ;
	setAttr ".spt" -type "double3" 2.8751905291665567 -17.43039479581353 11.575781549643755 ;
createNode mesh -n "MeshLedgeShape" -p "MeshLedge";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:6]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.625 0.36266017
		 0.625 0.37895691 0.625 0.37910464 0.625 0.36234629 0.5360043 0.37902975 0.56730747
		 0.36183923 0.625 0.35833612 0.625 0.3583405 0.62047666 0.35836884 0.54850686 0.37888181
		 0.56664252 0.36214727 0.62011003 0.35836703;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" -9.3132257e-010 0 2.0372681e-010 ;
	setAttr ".pt[5]" -type "float3" -9.3132257e-010 0 2.0372681e-010 ;
	setAttr ".pt[6]" -type "float3" -9.3132257e-010 0 2.0372681e-010 ;
	setAttr ".pt[8]" -type "float3" -9.3132257e-010 0 2.0372681e-010 ;
	setAttr -s 12 ".vt[0:11]"  0.49999988 23.15801239 0.12998688 0.49999988 19.70519257 0.12848711
		 0.49999988 23.15801239 0.049894512 0.49999988 19.70519257 0.050600469 0.19480537 24.45035553 0.050573289
		 0.26922986 23.9957962 0.1303339 0.28309104 26.78832245 0.1289553 0.28309104 23.33550262 0.12897432
		 0.26905254 26.78832245 0.1290198 0.19402751 20.81595612 0.051205277 0.26657003 20.55261993 0.12887669
		 0.26777369 23.33550262 0.12904298;
	setAttr -s 18 ".ed[0:17]"  0 2 0 1 3 0 1 10 1 0 1 1 3 9 1 2 3 0 6 0 0
		 7 1 0 5 0 1 4 2 1 4 5 0 6 7 0 5 8 0 8 6 0 9 4 0 9 10 0 10 11 0 7 11 0;
	setAttr -s 7 -ch 28 ".fc[0:6]" -type "polyFaces" 
		f 4 1 -6 -1 3
		mu 0 4 0 1 2 3
		f 4 0 -10 10 8
		mu 0 4 3 2 4 5
		f 4 7 -4 -7 11
		mu 0 4 6 0 3 7
		f 4 6 -9 12 13
		mu 0 4 7 3 5 8
		f 4 4 14 9 5
		mu 0 4 1 9 4 2
		f 4 -16 -5 -2 2
		mu 0 4 10 9 1 0
		f 4 -17 -3 -8 17
		mu 0 4 11 10 0 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "MeshLedge1";
	setAttr ".t" -type "double3" -3.7427259843890841 30.418443553042817 -87.695953316717407 ;
	setAttr ".s" -type "double3" 9.2855246170102497 0.25020103167842483 129.45678893207631 ;
	setAttr ".rp" -type "double3" 3.2739812072813086 6.1666846241669973 25.010049428995433 ;
	setAttr ".sp" -type "double3" 0.35258979350328445 24.646919250488281 0.193192258477211 ;
	setAttr ".spt" -type "double3" 2.9213914137780241 -18.480234626321284 24.816857170518222 ;
createNode mesh -n "MeshLedge1Shape" -p "MeshLedge1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.35000002
		 0.625 0.35000002 0.625 0.35348043 0.625 0.35350934 0.61867118 0.3534902 0.52538091
		 0.35000002 0.625 0.35000002 0.625 0.35000002 0.55351388 0.35000002 0.55709314 0.35000002
		 0.625 0.35000002 0.625 0.35000002 0.62256527 0.35347098 0.55129492 0.35000002 0.55279195
		 0.35000002 0.55201685 0.35000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  0.49999988 26.78832245 0.17463738 0.49999988 23.33550262 0.17463738
		 0.49999988 26.78832245 0.21020025 0.49999988 23.33550262 0.21020025 0.49999988 26.78832245 0.21737382
		 0.49999988 23.33550262 0.21737382 0.2391697 22.50551605 0.16929138 0.2391697 25.95833588 0.16916859
		 0.22605249 25.97934723 0.1690107 0.22238435 26.78832245 0.17463738 0.21405575 23.33550262 0.21020028
		 0.22837251 23.33550262 0.17463738 0.231971 22.51360321 0.1692394 0.20517971 26.78832245 0.21737382
		 0.21116789 23.33550262 0.21737382 0.20806758 26.78832245 0.21020022;
	setAttr -s 24 ".ed[0:23]"  0 9 1 0 7 0 0 1 1 1 11 1 1 6 0 0 2 0 2 15 0
		 1 3 0 2 3 0 3 10 0 2 4 0 4 13 0 3 5 0 4 5 0 5 14 0 7 6 0 8 7 0 8 9 0 10 11 0 12 11 0
		 6 12 0 14 13 0 15 9 0 13 15 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 2 4 -16 -2
		mu 0 4 0 1 2 3
		f 4 1 -17 17 -1
		mu 0 4 0 3 4 5
		f 4 5 8 -8 -3
		mu 0 4 0 6 7 1
		f 4 7 9 18 -4
		mu 0 4 1 7 8 9
		f 4 10 13 -13 -9
		mu 0 4 6 10 11 7
		f 4 -20 -21 -5 3
		mu 0 4 9 12 2 1
		f 4 -22 -15 -14 11
		mu 0 4 13 14 11 10
		f 4 -23 -7 -6 0
		mu 0 4 5 15 6 0
		f 4 -24 -12 -11 6
		mu 0 4 15 13 10 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "MeshLedge2";
	setAttr ".t" -type "double3" -3.7427259843890841 30.418443553042817 -87.695953316717407 ;
	setAttr ".s" -type "double3" 9.2855246170102497 0.25020103167842483 129.45678893207631 ;
createNode mesh -n "MeshLedge2Shape" -p "MeshLedge2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.35000002
		 0.625 0.35000002 0.52570176 0.35000002 0.625 0.35000002 0.625 0.35000002 0.625 0.35000002
		 0.625 0.36426398 0.8125 0.18234539 0 0 0 0.37503293 0.91888011 0.64625019 0 0 0 0.37503293
		 0.28261301 0 0.5234071 0.36337107 0.55719602 0.35000005;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".vt[0:10]"  0.49999988 5.69490814 0.19480285 0.49999988 1 0.11218339
		 0.49999988 5.69490814 0.11399788 0.49999988 1 0.19480285 0.23899978 0.54283905 0.19515115
		 0.22327845 1 0.18679321 0.24762404 5.69490814 0.1993058 0.22410378 0.87439728 0.18724009
		 0.082294255 0.8099823 0.11218339 0.093628615 5.69490814 0.1177938 0.22878423 5.69490814 0.18933359;
	setAttr -s 18 ".ed[0:17]"  3 5 0 3 1 0 3 0 1 0 2 0 0 10 1 3 4 0 0 6 0
		 1 2 0 3 7 0 1 8 0 9 2 1 4 5 0 6 4 0 7 8 0 7 4 0 10 9 0 6 10 0 9 8 0;
	setAttr -s 8 -ch 29 ".fc[0:7]" -type "polyFaces" 
		f 3 5 11 -1
		mu 0 3 0 1 2
		f 4 6 12 -6 2
		mu 0 4 3 4 5 0
		f 4 -4 -3 1 7
		mu 0 4 6 3 0 7
		f 4 8 13 -10 -2
		mu 0 4 8 9 10 7
		f 3 8 14 -6
		mu 0 3 11 12 13
		f 4 -16 -5 3 -11
		mu 0 4 14 15 3 6
		f 3 -17 -7 4
		mu 0 3 15 4 3
		f 4 -18 10 -8 9
		mu 0 4 10 14 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface35";
	setAttr ".t" -type "double3" -3.7427259843890841 30.418443553042817 -87.695953316717407 ;
	setAttr ".s" -type "double3" 9.2855246170102497 0.25020103167842483 129.45678893207631 ;
createNode mesh -n "polySurfaceShape65" -p "polySurface35";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 3 ".uvst[0].uvsp[0:2]" -type "float2" 0.55481827 0.35000002
		 0.625 0.35000002 0.55558932 0.35000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".vt[0:2]"  0.21927303 23.89484406 0.21020028 0.22378629 17.72484589 0.21020028
		 0.21350841 23.65114594 0.21020028;
	setAttr -s 3 ".ed[0:2]"  1 0 0 1 2 0 2 0 0;
	setAttr -ch 3 ".fc[0]" -type "polyFaces" 
		f 3 -1 1 2
		mu 0 3 0 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface38";
	setAttr ".t" -type "double3" -3.7427259843890841 30.418443553042817 -87.695953316717407 ;
	setAttr ".s" -type "double3" 9.2855246170102497 0.25020103167842483 129.45678893207631 ;
createNode mesh -n "polySurfaceShape68" -p "polySurface38";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:64]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0.375 0.35000002
		 0.625 0.40000001 0.375 0.40000001 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002
		 0.625 0.40000001 0.375 0.40000001 0.375 0.35000002 0.375 0.35000002 0.625 0.35000002
		 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002 0.625 0.35000002
		 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002
		 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002
		 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002 0 0 1 0 1 1 0
		 1 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002
		 0.375 0.35000002 0.375 0.36014906 0.375 0.36249352 0.375 0.36206675 0.375 0.36046293
		 0.375 0.36014906 0.58829439 0.35000002 1 1 0 1 0.375 0.37893367 0.375 0.37871149
		 0.375 0.37889421 0.625 0.35350934 0.375 0.35283342 0.37500003 0.35261774 0.625 0.35348043
		 0.375 0.35251027 0.375 0.35275358 0.625 0.35553169 0.375 0.35531276 0.37500003 0.35739207
		 0.625 0.35581005 0.375 0.35549581 0.375 0.35526329 0.625 0.3583405 0.375 0.35944057
		 0.375 0.35940829 0.625 0.35833612 0.375 0.35991517 0.375 0.35990816 0.625 0.35000002
		 0.49536198 0.35000002 0.625 0.35000002 0.61239809 0.34999999 0.58284408 0.35000002
		 0.625 0.35000002 0.55719602 0.35000005 0.625 0.35000002 0.5234071 0.36337107 0 0.37503293
		 0.91888011 0.64625019 0.52538091 0.35000002 0.55709314 0.35000002 0.55201685 0.35000002
		 0.55351388 0.35000002 0.55129492 0.35000002 0.55279195 0.35000002 0.625 0.35000002
		 0.54624283 0.35000002 0.62256527 0.35347098 0.61867118 0.3534902 0.55327141 0.34999999
		 0.55558932 0.35000002 0.48610038 0.40000001 0.52790439 0.39999998 0.56664252 0.36214727
		 0.56730747 0.36183923 0.54850686 0.37888181 0.5360043 0.37902975 0.62011003 0.35836703
		 0.62047666 0.35836884 0 0 1 0 1 1 0 1 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002
		 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002
		 0.375 0.35000002 0.375 0.35000002 0.375 0.35000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[80]" -type "float3"  -0.035941601 0 0;
	setAttr -s 96 ".vt[0:95]"  -0.19669288 26.78832245 0.17463815 0.49999988 26.78832245 -0.037925124
		 -0.19669288 26.78832245 -0.037925124 -0.19669288 1 0.17463815 -0.49999946 5.69490814 0.17463815
		 -0.49999946 23.33550262 0.17463815 0.49999988 23.33550262 -0.037925124 -0.49999946 23.33550262 -0.037925124
		 -0.76378143 1 0.21020064 -0.49999946 5.69490814 0.21020064 0.14225605 5.69490814 0.21020064
		 -0.49999946 26.78832245 0.21020064 -0.49999946 23.33550262 0.21020064 -0.76378143 1 0.21737459
		 -0.49999946 5.69490814 0.21737459 0.15265551 5.69490814 0.21737459 -0.49999946 26.78832245 0.21737459
		 -0.49999946 23.33550262 0.21737459 -1.99051201 1 0.17463815 -1.99051201 5.69490814 0.17463815
		 -1.99051201 5.69490814 0.21020064 -1.99051201 1 0.21020064 -1.99051201 26.78832245 0.17463815
		 -1.99051201 23.33550262 0.17463815 -1.99051201 26.78832245 0.21020064 -1.99051201 23.33550262 0.21020064
		 -1.99051201 26.78832245 0.21737459 -1.99051201 23.33550262 0.21737459 -1.98211277 1 0.17463815
		 -1.98211277 26.78832245 0.17463815 -0.49999946 23.89484406 0.21020064 -0.49999946 23.89484406 0.21737459
		 -1.99051201 23.89484406 0.21737459 -1.99051201 23.89484406 0.21020064 -0.19669306 26.78832245 0.13149071
		 -0.19669306 1.000007629395 0.12152368 -0.49999946 5.69490814 0.12333977 -0.49999946 23.33550262 0.13015628
		 -0.49999946 26.78832245 0.13149071 -0.23565847 0.66509247 0.17463815 -0.23622644 0.66508484 0.11218429
		 -0.19669294 26.78832245 0.051634312 -0.49999946 23.33550262 0.052577317 -0.35732955 26.78832245 0.05180192
		 0.2391697 25.95833588 0.16916937 -0.19669294 26.78832245 0.16259271 -0.32748324 1.000007629395 0.16350955
		 0.2391697 22.50551605 0.16929138 -0.4999994 23.33550262 0.16396523 -0.27898383 26.78832245 0.1629321
		 0.3092632 23.11057281 0.15725207 -0.19669294 26.78832245 0.15205109 -0.19669306 1.000015258789 0.14321131
		 0.3092632 19.65775299 0.15606844 -0.4999994 23.33550262 0.15127403 -0.35398793 26.78832245 0.15226126
		 0.28309104 26.78832245 0.1289553 -0.19669306 26.78832245 0.13450277 -0.19669306 1.000015258789 0.13464111
		 0.28309104 23.33550262 0.12897497 -0.49999946 23.33550262 0.13248491 -0.49279964 26.78832245 0.13251621
		 0.10542753 5.69490814 0.2018438 -0.018551826 5.69490814 0.21020064 0.16570306 16.32286835 0.21020064
		 0.055020005 5.69490051 0.21020067 -0.028240889 -1.50023651 0.21191269 0.10542753 5.69490814 0.20816538
		 -0.030995399 13.31374359 0.21020064 0.22878423 5.69490814 0.18933436 0.24762404 5.69490814 0.19930667
		 0.093628615 5.69490814 0.11779469 0.22410378 0.87439728 0.18724063 0.082294255 0.8099823 0.11218429
		 0.22238435 26.78832245 0.17463815 0.22837251 23.33550262 0.17463815 0.20806758 26.78832245 0.21020061
		 0.21405575 23.33550262 0.21020067 0.20517971 26.78832245 0.21737459 0.21116789 23.33550262 0.21737459
		 0.23499665 9.59575653 0.21737459 0.2101979 23.89484406 0.21737459 0.231971 22.51360321 0.1692394
		 0.22605249 25.97934723 0.1690107 0.21308574 23.8948288 0.21020067 0.21350841 23.65114594 0.21020064
		 0.11291841 26.78832245 -0.037925124 0.11161783 23.33550262 -0.037925124 0.26657003 20.55261993 0.12887669
		 0.26922986 23.99596405 0.1303339 0.19402751 20.81595612 0.051205277 0.19480537 24.45052338 0.050573945
		 0.26777369 23.33550262 0.12904364 0.26905254 26.78832245 0.1290198 -0.76378143 24.81813812 0.21737459
		 -0.49999946 24.79125214 0.21737459;
	setAttr -s 169 ".ed";
	setAttr ".ed[0:165]"  3 0 0 1 86 0 0 45 0 3 46 0 3 4 0 4 36 0 0 5 0 1 6 0
		 2 7 0 6 87 0 5 48 0 0 49 0 3 8 1 4 9 1 10 65 0 0 11 1 5 12 1 13 14 0 10 15 1 15 14 1
		 66 15 0 11 16 1 12 17 0 16 17 1 3 18 0 4 19 0 18 19 0 9 20 0 19 20 0 8 21 0 21 20 0
		 18 21 0 0 22 0 5 23 0 22 23 0 11 24 1 22 24 0 12 25 1 24 25 0 23 25 0 16 26 0 24 26 0
		 17 27 0 26 27 0 25 27 0 3 28 0 0 29 0 28 29 0 10 64 0 9 30 1 15 80 1 14 31 0 30 31 0
		 31 32 0 20 33 0 33 32 0 30 33 0 34 41 0 37 42 0 38 43 0 35 34 0 36 71 1 35 36 0 34 37 1
		 38 89 1 39 40 0 41 42 0 43 91 1 44 50 0 45 51 0 46 52 0 47 53 0 48 54 0 49 55 0 47 82 0
		 44 47 0 49 83 1 46 45 1 45 48 1 50 56 0 51 57 0 52 58 0 53 59 0 54 60 0 55 61 0 52 51 1
		 51 54 1 53 54 1 50 53 1 55 50 1 57 34 0 58 35 0 60 37 0 61 38 0 58 57 1 57 60 1 59 92 0
		 56 59 0 61 93 1 62 67 0 63 9 0 62 63 1 63 68 1 65 63 0 66 13 1 67 10 0 68 64 0 68 85 0
		 67 65 0 68 65 1 42 43 0 36 40 0 69 4 1 70 62 0 72 39 1 73 40 0 69 71 0 70 69 0 72 73 0
		 71 73 0 74 0 1 75 5 1 76 11 0 77 12 0 78 16 0 79 17 0 81 31 0 82 48 1 83 44 0 84 30 0
		 82 75 0 79 78 0 83 74 0 76 74 0 77 75 0 78 76 0 84 85 0 80 81 0 86 2 0 87 7 0 88 37 1
		 90 42 1 92 60 1 93 56 0 86 87 1 90 88 0 91 89 0 88 92 0 89 93 0 90 91 0 3 66 1 8 13 0
		 72 66 1 39 3 0 13 94 0 14 95 0 94 95 0 62 66 1 70 72 0 10 62 0 67 10 0 62 67 0 64 81 0
		 10 80 0 85 81 0 78 81 0;
	setAttr ".ed[166:168]" 76 85 0 10 80 0 15 15 0;
	setAttr -s 65 -ch 270 ".fc[0:64]" -type "polyFaces" 
		f 4 10 -128 130 121
		mu 0 4 5 55 88 81
		f 4 -113 116 -62 -6
		mu 0 4 4 75 77 42
		f 7 3 70 81 91 62 -6 -5
		mu 0 7 3 53 59 65 41 42 4
		f 4 20 19 -18 -105
		mu 0 4 73 15 14 13
		f 4 23 -126 131 124
		mu 0 4 16 17 85 84
		f 4 1 144 -10 -8
		mu 0 4 1 92 93 6
		f 4 31 30 -29 -27
		mu 0 4 18 21 20 19
		f 6 13 -101 -102 -114 117 112
		mu 0 6 4 9 70 69 76 75
		f 4 15 -123 133 120
		mu 0 4 0 11 82 80
		f 4 39 -39 -37 34
		mu 0 4 22 25 24 23
		f 4 21 -125 135 122
		mu 0 4 11 16 84 82
		f 4 44 -44 -42 38
		mu 0 4 25 29 28 24
		f 4 24 26 -26 -5
		mu 0 4 3 18 19 4
		f 4 25 28 -28 -14
		mu 0 4 4 19 20 9
		f 4 29 -32 -25 12
		mu 0 4 8 21 18 3
		f 4 56 55 -54 -53
		mu 0 4 39 38 37 36
		f 4 33 -35 -33 6
		mu 0 4 104 105 26 106
		f 4 32 36 -36 -16
		mu 0 4 107 26 27 108
		f 4 37 -40 -34 16
		mu 0 4 109 110 111 112
		f 4 35 41 -41 -22
		mu 0 4 11 24 28 16
		f 4 40 43 -43 -24
		mu 0 4 16 28 29 17
		f 4 42 -45 -38 22
		mu 0 4 17 29 25 12
		f 4 46 -48 -46 0
		mu 0 4 30 33 32 31
		f 6 49 -130 136 -108 -103 100
		mu 0 6 9 34 90 91 45 70
		f 5 50 137 126 -52 -20
		mu 0 5 15 86 87 35 14
		f 4 54 -57 -50 27
		mu 0 4 113 38 39 114
		f 4 58 -142 145 140
		mu 0 4 43 49 96 94
		f 4 -91 -95 91 60
		mu 0 4 40 64 65 41
		f 4 -93 -96 90 63
		mu 0 4 43 67 64 40
		f 4 -59 -64 57 66
		mu 0 4 49 43 40 48
		f 5 72 -88 -72 74 127
		mu 0 5 55 61 60 54 88
		f 4 71 -89 -69 75
		mu 0 4 54 60 57 51
		f 5 68 -90 -74 76 128
		mu 0 5 51 57 62 56 89
		f 4 -3 -1 3 77
		mu 0 4 52 0 3 53
		f 4 -11 -7 2 78
		mu 0 4 55 5 0 52
		f 4 -70 -78 70 85
		mu 0 4 58 52 53 59
		f 4 -73 -79 69 86
		mu 0 4 61 55 52 58
		f 5 83 -143 -97 -83 87
		mu 0 5 61 67 98 66 60
		f 4 82 -98 -80 88
		mu 0 4 60 66 63 57
		f 5 79 -144 -99 -85 89
		mu 0 5 57 63 99 68 62
		f 4 -81 -86 81 94
		mu 0 4 64 58 59 65
		f 4 -84 -87 80 95
		mu 0 4 67 61 58 64
		f 4 92 -141 147 142
		mu 0 4 67 43 94 98
		f 4 -104 -109 -100 101
		mu 0 4 70 72 74 69
		f 4 -49 14 -110 106
		mu 0 4 71 10 72 45
		f 3 -15 -106 108
		mu 0 3 72 10 74
		f 3 103 102 109
		mu 0 3 72 70 45
		f 4 61 119 115 -112
		mu 0 4 42 77 79 46
		f 4 -119 114 65 -116
		mu 0 4 79 78 47 46
		f 4 -133 -77 -12 -121
		mu 0 4 80 89 56 0
		f 4 -135 123 -17 -122
		mu 0 4 81 83 12 5
		f 4 -145 138 8 -140
		mu 0 4 93 92 2 7
		f 4 -147 -68 -60 64
		mu 0 4 95 97 50 44
		f 4 -149 -65 -94 98
		mu 0 4 99 95 44 68
		f 4 -150 141 110 67
		mu 0 4 97 96 49 50
		f 4 -13 150 104 -152
		mu 0 4 8 3 73 13
		f 4 -115 152 -151 -154
		mu 0 4 47 78 73 3
		f 4 17 155 -157 -155
		mu 0 4 100 101 102 103
		f 4 113 157 -153 -159
		mu 0 4 76 69 73 78
		f 4 18 -21 -158 -160
		mu 0 4 10 15 73 69
		f 4 161 105 -161 -100
		mu 0 4 69 74 10 74
		f 4 48 162 -138 -164
		mu 0 4 10 71 87 86
		f 4 107 164 -163 -107
		mu 0 4 45 91 87 71
		f 4 -136 165 -165 -167
		mu 0 4 82 84 87 91
		f 4 -19 167 -51 -169
		mu 0 4 15 10 86 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Nada5";
	setAttr ".t" -type "double3" -9.4894969086914891 26.911268387222513 -15.958631091978084 ;
	setAttr ".r" -type "double3" 34.057260741030916 0 0 ;
	setAttr ".s" -type "double3" 0.53988932001208634 0.94219629331696098 1.2586186495605278 ;
	setAttr ".rp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "Nada5Shape" -p "Nada5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Nada3";
	setAttr ".t" -type "double3" -9.4894969086914891 22.487660561510516 -16.843352657120484 ;
	setAttr ".r" -type "double3" 34.057260741030916 0 0 ;
	setAttr ".s" -type "double3" 0.53988932001208634 0.94219629331696098 1.6540338339014715 ;
	setAttr ".rp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "Nada3Shape" -p "Nada3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "nothing1";
	setAttr ".t" -type "double3" -5.1941385529139108 37.517567505013055 -16.935317326828233 ;
	setAttr ".r" -type "double3" 45.000000000001279 -90 -6.9433664931143225e-014 ;
	setAttr ".s" -type "double3" 0.41656518042692992 0.94219629331696098 1.2586186495605278 ;
	setAttr ".rp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "nothing1Shape" -p "nothing1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "nothing2";
	setAttr ".t" -type "double3" -5.1941385529139108 37.517567505013055 -22.565515098449744 ;
	setAttr ".r" -type "double3" 45.000000000001279 -90 -6.9433664931143225e-014 ;
	setAttr ".s" -type "double3" 0.41656518042692992 0.94219629331696098 1.2586186495605278 ;
	setAttr ".rp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "nothing2Shape" -p "nothing2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "nothing";
	setAttr ".t" -type "double3" -5.1941385529139108 37.517567505013055 -11.897673535761257 ;
	setAttr ".r" -type "double3" 45.000000000001279 -90 -6.9433664931143225e-014 ;
	setAttr ".s" -type "double3" 0.41656518042692992 0.94219629331696098 1.2586186495605278 ;
	setAttr ".rp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
	setAttr ".sp" -type "double3" 0 41.467844009399414 -44.353689193725586 ;
createNode mesh -n "nothingShape" -p "nothing";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	setAttr ".t" -type "double3" 0 6.2758164447816398 99.252142005735905 ;
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
createNode transform -n "nothing3";
	setAttr ".t" -type "double3" -2.2281876212698646 26.46411960287843 8.2281330918117561 ;
	setAttr ".s" -type "double3" 0.16970341928177149 2.5949932393864223 0.1227893348710942 ;
	setAttr ".rp" -type "double3" 0 43.047551612511313 -84.50821484224069 ;
	setAttr ".sp" -type "double3" 0 43.047551612511313 -84.50821484224069 ;
createNode mesh -n "nothing3Shape" -p "nothing3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.20179068
		 0.625 0.20179068 0.125 0.20179068 0.375 0.54820931 0.625 0.54820931 0.875 0.20179068
		 0.375 0.18295297 0.625 0.18295297 0.125 0.18295297 0.375 0.567047 0.625 0.567047
		 0.875 0.18295297 0.625 0.18295297 0.875 0.18295297 0.875 0.20179068 0.625 0.20179068
		 0.625 0.18295297 0.875 0.18295297 0.875 0.20179068 0.625 0.20179068;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  -0.99999428 41.44919586 -82.19909668 1.000000953674 41.44919586 -82.19909668
		 -0.99999428 44.64590454 -82.19909668 1.000000953674 44.64590454 -82.19909668 -0.99999428 44.64590454 -86.81646729
		 1.000000953674 44.64590454 -86.81646729 -0.99999428 41.44919586 -86.81646729 1.000000953674 41.44919586 -86.81646729
		 6.093015194 45.22879791 -82.19909668 8.093011856 45.22879791 -82.19909668 8.093011856 45.22879791 -86.81646729
		 6.093015194 45.22879791 -86.81646729 -0.99999428 44.029464722 -82.19909668 1.000000953674 44.029464722 -82.19909668
		 -0.99999428 44.029464722 -86.81646729 1.000000953674 44.029464722 -86.81646729 -0.99999428 43.78858948 -82.19909668
		 1.000000953674 43.78858948 -82.19909668 -0.99999428 43.78858948 -86.81646729 1.000000953674 43.78858948 -86.81646729
		 6.55957794 43.78858948 -86.81646729 6.55957794 43.78858948 -82.19909668 6.55957794 44.029464722 -86.81646729
		 6.55957794 44.029464722 -82.19909668 13.64702129 44.22953796 -86.81646729 13.64702129 44.22953796 -82.19909668
		 13.64702129 44.47041321 -86.81646729 13.64702129 44.47041321 -82.19909668;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 1 4 5 1 6 7 0 0 16 0 1 17 0 2 4 0
		 3 5 0 4 14 0 5 15 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 12 2 0 13 3 0 14 18 0 15 19 1 13 12 1 15 14 1 15 13 0 12 14 1 16 12 0 17 13 1 18 6 0
		 19 7 0 17 16 1 19 17 0 16 18 1 19 18 1 19 20 0 17 21 0 20 21 0 15 22 0 22 20 1 13 23 0
		 22 23 0 21 23 1 20 24 0 21 25 0 24 25 0 22 26 0 26 24 0 23 27 0 26 27 0 25 27 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 5 32 -5
		mu 0 4 0 1 25 24
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 2 9 25 -9
		mu 0 4 4 5 22 21
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -32 33 -6
		mu 0 4 1 10 29 25
		f 4 10 4 34 30
		mu 0 4 12 0 24 26
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 -25 21 -2 -21
		mu 0 4 18 19 3 2
		f 4 -26 23 35 -23
		mu 0 4 21 22 28 27
		f 4 -27 -10 -8 -22
		mu 0 4 19 23 11 3
		f 4 -28 20 6 8
		mu 0 4 20 18 2 13
		f 4 -33 29 24 -29
		mu 0 4 24 25 19 18
		f 4 -47 -49 50 -52
		mu 0 4 34 35 36 37
		f 4 -35 28 27 22
		mu 0 4 26 24 18 20
		f 4 -36 31 -4 -31
		mu 0 4 27 28 7 6
		f 4 -34 36 38 -38
		mu 0 4 25 29 31 30
		f 4 -24 39 40 -37
		mu 0 4 29 23 32 31
		f 4 26 41 -43 -40
		mu 0 4 23 19 33 32
		f 4 -30 37 43 -42
		mu 0 4 19 25 30 33
		f 4 -39 44 46 -46
		mu 0 4 30 31 35 34
		f 4 -41 47 48 -45
		mu 0 4 31 32 36 35
		f 4 42 49 -51 -48
		mu 0 4 32 33 37 36
		f 4 -44 45 51 -50
		mu 0 4 33 30 34 37;
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
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.20179068
		 0.625 0.20179068 0.125 0.20179068 0.375 0.54820931 0.625 0.54820931 0.875 0.20179068
		 0.375 0.18295297 0.625 0.18295297 0.125 0.18295297 0.375 0.567047 0.625 0.567047
		 0.875 0.18295297 0.625 0.18295297 0.875 0.18295297 0.875 0.20179068 0.625 0.20179068
		 0.625 0.18295297 0.875 0.18295297 0.875 0.20179068 0.625 0.20179068;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  -0.99999428 41.44919586 -82.19952393 1.000000953674 41.44919586 -82.19952393
		 -0.99999428 44.64590454 -82.19952393 1.000000953674 44.64590454 -82.19952393 -0.99999428 44.64590454 -86.81689453
		 1.000000953674 44.64590454 -86.81689453 -0.99999428 41.44919586 -86.81689453 1.000000953674 41.44919586 -86.81689453
		 6.093015194 45.22879791 -82.19952393 8.093011856 45.22879791 -82.19952393 8.093011856 45.22879791 -86.81689453
		 6.093015194 45.22879791 -86.81689453 -0.99999428 44.029464722 -82.19952393 1.000000953674 44.029464722 -82.19952393
		 -0.99999428 44.029464722 -86.81689453 1.000000953674 44.029464722 -86.81689453 -0.99999428 43.78858948 -82.19952393
		 1.000000953674 43.78858948 -82.19952393 -0.99999428 43.78858948 -86.81689453 1.000000953674 43.78858948 -86.81689453
		 6.55957794 43.78858948 -86.81689453 6.55957794 43.78858948 -82.19952393 6.55957794 44.029464722 -86.81689453
		 6.55957794 44.029464722 -82.19952393 13.64702129 44.22953796 -86.81689453 13.64702129 44.22953796 -82.19952393
		 13.64702129 44.47041321 -86.81689453 13.64702129 44.47041321 -82.19952393;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 1 4 5 1 6 7 0 0 16 0 1 17 0 2 4 0
		 3 5 0 4 14 0 5 15 0 6 0 0 7 1 0 2 8 0 3 9 0 8 9 0 5 10 0 9 10 0 4 11 0 11 10 0 8 11 0
		 12 2 0 13 3 0 14 18 0 15 19 1 13 12 1 15 14 1 15 13 0 12 14 1 16 12 0 17 13 1 18 6 0
		 19 7 0 17 16 1 19 17 0 16 18 1 19 18 1 19 20 0 17 21 0 20 21 0 15 22 0 22 20 1 13 23 0
		 22 23 0 21 23 1 20 24 0 21 25 0 24 25 0 22 26 0 26 24 0 23 27 0 26 27 0 25 27 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 5 32 -5
		mu 0 4 0 1 25 24
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 2 9 25 -9
		mu 0 4 4 5 22 21
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -32 33 -6
		mu 0 4 1 10 29 25
		f 4 10 4 34 30
		mu 0 4 12 0 24 26
		f 4 1 13 -15 -13
		mu 0 4 2 3 15 14
		f 4 7 15 -17 -14
		mu 0 4 3 5 16 15
		f 4 -3 17 18 -16
		mu 0 4 5 4 17 16
		f 4 -7 12 19 -18
		mu 0 4 4 2 14 17
		f 4 -25 21 -2 -21
		mu 0 4 18 19 3 2
		f 4 -26 23 35 -23
		mu 0 4 21 22 28 27
		f 4 -27 -10 -8 -22
		mu 0 4 19 23 11 3
		f 4 -28 20 6 8
		mu 0 4 20 18 2 13
		f 4 -33 29 24 -29
		mu 0 4 24 25 19 18
		f 4 -47 -49 50 -52
		mu 0 4 34 35 36 37
		f 4 -35 28 27 22
		mu 0 4 26 24 18 20
		f 4 -36 31 -4 -31
		mu 0 4 27 28 7 6
		f 4 -34 36 38 -38
		mu 0 4 25 29 31 30
		f 4 -24 39 40 -37
		mu 0 4 29 23 32 31
		f 4 26 41 -43 -40
		mu 0 4 23 19 33 32
		f 4 -30 37 43 -42
		mu 0 4 19 25 30 33
		f 4 -39 44 46 -46
		mu 0 4 30 31 35 34
		f 4 -41 47 48 -45
		mu 0 4 31 32 36 35
		f 4 42 49 -51 -48
		mu 0 4 32 33 37 36
		f 4 -44 45 51 -50
		mu 0 4 33 30 34 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ledge170";
	setAttr ".t" -type "double3" -0.028530798647636857 38.754376415001936 18.283861637830562 ;
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
createNode transform -n "DiagonalLedge188";
	setAttr ".t" -type "double3" 0 1.8251646648443725 10.687049207140625 ;
	setAttr ".r" -type "double3" -19.282592156119652 0 0 ;
	setAttr ".s" -type "double3" 1 1 2.7259501740213374 ;
	setAttr ".rp" -type "double3" 0 63.489107131958008 -24.431073056218057 ;
	setAttr ".rpt" -type "double3" 0 2.314081452076735 -0.5224268971220809 ;
	setAttr ".sp" -type "double3" 0 63.489107131958008 -27.84144115447998 ;
	setAttr ".spt" -type "double3" 0 0 3.4103680982619267 ;
createNode mesh -n "DiagonalLedge188Shape" -p "DiagonalLedge188";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Nothing5";
	setAttr ".t" -type "double3" 0 16.411098279323461 26.849309706643599 ;
	setAttr ".s" -type "double3" 1 1 1.2535573097247217 ;
	setAttr ".rp" -type "double3" 0 63.489107551363198 -29.817377742681717 ;
	setAttr ".sp" -type "double3" 0 63.489107551363198 -29.817377742681717 ;
createNode mesh -n "Nothing5Shape" -p "Nothing5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 64.059387 -26.056736 
		0.5 64.059387 -26.056736 -0.5 62.918827 -26.056736 0.5 62.918827 -26.056736 -0.5 
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
	setAttr ".t" -type "double3" 2.8421709430404007e-014 10.287297701276458 -64.668214802523707 ;
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
createNode transform -n "WallLedgeLeftOnly7";
	setAttr ".rp" -type "double3" 0 -2.774384145594599 -3.8334315359856177 ;
	setAttr ".sp" -type "double3" 0 -28.170646667480469 -0.15467238798737526 ;
	setAttr ".spt" -type "double3" 0 25.39626252188587 -3.6787591479982424 ;
createNode mesh -n "WallLedgeLeftOnlyShape7" -p "WallLedgeLeftOnly7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.33140838 0 0 0.33140838 
		0 0 0.33140838 0 0 0.33140838 0;
createNode mesh -n "polySurfaceShape115" -p "WallLedgeLeftOnly7";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
createNode transform -n "WallLedgeRightOnly1";
	setAttr ".t" -type "double3" 0 0 5.1826160366431893 ;
	setAttr ".rp" -type "double3" 0 69.305744171142578 11.39529275894165 ;
	setAttr ".sp" -type "double3" 0 69.305744171142578 11.39529275894165 ;
createNode mesh -n "WallLedgeRightOnlyShape1" -p "WallLedgeRightOnly1";
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
createNode transform -n "WallLedge144";
	setAttr ".t" -type "double3" 0 0 5.1826160366431893 ;
	setAttr ".rp" -type "double3" 0 79.10858154296875 13.738189697265623 ;
	setAttr ".sp" -type "double3" 0 79.10858154296875 13.738189697265623 ;
createNode mesh -n "WallLedgeShape144" -p "WallLedge144";
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
createNode transform -n "WallLedge165";
createNode mesh -n "WallLedgeShape165" -p "WallLedge165";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0.375 0.625
		 0.375 0.625 0.5 0.375 0.5 0.375 0.375 0.625 0.375 0.625 0.5 0.375 0.5 0 0 1 0 1 1
		 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -1.1920929e-007 -0.21700846 
		0 0 -0.21700846 0 -1.1920929e-007 -0.21700846 0 0 -0.21700846 0;
	setAttr -s 8 ".vt[0:7]"  1 79.70342255 4.98721933 -0.99298793 79.70342255 4.98721933
		 1 79.70342255 2.35520482 -0.99298793 79.70342255 2.35520482 1 87.94521332 4.98721933
		 -1 87.94521332 4.98721933 1 87.94521332 2.35520482 -1 87.94521332 2.35520482;
	setAttr -s 12 ".ed[0:11]"  0 1 0 0 2 0 3 2 0 1 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 4 6 0 3 7 0 7 6 0 5 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 8 -11 -12
		mu 0 4 0 1 2 3
		f 4 -1 4 6 -6
		mu 0 4 4 5 1 0
		f 4 1 7 -9 -5
		mu 0 4 5 6 2 1
		f 4 -3 9 10 -8
		mu 0 4 6 7 3 2
		f 4 -4 5 11 -10
		mu 0 4 7 4 0 3
		f 4 -2 0 3 2
		mu 0 4 8 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform16";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 32.515949410173874 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode mesh -n "polySurfaceShape78" -p "transform16";
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
	setAttr -s 18 ".vt[0:17]"  -1 72.97196198 10.7305069 1 72.97196198 10.7305069
		 -1 74.81999969 10.7305069 1 74.81999969 10.7305069 -1 74.81999969 5.46647644 1 74.81999969 5.46647644
		 -1 72.97196198 6.56695175 1 72.97196198 6.56695175 1 74.81999969 8.098491669 -1 74.81999969 8.098491669
		 1 79.70342255 4.98721886 -1 79.70342255 4.98721886 1 79.70342255 2.35520554 -1 79.70342255 2.35520554
		 1 87.94521332 4.98721886 -1 87.94521332 4.98721886 1 87.94521332 2.35520554 -1 87.94521332 2.35520554;
	setAttr -s 27 ".ed[0:26]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 0 9 4 0 8 9 0 10 11 0 10 12 0 13 12 0 11 13 0 10 14 0
		 11 15 0 14 15 0 12 16 0 14 16 0 13 17 0 17 16 0 15 17 0;
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
		f 4 -22 23 -26 -27
		mu 0 4 22 23 24 25
		f 4 -16 19 21 -21
		mu 0 4 18 19 23 22
		f 4 16 22 -24 -20
		mu 0 4 19 20 24 23
		f 4 -18 24 25 -23
		mu 0 4 20 21 25 24
		f 4 -19 20 26 -25
		mu 0 4 21 18 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "DiagonalLedge186";
	setAttr ".t" -type "double3" 0 6.7677504916818592 -7.0554053406163284 ;
	setAttr ".r" -type "double3" 29.399681736030825 0 0 ;
	setAttr ".s" -type "double3" 1 1 1.0846439333295554 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "DiagonalLedge186Shape" -p "DiagonalLedge186";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedgeRightOnly5";
	setAttr ".rp" -type "double3" 0 50.670143724277025 -1.0569027478911153 ;
	setAttr ".sp" -type "double3" 0 50.670143724277025 -1.0569027478911153 ;
createNode mesh -n "WallLedgeRightOnly5Shape" -p "WallLedgeRightOnly5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 56.887894 -0.65060616 
		0.5 56.887894 -0.65060616 -0.5 54.887894 -1.6407681 0.5 54.887894 -1.6407681 -0.5 
		41.297955 -0.64076805 0.5 41.297955 -0.64076805 -0.5 43.297955 0.34939384 0.5 43.297955 
		0.34939384;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LedgeRightOnly6";
	setAttr ".t" -type "double3" 0 19.396753562976382 10.988146033399849 ;
	setAttr ".s" -type "double3" 1 1 0.56111110694597277 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "LedgeRightOnly6Shape" -p "LedgeRightOnly6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "LedgeLeftOnly5";
	setAttr ".t" -type "double3" 0 -0.020301734539550864 7.9705540855349248 ;
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".rp" -type "double3" 0 53.097007751464851 3.2338094711303711 ;
	setAttr ".sp" -type "double3" 0 53.097007751464851 3.2338094711303711 ;
createNode mesh -n "LedgeLeftOnlyShape5" -p "LedgeLeftOnly5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape110" -p "LedgeLeftOnly5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.6875 0.25 0.125 0 0.3125 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -1 51.71819687 12.30826759 1 51.71819687 12.30826759
		 -1 54.47581863 12.30826759 1 54.47581863 12.30826759 -1 51.71819687 -0.51528168 1 51.71819687 -0.51528168
		 1 54.47581863 -0.5152874 -1 54.47581863 -0.5152874 -1 54.47581863 -0.51528168 1 54.47581863 -0.51528168;
	setAttr -s 14 ".ed[0:13]"  0 1 0 2 3 0 4 5 0 0 2 0 1 3 0 2 7 0 3 6 0
		 8 4 0 9 5 0 4 0 0 5 1 0 8 9 0 6 9 0 7 8 0;
	setAttr -s 5 -ch 22 ".fc[0:4]" -type "polyFaces" 
		f 4 0 4 -2 -4
		mu 0 4 0 1 2 3
		f 4 11 8 -3 -8
		mu 0 4 4 5 6 7
		f 4 2 10 -1 -10
		mu 0 4 7 6 8 9
		f 5 -11 -9 -13 -7 -5
		mu 0 5 1 10 11 12 2
		f 5 9 3 5 13 7
		mu 0 5 13 0 3 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge150";
	setAttr ".t" -type "double3" 0 -0.8263775352250774 3.3226501392560213 ;
	setAttr ".rp" -type "double3" 0 63.854000091552734 3.7596404552459721 ;
	setAttr ".sp" -type "double3" 0 63.854000091552734 3.7596404552459721 ;
createNode mesh -n "WallLedgeShape150" -p "WallLedge150";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.48795643 0 0 0.48795643 
		0 0 -4.4250422 0 0 -4.4250422 0 0 -4.4250422 0 0 0.48795643 0 0 0.48795643 0 0 -4.4250422 
		0;
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
createNode transform -n "Box2";
	setAttr ".t" -type "double3" 0 12.747513600853718 -64.99686564276837 ;
	setAttr ".r" -type "double3" 35.946967344119528 0 0 ;
	setAttr ".s" -type "double3" 2 0.078442847501337523 26.736987705471847 ;
createNode mesh -n "BoxShape2" -p "Box2";
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
createNode transform -n "LedgeLeftOnly4";
	setAttr ".t" -type "double3" 0 0 5.6006222847970264 ;
	setAttr ".rp" -type "double3" 0 55.181440353393555 -1.4271938800811768 ;
	setAttr ".sp" -type "double3" 0 55.181440353393555 -1.4271938800811768 ;
createNode mesh -n "LedgeLeftOnlyShape4" -p "LedgeLeftOnly4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape111" -p "LedgeLeftOnly4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.4375 0.625
		 0.4375 0.625 0.5 0.375 0.5 0.375 0.4375 0.625 0.4375 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -3.4811029 ;
	setAttr ".pt[1]" -type "float3" 0 0 -3.4811029 ;
	setAttr ".pt[6]" -type "float3" 0 0 -3.4811029 ;
	setAttr ".pt[7]" -type "float3" 0 0 -3.4811029 ;
	setAttr -s 8 ".vt[0:7]"  -1 54.47581863 -2.29401708 1 54.47581863 -2.29401708
		 1 54.47581863 2.92073202 -1 54.47581863 2.92073202 1 55.88706207 2.92073202 -1 55.88706207 2.92073202
		 1 55.88706207 -2.29401708 -1 55.88706207 -2.29401708;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 1 0 3 0 0 2 3 0 2 4 0 3 5 0 4 5 0
		 1 6 0 4 6 0 0 7 0 7 6 0 5 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -7 8 -11 -12
		mu 0 4 0 1 2 3
		f 4 -4 4 6 -6
		mu 0 4 4 5 1 0
		f 4 1 7 -9 -5
		mu 0 4 5 6 2 1
		f 4 -1 9 10 -8
		mu 0 4 6 7 3 2
		f 4 -3 5 11 -10
		mu 0 4 7 4 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedgeLeftOnly5";
	setAttr ".t" -type "double3" 0 3.836926571470606 3.3226501392560213 ;
	setAttr ".rp" -type "double3" 0 57.503805160522461 6.4157476425170898 ;
	setAttr ".sp" -type "double3" 0 57.503805160522461 6.4157476425170898 ;
createNode mesh -n "WallLedgeLeftOnlyShape5" -p "WallLedgeLeftOnly5";
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
	setAttr ".pt[0]" -type "float3" 0 -1.0582752 0 ;
	setAttr ".pt[1]" -type "float3" 0 -1.0582752 0 ;
	setAttr ".pt[8]" -type "float3" 0 -1.0582752 0 ;
	setAttr ".pt[9]" -type "float3" 0 -1.0582752 0 ;
	setAttr ".pt[10]" -type "float3" 0 -1.0582752 0 ;
	setAttr ".pt[11]" -type "float3" 0 -1.0582752 0 ;
createNode mesh -n "polySurfaceShape114" -p "WallLedgeLeftOnly5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0.3125 0.625
		 0.3125 0.625 0.375 0.375 0.375 0.375 0.3125 0.625 0.3125 0.625 0.375 0.625 0.375
		 0.375 0.375 0.375 0.375 0.625 0.375 0.375 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 1.9445207 0 ;
	setAttr ".pt[1]" -type "float3" 0 1.9445207 0 ;
	setAttr ".pt[8]" -type "float3" 0 1.5594358 0 ;
	setAttr ".pt[9]" -type "float3" 0 1.5594358 0 ;
	setAttr ".pt[10]" -type "float3" 0 1.5594358 0 ;
	setAttr ".pt[11]" -type "float3" 0 1.5594358 0 ;
	setAttr -s 12 ".vt[0:11]"  1 54.090305328 4.59854889 -1 54.090305328 4.59854889
		 1 60.91730499 4.59854889 -1 60.91730499 4.59854889 1 60.91730499 8.2329464 -1 60.91730499 8.2329464
		 1 60.91730499 4.59854889 -1 60.91730499 4.59854889 1 54.47581863 8.2329464 -1 54.47581863 8.2329464
		 1 54.47581863 4.59854889 -1 54.47581863 4.59854889;
	setAttr -s 19 ".ed[0:18]"  0 1 0 0 2 0 1 3 0 2 3 0 4 5 0 2 6 0 4 6 0
		 3 7 0 6 7 0 5 7 0 8 9 0 8 4 0 9 5 0 0 10 0 8 10 0 10 6 0 1 11 0 9 11 0 11 7 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 -5 6 8 -10
		mu 0 4 0 1 2 3
		f 4 -11 11 4 -13
		mu 0 4 4 5 1 0
		f 4 14 15 -7 -12
		mu 0 4 5 6 2 1
		f 4 0 2 -4 -2
		mu 0 4 7 8 9 10
		f 4 -18 12 9 -19
		mu 0 4 11 4 0 3
		f 4 3 7 -9 -6
		mu 0 4 10 9 3 2
		f 4 1 5 -16 -14
		mu 0 4 7 10 2 6
		f 4 -3 16 18 -8
		mu 0 4 9 8 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
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
createNode mesh -n "polySurfaceShape113" -p "WallLedge152";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.625 0.4375 0.375
		 0.4375 0.375 0.4375 0.625 0.4375 0.625 0.4375 0.375 0.4375 0.375 0.4375 0.375 0.4375
		 0.625 0.4375 0.625 0.4375 0.375 0.4375 0.625 0.4375 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  1 68.70568848 2.92073202 -1 68.70568848 2.92073202
		 -1 65.068786621 2.92073202 1 65.068786621 2.92073202 -1 65.068778992 0.55689383 1 65.068778992 0.55689383
		 -1 68.70568848 0.55708933 1 68.70568848 0.55708933 1 71.15938568 2.88442564 -1 71.15938568 2.88442564
		 1 71.16551971 0.55707788 -1 71.16551971 0.55707788 -1.00037312508 65.068786621 2.92073202
		 -1.00037312508 68.70568848 2.92073202;
	setAttr -s 22 ".ed[0:21]"  2 1 0 3 0 0 2 3 0 2 4 0 3 5 0 4 5 0 1 6 1
		 4 6 0 0 7 1 7 6 1 5 7 0 0 8 0 1 9 0 8 9 0 7 10 0 8 10 0 6 11 0 10 11 0 9 11 0 3 12 0
		 0 13 0 12 13 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
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
		mu 0 4 12 13 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ground";
createNode mesh -n "GroundShape" -p "Ground";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 17 ".uvst[0].uvsp[0:16]" -type "float2" 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -4.36348248 82.057189941 1 -4.36348248 82.057189941
		 -1 0.36348236 82.057189941 1 0.36348236 82.057189941 1 0.36348236 -35.24111938 -1 0.36348236 -35.24111938
		 -1 -4.36348248 -35.24111938 1 -4.36348248 -35.24111938;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 0 2 0 1 3 0 2 5 0 3 4 0 6 0 0
		 7 1 0 4 5 0 6 7 0 7 4 0 5 6 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 2 3
		f 4 1 5 8 -5
		mu 0 4 4 5 6 7
		f 4 9 7 -1 -7
		mu 0 4 8 9 10 11
		f 4 -8 10 -6 -4
		mu 0 4 1 12 13 5
		f 4 6 2 4 11
		mu 0 4 14 0 15 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface39";
	setAttr ".rp" -type "double3" -11.593265533447266 41.232309818267822 -64.801919937133789 ;
	setAttr ".sp" -type "double3" -11.593265533447266 41.232309818267822 -64.801919937133789 ;
createNode mesh -n "polySurfaceShape39" -p "polySurface39";
	setAttr -k off ".v";
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
		 -19.70366096 92.16420746 -57.85002136 -5.077461243 68.43838501 -69.42563629 -5.16670656 68.43838501 -57.85002136
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
createNode transform -n "Ground1";
createNode mesh -n "GroundShape1" -p "Ground1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.375 0.4048667 0.625 0.4048667 0.375 0.48097333 0.375 0.46194667
		 0.375 0.44292003 0.375 0.42389336 0.625 0.8451333 0.375 0.8451333 0.7798667 0.25
		 0.7798667 0 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  1 0.36348236 -103.49184418 1 -4.36348248 -103.49184418
		 1 0.36348236 -33.99150848 1 -4.36348248 -33.99150848 -1 -4.36348248 -103.49184418
		 -1 0.36348236 -103.49184418 -1 0.36348236 -89.73162842 -1 0.36348236 -85.29191589
		 -1 0.36348236 -67.18913269 -1 0.36348236 -61.23766327 -1 0.36348236 -33.99150848
		 -1 -4.36348248 -33.99150848;
	setAttr -s 15 ".ed[0:14]"  5 0 0 4 1 0 0 1 0 1 3 0 2 0 0 2 10 0 11 3 0
		 3 2 0 5 4 0 6 5 0 7 6 0 8 7 0 9 8 0 10 9 0 4 11 0;
	setAttr -s 4 -ch 20 ".fc[0:3]" -type "polyFaces" 
		f 4 0 2 -2 -9
		mu 0 4 0 1 2 3
		f 8 -6 4 -1 -10 -11 -12 -13 -14
		mu 0 8 4 5 1 0 6 7 8 9
		f 4 1 3 -7 -15
		mu 0 4 3 2 10 11
		f 4 -8 -4 -3 -5
		mu 0 4 12 13 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface44";
createNode mesh -n "polySurfaceShape95" -p "polySurface44";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:175]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 216 ".uvst[0].uvsp[0:215]" -type "float2" 0.125 0 0.22013327
		 0 0.22013327 0.25 0.20110662 0.25 0.18207997 0.25 0.1630533 0.25 0.14402665 0.25
		 0.125 0.25 0.125 0 0.22013327 0 0.22013327 0.25 0.125 0.25 0.14402665 0.25 0.1630533
		 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.1630533 0.25
		 0.1630533 0.25 0.20110662 0.25 0.18207997 0.25 0.20110662 0.25 0.21061996 0.25 0.21537662
		 0.25 0.22013327 0.25 0.20110662 0.25 0.20110662 0.25 0.22013327 0.25 0.22013327 0.25
		 0.21537662 0.25 0.21061996 0.25 0.20110662 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.21061996 0.25 0.21061996 0.25 0.21061996 0.25 0.20110662 0.25
		 0.20110662 0.25 0.2058633 0.25 0.21061996 0.25 0.21061996 0.25 0.20110662 0.25 0.20110662
		 0.25 0.21061996 0.25 0.21061996 0.25 0.20110662 0.25 0.20110662 0.25 0.18207997 0.25
		 0.18207997 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533
		 0.25 0.1630533 0.25 0.18207997 0.25 0.18207997 0.25 0.1630533 0.25 0.1630533 0.25
		 0.18207997 0.25 0.18207997 0.25 0.1630533 0.25 0.1630533 0.25 0.18207997 0.25 0.18207997
		 0.25 0.1630533 0.25 0.1630533 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25
		 0.18207997 0.25 0.1630533 0.25 0.18207997 0.25 0.1630533 0.25 0.18207997 0.25 0.18207997
		 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25
		 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.18207997 0.25 0.1630533 0.25 0.1630533
		 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533 0.25 0.1630533 0.25 0.21537662 0.25
		 0.21537662 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.21537663 0.25 0.2199531 0.25
		 0.22013327 0.25 0.22013327 0.25 0.21537662 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0
		 0 1 0 1 1 0 1 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013326 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013326
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013326 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013326 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013326 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327
		 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25 0.22013327 0.25
		 0.22013327 0.25 0.22013327 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 210 ".vt";
	setAttr ".vt[0:165]"  -1 0.36348236 -103.49184418 -1 -4.36348248 -103.49184418
		 -1 0.36348236 -33.99150848 -1 -4.36348248 -33.99150848 -19.70366096 -4.36348248 -103.49184418
		 -19.70366096 -4.36348248 -33.99150848 -19.70366096 0.36348236 -33.99150848 -19.70366096 0.36348236 -103.49184418
		 -19.70366096 0.36348236 -61.23766327 -19.70366096 0.36348236 -67.18913269 -19.70366096 0.36348236 -85.29191589
		 -19.70366096 0.36348236 -89.73162842 -1 0.36348236 -61.23766327 -1 0.36348236 -67.18913269
		 -1 0.36348236 -85.29191589 -1 0.36348236 -89.73162842 -1 8.77541924 -33.99150848
		 -1 12.56773186 -61.23766327 -19.70366096 12.56773186 -61.23766327 -19.70366096 8.77541924 -33.99150848
		 -19.70366096 18.88365555 -43.55310059 -1 18.88365555 -43.55310059 -1 27.74294281 -45.24787903
		 -19.70366096 27.74294281 -45.24787903 -1 27.74325562 -61.23766327 -19.70366096 27.74325562 -61.23766327
		 -19.70366096 27.74309921 -58.58123398 -6.28837967 27.74296761 -44.9588623 -18.24658585 27.74296761 -44.9588623
		 -6.28837967 27.74323082 -58.45733643 -18.24658585 27.74323082 -58.45733643 -6.28837967 50.96836853 -44.63911819
		 -18.24658585 50.96836853 -44.63911819 -6.28837967 40.057861328 -58.45733643 -18.24658585 40.057861328 -58.45733643
		 -1 25.94944763 -67.18913269 -19.70366096 25.94944763 -67.18913269 -1 25.94944763 -85.29191589
		 -19.70366096 25.94944763 -85.29191589 -5.70819092 25.94944763 -67.29399872 -18.68509865 25.94944763 -67.29399872
		 -5.70819092 25.94944763 -83.42510223 -18.68509865 25.94944763 -83.42510223 -5.70819092 36.56855011 -67.29399872
		 -18.68509865 36.56855011 -67.29399872 -5.70819092 36.56855011 -83.42510223 -18.68509865 36.56855011 -83.42510223
		 -0.20675945 36.56855011 -67.30506134 -24.18653107 36.56855011 -67.30506134 -0.20675945 36.56855011 -88.2716217
		 -24.18653107 36.56855011 -88.2716217 -0.20675945 60.93210602 -67.30506134 -24.18653107 60.93210602 -67.30506134
		 -0.20675945 60.93210602 -88.2716217 -24.18653107 60.93210602 -88.2716217 -24.18653107 44.133255 -67.30506134
		 -0.20675945 44.133255 -67.30506134 -12.19664574 44.133255 -67.30506134 -12.19664574 60.93210602 -67.30506134
		 -3.68376637 44.133255 -67.30506134 -3.68376637 60.93210602 -67.30506134 -12.19664574 44.133255 -63.018039703
		 -12.19664574 60.93210602 -63.018039703 -3.68376637 44.133255 -63.018039703 -3.68376637 60.93210602 -63.018039703
		 -10.94519234 60.93210602 -74.7181015 -20.96292114 60.93210602 -74.27970123 -3.83255458 60.93210602 -74.7181015
		 -0.92746305 60.93210602 -74.7181015 -0.92746305 60.93210602 -86.65988922 -20.96292114 60.93210602 -86.65988922
		 -10.94519234 65.91910553 -74.7181015 -20.96292114 65.91910553 -74.27970123 -3.83255458 65.91910553 -74.7181015
		 -0.92746305 65.91910553 -74.7181015 -0.92746305 65.91910553 -86.65988922 -20.96292114 65.91910553 -86.65988922
		 -19.70366096 3.23414898 -85.29191589 -19.70366096 23.078783035 -85.29191589 -1 3.23414898 -85.29191589
		 -1 23.078783035 -85.29191589 -19.70366096 3.23414898 -93.17697144 -1 3.23414898 -93.17697144
		 -19.70366096 23.078783035 -93.17697144 -1 23.078783035 -93.17697144 -19.70366096 15.6740303 -40.84392548
		 -1 15.6740303 -40.84392548 -1 42.044136047 -33.99150848 -1 42.044136047 -40.84392548
		 -19.70366096 42.044136047 -40.84392548 -19.70366096 42.044136047 -33.99150848 -19.70366096 42.044139862 -33.99150848
		 -19.70366096 42.044139862 -61.23766327 -19.70366096 42.044136047 -43.55310059 -19.70366096 42.044136047 -61.23766327
		 -1 0.36348236 -28.10439491 -19.70366096 0.36348236 -28.10439491 -1 8.77541924 -27.8548317
		 -19.70366096 8.77541924 -27.8548317 -1 42.044136047 -27.8548317 -19.70366096 42.044136047 -27.8548317
		 -1 48.97618866 -42.18863297 -19.70366096 48.70832062 -58.95368958 -19.70366096 48.97618866 -42.18863297
		 -19.70366096 48.97618866 -27.85409546 -1 48.97618866 -27.85409546 -1 43.57246399 -44.99710846
		 -1 48.70832062 -44.99711227 -1 73.85704803 -42.18863297 -19.70366096 73.85704803 -42.18863297
		 -19.70366096 73.85704803 -27.85409546 -1 73.85704803 -27.85409546 -1 76.89528656 -42.18863297
		 -19.70366096 76.89528656 -42.18863297 -19.70366096 76.89528656 -27.85409546 -1 76.89528656 -27.85409546
		 -1 82.47684479 -42.18863297 -19.70366096 78.39564514 -42.18863297 -19.70366096 82.47684479 -27.85409546
		 -1 82.47684479 -27.85409546 -3.62578654 82.47684479 -42.11809158 -17.07787323 82.47684479 -42.11809158
		 -17.07787323 82.47684479 -30.18364525 -3.62578654 82.47684479 -30.18364525 -3.62578654 86.82810211 -42.11809158
		 -17.07787323 86.82810211 -42.11809158 -17.07787323 86.82810211 -30.18364525 -3.62578654 86.82810211 -30.18364525
		 -1 73.85704803 -26.1119957 -19.70366096 73.85704803 -26.1119957 -1 76.89528656 -26.1119957
		 -19.70366096 76.89528656 -26.1119957 -5.077461243 78.39564514 -42.18863297 -5.077461243 76.89528656 -42.18863297
		 -5.077461243 73.85704803 -42.18863297 -5.077461243 48.97618866 -42.18863297 -5.077461243 76.89528656 -51.70427322
		 -5.077461243 78.39564514 -51.70427322 -19.70366096 78.39564514 -51.70427322 -5.077461243 73.85704803 -51.70427322
		 -19.70366096 73.85704803 -51.70427322 -5.52322674 47.3218956 -44.27946472 -20.14942741 47.3218956 -44.27946472
		 -6.79290581 48.97618866 -42.18863297 -6.79290581 48.70832062 -44.99711227 -19.92654419 60.58946991 -47.39971161
		 -5.30034399 60.58946991 -47.39971161 -5.30034399 60.50130081 -47.39971161 -19.92654419 60.58946991 -47.39971161
		 -5.52322674 47.3218956 -44.27946472 -20.14942741 47.3218956 -44.27946472 -12.8363266 47.3218956 -44.27946472
		 -12.61344433 60.50130081 -47.39971161 -12.72488594 50.25303268 -45.57449341 -5.41178513 50.25303268 -45.57449341
		 -12.72488594 46.69865417 -50.59839249 -5.41178513 46.69865417 -50.59839249 -12.61344433 60.50127411 -51.010860443
		 -5.30034399 60.50127411 -51.010860443 -5.3746376 51.24227142 -51.0020942688 -5.33749104 54.19171906 -51.0064811707
		 -12.6505909 54.19171906 -51.006477356 -12.68773842 51.24227142 -51.0020980835 -12.72488213 43.87169266 -54.45358658
		 -5.41178131 43.87169266 -54.45358658 -12.6877346 51.23847198 -54.45796585;
	setAttr ".vt[166:209]" -5.37463379 51.23847198 -54.45796204 -12.72488022 47.89554596 -57.8598938
		 -5.4117794 47.89554596 -57.8598938 -12.6877327 51.23616028 -57.86427307 -5.37463188 51.23616028 -57.86426926
		 -12.6505909 54.18677521 -57.64985657 -5.33749104 54.18677521 -57.64986038 -12.61344433 60.49633026 -57.65423965
		 -5.30034399 60.49633026 -57.65423965 -5.30034399 60.58946991 -57.84555817 -5.077462196 73.85704803 -57.85002136
		 -19.92654419 60.58946991 -57.84555817 -19.70366096 73.85704803 -57.85002136 -5.077462196 73.85704803 -57.85002136
		 -19.70366096 73.85704803 -57.85002136 -5.077461243 73.85704803 -69.42563629 -19.70366096 73.85704803 -69.42563629
		 -5.077462196 73.85704803 -57.85002136 -19.70366096 73.85704803 -57.85002136 -19.70366096 92.16420746 -57.85002136
		 -19.70366096 92.16420746 -57.85002136 -19.70366096 92.16420746 -51.70427322 -5.077461243 92.16420746 -51.70427322
		 -5.077461243 92.16420746 -69.42563629 -19.70366096 92.16420746 -69.42563629 -19.70366096 92.16420746 -57.85002136
		 -5.077461243 68.43838501 -69.42563629 -5.16675568 68.43838501 -57.85002136 -11.6374445 68.43838501 -69.42563629
		 -11.6374445 68.43838501 -57.85002136 -16.76671982 92.16420746 -58.94033813 -16.76671982 92.16420746 -58.94033813
		 -16.76671982 92.16420746 -55.26272202 -8.014401436 92.16420746 -55.26272202 -8.014401436 92.16420746 -65.8671875
		 -16.76671982 92.16420746 -65.8671875 -16.76671982 92.16420746 -58.94033813 -16.76671982 94.26941681 -58.94033813
		 -16.76671982 94.26941681 -58.94033813 -16.76671982 94.26941681 -55.26272202 -8.014401436 94.26941681 -55.26272202
		 -8.014401436 94.26941681 -65.8671875 -16.76671982 94.26941681 -65.8671875 -16.76671982 94.26941681 -58.94033813;
	setAttr -s 392 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 3 0 2 12 0 2 3 0 1 4 0 3 5 0 4 5 0 2 6 0 6 5 0
		 0 7 0 6 8 0 7 4 0 8 9 0 9 10 0 10 11 0 11 7 0 12 13 0 13 14 0 14 15 0 15 0 0 15 11 0
		 14 10 0 13 9 0 12 8 0 2 16 0 12 17 0 16 86 0 8 18 0 17 18 0 6 19 0 20 18 0 21 17 0
		 21 20 0 21 22 0 20 23 0 22 23 0 17 24 0 22 24 0 18 25 0 24 25 0 23 26 0 26 25 0 23 25 0
		 22 27 0 23 28 0 27 28 0 24 29 0 27 29 0 25 30 0 29 30 0 28 30 0 27 31 0 28 32 0 31 32 0
		 29 33 0 31 33 0 30 34 0 33 34 0 32 34 0 13 35 0 9 36 0 35 36 0 14 79 0 35 37 0 10 77 0
		 37 38 0 36 38 0 35 39 0 36 40 0 39 40 0 37 41 0 39 41 0 38 42 0 41 42 0 40 42 0 39 43 0
		 40 44 0 43 44 0 41 45 0 43 45 0 42 46 0 45 46 0 44 46 0 43 47 0 44 48 0 47 48 0 45 49 0
		 47 49 0 46 50 0 49 50 0 48 50 0 47 56 0 48 55 0 51 60 0 49 53 0 51 53 0 50 54 0 53 54 0
		 52 54 0 55 52 0 56 51 0 56 59 0 57 55 0 58 52 0 57 58 0 59 57 0 60 58 0 59 60 0 57 61 0
		 58 62 0 61 62 0 59 63 0 63 61 0 60 64 0 63 64 0 64 62 0 58 65 0 52 66 0 65 66 0 60 67 0
		 67 65 0 51 68 0 68 67 0 53 69 0 68 69 0 54 70 0 69 70 0 66 70 0 65 71 0 66 72 0 71 72 0
		 67 73 0 73 71 0 68 74 0 74 73 0 69 75 0 74 75 0 70 76 0 75 76 0 72 76 0 77 78 0 78 38 0
		 79 80 0 80 37 0 78 80 0 77 79 0 77 81 0 79 82 0 81 82 0 78 83 0 81 83 0 80 84 0 83 84 0
		 82 84 0 85 20 0 86 21 0 86 85 0 16 87 0 86 88 0 87 88 0 85 89 0 88 89 0 19 90 0 90 89 0
		 6 91 0 8 92 0;
	setAttr ".ed[166:331]" 91 92 0 91 90 0 20 93 0 89 93 0 18 94 0 93 94 0 92 94 0
		 2 95 0 6 96 0 95 96 0 16 97 0 95 97 0 19 98 0 97 98 0 96 98 0 87 99 0 97 99 0 90 100 0
		 99 100 0 98 100 0 87 101 0 88 106 0 101 107 0 89 102 0 90 103 0 103 102 0 101 135 0
		 100 104 0 103 104 0 99 105 0 105 104 0 101 105 0 106 107 0 101 108 0 103 109 0 108 134 0
		 104 110 0 109 110 0 105 111 0 111 110 0 108 111 0 108 112 0 109 113 0 112 133 0 110 114 0
		 113 114 0 111 115 0 115 114 0 112 115 0 112 116 0 113 117 0 116 132 0 114 118 0 117 118 0
		 115 119 0 119 118 0 116 119 0 116 120 0 117 121 0 120 121 0 118 122 0 121 122 0 119 123 0
		 123 122 0 120 123 0 120 124 0 121 125 0 124 125 0 122 126 0 125 126 0 123 127 0 127 126 0
		 124 127 0 111 128 0 110 129 0 128 129 0 115 130 0 128 130 0 114 131 0 130 131 0 129 131 0
		 132 117 0 135 103 0 133 132 0 134 133 0 135 134 0 133 136 0 132 137 0 136 137 0 117 138 0
		 137 138 0 134 139 0 139 136 0 109 140 0 135 141 0 141 146 0 103 142 0 141 142 0 142 145 0
		 101 143 0 107 144 0 143 144 0 145 140 0 146 139 0 146 145 0 146 147 0 145 148 0 147 152 0
		 141 149 0 149 154 0 142 150 0 149 151 0 150 148 0 151 150 0 152 148 0 152 153 0 153 151 0
		 154 147 0 153 154 0 153 155 0 154 156 0 155 156 0 152 157 0 157 161 0 147 158 0 158 157 0
		 156 159 0 159 160 0 160 158 0 161 162 0 162 155 0 161 160 0 162 159 0 155 163 0 156 164 0
		 163 164 0 162 165 0 165 163 0 159 166 0 165 166 0 164 166 0 163 167 0 164 168 0 167 168 0
		 165 169 0 169 167 0 166 170 0 169 170 0 168 170 0 161 171 0 160 172 0 171 172 0 157 173 0
		 173 171 0 158 174 0 174 173 0 172 174 0 146 175 0 139 176 0 175 176 0 145 177 0 175 177 0
		 140 178 0 177 178 0 176 178 0 139 181 0;
	setAttr ".ed[332:391]" 176 179 0 178 180 0 179 180 0 181 182 0 179 183 0 181 183 0
		 180 184 0 183 184 0 182 184 0 178 185 0 180 186 0 185 186 0 140 187 0 187 185 0 139 188 0
		 188 187 0 181 189 0 188 189 0 182 190 0 189 190 0 184 191 0 190 191 0 186 191 0 139 181 0
		 181 192 0 183 193 0 192 193 0 192 194 0 193 195 0 194 195 0 181 192 0 182 194 0 185 196 0
		 186 197 0 196 197 0 187 198 0 198 196 0 188 199 0 199 198 0 189 200 0 199 200 0 190 201 0
		 200 201 0 191 202 0 201 202 0 197 202 0 196 203 0 197 204 0 203 204 0 198 205 0 205 203 0
		 199 206 0 206 205 0 200 207 0 206 207 0 201 208 0 207 208 0 202 209 0 208 209 0 204 209 0;
	setAttr -s 176 -ch 739 ".fc[0:175]" -type "polyFaces" 
		f 8 6 -9 10 12 13 14 15 11
		mu 0 8 0 1 2 3 4 5 6 7
		f 4 1 5 -7 -5
		mu 0 4 8 9 1 0
		f 4 -4 7 8 -6
		mu 0 4 9 10 2 1
		f 4 0 4 -12 -10
		mu 0 4 11 8 0 7
		f 4 -21 19 9 -16
		mu 0 4 6 12 11 7
		f 4 -22 18 20 -15
		mu 0 4 5 13 12 6
		f 6 -131 -133 -135 136 138 -140
		mu 0 6 14 15 16 17 18 19
		f 4 -24 16 22 -13
		mu 0 4 3 20 21 4
		f 6 2 25 -32 -156 -27 -25
		mu 0 6 10 20 22 23 24 25
		f 4 23 27 -29 -26
		mu 0 4 20 3 26 22
		f 6 -167 167 163 169 171 -173
		mu 0 6 27 28 29 30 31 32
		f 4 -176 177 179 -181
		mu 0 4 33 34 35 36
		f 4 -33 33 35 -35
		mu 0 4 37 23 38 39
		f 4 31 36 -38 -34
		mu 0 4 23 22 40 38
		f 4 28 38 -40 -37
		mu 0 4 22 26 41 40
		f 5 -31 34 40 41 -39
		mu 0 5 26 37 39 42 41
		f 4 -54 55 57 -59
		mu 0 4 43 44 45 46
		f 4 -36 43 45 -45
		mu 0 4 39 38 47 48
		f 4 37 46 -48 -44
		mu 0 4 38 40 49 47
		f 4 39 48 -50 -47
		mu 0 4 40 41 50 49
		f 4 -43 44 50 -49
		mu 0 4 41 39 48 50
		f 4 -46 51 53 -53
		mu 0 4 48 47 44 43
		f 4 47 54 -56 -52
		mu 0 4 47 49 45 44
		f 4 49 56 -58 -55
		mu 0 4 49 50 46 45
		f 4 -51 52 58 -57
		mu 0 4 50 48 43 46
		f 4 -23 59 61 -61
		mu 0 4 4 21 51 52
		f 6 17 62 142 143 -64 -60
		mu 0 6 21 13 53 54 55 51
		f 4 21 64 145 -63
		mu 0 4 13 5 56 53
		f 6 -14 60 66 -142 -141 -65
		mu 0 6 5 4 52 57 58 56
		f 4 -62 67 69 -69
		mu 0 4 52 51 59 60
		f 4 63 70 -72 -68
		mu 0 4 51 55 61 59
		f 4 65 72 -74 -71
		mu 0 4 55 57 62 61
		f 4 -67 68 74 -73
		mu 0 4 57 52 60 62
		f 4 -70 75 77 -77
		mu 0 4 60 59 63 64
		f 4 71 78 -80 -76
		mu 0 4 59 61 65 63
		f 4 73 80 -82 -79
		mu 0 4 61 62 66 65
		f 4 -75 76 82 -81
		mu 0 4 62 60 64 66
		f 4 -78 83 85 -85
		mu 0 4 64 63 67 68
		f 4 79 86 -88 -84
		mu 0 4 63 65 69 67
		f 4 81 88 -90 -87
		mu 0 4 65 66 70 69
		f 4 -83 84 90 -89
		mu 0 4 66 64 68 70
		f 6 -86 91 101 105 102 -93
		mu 0 6 68 67 71 72 73 74
		f 5 87 94 -96 -101 -92
		mu 0 5 67 69 75 76 71
		f 4 89 96 -98 -95
		mu 0 4 69 70 77 75
		f 5 -91 92 99 98 -97
		mu 0 5 70 68 74 78 77
		f 4 -103 104 103 -100
		mu 0 4 74 73 79 78
		f 4 -111 -113 114 115
		mu 0 4 80 81 82 83
		f 4 -108 -102 100 93
		mu 0 4 84 72 71 76
		f 4 -105 108 110 -110
		mu 0 4 79 73 81 80
		f 4 -106 111 112 -109
		mu 0 4 73 72 82 81
		f 4 107 113 -115 -112
		mu 0 4 72 84 83 82
		f 4 106 109 -116 -114
		mu 0 4 84 79 80 83
		f 4 -104 116 118 -118
		mu 0 4 78 79 85 86
		f 4 -107 119 120 -117
		mu 0 4 79 84 87 85
		f 4 -94 121 122 -120
		mu 0 4 84 76 88 87
		f 4 95 123 -125 -122
		mu 0 4 76 75 89 88
		f 4 97 125 -127 -124
		mu 0 4 75 77 90 89
		f 4 -99 117 127 -126
		mu 0 4 77 78 86 90
		f 4 -119 128 130 -130
		mu 0 4 86 85 15 14
		f 4 -121 131 132 -129
		mu 0 4 85 87 16 15
		f 4 -123 133 134 -132
		mu 0 4 87 88 17 16
		f 4 124 135 -137 -134
		mu 0 4 88 89 18 17
		f 4 126 137 -139 -136
		mu 0 4 89 90 19 18
		f 4 -128 129 139 -138
		mu 0 4 90 86 14 19
		f 4 -145 141 -66 -144
		mu 0 4 54 58 57 55
		f 4 -149 150 152 -154
		mu 0 4 91 92 93 94
		f 4 -146 146 148 -148
		mu 0 4 53 56 92 91
		f 4 140 149 -151 -147
		mu 0 4 56 58 93 92
		f 4 144 151 -153 -150
		mu 0 4 58 54 94 93
		f 4 -143 147 153 -152
		mu 0 4 54 53 91 94
		f 4 -157 155 32 -155
		mu 0 4 95 24 23 37
		f 4 26 158 -160 -158
		mu 0 4 25 24 96 97
		f 4 156 160 -162 -159
		mu 0 4 24 95 30 96
		f 4 -180 182 184 -186
		mu 0 4 36 35 98 99
		f 4 -11 164 166 -166
		mu 0 4 3 2 28 27
		f 4 29 162 -168 -165
		mu 0 4 2 100 29 28
		f 4 154 168 -170 -161
		mu 0 4 95 37 31 30
		f 4 30 170 -172 -169
		mu 0 4 37 26 32 31
		f 4 -28 165 172 -171
		mu 0 4 26 3 27 32
		f 4 -8 173 175 -175
		mu 0 4 2 10 34 33
		f 4 24 176 -178 -174
		mu 0 4 10 25 35 34
		f 4 -30 174 180 -179
		mu 0 4 100 2 33 36
		f 4 157 181 -183 -177
		mu 0 4 25 97 98 35
		f 4 233 235 -238 -239
		mu 0 4 101 102 103 104
		f 4 -163 178 185 -184
		mu 0 4 29 100 36 99
		f 5 159 187 198 -189 -187
		mu 0 5 97 96 105 106 107
		f 4 -164 190 191 -190
		mu 0 4 30 29 108 109
		f 4 183 193 -195 -191
		mu 0 4 29 99 110 108
		f 4 -185 195 196 -194
		mu 0 4 99 98 111 110
		f 4 -182 186 197 -196
		mu 0 4 98 97 107 111
		f 4 192 251 -202 -200
		mu 0 4 107 112 113 114
		f 4 194 202 -204 -201
		mu 0 4 108 110 115 116
		f 4 -197 204 205 -203
		mu 0 4 110 111 117 115
		f 4 -198 199 206 -205
		mu 0 4 111 107 114 117
		f 4 201 250 -210 -208
		mu 0 4 114 113 118 119
		f 4 203 210 -212 -209
		mu 0 4 116 115 120 121
		f 4 -242 243 245 -247
		mu 0 4 122 123 124 125
		f 4 -207 207 214 -213
		mu 0 4 117 114 119 126
		f 4 209 249 -218 -216
		mu 0 4 119 118 127 128
		f 4 211 218 -220 -217
		mu 0 4 121 120 129 130
		f 4 -214 220 221 -219
		mu 0 4 120 126 131 129
		f 4 -215 215 222 -221
		mu 0 4 126 119 128 131
		f 5 217 247 224 -226 -224
		mu 0 5 128 127 130 132 133
		f 4 219 226 -228 -225
		mu 0 4 130 129 134 132
		f 4 -222 228 229 -227
		mu 0 4 129 131 135 134
		f 4 -223 223 230 -229
		mu 0 4 131 128 133 135
		f 4 225 232 -234 -232
		mu 0 4 133 132 102 101
		f 4 227 234 -236 -233
		mu 0 4 132 134 103 102
		f 4 -230 236 237 -235
		mu 0 4 134 135 104 103
		f 4 -231 231 238 -237
		mu 0 4 135 133 101 104
		f 4 -206 239 241 -241
		mu 0 4 115 117 123 122
		f 4 212 242 -244 -240
		mu 0 4 117 126 124 123
		f 4 213 244 -246 -243
		mu 0 4 126 120 125 124
		f 4 -211 240 246 -245
		mu 0 4 120 115 122 125
		f 4 -250 252 254 -254
		mu 0 4 127 118 136 137
		f 4 -248 253 256 -256
		mu 0 4 130 127 137 138
		f 4 -251 257 258 -253
		mu 0 4 118 113 139 136
		f 5 -252 260 261 269 -258
		mu 0 5 113 112 140 141 139
		f 4 248 262 -264 -261
		mu 0 4 112 108 142 140
		f 5 200 259 -269 -265 -263
		mu 0 5 108 116 143 144 142
		f 4 188 266 -268 -266
		mu 0 4 145 146 147 148
		f 5 -281 281 282 279 278
		mu 0 5 149 150 151 152 153
		f 5 -271 271 273 280 -273
		mu 0 5 144 141 154 150 149
		f 5 -262 274 275 283 -272
		mu 0 5 141 140 155 156 154
		f 5 263 276 -280 -278 -275
		mu 0 5 140 142 153 152 155
		f 4 264 272 -279 -277
		mu 0 4 142 144 149 153
		f 4 -283 284 -276 277
		mu 0 4 152 151 156 155
		f 4 -310 -312 313 -315
		mu 0 4 157 158 159 160
		f 4 -285 285 287 -287
		mu 0 4 156 151 161 162
		f 6 -282 288 289 295 296 -286
		mu 0 6 151 150 163 164 165 161
		f 4 -274 290 291 -289
		mu 0 4 150 154 166 163
		f 6 -284 286 292 293 294 -291
		mu 0 6 154 156 162 167 168 166
		f 4 -318 -320 -322 -323
		mu 0 4 169 170 171 172
		f 4 -299 -296 297 -294
		mu 0 4 167 165 164 168
		f 4 -288 299 301 -301
		mu 0 4 162 161 173 174
		f 4 -297 302 303 -300
		mu 0 4 161 165 175 173
		f 4 298 304 -306 -303
		mu 0 4 165 167 176 175
		f 4 -293 300 306 -305
		mu 0 4 167 162 174 176
		f 4 -302 307 309 -309
		mu 0 4 174 173 158 157
		f 4 -304 310 311 -308
		mu 0 4 173 175 159 158
		f 4 305 312 -314 -311
		mu 0 4 175 176 160 159
		f 4 -307 308 314 -313
		mu 0 4 176 174 157 160
		f 4 -298 315 317 -317
		mu 0 4 168 164 170 169
		f 4 -290 318 319 -316
		mu 0 4 164 163 171 170
		f 4 -292 320 321 -319
		mu 0 4 163 166 172 171
		f 4 -295 316 322 -321
		mu 0 4 166 168 169 172
		f 4 -270 323 325 -325
		mu 0 4 139 141 177 178
		f 4 270 326 -328 -324
		mu 0 4 141 144 179 177
		f 4 268 328 -330 -327
		mu 0 4 144 143 180 179
		f 4 330 333 -335 -333
		mu 0 4 178 180 181 182
		f 7 -381 -383 -385 386 388 390 -392
		mu 0 7 183 184 185 186 187 188 189
		f 5 336 -338 -332 324 332
		mu 0 5 182 190 191 139 178
		f 4 334 338 -340 -337
		mu 0 4 182 181 192 190
		f 4 -334 341 343 -343
		mu 0 4 181 180 193 194
		f 4 -329 344 345 -342
		mu 0 4 180 143 195 193
		f 4 335 350 -352 -349
		mu 0 4 191 196 197 198
		f 4 340 352 -354 -351
		mu 0 4 196 192 199 197
		f 4 -339 342 354 -353
		mu 0 4 192 181 194 199
		f 4 -347 355 348 -350
		mu 0 4 200 139 191 198
		f 4 337 357 -359 -357
		mu 0 4 201 202 203 204
		f 4 358 360 -362 -360
		mu 0 4 205 206 207 208
		f 4 -336 362 359 -364
		mu 0 4 196 191 205 208
		f 4 -344 364 366 -366
		mu 0 4 194 193 209 210
		f 4 -346 367 368 -365
		mu 0 4 193 195 211 209
		f 4 -348 369 370 -368
		mu 0 4 195 200 212 211
		f 4 349 371 -373 -370
		mu 0 4 200 198 213 212
		f 4 351 373 -375 -372
		mu 0 4 198 197 214 213
		f 4 353 375 -377 -374
		mu 0 4 197 199 215 214
		f 4 -355 365 377 -376
		mu 0 4 199 194 210 215
		f 4 -367 378 380 -380
		mu 0 4 210 209 184 183
		f 4 -369 381 382 -379
		mu 0 4 209 211 185 184
		f 4 -371 383 384 -382
		mu 0 4 211 212 186 185
		f 4 372 385 -387 -384
		mu 0 4 212 213 187 186
		f 4 374 387 -389 -386
		mu 0 4 213 214 188 187
		f 4 376 389 -391 -388
		mu 0 4 214 215 189 188
		f 4 -378 379 391 -390
		mu 0 4 215 210 183 189;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
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
createNode transform -n "WallLedgeRightOnly2";
	setAttr ".t" -type "double3" 0 151.082321443399 60.385076089637309 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1 2.7259501740213374 ;
createNode mesh -n "WallLedgeRightOnlyShape2" -p "WallLedgeRightOnly2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.85403943 0 0.875 0 0.875
		 0.25 0.125 0 0.14716178 0 0.125 0.25 0.375 0.77216178 0.625 0.77096057 0.625 1 0.375
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  -1 63.059387207 -25.95267487 1 63.059387207 -25.95267487
		 -1 63.91882706 -25.95267487 1 63.91882706 -25.95267487 -1 63.91882706 -29.73021507
		 1 63.91882706 -29.73021507 -1 63.059387207 -29.73021507 1 63.059387207 -29.73021507
		 -1 63.059387207 -29.404356 1 63.059387207 -29.40448189;
	setAttr -s 15 ".ed[0:14]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 8 0 7 9 0 8 0 0 9 1 0 9 8 0;
	setAttr -s 6 -ch 26 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 5 -14 -12 -10 -8 -6
		mu 0 5 1 8 9 10 2
		f 5 10 12 4 6 8
		mu 0 5 11 12 0 3 13
		f 4 -15 13 -1 -13
		mu 0 4 14 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LedgeLeftOnly";
	setAttr ".t" -type "double3" 0 151.082321443399 60.385076089637309 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 1 2.7259501740213374 ;
createNode mesh -n "LedgeLeftOnlyShape" -p "LedgeLeftOnly";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 0.77096057 0.375 0.77216178 0.375 0.75 0.625 0.75 0.625 0.77096057 0.375
		 0.77216178;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 61.135849 -29.73021507 1 61.135849 -29.73021507
		 1 61.135849 -29.40448189 -1 61.135849 -29.404356 -1 63.059387207 -29.73021507 1 63.059387207 -29.73021507
		 1 63.059387207 -29.40448189 -1 63.059387207 -29.404356;
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
createNode transform -n "Ledge199";
	setAttr ".t" -type "double3" 0 -0.59589673921308872 18.636484814252722 ;
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
createNode transform -n "LedgeRightOnly2";
	setAttr ".t" -type "double3" 0 3.1602113374217993 11.921919929498705 ;
	setAttr ".s" -type "double3" 1 1 0.4607397081599941 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "LedgeRightOnly2Shape" -p "LedgeRightOnly2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Mesh5";
	setAttr ".t" -type "double3" 0 4.3777289598167428 16.655817869617625 ;
	setAttr ".r" -type "double3" 141.53000515695413 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.61813205705067076 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "Mesh5Shape" -p "Mesh5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 30.700056 -9.7555685 
		0.5 30.700056 -9.7555685 -0.5 29.69022 -9.7555676 0.5 29.69022 -9.7555676 -0.5 30.127445 
		-18.985991 0.5 30.127445 -18.985991 -0.5 31.167599 -18.709156 0.5 31.167599 -18.709156;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LedgeLeftOnly2";
	setAttr ".t" -type "double3" 0 6.2938630065278574 23.812923328010839 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "LedgeLeftOnly2Shape" -p "LedgeLeftOnly2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 30.700056 -9.7555666 
		0.5 30.700056 -9.7555666 -0.5 29.690218 -9.7555666 0.5 29.690218 -9.7555666 -0.5 
		29.717106 -19.455345 0.5 29.717106 -19.455345 -0.5 30.700058 -19.566338 0.5 30.700058 
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
createNode transform -n "WallLedge158";
	setAttr ".t" -type "double3" 0 1.5071439954135639 6.0028143142316424 ;
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
	setAttr ".s" -type "double3" 1 2.4968479308717062 4.7400835378847308 ;
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
createNode transform -n "WallLedgeRightOnly";
	setAttr ".t" -type "double3" 0 0.89138890855752884 -25.557571108017704 ;
	setAttr ".s" -type "double3" 1 5.9067747015293506 2.6204754740538361 ;
	setAttr ".rp" -type "double3" 0 9.7909314526443865 -0.14428357931896674 ;
	setAttr ".sp" -type "double3" 0 9.7909314526443865 -0.14428357931896674 ;
createNode mesh -n "WallLedgeRightOnlyShape" -p "WallLedgeRightOnly";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	setAttr ".rp" -type "double3" 0 79.10858154296875 -13.738189697265623 ;
	setAttr ".sp" -type "double3" 0 79.10858154296875 13.738189697265623 ;
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
createNode transform -n "WallLedgeLeftOnly";
	setAttr ".t" -type "double3" 0 0 37.285667984557577 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 69.305744171142578 -11.39529275894165 ;
	setAttr ".sp" -type "double3" 0 69.305744171142578 11.39529275894165 ;
	setAttr ".spt" -type "double3" 0 0 -22.790585517883301 ;
createNode mesh -n "WallLedgeLeftOnlyShape" -p "WallLedgeLeftOnly";
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
createNode transform -n "WallLedgeMesh";
	setAttr ".t" -type "double3" 0 0 37.191298637224179 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" -0.00018656253814697266 69.285976409912109 -1.7388129234313965 ;
	setAttr ".sp" -type "double3" -0.00018656253814697266 69.285976409912109 1.7388129234313965 ;
	setAttr ".spt" -type "double3" 0 0 -3.477625846862793 ;
createNode mesh -n "WallLedgeMeshShape" -p "WallLedgeMesh";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
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
createNode transform -n "WallLedgeRightOnly6";
	setAttr ".t" -type "double3" 0 3.836926571470606 37.191298637224179 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 57.503805160522461 -6.4157476425170898 ;
	setAttr ".sp" -type "double3" 0 57.503805160522461 6.4157476425170898 ;
	setAttr ".spt" -type "double3" 0 0 -12.83149528503418 ;
createNode mesh -n "WallLedgeRightOnlyShape6" -p "WallLedgeRightOnly6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
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
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 -0.37608716 0 0 -0.37608716 
		0 0 -0.37608716 0 0 -0.37608716 0;
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
	setAttr ".t" -type "double3" 0 -0.8263775352250774 37.191298637224179 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0 63.854000091552734 -3.7596404552459721 ;
	setAttr ".sp" -type "double3" 0 63.854000091552734 3.7596404552459721 ;
	setAttr ".spt" -type "double3" 0 0 -7.5192809104919442 ;
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
	setAttr ".t" -type "double3" 0 12.289525158868932 26.016106685322725 ;
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
createNode transform -n "WallLedge164";
	setAttr ".t" -type "double3" 0 -29.782339473899953 50.439387328082915 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "WallLedgeShape164" -p "WallLedge164";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:14]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  -15.87937069 35.27500534 -82.1995163 1 35.27500534 -82.1995163
		 -15.87937069 35.27500534 -86.81689453 1 35.27500534 -86.81689453 1 46.556427 -82.1995163
		 -15.87937069 46.556427 -82.1995163 -15.87937069 46.556427 -86.81689453 1 46.556427 -86.81689453
		 1 45.64718628 -82.1995163 -15.87937069 45.64718628 -82.1995163 -15.87937069 45.64718628 -86.81689453
		 1 45.64718628 -86.81689453 1 46.556427 -83.76360321 1 45.64718628 -86.049530029 1 35.27500534 -86.049530029
		 -15.87937069 35.27500534 -86.049530029 -15.87937069 45.64718628 -86.049530029 -15.87937069 46.556427 -83.76360321
		 -5.65094948 35.27500534 -86.049530029 -5.65094948 35.27500534 -86.81689453 -5.65094948 35.27500534 -82.1995163;
	setAttr -s 36 ".ed[0:35]"  0 20 0 2 19 0 0 9 0 1 8 0 2 15 0 3 14 0 4 5 0
		 6 10 0 5 17 0 7 11 0 6 7 0 7 12 0 8 4 0 9 5 0 8 9 0 10 2 0 9 16 0 11 3 0 10 11 0
		 11 13 0 12 4 0 13 8 0 12 13 0 14 1 0 13 14 0 15 0 0 14 18 0 16 10 0 15 16 0 17 6 0
		 16 17 0 12 17 0 19 3 0 20 1 0 18 20 0 19 18 0;
	setAttr -s 15 -ch 62 ".fc[0:14]" -type "polyFaces" 
		f 5 0 33 3 14 -3
		mu 0 5 0 1 2 3 4
		f 5 18 17 -33 -2 -16
		mu 0 5 5 6 7 8 9
		f 4 -6 -18 19 24
		mu 0 4 10 11 12 13
		f 4 4 28 27 15
		mu 0 4 14 15 16 17
		f 4 -15 12 6 -14
		mu 0 4 18 19 20 21
		f 4 -28 30 29 7
		mu 0 4 22 23 24 25
		f 4 10 9 -19 -8
		mu 0 4 26 27 28 29
		f 4 -20 -10 11 22
		mu 0 4 30 31 32 33
		f 4 -22 -23 20 -13
		mu 0 4 19 34 35 36
		f 4 -24 -25 21 -4
		mu 0 4 2 37 38 19
		f 4 -29 25 2 16
		mu 0 4 39 40 0 41
		f 4 -31 -17 13 8
		mu 0 4 42 43 44 45
		f 4 -12 -11 -30 -32
		mu 0 4 46 47 48 49
		f 4 -35 -27 23 -34
		mu 0 4 50 51 52 53
		f 4 -36 32 5 26
		mu 0 4 54 55 56 57;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface46";
	setAttr ".t" -type "double3" 0 -29.782339473899953 50.439387328082915 ;
	setAttr ".s" -type "double3" 1 1.7239242361205167 1.7239242361205167 ;
createNode mesh -n "polySurfaceShape99" -p "polySurface46";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -15.87937069 15.47988319 -86.81689453 -5.65094948 15.47988319 -86.81689453
		 -5.65094948 15.47988319 -86.049530029 -15.87937069 15.47988319 -86.049530029 -5.65094948 15.47988319 -82.1995163
		 -15.87937069 15.47988319 -82.1995163 -15.87937069 35.27500534 -86.81689453 -5.65094948 35.27500534 -86.81689453
		 -5.65094948 35.27500534 -86.049530029 -15.87937069 35.27500534 -86.049530029 -5.65094948 35.27500534 -82.1995163
		 -15.87937069 35.27500534 -82.1995163;
	setAttr -s 19 ".ed[0:18]"  6 0 0 7 1 0 0 1 0 8 2 1 1 2 0 9 3 1 2 3 0
		 0 3 0 10 4 0 2 4 0 11 5 0 5 4 0 3 5 0 6 7 0 7 8 0 6 9 0 8 10 0 11 10 0 9 11 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 2 4 6 -8
		mu 0 4 0 1 2 3
		f 4 -7 9 -12 -13
		mu 0 4 4 5 6 7
		f 4 13 1 -3 -1
		mu 0 4 8 9 1 0
		f 4 14 3 -5 -2
		mu 0 4 9 10 2 1
		f 4 -16 0 7 -6
		mu 0 4 11 8 0 3
		f 4 16 8 -10 -4
		mu 0 4 12 13 6 5
		f 4 -18 10 11 -9
		mu 0 4 13 14 7 6
		f 4 -19 5 12 -11
		mu 0 4 14 15 4 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge166";
	setAttr ".t" -type "double3" 0 35.984948059226248 31.202242391137425 ;
	setAttr ".s" -type "double3" 2 1.5549179524257239 10.83258586832028 ;
	setAttr ".rp" -type "double3" 0 2.8236509020719209 -1.0342464964086835 ;
	setAttr ".sp" -type "double3" 0 1.815948486328125 -0.095475494861602783 ;
	setAttr ".spt" -type "double3" 0 1.0077024157437959 -0.93877100154708093 ;
createNode mesh -n "WallLedge166Shape" -p "WallLedge166";
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
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -0.68338394 0 ;
	setAttr ".pt[1]" -type "float3" 0 -0.68338394 0 ;
	setAttr ".pt[4]" -type "float3" 0 -0.68338394 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.68338394 0 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.0041985004 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.0041985004 ;
	setAttr ".pt[8]" -type "float3" 0 0 0.59127694 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.59127694 ;
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
createNode transform -n "DiagonalLedge";
	setAttr ".t" -type "double3" -0.010334445694581971 10.422083503327595 0.0011591938160737669 ;
	setAttr ".r" -type "double3" -22.147739907480759 0 0 ;
	setAttr ".s" -type "double3" 1 1 1.4667386876476378 ;
	setAttr ".rp" -type "double3" 0 14.471242246377733 12.970067278487557 ;
	setAttr ".sp" -type "double3" 0 14.471242246377733 12.970067278487557 ;
createNode mesh -n "DiagonalLedgeShape" -p "DiagonalLedge";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
		8.409709 0.5 13.926809 8.409709 -0.5 15.015675 8.409709 0.5 15.015675 8.409709;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedgeRightOnly3";
	setAttr ".rp" -type "double3" 0 30.447118153979702 44.301743578198085 ;
	setAttr ".sp" -type "double3" 0 30.447118153979702 44.301743578198085 ;
createNode mesh -n "WallLedgeRightOnly3Shape" -p "WallLedgeRightOnly3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 36.664871 44.708038 
		0.5 36.664871 44.708038 -0.5 34.664871 43.71788 0.5 34.664871 43.71788 -0.5 21.074928 
		44.71788 0.5 21.074928 44.71788 -0.5 23.074928 45.708046 0.5 23.074928 45.708046;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LeftOnlyLedge";
	setAttr ".t" -type "double3" 0 20.741960328761472 25.289175193277838 ;
	setAttr ".s" -type "double3" 1 1 1.783412237220666 ;
	setAttr ".rp" -type "double3" 0 14.471242246377733 20.677690231818147 ;
	setAttr ".sp" -type "double3" 0 14.471242246377733 20.677690231818147 ;
createNode mesh -n "LeftOnlyLedgeShape" -p "LeftOnlyLedge";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "DiagonalLedge189";
	setAttr ".t" -type "double3" 0 -7.1170576733563991 1.8505131390634799 ;
	setAttr ".r" -type "double3" 30.957776891834268 0 0 ;
	setAttr ".s" -type "double3" 1 1 2.7254413731998768 ;
	setAttr ".rp" -type "double3" 0 79.593516346155994 -21.74814964879705 ;
	setAttr ".sp" -type "double3" 0 79.593516346155994 -21.74814964879705 ;
createNode mesh -n "DiagonalLedge189Shape" -p "DiagonalLedge189";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge206";
	setAttr ".t" -type "double3" 0 3.3757414724249131 9.579009130932576 ;
	setAttr ".s" -type "double3" 1 1 0.50046818680058147 ;
	setAttr ".rp" -type "double3" 0 48.043622877916128 -32.646441271907555 ;
	setAttr ".sp" -type "double3" 0 48.043622877916128 -32.646441271907555 ;
createNode mesh -n "Ledge206Shape" -p "Ledge206";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 48.137325 -29.431562 
		0.5 48.137325 -29.431562 -0.5 47.127487 -29.431562 0.5 47.127487 -29.431562 -0.5 
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
createNode transform -n "Ledge207";
	setAttr ".t" -type "double3" 0 13.551866743487093 16.912076634767185 ;
	setAttr ".s" -type "double3" 1 1 0.56111110694597277 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "Ledge207Shape" -p "Ledge207";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 30.700058 -13.893576 
		0.5 30.700058 -13.893576 -0.5 29.69022 -13.893576 0.5 29.69022 -13.893576 -0.5 29.69022 
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
createNode transform -n "LedgeRightOnly5";
	setAttr ".t" -type "double3" -0.0023718066798323889 21.697511410832451 22.436591786957074 ;
	setAttr ".r" -type "double3" -20.97191578858309 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.56111110694597277 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "LedgeRightOnly5Shape" -p "LedgeRightOnly5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 30.700058 -13.893576 
		0.5 30.700058 -13.893576 -0.5 29.69022 -13.893576 0.5 29.69022 -13.893576 -0.5 29.69022 
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
createNode transform -n "LedgeRightOnly7";
	setAttr ".t" -type "double3" 0 8.4172510854123246 -1.9686351346604596 ;
	setAttr ".s" -type "double3" 1 1 1.2535573097247217 ;
	setAttr ".rp" -type "double3" 0 63.489107131958008 -27.3404279889889 ;
	setAttr ".sp" -type "double3" 0 63.489107131958008 -27.84144115447998 ;
	setAttr ".spt" -type "double3" 0 0 0.50101316549108077 ;
createNode mesh -n "LedgeRightOnly7Shape" -p "LedgeRightOnly7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
		62.918827 -28.346256 0.5 62.918827 -28.346256 -0.5 64.059387 -28.346256 0.5 64.059387 
		-28.346256;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LedgeMesh";
	setAttr ".t" -type "double3" 0 13.241966858792516 -1.9686351346604596 ;
	setAttr ".s" -type "double3" 1 1 1.2535573097247217 ;
	setAttr ".rp" -type "double3" 0 63.489107131958008 -27.3404279889889 ;
	setAttr ".sp" -type "double3" 0 63.489107131958008 -27.84144115447998 ;
	setAttr ".spt" -type "double3" 0 0 0.50101316549108077 ;
createNode mesh -n "LedgeMeshShape" -p "LedgeMesh";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
		62.918827 -28.80048 0.5 62.918827 -28.80048 -0.5 64.314827 -28.484016 0.5 64.314827 
		-28.484016;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Box3";
	setAttr ".t" -type "double3" 0 11.076888502574754 -0.14504528927912119 ;
	setAttr ".s" -type "double3" 1 5.7260159474300973 0.2970080595627036 ;
	setAttr ".rp" -type "double3" 0 63.489107131958008 -27.3404279889889 ;
	setAttr ".sp" -type "double3" 0 63.489107131958008 -27.84144115447998 ;
	setAttr ".spt" -type "double3" 0 0 0.50101316549108077 ;
createNode mesh -n "Box3Shape" -p "Box3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Wall10";
	setAttr ".t" -type "double3" 0 6.8921931858676189 -7.5222533129592257 ;
	setAttr ".s" -type "double3" 1 5.1648214680296958 0.26634321545568262 ;
	setAttr ".rp" -type "double3" 0 63.489107131958008 -27.3404279889889 ;
	setAttr ".sp" -type "double3" 0 63.489107131958008 -27.84144115447998 ;
	setAttr ".spt" -type "double3" 0 0 0.50101316549108077 ;
createNode mesh -n "Wall10Shape" -p "Wall10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedgeLeftOnly3";
	setAttr ".t" -type "double3" 0 12.089870759061718 -12.942684522398952 ;
	setAttr ".s" -type "double3" 1 3.5902842839242699 0.26634321545568262 ;
	setAttr ".rp" -type "double3" 0 63.489107131958008 -27.3404279889889 ;
	setAttr ".sp" -type "double3" 0 63.489107131958008 -27.84144115447998 ;
	setAttr ".spt" -type "double3" 0 0 0.50101316549108077 ;
createNode mesh -n "WallLedgeLeftOnly3Shape" -p "WallLedgeLeftOnly3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "LedgeRightOnly9";
	setAttr ".t" -type "double3" 0 13.219725828944981 -17.835201687051828 ;
	setAttr ".s" -type "double3" 1 1 1.2535573097247217 ;
	setAttr ".rp" -type "double3" 0 63.489107131958008 -27.3404279889889 ;
	setAttr ".sp" -type "double3" 0 63.489107131958008 -27.84144115447998 ;
	setAttr ".spt" -type "double3" 0 0 0.50101316549108077 ;
createNode mesh -n "LedgeRightOnly9Shape" -p "LedgeRightOnly9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 64.059387 -24.737595 
		0.5 64.059387 -24.737595 -0.5 62.918827 -24.737595 0.5 62.918827 -24.737595 -0.5 
		62.918827 -28.346256 0.5 62.918827 -28.346256 -0.5 64.059387 -28.346256 0.5 64.059387 
		-28.346256;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Mesh";
	setAttr ".t" -type "double3" 0 108.37270343188284 -28.448621531430931 ;
	setAttr ".r" -type "double3" -180 0 0 ;
	setAttr ".s" -type "double3" 0.68925947300327939 0.68925947300327939 -0.68925947300327939 ;
	setAttr ".rp" -type "double3" 0 19.539630760271017 -10.85837612628011 ;
	setAttr ".rpt" -type "double3" 0 -39.079261520542033 21.716752252560219 ;
	setAttr ".sp" -type "double3" 0 28.348730087280273 15.753684282302856 ;
	setAttr ".spt" -type "double3" 0 -8.8090993270092586 -26.61206040858297 ;
createNode mesh -n "MeshShape" -p "Mesh";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.83169782 0.79330206 0 0.625 0.91680992 0.70819008
		 0 0.20669788 0 0.375 0.83169782 0.29180992 0 0.375 0.91680992 0.625 0.33319005 0.70819008
		 0.25 0.625 0.41830215 0.79330218 0.25 0.29180992 0.25 0.375 0.33319005 0.20669788
		 0.25 0.375 0.41830215 0.875 0.25 0.625 0.75 0.125 0 0.375 0.5 0.625 0 0.625 0.25
		 0.375 0.25 0.375 1 0.875 0.25 0.625 0.75 0.125 0 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  -1 25.48274231 31.51024818 1 25.48274231 31.51024818
		 -1 26.87459564 31.51024818 1 26.87459564 31.51024818 -1 26.87459564 -0.0028748512
		 1 26.87459564 -0.0028748512 -1 25.48274231 -0.0028748512 1 25.48274231 -0.0028748512
		 1 29.82286453 10.50073433 1 29.82286835 21.023929596 -1 29.82286453 10.50073433 -1 29.82286835 21.023929596
		 1 31.21471405 21.023929596 1 31.21471786 10.50073433 -1 31.21471405 21.023929596
		 -1 31.21471786 10.50073433 1 26.87459564 -1.96719217 1 25.48274231 -1.96719217 -1 25.48274231 -1.96719217
		 -1 26.87459564 -1.96719217 1 25.48274231 33.4745636 1 26.87459564 33.4745636 -1 26.87459564 33.4745636
		 -1 25.48274231 33.4745636 1 26.87459564 -3.21524954 1 25.48274231 -3.21524954 -1 25.48274231 -3.21524954
		 -1 26.87459564 -3.21524954;
	setAttr -s 52 ".ed[0:51]"  0 1 1 2 3 1 4 5 1 6 7 1 1 3 1 2 14 0 3 12 0
		 5 7 1 6 10 0 7 8 0 8 9 0 10 11 0 4 6 1 12 13 0 14 15 0 0 2 1 9 11 1 8 10 1 13 15 1
		 12 14 1 9 1 0 9 12 1 11 0 0 11 14 1 13 5 0 15 4 0 10 15 1 8 13 1 5 16 0 7 17 0 16 17 1
		 6 18 0 18 17 0 4 19 0 19 18 1 19 16 1 1 20 0 3 21 0 20 21 0 2 22 0 22 21 0 0 23 0
		 23 22 0 23 20 0 16 24 0 17 25 0 24 25 0 18 26 0 26 25 0 19 27 0 27 26 0 27 24 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
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
		mu 0 4 33 30 38 41;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape97" -p "Mesh";
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
createNode transform -n "Box5";
	setAttr ".t" -type "double3" 0 75.697149483906003 -28.448621531430931 ;
	setAttr ".s" -type "double3" 0.68925947300327939 0.68925947300327939 0.68925947300327939 ;
	setAttr ".rp" -type "double3" 0 18.043895582207934 22.825815256316908 ;
	setAttr ".sp" -type "double3" 0 26.178668975830082 33.116433143615723 ;
	setAttr ".spt" -type "double3" 0 -8.1347733936221385 -10.290617887298817 ;
createNode mesh -n "BoxShape5" -p "Box5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.625 0 0.625 0.25
		 0.625 0.25 0.625 0 0.375 0.25 0.375 0.25 0.375 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1 26.87459564 33.4745636 -1 26.87459564 33.4745636
		 1 25.48274231 31.51024818 1 26.87459564 31.51024818 -1 26.87459564 31.51024818 -1 25.48274231 31.51024818
		 1 25.48274231 33.4745636 -1 25.48274231 33.4745636;
	setAttr -s 12 ".ed[0:11]"  2 6 0 3 0 0 6 0 0 4 1 0 1 0 0 5 7 0 7 1 0
		 2 3 0 4 3 0 5 4 0 5 2 0 7 6 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 7 1 -3 -1
		mu 0 4 0 1 2 3
		f 4 -9 3 4 -2
		mu 0 4 1 4 5 2
		f 4 -10 5 6 -4
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -6
		mu 0 4 6 0 3 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Box4";
	setAttr ".t" -type "double3" 0 75.697149483906003 -28.448621531430931 ;
	setAttr ".s" -type "double3" 0.68925947300327939 0.68925947300327939 0.68925947300327939 ;
	setAttr ".rp" -type "double3" 0 21.035365938334085 10.864336621834394 ;
	setAttr ".sp" -type "double3" 0 30.518791198730469 15.762331962585447 ;
	setAttr ".spt" -type "double3" 0 -9.483425260396384 -4.8979953407510566 ;
createNode mesh -n "Box4Shape" -p "Box4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.375 0.83169782
		 0.625 0.83169782 0.625 0.91680992 0.375 0.91680992 0.375 0.33319005 0.625 0.33319005
		 0.625 0.41830215 0.375 0.41830215 0.70819008 0.25 0.70819008 0 0.79330206 0 0.79330218
		 0.25 0.20669788 0.25 0.20669788 0 0.29180992 0 0.29180992 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 29.82286453 10.50073433 1 29.82286453 10.50073433
		 1 29.82286835 21.023929596 -1 29.82286835 21.023929596 -1 31.21471405 21.023929596
		 1 31.21471405 21.023929596 1 31.21471786 10.50073433 -1 31.21471786 10.50073433;
	setAttr -s 12 ".ed[0:11]"  1 2 0 0 3 0 5 6 0 4 7 0 1 0 0 2 3 0 5 4 0
		 6 7 0 2 5 0 1 6 0 0 7 0 3 4 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 -5 0 5 -2
		mu 0 4 0 1 2 3
		f 4 -7 2 7 -4
		mu 0 4 4 5 6 7
		f 4 -9 -1 9 -3
		mu 0 4 8 9 10 11
		f 4 -11 1 11 3
		mu 0 4 12 13 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LedgeRightOnly1";
	setAttr ".t" -type "double3" 0 75.697149483906003 -28.448621531430931 ;
	setAttr ".s" -type "double3" 0.68925947300327939 0.68925947300327939 0.68925947300327939 ;
	setAttr ".rp" -type "double3" 0 18.043895582207934 -1.1090613604340411 ;
	setAttr ".sp" -type "double3" 0 26.178668975830082 -1.6090621948242187 ;
	setAttr ".spt" -type "double3" 0 -8.1347733936221385 0.50000083439017762 ;
createNode mesh -n "LedgeRightOnlyShape1" -p "LedgeRightOnly1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.875 0.25 0.625
		 0.75 0.125 0 0.375 0.5 0.875 0.25 0.625 0.75 0.625 0.75 0.875 0.25 0.125 0 0.125
		 0 0.375 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  1 26.87459564 -1.96719217 -1 26.87459564 -1.96719217
		 1 26.87459564 -3.21524954 -1 26.87459564 -3.21524954 1 25.48274231 -3.21524954 -1 25.48274231 -3.21524954
		 1 26.87459564 -0.0028748512 1 25.48274231 -0.0028748512 -1 25.48274231 -0.0028748512
		 -1 25.48274231 -1.96719217 1 25.48274231 -1.96719217 -1 26.87459564 -0.0028748512;
	setAttr -s 20 ".ed[0:19]"  6 0 0 7 10 0 0 10 1 8 9 0 11 1 0 1 9 1 1 0 1
		 0 2 0 2 4 0 1 3 0 3 5 0 3 2 0 5 4 0 6 7 0 8 7 0 9 10 0 11 8 0 11 6 0 10 4 0 9 5 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 8 -13 -11 11
		mu 0 4 0 1 2 3
		f 4 13 1 -3 -1
		mu 0 4 4 5 6 7
		f 4 -15 3 15 -2
		mu 0 4 5 8 9 6
		f 4 -17 4 5 -4
		mu 0 4 8 10 11 9
		f 4 17 0 -7 -5
		mu 0 4 10 4 7 11
		f 4 2 18 -9 -8
		mu 0 4 7 6 1 0
		f 4 -6 9 10 -20
		mu 0 4 9 11 3 2
		f 4 6 7 -12 -10
		mu 0 4 11 7 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Mesh1";
	setAttr ".t" -type "double3" 0 75.697149483906003 -28.448621531430931 ;
	setAttr ".s" -type "double3" 0.68925947300327939 0.68925947300327939 0.68925947300327939 ;
	setAttr ".rp" -type "double3" 0 19.539629445612899 18.104839845703861 ;
	setAttr ".sp" -type "double3" 0 28.348728179931641 26.267088890075684 ;
	setAttr ".spt" -type "double3" 0 -8.8090987343187415 -8.1622490443718227 ;
createNode mesh -n "MeshShape1" -p "Mesh1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0.25 0.625
		 0.25 0.625 0.33319005 0.375 0.33319005 0.625 0 0.70819008 0 0.70819008 0.25 0.375
		 0.91680992 0.625 0.91680992 0.625 1 0.375 1 0.29180992 0.25 0.29180992 0 0.375 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 25.48274231 31.51024818 1 25.48274231 31.51024818
		 -1 26.87459564 31.51024818 1 26.87459564 31.51024818 1 29.82286835 21.023929596 -1 29.82286835 21.023929596
		 1 31.21471405 21.023929596 -1 31.21471405 21.023929596;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 1 3 0 2 7 0 3 6 0 0 2 0 4 5 0
		 6 7 0 4 1 0 4 6 0 5 0 0 5 7 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 1 4 7 -4
		mu 0 4 0 1 2 3
		f 4 -9 9 -5 -3
		mu 0 4 4 5 6 1
		f 4 -7 8 -1 -11
		mu 0 4 7 8 9 10
		f 4 -12 10 5 3
		mu 0 4 11 12 13 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Mesh2";
	setAttr ".t" -type "double3" 0 75.697149483906003 -28.448621531430931 ;
	setAttr ".s" -type "double3" 0.68925947300327939 0.68925947300327939 0.68925947300327939 ;
	setAttr ".rp" -type "double3" 0 19.539630760271017 3.617874545733287 ;
	setAttr ".sp" -type "double3" 0 28.348730087280273 5.2489297389984131 ;
	setAttr ".spt" -type "double3" 0 -8.8090993270092586 -1.6310551932651258 ;
createNode mesh -n "MeshShape2" -p "Mesh2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 0.83169782 0.375 0.83169782 0.125 0 0.20669788 0 0.20669788 0.25 0.125
		 0.25 0.375 0.41830215 0.625 0.41830215 0.625 0.5 0.375 0.5 0.79330218 0.25 0.79330206
		 0 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 26.87459564 -0.0028748512 1 26.87459564 -0.0028748512
		 -1 25.48274231 -0.0028748512 1 25.48274231 -0.0028748512 1 29.82286453 10.50073433
		 -1 29.82286453 10.50073433 1 31.21471786 10.50073433 -1 31.21471786 10.50073433;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 1 3 0 2 5 0 3 4 0 0 2 0 4 5 0
		 6 7 0 6 1 0 7 0 0 5 7 0 4 6 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 1 4 6 -4
		mu 0 4 0 1 2 3
		f 4 3 10 9 5
		mu 0 4 4 5 6 7
		f 4 -8 8 -1 -10
		mu 0 4 8 9 10 11
		f 4 -12 -5 -3 -9
		mu 0 4 12 13 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall9";
	setAttr ".t" -type "double3" 0 75.697149483906003 -28.448621531430931 ;
	setAttr ".s" -type "double3" 0.68925947300327939 0.68925947300327939 0.68925947300327939 ;
	setAttr ".rp" -type "double3" 0 16.281583234498999 -1.7860235214437736 ;
	setAttr ".sp" -type "double3" 0 23.621849060058594 -2.5912208557128902 ;
	setAttr ".spt" -type "double3" 0 -7.3402658255595954 0.80519733426911677 ;
createNode mesh -n "Wall9Shape" -p "Wall9";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.625 0.75 0.125
		 0 0.125 0 0.625 0.75 0.625 0.75 0.125 0 0.125 0 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1 25.48274231 -1.96719217 -1 25.48274231 -1.96719217
		 1 25.48274231 -3.21524954 -1 25.48274231 -3.21524954 -1 21.76095581 -1.96719217 1 21.76095581 -1.96719217
		 -1 21.76095581 -3.21524954 1 21.76095581 -3.21524954;
	setAttr -s 12 ".ed[0:11]"  1 0 0 0 2 0 1 3 0 3 2 0 1 4 0 0 5 0 4 5 0
		 3 6 0 4 6 0 2 7 0 6 7 0 5 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -7 8 10 -12
		mu 0 4 0 1 2 3
		f 4 -1 4 6 -6
		mu 0 4 4 5 1 0
		f 4 2 7 -9 -5
		mu 0 4 5 6 2 1
		f 4 3 9 -11 -8
		mu 0 4 6 7 3 2
		f 4 -2 5 11 -10
		mu 0 4 7 4 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedgeLeftOnly4";
	setAttr ".t" -type "double3" 0 75.697149483906003 -28.448621531430931 ;
	setAttr ".s" -type "double3" 0.68925947300327939 0.68925947300327939 0.68925947300327939 ;
	setAttr ".rp" -type "double3" 0 16.281583234498999 23.50277675999758 ;
	setAttr ".sp" -type "double3" 0 23.621849060058594 34.098590850830078 ;
	setAttr ".spt" -type "double3" 0 -7.3402658255595954 -10.595814090832496 ;
createNode mesh -n "WallLedgeLeftOnlyShape4" -p "WallLedgeLeftOnly4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  0 1.390798 7.1054274e-015 
		0 1.390798 7.1054274e-015 0 1.390798 7.1054274e-015 0 1.390798 7.1054274e-015;
createNode mesh -n "polySurfaceShape112" -p "WallLedgeLeftOnly4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.375 1 0.625 0 0.625
		 0 0.375 1 0.375 1 0.625 0 0.625 0 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 -1.2109926 0 0 -1.2109926 
		0 0 -1.2109926 0 0 -1.2109926 0;
	setAttr -s 8 ".vt[0:7]"  1 25.48274231 33.4745636 -1 25.48274231 33.4745636
		 1 25.48274231 34.7226181 -1 25.48274231 34.7226181 -1 21.76095581 33.4745636 1 21.76095581 33.4745636
		 1 21.76095581 34.7226181 -1 21.76095581 34.7226181;
	setAttr -s 12 ".ed[0:11]"  1 0 0 0 2 0 1 3 0 3 2 0 1 4 0 0 5 0 4 5 0
		 2 6 0 5 6 0 3 7 0 7 6 0 4 7 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 6 8 -11 -12
		mu 0 4 0 1 2 3
		f 4 0 5 -7 -5
		mu 0 4 4 5 1 0
		f 4 1 7 -9 -6
		mu 0 4 5 6 2 1
		f 4 -4 9 10 -8
		mu 0 4 6 7 3 2
		f 4 -3 4 11 -10
		mu 0 4 7 4 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "WallLedge168";
	setAttr ".t" -type "double3" 0 42.286079917146473 51.56364701242024 ;
	setAttr ".s" -type "double3" 2 2.9455436775255004 1.1731992664169737 ;
	setAttr ".rp" -type "double3" 0 2.8236509020719209 -1.0342464964086835 ;
	setAttr ".sp" -type "double3" 0 1.815948486328125 -0.095475494861602783 ;
	setAttr ".spt" -type "double3" 0 1.0077024157437959 -0.93877100154708093 ;
createNode mesh -n "WallLedge168Shape" -p "WallLedge168";
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
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -0.68338394 0 ;
	setAttr ".pt[1]" -type "float3" 0 -0.68338394 0 ;
	setAttr ".pt[4]" -type "float3" 0 -0.68338394 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.68338394 0 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.0041985004 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.0041985004 ;
	setAttr ".pt[8]" -type "float3" 0 0 0.59127694 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.59127694 ;
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
createNode transform -n "WallLedge169";
	setAttr ".t" -type "double3" 0 42.297561273903376 46.012851760431261 ;
	setAttr ".s" -type "double3" 2 1.3255916989566918 0.88201799522208635 ;
	setAttr ".rp" -type "double3" 0 2.8236509020719209 -1.0342464964086835 ;
	setAttr ".sp" -type "double3" 0 1.815948486328125 -0.095475494861602783 ;
	setAttr ".spt" -type "double3" 0 1.0077024157437959 -0.93877100154708093 ;
createNode mesh -n "WallLedge169Shape" -p "WallLedge169";
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
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0.17537957 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.17537957 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.17537957 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.17537957 0 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.0041985004 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.0041985004 ;
	setAttr ".pt[8]" -type "float3" 0 0 0.59127694 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.59127694 ;
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
createNode transform -n "Ledge208";
	setAttr ".t" -type "double3" 0 3.2987501472302529 20.957162829052479 ;
	setAttr ".s" -type "double3" 1 1 2.0913859159189965 ;
	setAttr ".rp" -type "double3" 0 14.471242246377733 20.677690231818147 ;
	setAttr ".sp" -type "double3" 0 14.471242246377733 20.677690231818147 ;
createNode mesh -n "Ledge208Shape" -p "Ledge208";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedge170";
	setAttr ".t" -type "double3" 0 19.945897699833591 50.601165361684259 ;
	setAttr ".s" -type "double3" 2 0.70487263989762172 0.88201799522208635 ;
	setAttr ".rp" -type "double3" 0 2.8236509020719209 -1.0342464964086835 ;
	setAttr ".sp" -type "double3" 0 1.815948486328125 -0.095475494861602783 ;
	setAttr ".spt" -type "double3" 0 1.0077024157437959 -0.93877100154708093 ;
createNode mesh -n "WallLedge170Shape" -p "WallLedge170";
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
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0.17537957 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.17537957 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.17537957 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.17537957 0 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.0041985004 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.0041985004 ;
	setAttr ".pt[8]" -type "float3" 0 0 0.59127694 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.59127694 ;
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
createNode transform -n "Ledge209";
	setAttr ".t" -type "double3" 0 3.2987501472302529 20.957162829052479 ;
	setAttr ".s" -type "double3" 1 1 2.0913859159189965 ;
	setAttr ".rp" -type "double3" 0 14.471242246377733 20.677690231818147 ;
	setAttr ".sp" -type "double3" 0 14.471242246377733 20.677690231818147 ;
createNode mesh -n "Ledge209Shape" -p "Ledge209";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedge171";
	setAttr ".t" -type "double3" 0 23.831386590945456 54.285890220661095 ;
	setAttr ".s" -type "double3" 2 0.70487263989762172 0.88201799522208635 ;
	setAttr ".rp" -type "double3" 0 2.8236509020719209 -1.0342464964086835 ;
	setAttr ".sp" -type "double3" 0 1.815948486328125 -0.095475494861602783 ;
	setAttr ".spt" -type "double3" 0 1.0077024157437959 -0.93877100154708093 ;
createNode mesh -n "WallLedge171Shape" -p "WallLedge171";
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
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0.17537957 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.17537957 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.17537957 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.17537957 0 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.0041985004 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.0041985004 ;
	setAttr ".pt[8]" -type "float3" 0 0 0.59127694 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.59127694 ;
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
createNode transform -n "Ledge210";
	setAttr ".t" -type "double3" 0 -4.3106481251333939 29.616832682707241 ;
	setAttr ".s" -type "double3" 1 1 2.0913859159189965 ;
	setAttr ".rp" -type "double3" 0 14.471242246377733 20.677690231818147 ;
	setAttr ".sp" -type "double3" 0 14.471242246377733 20.677690231818147 ;
createNode mesh -n "Ledge210Shape" -p "Ledge210";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "WallLedge172";
	setAttr ".t" -type "double3" 0 93.011382683016933 5.059789486967909 ;
	setAttr ".s" -type "double3" 2 0.90563679190450819 8.7317812145054443 ;
	setAttr ".rp" -type "double3" 0 2.8236509020719209 -1.0342464964086835 ;
	setAttr ".sp" -type "double3" 0 1.815948486328125 -0.095475494861602783 ;
	setAttr ".spt" -type "double3" 0 1.0077024157437959 -0.93877100154708093 ;
createNode mesh -n "WallLedge172Shape" -p "WallLedge172";
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
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -0.68338394 0 ;
	setAttr ".pt[1]" -type "float3" 0 -0.68338394 0 ;
	setAttr ".pt[4]" -type "float3" 0 -0.68338394 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.68338394 0 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.0041985004 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.0041985004 ;
	setAttr ".pt[8]" -type "float3" 0 0 0.59127694 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.59127694 ;
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
createNode transform -n "DiagonalTestOriginal";
	setAttr ".t" -type "double3" 0 7.2129321418081025 67.834586671564296 ;
	setAttr ".r" -type "double3" -20.532919267416659 0 0 ;
	setAttr ".s" -type "double3" 0.36679483650066486 0.19365765760489131 2.8052500148298853 ;
createNode mesh -n "DiagonalTestOriginalShape" -p "DiagonalTestOriginal";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "DiagonalLedgeRightOnly2";
	setAttr ".t" -type "double3" 0 9.4510483325473587 8.7979746481334757 ;
	setAttr ".r" -type "double3" -35.054543757811551 0 0 ;
	setAttr ".s" -type "double3" 1 1 1.0846439333295554 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "DiagonalLedgeRightOnly2Shape" -p "DiagonalLedgeRightOnly2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "DiagonalLedgeRightOnly1";
	setAttr ".t" -type "double3" 0 14.931466772981588 -37.368945737835816 ;
	setAttr ".r" -type "double3" -38.104528719428778 0 0 ;
	setAttr ".s" -type "double3" 1 1 1.5763202639972664 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "DiagonalLedgeRightOnly1Shape" -p "DiagonalLedgeRightOnly1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -18.105392 30.700058 -9.7555676 
		0.5 30.700058 -9.7555676 -18.105392 29.69022 -9.7555676 0.5 29.69022 -9.7555676 -18.105392 
		29.69022 -19.566338 0.5 29.69022 -19.566338 -18.105392 30.700058 -19.566338 0.5 30.700058 
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
createNode transform -n "DiagonalBox1";
	setAttr ".t" -type "double3" 2.8614954099470582 -13.138972563252397 -33.807712456882157 ;
	setAttr ".r" -type "double3" -45 0 0 ;
	setAttr ".s" -type "double3" 0.19888533963065788 2.5179676713705987 0.77963211472209692 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "DiagonalBox1Shape" -p "DiagonalBox1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -18.105392 30.700058 -9.7555676 
		-9.9461775 30.700058 -9.7555676 -18.105392 29.69022 -9.7555676 -9.9461775 29.69022 
		-9.7555676 -18.105392 29.690218 -19.566336 -9.9461775 29.690218 -19.566336 -18.105392 
		30.700056 -19.566336 -9.9461775 30.700056 -19.566336;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "DiagonalBox";
	setAttr ".t" -type "double3" 2.8614954099470582 -13.138972563252397 -36.611022429513312 ;
	setAttr ".r" -type "double3" 45 0 0 ;
	setAttr ".s" -type "double3" 0.19888533963065788 2.5179676713705987 0.77963211472209692 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "DiagonalBoxShape" -p "DiagonalBox";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -18.105392 30.700058 -9.7555676 
		-9.9461775 30.700058 -9.7555676 -18.105392 29.69022 -9.7555676 -9.9461775 29.69022 
		-9.7555676 -18.105392 29.690218 -19.566336 -9.9461775 29.690218 -19.566336 -18.105392 
		30.700056 -19.566336 -9.9461775 30.700056 -19.566336;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "DiagonalLedgeRightOnly";
	setAttr ".t" -type "double3" 2.8614954099470582 -13.138972563252397 -42.297080765072259 ;
	setAttr ".r" -type "double3" -45 0 0 ;
	setAttr ".s" -type "double3" 0.19888533963065788 2.5179676713705987 0.77963211472209692 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "DiagonalLedgeRightOnlyShape" -p "DiagonalLedgeRightOnly";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -18.105392 30.700058 -9.7555676 
		-9.9461775 30.700058 -9.7555676 -18.105392 29.69022 -9.7555676 -9.9461775 29.69022 
		-9.7555676 -18.105392 29.690218 -19.566336 -9.9461775 29.690218 -19.566336 -18.105392 
		30.700056 -19.566336 -9.9461775 30.700056 -19.566336;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "DiagonalLedgeLeftOnly";
	setAttr ".t" -type "double3" 2.8614954099470582 -13.138972563252397 -28.112473794946524 ;
	setAttr ".r" -type "double3" 45 0 0 ;
	setAttr ".s" -type "double3" 0.19888533963065788 2.5179676713705987 0.77963211472209692 ;
	setAttr ".rp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
	setAttr ".sp" -type "double3" 0 30.606355277912613 -14.660952584147193 ;
createNode mesh -n "DiagonalLedgeLeftOnlyShape" -p "DiagonalLedgeLeftOnly";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -18.105392 30.700058 -9.7555676 
		-9.9461775 30.700058 -9.7555676 -18.105392 29.69022 -9.7555676 -9.9461775 29.69022 
		-9.7555676 -18.105392 29.690218 -19.566336 -9.9461775 29.690218 -19.566336 -18.105392 
		30.700056 -19.566336 -9.9461775 30.700056 -19.566336;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "DiagonalLedgeRightOnly3";
	setAttr ".t" -type "double3" 0 -66.682580017280358 -58.754296023681697 ;
	setAttr ".r" -type "double3" -36.156006405898275 0 0 ;
	setAttr ".s" -type "double3" 1 1 4.0904479596441217 ;
	setAttr ".rp" -type "double3" 0 79.593516346155994 -21.74814964879705 ;
	setAttr ".sp" -type "double3" 0 79.593516346155994 -21.74814964879705 ;
createNode mesh -n "DiagonalLedgeRightOnly3Shape" -p "DiagonalLedgeRightOnly3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Ledge";
	setAttr ".t" -type "double3" -0.45410766428819471 34.346775790088031 15.64553963879654 ;
	setAttr ".r" -type "double3" 24.725901499281807 0 0 ;
	setAttr ".s" -type "double3" 1 1 6.0640680606222155 ;
	setAttr ".rp" -type "double3" 0 14.322699069976808 25.727708443070185 ;
	setAttr ".rpt" -type "double3" 0 2.3811783595197404 -9.5821357238870135 ;
	setAttr ".sp" -type "double3" 0 14.322699069976808 21.510467529296875 ;
	setAttr ".spt" -type "double3" 0 0 4.2172409137733098 ;
createNode mesh -n "LedgeShape" -p "|Ledge";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.5 14.984319 21.994925 
		0.5 14.984319 21.994925 -0.5 13.895453 21.994925 0.5 13.895453 21.994925 -0.5 13.661082 
		21.026011 0.5 13.661082 21.026011 -0.5 14.749945 21.026011 0.5 14.749945 21.026011;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1 0.5 0.5 -1 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 -1 -0.5 0.5 -1 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall11";
	setAttr ".t" -type "double3" 0 0.56828935659942914 4.8138530485577817 ;
	setAttr ".s" -type "double3" 1 0.21751268490107009 0.17901731609990376 ;
	setAttr ".rp" -type "double3" 0 57.503805160522461 6.4157476425170898 ;
	setAttr ".sp" -type "double3" 0 57.503805160522461 6.4157476425170898 ;
createNode mesh -n "WallShape11" -p "Wall11";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0.3125 0.625
		 0.3125 0.625 0.375 0.375 0.375 0.375 0.3125 0.625 0.3125 0.625 0.375 0.625 0.375
		 0.375 0.375 0.375 0.375 0.625 0.375 0.375 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -1.0582752 0 ;
	setAttr ".pt[1]" -type "float3" 0 -1.0582752 0 ;
	setAttr ".pt[8]" -type "float3" 0 -1.0582752 0 ;
	setAttr ".pt[9]" -type "float3" 0 -1.0582752 0 ;
	setAttr ".pt[10]" -type "float3" 0 -1.0582752 0 ;
	setAttr ".pt[11]" -type "float3" 0 -1.0582752 0 ;
	setAttr -s 12 ".vt[0:11]"  1 56.034824371 4.59854889 -1 56.034824371 4.59854889
		 1 60.91730499 4.59854889 -1 60.91730499 4.59854889 1 60.91730499 8.2329464 -1 60.91730499 8.2329464
		 1 60.91730499 4.59854889 -1 60.91730499 4.59854889 1 56.035255432 8.2329464 -1 56.035255432 8.2329464
		 1 56.035255432 4.59854889 -1 56.035255432 4.59854889;
	setAttr -s 19 ".ed[0:18]"  0 1 0 0 2 0 1 3 0 2 3 0 4 5 0 2 6 0 4 6 0
		 3 7 0 6 7 0 5 7 0 8 9 0 8 4 0 9 5 0 0 10 0 8 10 0 10 6 0 1 11 0 9 11 0 11 7 0;
	setAttr -s 9 -ch 38 ".fc[0:8]" -type "polyFaces" 
		f 4 -5 6 8 -10
		mu 0 4 0 1 2 3
		f 4 -11 11 4 -13
		mu 0 4 4 5 1 0
		f 4 14 15 -7 -12
		mu 0 4 5 6 2 1
		f 4 0 2 -4 -2
		mu 0 4 7 8 9 10
		f 4 -18 12 9 -19
		mu 0 4 11 4 0 3
		f 4 3 7 -9 -6
		mu 0 4 10 9 3 2
		f 4 1 5 -16 -14
		mu 0 4 7 10 2 6
		f 4 -3 16 18 -8
		mu 0 4 9 8 11 3
		f 6 -1 13 -15 10 17 -17
		mu 0 6 8 7 6 5 4 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape114" -p "Wall11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0.3125 0.625
		 0.3125 0.625 0.375 0.375 0.375 0.375 0.3125 0.625 0.3125 0.625 0.375 0.625 0.375
		 0.375 0.375 0.375 0.375 0.625 0.375 0.375 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 1.9445207 0 ;
	setAttr ".pt[1]" -type "float3" 0 1.9445207 0 ;
	setAttr ".pt[8]" -type "float3" 0 1.5594358 0 ;
	setAttr ".pt[9]" -type "float3" 0 1.5594358 0 ;
	setAttr ".pt[10]" -type "float3" 0 1.5594358 0 ;
	setAttr ".pt[11]" -type "float3" 0 1.5594358 0 ;
	setAttr -s 12 ".vt[0:11]"  1 54.090305328 4.59854889 -1 54.090305328 4.59854889
		 1 60.91730499 4.59854889 -1 60.91730499 4.59854889 1 60.91730499 8.2329464 -1 60.91730499 8.2329464
		 1 60.91730499 4.59854889 -1 60.91730499 4.59854889 1 54.47581863 8.2329464 -1 54.47581863 8.2329464
		 1 54.47581863 4.59854889 -1 54.47581863 4.59854889;
	setAttr -s 19 ".ed[0:18]"  0 1 0 0 2 0 1 3 0 2 3 0 4 5 0 2 6 0 4 6 0
		 3 7 0 6 7 0 5 7 0 8 9 0 8 4 0 9 5 0 0 10 0 8 10 0 10 6 0 1 11 0 9 11 0 11 7 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 -5 6 8 -10
		mu 0 4 0 1 2 3
		f 4 -11 11 4 -13
		mu 0 4 4 5 1 0
		f 4 14 15 -7 -12
		mu 0 4 5 6 2 1
		f 4 0 2 -4 -2
		mu 0 4 7 8 9 10
		f 4 -18 12 9 -19
		mu 0 4 11 4 0 3
		f 4 3 7 -9 -6
		mu 0 4 10 9 3 2
		f 4 1 5 -16 -14
		mu 0 4 7 10 2 6
		f 4 -3 16 18 -8
		mu 0 4 9 8 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
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
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 3;
	setAttr -s 5 ".dli[1:4]"  1 0 2 3;
	setAttr -s 4 ".dli";
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
	setAttr ".ftn" -type "string" "D:/Files/Desktop/The-Runners/Assets/Models/Buildings/CommercialZone/CommercialZoneTest.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n"
		+ "                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n"
		+ "                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
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
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 1 100 -ps 2 99 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
createNode polyBridgeEdge -n "polyBridgeEdge5";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode groupId -n "groupId101";
	setAttr ".ihi" 0;
createNode polyBridgeEdge -n "polyBridgeEdge8";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode polyBridgeEdge -n "polyBridgeEdge9";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode polyBridgeEdge -n "polyBridgeEdge11";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode polyBridgeEdge -n "polyBridgeEdge14";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode polyBridgeEdge -n "polyBridgeEdge15";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode polyBridgeEdge -n "polyBridgeEdge17";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode polyBridgeEdge -n "polyBridgeEdge18";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode polyBridgeEdge -n "polyBridgeEdge19";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode polyBridgeEdge -n "polyBridgeEdge21";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode polyBridgeEdge -n "polyBridgeEdge22";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode polyBridgeEdge -n "polyBridgeEdge27";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
createNode polyBridgeEdge -n "polyBridgeEdge28";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sma" 98.6897;
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
	setAttr ".vh" -type "double2" 483.33333333333343 86.904761904761926 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 1.4285714626312256;
	setAttr ".hyp[0].y" -72.857139587402344;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 212.85714721679687;
	setAttr ".hyp[1].y" -72.857139587402344;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".anf" yes;
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
createNode groupId -n "groupId178";
	setAttr ".ihi" 0;
createNode groupId -n "groupId179";
	setAttr ".ihi" 0;
createNode groupId -n "groupId180";
	setAttr ".ihi" 0;
createNode groupId -n "groupId181";
	setAttr ".ihi" 0;
createNode groupId -n "groupId182";
	setAttr ".ihi" 0;
createNode groupId -n "groupId183";
	setAttr ".ihi" 0;
createNode groupId -n "groupId184";
	setAttr ".ihi" 0;
createNode groupId -n "groupId185";
	setAttr ".ihi" 0;
createNode groupId -n "groupId186";
	setAttr ".ihi" 0;
createNode groupId -n "groupId187";
	setAttr ".ihi" 0;
createNode groupId -n "groupId188";
	setAttr ".ihi" 0;
createNode groupId -n "groupId190";
	setAttr ".ihi" 0;
createNode groupId -n "groupId194";
	setAttr ".ihi" 0;
createNode groupId -n "groupId195";
	setAttr ".ihi" 0;
createNode groupId -n "groupId196";
	setAttr ".ihi" 0;
createNode groupId -n "groupId197";
	setAttr ".ihi" 0;
createNode groupId -n "groupId198";
	setAttr ".ihi" 0;
createNode groupId -n "groupId199";
	setAttr ".ihi" 0;
createNode groupId -n "groupId200";
	setAttr ".ihi" 0;
createNode groupId -n "groupId201";
	setAttr ".ihi" 0;
createNode groupId -n "groupId203";
	setAttr ".ihi" 0;
createNode groupId -n "groupId204";
	setAttr ".ihi" 0;
createNode groupId -n "groupId205";
	setAttr ".ihi" 0;
createNode groupId -n "groupId206";
	setAttr ".ihi" 0;
createNode groupId -n "groupId207";
	setAttr ".ihi" 0;
createNode polyCloseBorder -n "polyCloseBorder1";
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[5:6]" "e[11:13]";
createNode groupId -n "groupId209";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCloseBorder -n "polyCloseBorder2";
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
createNode groupId -n "groupId210";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode animCurveTU -n "Ledge192_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Ledge192_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Ledge192_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.020301734539550864;
createNode animCurveTL -n "Ledge192_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 7.9705540855349248;
createNode animCurveTA -n "Ledge192_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Ledge192_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Ledge192_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Ledge192_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Ledge192_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Ledge192_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode groupId -n "groupId211";
	setAttr ".ihi" 0;
createNode groupId -n "groupId212";
	setAttr ".ihi" 0;
createNode groupId -n "groupId213";
	setAttr ".ihi" 0;
createNode groupId -n "groupId214";
	setAttr ".ihi" 0;
createNode displayLayer -n "Background2";
	setAttr ".dt" 2;
	setAttr ".v" no;
	setAttr ".do" 3;
createNode groupId -n "groupId215";
	setAttr ".ihi" 0;
createNode polyCloseBorder -n "polyCloseBorder3";
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
createNode groupId -n "groupId216";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyCloseBorder -n "polyCloseBorder4";
	setAttr ".ics" -type "componentList" 2 "e[11:13]" "e[20]";
createNode groupId -n "groupId217";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId218";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube1";
	setAttr ".w" 12.480877184385406;
	setAttr ".h" 14.425864283616203;
	setAttr ".d" 5.0561533384501729;
	setAttr ".cuv" 4;
createNode polyCloseBorder -n "polyCloseBorder5";
	setAttr ".ics" -type "componentList" 4 "e[0]" "e[10]" "e[13:14]" "e[16:17]";
createNode groupId -n "groupId219";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId220";
	setAttr ".ihi" 0;
createNode polyCloseBorder -n "polyCloseBorder6";
	setAttr ".ics" -type "componentList" 1 "e[8:11]";
createNode groupId -n "groupId221";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode animCurveTU -n "WallLedgeLeftOnly7_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "WallLedgeLeftOnly7_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "WallLedgeLeftOnly7_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 29.246229640552563;
createNode animCurveTL -n "WallLedgeLeftOnly7_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -41.308402379196089;
createNode animCurveTA -n "WallLedgeLeftOnly7_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "WallLedgeLeftOnly7_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "WallLedgeLeftOnly7_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "WallLedgeLeftOnly7_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2;
createNode animCurveTU -n "WallLedgeLeftOnly7_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.098484929307543351;
createNode animCurveTU -n "WallLedgeLeftOnly7_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 24.784200889809185;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :initialShadingGroup;
	setAttr -s 241 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 65 ".gn";
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
connectAttr "groupId33.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupId42.id" "LedgeShape128.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape128.iog.og[0].gco";
connectAttr "groupId43.id" "BoxShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "BoxShape6.iog.og[0].gco";
connectAttr "groupId44.id" "LedgeShape129.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape129.iog.og[0].gco";
connectAttr "groupId45.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "Ledge83Shape.iog.og[0].gco";
connectAttr "groupId47.id" "Ledge83Shape.ciog.cog[0].cgid";
connectAttr "groupId168.id" "WallShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallShape.iog.og[0].gco";
connectAttr "groupId169.id" "WallShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallShape1.iog.og[0].gco";
connectAttr "polyChipOff2.out" "polySurfaceShape36.i";
connectAttr "groupId48.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupId170.id" "LedgeRightOnlyShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeRightOnlyShape10.iog.og[0].gco";
connectAttr "groupId171.id" "WallShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallShape2.iog.og[0].gco";
connectAttr "groupId172.id" "LedgeShape142.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape142.iog.og[0].gco";
connectAttr "groupId173.id" "LedgeLeftOnlyShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeLeftOnlyShape6.iog.og[0].gco";
connectAttr "groupId174.id" "LedgeShape146.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape146.iog.og[0].gco";
connectAttr "groupId175.id" "LedgeShape145.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape145.iog.og[0].gco";
connectAttr "groupId176.id" "WallShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallShape3.iog.og[0].gco";
connectAttr "groupId177.id" "WallLedgeShape131.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape131.iog.og[0].gco";
connectAttr "groupId40.id" "LedgeRightOnlyShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeRightOnlyShape12.iog.og[0].gco";
connectAttr "groupId41.id" "WallShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallShape4.iog.og[0].gco";
connectAttr "groupId178.id" "LedgeWallShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeWallShape1.iog.og[0].gco";
connectAttr "groupId179.id" "LedgeShape178.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeShape178.iog.og[0].gco";
connectAttr "groupId180.id" "WallLedgeShape132.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape132.iog.og[0].gco";
connectAttr "Background2.di" "pPlane1.do";
connectAttr "groupId181.id" "MeshLedgeShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "MeshLedgeShape.iog.og[0].gco";
connectAttr "groupId182.id" "MeshLedge1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "MeshLedge1Shape.iog.og[0].gco";
connectAttr "groupId183.id" "MeshLedge2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "MeshLedge2Shape.iog.og[0].gco";
connectAttr "groupId184.id" "polySurfaceShape65.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape65.iog.og[0].gco";
connectAttr "groupId185.id" "polySurfaceShape68.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape68.iog.og[0].gco";
connectAttr "groupId101.id" "WallLedgeShape136.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape136.iog.og[0].gco";
connectAttr "WallLedgeLeftOnly7_visibility.o" "WallLedgeLeftOnly7.v";
connectAttr "WallLedgeLeftOnly7_translateX.o" "WallLedgeLeftOnly7.tx";
connectAttr "WallLedgeLeftOnly7_translateY.o" "WallLedgeLeftOnly7.ty";
connectAttr "WallLedgeLeftOnly7_translateZ.o" "WallLedgeLeftOnly7.tz";
connectAttr "WallLedgeLeftOnly7_rotateX.o" "WallLedgeLeftOnly7.rx";
connectAttr "WallLedgeLeftOnly7_rotateY.o" "WallLedgeLeftOnly7.ry";
connectAttr "WallLedgeLeftOnly7_rotateZ.o" "WallLedgeLeftOnly7.rz";
connectAttr "WallLedgeLeftOnly7_scaleX.o" "WallLedgeLeftOnly7.sx";
connectAttr "WallLedgeLeftOnly7_scaleY.o" "WallLedgeLeftOnly7.sy";
connectAttr "WallLedgeLeftOnly7_scaleZ.o" "WallLedgeLeftOnly7.sz";
connectAttr "groupId221.id" "WallLedgeLeftOnlyShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeLeftOnlyShape7.iog.og[0].gco";
connectAttr "groupParts8.og" "WallLedgeLeftOnlyShape7.i";
connectAttr "groupId186.id" "WallLedgeRightOnlyShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeRightOnlyShape1.iog.og[0].gco";
connectAttr "groupId187.id" "WallLedgeShape144.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape144.iog.og[0].gco";
connectAttr "groupId188.id" "WallLedgeShape165.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape165.iog.og[0].gco";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape78.iog.og[0].gco";
connectAttr "Ledge192_translateY.o" "LedgeLeftOnly5.ty";
connectAttr "Ledge192_translateZ.o" "LedgeLeftOnly5.tz";
connectAttr "Ledge192_translateX.o" "LedgeLeftOnly5.tx";
connectAttr "Ledge192_visibility.o" "LedgeLeftOnly5.v";
connectAttr "Ledge192_rotateX.o" "LedgeLeftOnly5.rx";
connectAttr "Ledge192_rotateY.o" "LedgeLeftOnly5.ry";
connectAttr "Ledge192_rotateZ.o" "LedgeLeftOnly5.rz";
connectAttr "Ledge192_scaleX.o" "LedgeLeftOnly5.sx";
connectAttr "Ledge192_scaleY.o" "LedgeLeftOnly5.sy";
connectAttr "Ledge192_scaleZ.o" "LedgeLeftOnly5.sz";
connectAttr "groupId209.id" "LedgeLeftOnlyShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeLeftOnlyShape5.iog.og[0].gco";
connectAttr "groupParts3.og" "LedgeLeftOnlyShape5.i";
connectAttr "groupId190.id" "WallLedgeShape150.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape150.iog.og[0].gco";
connectAttr "groupId38.id" "BoxShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "BoxShape2.iog.og[0].gco";
connectAttr "groupId210.id" "LedgeLeftOnlyShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeLeftOnlyShape4.iog.og[0].gco";
connectAttr "groupParts4.og" "LedgeLeftOnlyShape4.i";
connectAttr "groupId219.id" "WallLedgeLeftOnlyShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeLeftOnlyShape5.iog.og[0].gco";
connectAttr "groupParts7.og" "WallLedgeLeftOnlyShape5.i";
connectAttr "groupId217.id" "WallLedgeShape152.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape152.iog.og[0].gco";
connectAttr "groupParts6.og" "WallLedgeShape152.i";
connectAttr "groupId194.id" "GroundShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "GroundShape.iog.og[0].gco";
connectAttr "groupId195.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "groupId196.id" "GroundShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "GroundShape1.iog.og[0].gco";
connectAttr "groupId197.id" "polySurfaceShape95.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape95.iog.og[0].gco";
connectAttr "groupId198.id" "WallLedgeRightOnlyShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeRightOnlyShape2.iog.og[0].gco";
connectAttr "groupId199.id" "LedgeLeftOnlyShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeLeftOnlyShape.iog.og[0].gco";
connectAttr "groupId148.id" "WallLedgeShape153.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape153.iog.og[0].gco";
connectAttr "groupId149.id" "WallLedgeLeftOnlyShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeLeftOnlyShape.iog.og[0].gco";
connectAttr "groupId150.id" "WallLedgeMeshShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeMeshShape.iog.og[0].gco";
connectAttr "groupId151.id" "WallLedgeRightOnlyShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeRightOnlyShape6.iog.og[0].gco";
connectAttr "groupId152.id" "WallLedgeShape156.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape156.iog.og[0].gco";
connectAttr "groupId200.id" "WallLedgeShape164.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeShape164.iog.og[0].gco";
connectAttr "groupId201.id" "polySurfaceShape99.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape99.iog.og[0].gco";
connectAttr "groupId32.id" "WallLedge166Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedge166Shape.iog.og[0].gco";
connectAttr "groupId215.id" "BoxShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "BoxShape5.iog.og[0].gco";
connectAttr "groupId203.id" "Box4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Box4Shape.iog.og[0].gco";
connectAttr "groupId204.id" "LedgeRightOnlyShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "LedgeRightOnlyShape1.iog.og[0].gco";
connectAttr "groupId205.id" "MeshShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "MeshShape1.iog.og[0].gco";
connectAttr "groupId206.id" "MeshShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "MeshShape2.iog.og[0].gco";
connectAttr "groupId207.id" "Wall9Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall9Shape.iog.og[0].gco";
connectAttr "groupId216.id" "WallLedgeLeftOnlyShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedgeLeftOnlyShape4.iog.og[0].gco";
connectAttr "groupParts5.og" "WallLedgeLeftOnlyShape4.i";
connectAttr "groupId211.id" "WallLedge168Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedge168Shape.iog.og[0].gco";
connectAttr "groupId212.id" "WallLedge169Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedge169Shape.iog.og[0].gco";
connectAttr "groupId213.id" "WallLedge170Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedge170Shape.iog.og[0].gco";
connectAttr "groupId214.id" "WallLedge171Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedge171Shape.iog.og[0].gco";
connectAttr "groupId218.id" "WallLedge172Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallLedge172Shape.iog.og[0].gco";
connectAttr "polyCube1.out" "DiagonalTestOriginalShape.i";
connectAttr "groupId220.id" "WallShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallShape11.iog.og[0].gco";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
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
connectAttr "hyperView1.msg" "nodeEditorPanel2Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "Ledge194Shape.msg" "hyperLayout1.hyp[0].dn";
connectAttr "Ledge194.msg" "hyperLayout1.hyp[1].dn";
connectAttr "polySurfaceShape110.o" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "groupParts3.ig";
connectAttr "groupId209.id" "groupParts3.gi";
connectAttr "polySurfaceShape111.o" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "groupParts4.ig";
connectAttr "groupId210.id" "groupParts4.gi";
connectAttr "layerManager.dli[4]" "Background2.id";
connectAttr "polySurfaceShape112.o" "polyCloseBorder3.ip";
connectAttr "polyCloseBorder3.out" "groupParts5.ig";
connectAttr "groupId216.id" "groupParts5.gi";
connectAttr "polySurfaceShape113.o" "polyCloseBorder4.ip";
connectAttr "polyCloseBorder4.out" "groupParts6.ig";
connectAttr "groupId217.id" "groupParts6.gi";
connectAttr "|WallLedgeLeftOnly5|polySurfaceShape114.o" "polyCloseBorder5.ip";
connectAttr "polyCloseBorder5.out" "groupParts7.ig";
connectAttr "groupId219.id" "groupParts7.gi";
connectAttr "polySurfaceShape115.o" "polyCloseBorder6.ip";
connectAttr "polyCloseBorder6.out" "groupParts8.ig";
connectAttr "groupId221.id" "groupParts8.gi";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "Ledge1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge211Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeLeftOnly7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeRightOnly11Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge15Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge163Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge173Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge20Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan28Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan29Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan30Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan32Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan33Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeterMan34Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge167Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeRightOnlyShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge42Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge45Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge51Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge52Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge148Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge55Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge64Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge65Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge70Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge79Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeRightOnly3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeLeftOnly1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeLeftOnly3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge88Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeRightOnly4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeLeftOnly6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeLeftOnly2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BoxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Box1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge95Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge96Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge98Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge143Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge102Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge103Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge105Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge106Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge107Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Mesh3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Mesh4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge110Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge111Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge112Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge117Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge118Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge119Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge120Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeRightOnly4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge123Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge124Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge125Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge126Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge127Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge166Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "BoxShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeRightOnlyShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape128.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "BoxShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape129.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge83Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge83Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge126Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge129Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge140Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge141Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge144Shape.iog" ":initialShadingGroup.dsm" -na;
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
connectAttr "Ledge151Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nada4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nada1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nada2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "NadaShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nothing7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nothing8Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge157Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nada6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nada7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nada5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nada3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nothing1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nothing2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nothingShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape136.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "nothing3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nothing4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge170Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DiagonalLedge188Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Nothing5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge174Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge142Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge141Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge177Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge179Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape78.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "DiagonalLedge186Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeRightOnly5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeRightOnly6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge194Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape153.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeLeftOnlyShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge196Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge197Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge198Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeMeshShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeRightOnlyShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape156.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge157Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge199Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeRightOnly2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Mesh5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeLeftOnly2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge158Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge203Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge162Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeRightOnlyShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MeshShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeRightOnlyShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape142.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeLeftOnlyShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape146.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape145.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape131.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeWallShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeShape178.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape132.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "MeshLedgeShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "MeshLedge1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "MeshLedge2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape65.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape68.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeRightOnlyShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape144.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape165.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape150.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "GroundShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "GroundShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape95.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeRightOnlyShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeLeftOnlyShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape164.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape99.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Box4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeRightOnlyShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "MeshShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "MeshShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall9Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "DiagonalLedgeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeRightOnly3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LeftOnlyLedgeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DiagonalLedge189Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge206Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge207Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeRightOnly5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeLeftOnlyShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeLeftOnlyShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeRightOnly7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeMeshShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Box3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall10Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeLeftOnly3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LedgeRightOnly9Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge168Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge169Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge208Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge170Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge209Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge171Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Ledge210Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BoxShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeLeftOnlyShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeShape152.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedge172Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "DiagonalTestOriginalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DiagonalLedgeRightOnly2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DiagonalLedgeRightOnly1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DiagonalBox1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DiagonalBoxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DiagonalLedgeRightOnlyShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DiagonalLedgeLeftOnlyShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DiagonalLedgeRightOnly3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|Ledge|LedgeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeLeftOnlyShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WallLedgeLeftOnlyShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId101.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId148.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId149.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId150.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId151.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId152.msg" ":initialShadingGroup.gn" -na;
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
connectAttr "groupId180.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId181.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId182.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId183.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId184.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId185.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId186.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId187.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId188.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId190.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId194.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId195.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId196.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId197.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId198.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId199.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId200.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId201.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId203.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId204.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId205.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId206.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId207.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId209.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId210.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId211.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId212.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId213.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId214.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId215.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId216.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId217.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId218.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId219.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId220.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId221.msg" ":initialShadingGroup.gn" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of CommercialZoneFrozenTransformations.ma
