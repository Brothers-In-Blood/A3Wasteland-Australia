// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_APC.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
		"rhs_bmd1",
		"rhs_bmd1k",
		"rhs_bmd1p",
		"rhs_bmd1pk",
		"rhs_bmd1r",
		"rhs_bmd2",
		"rhs_bmd2m",
		"rhs_bmd2k",
		"rhs_bmd2_chdkz",
		"rhs_bmd1_chdkz",
		"rhs_bmd4_vdv",
		"rhs_bmd4m_vdv",
		"rhs_bmd4ma_vdv",
		"rhs_bmp1_vdv",
		"rhs_bmp1_tv",
		"rhs_bmp1_msv",
		"rhs_bmp1_vmf",
		"rhs_bmp1_vv",
		"rhs_bmp1p_vdv",
		"rhs_bmp1p_tv",
		"rhs_bmp1p_msv",
		"rhs_bmp1p_vmf",
		"rhs_bmp1p_vv",
		"rhs_bmp1k_vdv",
		"rhs_bmp1k_tv",
		"rhs_bmp1k_msv",
		"rhs_bmp1k_vmf",
		"rhs_bmp1k_vv",
		"rhs_bmp1d_vdv",
		"rhs_bmp1d_tv",
		"rhs_bmp1d_msv",
		"rhs_bmp1d_vmf",
		"rhs_bmp1d_vv",
		"rhs_prp3_vdv",
		"rhs_prp3_tv",
		"rhs_prp3_msv",
		"rhs_prp3_vmf",
		"rhs_prp3_vv",
		"rhs_bmp2e_vdv",
		"rhs_bmp2e_tv",
		"rhs_bmp2e_msv",
		"rhs_bmp2e_vmf",
		"rhs_bmp2e_vv",
		"rhs_bmp2_vdv",
		"rhs_bmp2_tv",
		"rhs_bmp2_msv",
		"rhs_bmp2_vmf",
		"rhs_bmp2_vv",
		"rhs_bmp2k_vdv",
		"rhs_bmp2k_tv",
		"rhs_bmp2k_msv",
		"rhs_bmp2k_vmf",
		"rhs_bmp2k_vv",
		"rhs_bmp2d_vdv",
		"rhs_bmp2d_tv",
		"rhs_bmp2d_msv",
		"rhs_bmp2d_vmf",
		"rhs_bmp2d_vv",
		"rhs_brm1k_base",
		"rhs_brm1k_vdv",
		"rhs_brm1k_tv",
		"rhs_brm1k_msv",
		"rhs_brm1k_vmf",
		"rhs_brm1k_vv",
		"rhs_bmp3_msv",
		"rhs_bmp3_late_msv",
		"rhs_bmp3m_msv",
		"rhs_bmp3mera_msv",
		"rhs_brm1k_vdv",
		"rhs_brm1k_tv",
		"rhs_brm1k_msv",
		"rhs_brm1k_vmf",
		"rhs_brm1k_vv",
		"rhs_btr60_vmf",
		"rhs_btr60_vdv",
		"rhs_btr60_vv",
		"rhs_btr60_msv",
		"rhs_btr70_vmf",
		"rhs_btr70_vdv",
		"rhs_btr70_vv",
		"rhs_btr70_msv",
		"rhs_btr80_msv",
		"rhs_btr80_vdv",
		"rhs_btr80_vv",
		"rhs_btr80_vmf",
		"rhs_btr80a_msv",
		"rhs_btr80a_vdv",
		"rhs_btr80a_vv",
		"rhs_btr80a_vmf",
		"rhs_btr70_chdkz",
		"rhs_btr60_chdkz",
		"RHS_M2A2",
		"RHS_M2A2_BUSKI",
		"RHS_M2A2_wd",
		"RHS_M2A2_BUSKI_WD"
	] call BIS_fnc_selectRandom;

	_missionType = switch (true) do
	{
		case ({_vehicleClass isKindOf _x} count ["B_APC_Tracked_01_AA_F", "O_APC_Tracked_02_AA_F"] > 0): { "Anti Aircraft Vehicle" };
		case (_vehicleClass isKindOf "Tank_F"):                                                          { "Infantry Fighting Vehicle" };
		default                                                                                          { "Armored Personnel Carrier" };
	};

	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
