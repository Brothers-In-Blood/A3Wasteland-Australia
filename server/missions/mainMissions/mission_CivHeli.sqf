// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_CivHeli.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass = [
	
	"rhs_ka60_grey",
	"rhs_ka60_c",
	"RHS_Mi8mt_vvs",
	"RHS_Mi8mt_vvsc",
	"RHS_Mi8mt_vdv",
	"RHS_Mi8mt_vv",
	"RHS_Mi8mt_Cargo_vvs",
	"RHS_Mi8mt_Cargo_vvsc",
	"RHS_Mi8mt_Cargo_vdv",
	"RHS_Mi8mt_Cargo_vv",
	"RHS_Mi8amt_civilian",
	"RHS_Mi8AMT_VVS_Base",
	"rhs_mi8amt_base",
	"RHS_Mi8AMT_vvs",
	"RHS_Mi8AMT_vvsc",
	"RHS_Mi8AMT_vdv",
	"RHS_CH_47F_base",
	"RHS_CH_47F",
	"RHS_CH_47F_10",
	"RHS_CH_47F_light",
	"RHS_UH1Y_UNARMED",
	"RHS_UH1Y_UNARMED_d",
	"RHS_UH60_Base",
	"RHS_UH60M_base",
	"RHS_UH60M_US_base",
	"RHS_UH60M_MEV_d",
	"RHS_UH60M_MEV2",
	"RHS_UH60M_MEV2_d",
	"RHS_UH60M_MEV",
	"RHS_CH_47F_base"
	
	] call BIS_fnc_selectRandom;

	_missionType = "Transport Helicopter";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
