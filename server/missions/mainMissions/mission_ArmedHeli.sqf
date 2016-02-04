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
	"RHS_Mi8MTV3_vdv",
	"RHS_Ka52_vvs",
	"RHS_Mi24P_vdv",
	"RHS_Mi8AMTSh_vdv",
	"RHS_Mi24V_vdv",
	"RHS_AH64D",
	"RHS_AH64D_AA",
	"RHS_AH64D_CS",
	"RHS_AH64D_GS",
	"RHS_AH1Z_wd_10",
	"RHS_AH1Z__wd_GS_10",
	"RHS_AH1Z_wd_CS_10",
	"RHS_AH1Z_wd",
	"RHS_AH1Z_wd_GS",
	"RHS_AH1Z_wd_CS"
	] call BIS_fnc_selectRandom;

	_missionType = "Armed Helicopter";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
