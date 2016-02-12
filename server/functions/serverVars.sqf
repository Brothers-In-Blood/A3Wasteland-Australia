// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.1
//	@file Name: serverVars.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [404] Pulse, [GoT] JoSchaap, MercyfulFate, AgentRev
//	@file Created: 20/11/2012 05:19
//	@file Args:

if (!isServer && hasInterface) exitWith {};

diag_log "WASTELAND SERVER - Initializing Server Vars";

if (isServer) then
{
	#include "setupServerPVars.sqf"
};

currentStaticHelis = []; // Storage for the heli marker numbers so that we don't spawn wrecks on top of live helis

//Civilian Vehicle List - Random Spawns
civilianVehicles =
[
	"RHS_UAZ_MSV_01",
	"rhs_uaz_open_MSV_01",
	"RHS_Ural_Open_Civ_01",
	"rhsusf_m998_w_2dr",
	"rhsusf_m998_w_4dr"
];

//Light Military Vehicle List - Random Spawns
lightMilitaryVehicles =
[
	"rhs_uaz_open_MSV_01",
	"rhs_uaz_dshkm_chdkz",
	"rhsusf_m1025_w",
	"rhsusf_m1025_d",
	"rhsusf_m1025_w_s",
	"rhsusf_m1025_d_s",
	"rhs_gaz66_r142_vmf"
];

//Medium Military Vehicle List - Random Spawns
mediumMilitaryVehicles =
[
	"rhs_gaz66_repair_vmf",
	"rhsusf_rg33_d",
	"rhsusf_rg33_wd",
	"rhsusf_m1025_w",
	"rhs_tigr_m_vdv",
	"rhs_tigr_vdv"
];

//Water Vehicles - Random Spawns
waterVehicles =
[
	"B_Lifeboat",
	"O_Lifeboat",
	"C_Rubberboat",
//	"B_SDV_01_F",
//	"O_SDV_01_F",
//	"I_SDV_01_F",
	"B_Boat_Transport_01_F",
	"O_Boat_Transport_01_F",
	"I_Boat_Transport_01_F",
	"I_G_Boat_Transport_01_F",
	"B_Boat_Armed_01_minigun_F",
	"O_Boat_Armed_01_hmg_F",
	"I_Boat_Armed_01_minigun_F",
	"C_Boat_Civil_01_F",
	"C_Boat_Civil_01_police_F",
	"C_Boat_Civil_01_rescue_F"
];

//Essential List - Random Spawns.
essentialsList =
[
	"B_supplyCrate_F",
	"Land_Sacks_goods_F",
	"Land_BarrelWater_F"
];

//Object List - Random Spawns.
objectList =
[
	"CamoNet_INDP_open_F",
	"CamoNet_INDP_open_F",
	"Land_BagBunker_Large_F",
	"Land_BagBunker_Large_F",
	"Land_BagBunker_Small_F",
	"Land_BagBunker_Small_F",
	"Land_BagBunker_Tower_F",
	"Land_BagBunker_Tower_F",
	"Land_BarGate_F",
	"Land_Canal_Wall_Stairs_F",
	"Land_Canal_WallSmall_10m_F",
	"Land_Canal_WallSmall_10m_F",
	"Land_CncBarrierMedium4_F",
	"Land_CncShelter_F",
	"Land_CncWall4_F",
	"Land_HBarrier_1_F",
	"Land_HBarrier_3_F",
	"Land_HBarrier_5_F",
	"Land_HBarrier_5_F",
	"Land_HBarrier_5_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierTower_F",
	"Land_HBarrierWall4_F",
	"Land_HBarrierWall4_F",
	"Land_HBarrierWall6_F",
	"Land_HBarrierWall6_F",
	"Land_MetalBarrel_F",
	"Land_Mil_ConcreteWall_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Pipes_large_F",
	"Land_RampConcrete_F",
	"Land_RampConcreteHigh_F",
	"Land_Shoot_House_Wall_F"
];

//Object List - Random Spawns.
staticWeaponsList =
[
	"rhs_2b14_82mm_msv",
	"RHS_M252_D"
];

//Object List - Random Helis.
staticHeliList =
[
	"rhs_ka60_grey",
	"B_Heli_Light_01_F",
	"RHS_Mi8mt_Cargo_vvs",
	"rhs_ka60_c",
	"RHS_Mi8amt_civilian",
	"RHS_UH1Y_UNARMED"
	// don't put cargo helicopters here, it doesn't make sense to find them in towns; they spawn in the CivHeli mission
];

//Object List - Random Planes.
staticPlaneList =
[
	"RHS_Su25SM_vvs",
	"RHS_A10",
	"RHS_T50_vvs_051",
	"rhsusf_f22"
];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons =
[
	"rhsusf_weap_glock17g4",
	"rhsusf_weap_m1911a1",
	"rhsusf_weap_m9",
	"rhs_weap_ak103_npz",
	"rhs_weap_ak104",	
	"rhs_weap_M590_5RD",	
	"rhs_weap_ak103",
	"rhs_weap_M590_8RD",
	"rhs_weap_ak104_npz",
	"rhs_weap_ak74m_plummag_folded",
	"rhs_weap_ak74m",
	"rhs_weap_ak74m_npz",
	"rhs_weap_akm",
	"rhs_weap_ak105",
	"rhs_weap_ak105_npz",
	"rhs_weap_sr25",
	"rhs_weap_akms",
	"rhs_weap_m14ebrri",
	"rhs_weap_sr25_ec",
	"rhs_weap_m16a4",
	"rhs_weap_m16a4_carryhandle_grip",
	"rhs_weap_m16a4_grip",
	"rhs_weap_m4",
	"rhs_weap_m4_grip2",
	"rhs_weap_m4_carryhandle",
	"rhs_weap_m4_grip",
	"rhs_weap_m4a1_carryhandle",
	"rhs_weap_m4a1_carryhandle_grip2",
	"rhs_weap_m4a1_carryhandle_grip",
	"rhs_weap_m4a1",
	"rhs_weap_m4a1_grip2",
	"rhs_weap_m4a1_grip",
	"rhs_weap_m249_pip_S",
	"rhs_weap_m249_pip_L",
	"rhs_weap_pkm",
	"rhs_weap_pkp"
];

vehicleAddition =
[
	"rhs_acc_dtk4short",
	"rhs_acc_dtk3",
	"rhs_acc_dtk4long", 
	"rhsusf_acc_SR25S", 
	"rhsusf_acc_nt4_black",
	"rhsusf_acc_SF3P556",
	"rhsusf_acc_SFMB556",
	"rhsusf_acc_harris_bipod",
	"rhsusf_acc_rotex5_grey",
	"rhsusf_acc_compm4",
	"rhsusf_acc_ELCAN",
	"rhsusf_acc_ACOG2_USMC",
	"rhsusf_acc_ACOG_USMC",
	"rhsusf_acc_ACOG3_USMC",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_LEUPOLDMK4",
	"rhs_acc_pkas",
	"rhs_acc_1p29",
	"rhs_acc_ekp1",
	"rhsusf_acc_anpeq15A",
	"rhsusf_ANPVS_15",
	"rhs_pdu4",
	"Medikit",
	"FirstAidKit",
	"ToolKit"
];

vehicleAddition2 =
[
	"Chemlight_blue",
	"rhs_tr8_periscope",
	"Chemlight_yellow",
	"Chemlight_red"
];
