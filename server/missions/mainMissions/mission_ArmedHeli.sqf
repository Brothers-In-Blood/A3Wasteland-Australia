// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_ArmedHeli.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
		"RHS_AH1Z",
		"RHS_AH1Z_GS",
		"RHS_AH1Z_CS",
		"RHS_AH1Z_wd",
		"RHS_AH1Z_wd_GS",
		"RHS_AH1Z_wd_CS",
		"RHS_AH64D",
		"RHS_AH64D_GS",
		"RHS_AH64D_CS",
		"RHS_AH64D_wd",
		"RHS_AH64D_wd_GS",
		"RHS_AH64D_wd_CS",
		"RHS_AH64D_AA",
		"RHS_AH64D_wd_AA",
		"RHS_AH64DGrey",
		"RHS_UH1Y",
		"RHS_UH1Y_d",
		"RHS_UH1Y_FFAR",
		"RHS_UH1Y_FFAR_d",
		"RHS_Ka52_vvsc",
		"RHS_Ka52_vvs",
		"RHS_Ka52_UPK23_vvs",
		"RHS_Ka52_UPK23_vvsc",
		"RHS_Mi24P_vvs",
		"RHS_Mi24P_vvsc",
		"RHS_Mi24P_CAS_vvs",
		"RHS_Mi24P_CAS_vvsc",
		"RHS_Mi24P_CAS_vdv",
		"RHS_Mi24P_AT_vvs",
		"RHS_Mi24P_AT_vvsc",
		"RHS_Mi24P_AT_vdv",
		"RHS_Mi24P_vdv",
		"RHS_Mi24V_vvs",
		"RHS_Mi24V_vvsc",
		"RHS_Mi24V_FAB_vvs",
		"RHS_Mi24V_FAB_vvsc",
		"RHS_Mi24V_FAB_vdv",
		"RHS_Mi24V_UPK23_vvs",
		"RHS_Mi24V_UPK23_vvsc",
		"RHS_Mi24V_UPK23_vdv",
		"RHS_Mi24V_AT_vvs",
		"RHS_Mi24V_AT_vvsc",
		"RHS_Mi24V_AT_vdv",
		"RHS_Mi24Vt_vvs",
		"RHS_Mi24V_vdv",
		"RHS_Mi8MTV3_vvs",
		"RHS_Mi8MTV3_vvsc",
		"RHS_Mi8MTV3_vdv",
		"RHS_Mi8MTV3_UPK23_vvs",
		"RHS_Mi8MTV3_UPK23_vvsc",
		"RHS_Mi8MTV3_UPK23_vdv",
		"RHS_Mi8MTV3_FAB_vvs",
		"RHS_Mi8MTV3_FAB_vvsc",
		"RHS_Mi8MTV3_FAB_vdv",
		"RHS_Mi8AMTSh_vvs",
		"RHS_Mi8AMTSh_vvsc",
		"RHS_Mi8AMTSh_UPK23_vvs",
		"RHS_Mi8AMTSh_UPK23_vvsc",
		"RHS_Mi8AMTSh_FAB_vvs",
		"RHS_Mi8AMTSh_FAB_vvsc"
	] call BIS_fnc_selectRandom;

	_missionType = "Armed Helicopter";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
