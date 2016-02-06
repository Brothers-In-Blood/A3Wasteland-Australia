// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_LightArmVeh.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
		"rhsusf_m113_usarmy",
		"rhsusf_m113_usarmy_M240",
		"rhsusf_m113_usarmy_MK19",
		"rhsusf_m113d_usarmy",
		"rhsusf_m113d_usarmy_M240",
		"rhsusf_m113d_usarmy_MK19",
		"rhs_prp3_vdv",
		"rhs_prp3_tv",
		"rhs_prp3_msv",
		"rhs_prp3_vmf",
		"rhs_prp3_vv"
	] call BIS_fnc_selectRandom;

	_missionType = "Light Armed Vehicle";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
