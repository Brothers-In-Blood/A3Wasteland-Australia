// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: getDefaultClothing.sqf
//	@file Author: AgentRev
//	@file Created: 22/12/2013 22:04

private ["_unit", "_item", "_side", "_isSniper", "_isDiver", "_defaultVest", "_result"];

_unit = _this select 0;
_item = _this select 1;

if (typeName _unit == "OBJECT") then
{
	_side = if (_unit == player) then { playerSide } else { side _unit };
	_unit = typeOf _unit;
}
else
{
	_side = _this select 2;
};

_isSniper = (["_sniper_", _unit] call fn_findString != -1);
_isDiver = (["_diver_", _unit] call fn_findString != -1);

_defaultVest = "V_Rangemaster_Belt";

_result = "";

switch (_side) do
{
	case BLUFOR:
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "rhs_uniform_cu_ocp" };
				if (_item == "vest") then { _result = "rhsusf_iotv_ocp" };
				_player addBackpack "rhsusf_assault_eagleaiii_ocp";

				_player addMagazine "rhsusf_mag_15Rnd_9x19_JHP";
				_player addWeapon "rhsusf_weap_m9";
				_player addMagazine "rhsusf_mag_15Rnd_9x19_JHP";
				_player addMagazine "rhsusf_mag_15Rnd_9x19_JHP";
				_player addMagazine "rhsusf_mag_15Rnd_9x19_JHP";
				_player addItem "FirstAidKit";
				_player selectWeapon "rhsusf_weap_m9";
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "rhs_uniform_cu_ocp" };
				if (_item == "vest") then { _result = "rhsusf_iotv_ocp" };
				_player addBackpack "rhsusf_assault_eagleaiii_ocp";

				_player addMagazine "rhsusf_mag_15Rnd_9x19_JHP";
				_player addWeapon "rhsusf_weap_m9";
				_player addMagazine "rhsusf_mag_15Rnd_9x19_JHP";
				_player addMagazine "rhsusf_mag_15Rnd_9x19_JHP";
				_player addMagazine "rhsusf_mag_15Rnd_9x19_JHP";
				_player addItem "FirstAidKit";
				_player selectWeapon "rhsusf_weap_m9";
			};
			default
			{
				if (_item == "uniform") then { _result = "rhs_uniform_cu_ocp" };
				if (_item == "vest") then { _result = "rhsusf_iotv_ocp" };
				_player addBackpack "rhsusf_assault_eagleaiii_ocp";

				_player addMagazine "rhsusf_mag_15Rnd_9x19_JHP";
				_player addWeapon "rhsusf_weap_m9";
				_player addMagazine "rhsusf_mag_15Rnd_9x19_JHP";
				_player addMagazine "rhsusf_mag_15Rnd_9x19_JHP";
				_player addMagazine "rhsusf_mag_15Rnd_9x19_JHP";
				_player addItem "FirstAidKit";
				_player selectWeapon "rhsusf_weap_m9";
			};
		};

		if (_item == "headgear") then { _result = "rhsusf_ach_helmet_ucp" };
	};
	case OPFOR:
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "rhs_uniform_vdv_mflora" };
				if (_item == "vest") then { _result = "rhs_6b23_digi_sniper" };
				_player addBackpack "rhs_assault_umbts";

				_player addMagazine "rhs_mag_9x18_12_57N181S";
				_player addWeapon "rhs_weap_makarov_pmm";
				_player addMagazine "rhs_mag_9x18_12_57N181S";
				_player addMagazine "rhs_mag_9x18_12_57N181S";
				_player addMagazine "rhs_mag_9x18_12_57N181S";
				_player addItem "FirstAidKit";
				_player selectWeapon "rhs_weap_makarov_pmm";
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "rhs_uniform_vdv_flora" };
				if (_item == "vest") then { _result = "rhs_6b23_digi_engineer" };
				_player addBackpack "rhs_assault_umbts";

				_player addMagazine "rhs_mag_9x18_12_57N181S";
				_player addWeapon "rhs_weap_makarov_pmm";
				_player addMagazine "rhs_mag_9x18_12_57N181S";
				_player addMagazine "rhs_mag_9x18_12_57N181S";
				_player addMagazine "rhs_mag_9x18_12_57N181S";
				_player addItem "FirstAidKit";
				_player selectWeapon "rhs_weap_makarov_pmm";
			};
			default
			{
				if (_item == "uniform") then { _result = "rhs_uniform_vdv_flora" };
				if (_item == "vest") then { _result = "rhs_6b23_digi_engineer" };
				_player addBackpack "rhs_assault_umbts_engineer_empty";

				_player addMagazine "rhs_mag_9x18_12_57N181S";
				_player addWeapon "rhs_weap_makarov_pmm";
				_player addMagazine "rhs_mag_9x18_12_57N181S";
				_player addMagazine "rhs_mag_9x18_12_57N181S";
				_player addMagazine "rhs_mag_9x18_12_57N181S";
				_player addItem "FirstAidKit";
				_player selectWeapon "rhs_weap_makarov_pmm";
			};
		};

		if (_item == "headgear") then { _result = "rhs_6b27m_ml" };
	};
	default
	{
		switch (true) do
		{
			case (_isSniper):
			{
				//if (_item == "uniform") then { _result = "rhs_uniform_cu_ucp_10th" };
				if (_item == "vest") then { _result = "rhsusf_iotv_ucp" };
				_player forceAddUniform "rhs_uniform_cu_ucp_10th";
				_player addBackpack "rhsusf_assault_eagleaiii_ucp";

				_player addMagazine "rhsusf_mag_7x45acp_MHP";
				_player addWeapon "rhsusf_weap_m1911a1";
				_player addMagazine "rhsusf_mag_7x45acp_MHP";
				_player addMagazine "rhsusf_mag_7x45acp_MHP";
				_player addMagazine "rhsusf_mag_7x45acp_MHP";
				_player addItem "FirstAidKit";
				_player selectWeapon "rhsusf_weap_m1911a1";
			};
			case (_isDiver):
			{
				//if (_item == "uniform") then { _result = "rhs_uniform_cu_ucp" };
				if (_item == "vest") then { _result = "rhsusf_iotv_ucp" };
				_player forceAddUniform "rhs_uniform_cu_ucp_10th";
				_player addBackpack "rhsusf_assault_eagleaiii_ucp";

				_player addMagazine "rhsusf_mag_7x45acp_MHP";
				_player addWeapon "rhsusf_weap_m1911a1";
				_player addMagazine "rhsusf_mag_7x45acp_MHP";
				_player addMagazine "rhsusf_mag_7x45acp_MHP";
				_player addMagazine "rhsusf_mag_7x45acp_MHP";
				_player addItem "FirstAidKit";
				_player selectWeapon "rhsusf_weap_m1911a1";
			};
			default
			{
				//if (_item == "uniform") then { _result = "rhs_uniform_cu_ucp" };
				if (_item == "vest") then { _result = "rhsusf_iotv_ucp" };
				_player forceAddUniform "rhs_uniform_cu_ucp_10th";
				_player addBackpack "rhsusf_assault_eagleaiii_ucp";

				_player addMagazine "rhsusf_mag_7x45acp_MHP";
				_player addWeapon "rhsusf_weap_m1911a1";
				_player addMagazine "rhsusf_mag_7x45acp_MHP";
				_player addMagazine "rhsusf_mag_7x45acp_MHP";
				_player addMagazine "rhsusf_mag_7x45acp_MHP";
				_player addItem "FirstAidKit";
				_player selectWeapon "rhsusf_weap_m1911a1";
			};
		};

		if (_item == "headgear") then { _result = "rhsusf_ach_helmet_ocp" };
	};
};

_result
