// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.1
//	@file Name: boxSpawning.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 20/11/2012 05:19
//	@file Args:

if (!isServer) exitWith {};

private ["_counter","_pos","_markerName","_marker","_hint","_safePos","_boxes", "_boxList", "_boxClass", "_box", "_boxItems", "_magName"];

_counter = 0;

_boxList =
[
	"Box_NATO_Wps_F",
	"Box_NATO_WpsSpecial_F",
	"Box_East_Wps_F",
	"Box_East_WpsSpecial_F",
	"Box_IND_Wps_F",
	"Box_IND_WpsSpecial_F"
];

{
	if (random 1 < 0.50) then // 50% chance of box spawning at each town
	{
		_pos = getMarkerPos (_x select 0);
		_boxClass = _boxList call BIS_fnc_selectRandom;
		_safePos = [_pos, 10, (_x select 1) / 2, 1, 0, 60 * (pi / 180), 0] call findSafePos; // spawns somewhere within half the town radius
		_box = createVehicle [_boxClass, _safePos, [], 0, "NONE"];
		_box allowDamage false;

		// Clear prexisting cargo first
		clearMagazineCargoGlobal _box;
		clearWeaponCargoGlobal _box;
		clearItemCargoGlobal _box;

		switch (true) do
		{
			// Basic Weapons box contents
			case (["_Wps_F", _boxClass] call fn_findString != -1):
			{
				switch (true) do
				{
					case (_box isKindOf "Box_NATO_Wps_F"):
					{
						_boxItems =
						[
							["wep", "rhs_weap_m16a4", 5, 4],
							["wep", "rhs_weap_m249_pip_L", 2, 4],
							["wep", "rhs_weap_m4", 1, 5] // Vermin
						]
					};
					case (_box isKindOf "Box_East_Wps_F"):
					{
						_boxItems =
						[
							["wep", "rhs_weap_ak104", 5, 4],
							["wep", "rhs_weap_ak74m", 2, 4],
							["wep", "rhs_weap_ak74m", 1, 5] // Sting
						]
					};
					case (_box isKindOf "Box_IND_Wps_F"):
					{
						_boxItems =
						[
							["wep", "rhs_weap_ak74m", 5, 4],
							["wep", "rhs_weap_pkm", 2, 4],
							["wep", "rhs_weap_ak74m", 1, 5]
						]
					};
					default { _boxItems = [] };
				};

				[_box, _boxItems] call processItems;

				// Extra loadout
				_boxItems =
				[
					["wep", "rhsusf_weap_m1911a1", 1, 5],
					["mag", "rhsusf_mag_7x45acp_MHP", 5]
				];

				[_box, _boxItems] call processItems;
			};

			// Special Weapons box contents
			case (["_WpsSpecial_F", _boxClass] call fn_findString != -1):
			{
				// Specific loadouts
				switch (true) do
				{
					case (_box isKindOf "Box_NATO_WpsSpecial_F"):
					{
						_boxItems =
						[
							["wep", "rhs_weap_sr25_ec", 1, 8],
							["wep", "rhs_weap_XM2010", 1, 8]
						];
					};
					case (_box isKindOf "Box_East_WpsSpecial_F"):
					{
						_boxItems =
						[
							["wep", "rhs_weap_svdp", 1, 8],
							["wep", "rhs_weap_pkp", 1, 8]
						];
					};
					case (_box isKindOf "Box_IND_WpsSpecial_F"):
					{
						_boxItems =
						[
							["wep", "rhs_weap_svdp", 1, 8],
							["wep", "rhs_weap_pkp", 1, 8]
						];
					};
					default { _boxItems = [] };
				};

				[_box, _boxItems] call processItems;

				// Extra loadout
				_boxItems =
				[
					["wep", "rhs_weap_M590_8RD", 1, 4], // SDAR + 4 underwater mags
					["mag", "rhsusf_8Rnd_00Buck", 4] // 4 normal mags
				];

				[_box, _boxItems] call processItems;
			};
		};

		_counter = _counter + 1;
	};
} forEach (call cityList);

diag_log format ["WASTELAND SERVER - %1 Ammo Caches Spawned",_counter];
