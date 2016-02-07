// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: customGroup2.sqf
//	@file Author: AgentRev, JoSchaap

if (!isServer) exitWith {};

private ["_group", "_pos", "_nbUnits", "_unitTypes", "_uPos", "_unit"];

_group = _this select 0;
_pos = _this select 1;
_nbUnits = param [2, 7, [0]];
_radius = param [3, 10, [0]];

_unitTypes =
[
	"C_man_hunter_1_F","C_man_p_beggar_F","C_man_p_beggar_F_afro",
	"C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_polo_1_F",
	"C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F",
	"C_man_p_beggar_F","C_man_p_beggar_F_afro",
	"C_man_p_fugitive_F","C_journalist_F","C_Orestes",
	"C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F",
	"C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F",
	"C_man_w_worker_F","C_man_p_beggar_F","C_man_p_beggar_F_afro",
	"C_man_p_fugitive_F"
];

for "_i" from 1 to _nbUnits do
{
	_uPos = _pos vectorAdd ([[random _radius, 0, 0], random 360] call BIS_fnc_rotateVector2D);
	_unit = _group createUnit [_unitTypes call BIS_fnc_selectRandom, _uPos, [], 0, "Form"];
	_unit setPosATL _uPos;

	removeAllWeapons _unit;
	removeAllAssignedItems _unit;
	removeVest _unit;
	removeBackpack _unit;
	_unit addVest "rhsusf_iotv_ucp_Rifleman";

	switch (true) do
	{
		// Grenadier every 3 units
		case (_i % 3 == 0):
		{
			_unit addUniform "rhs_uniform_cu_ucp_101st";
			_unit addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
			_unit addMagazine "rhs_mag_M441_HE";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addWeapon "rhs_weap_m4a1_carryhandle_m203";
			_unit addMagazine "rhs_mag_M441_HE";
			_unit addMagazine "rhs_mag_M441_HE";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addPrimaryWeaponItem "rhsusf_acc_nt4_black";
		};
		// RPG every 7 units, starting from second one
		case ((_i + 5) % 7 == 0):
		{
			_unit addUniform "rhs_uniform_cu_ucp_101st";
			_unit addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
			_unit addBackpack "rhsusf_assault_eagleaiii_ucp";
			_unit addMagazine "rhs_200rnd_556x45_M_SAW";
			_unit addMagazine "rhs_mag_smaw_HEAA";
			_unit addWeapon "rhs_weap_m249_pip_S_para";
			_unit addWeapon "rhs_weap_smaw";
			_unit addMagazine "rhs_mag_smaw_HEAA";
			_unit addMagazine "rhs_200rnd_556x45_M_SAW";
		};
		// Rifleman
		default
		{
			_unit addUniform "rhs_uniform_cu_ucp_101st";
			_unit addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";

			if (_unit == leader _group) then
			{
			_unit addWeapon "rhs_weap_M590_8RD";
			_unit setRank "SERGEANT";
			_unit addMagazine "rhsusf_8Rnd_00Buck";
			_unit addMagazine "rhsusf_8Rnd_00Buck";
			_unit addMagazine "rhsusf_8Rnd_00Buck";
			}
			else
			{
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addMagazine "rhs_mag_30Rnd_556x45_Mk318_Stanag";
			_unit addWeapon "rhs_weap_m4_grip";
			_unit addPrimaryWeaponItem "rhsusf_acc_nt4_black";
			};
		};
	};

	_unit addPrimaryWeaponItem "acc_flashlight";
	_unit enablegunlights "forceOn";

	_unit addRating 1e11;
	_unit spawn refillPrimaryAmmo;
	_unit call setMissionSkill;
	_unit addEventHandler ["Killed", server_playerDied];
};
