// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	["GenStore1", 0, 330, []],
	["GenStore2", 0, 723, []],
	["GenStore3", 0, 266, []],
	["GenStore4", 0, 261, []],
	["GenStore5", 0, 654, []],

	["GunStore1", 0, 267, []],
	["GunStore2", 0, 180, []],
	["GunStore3", 0, 225, []],
	["GunStore4", 0, [172,-6], []],
	["GunStore5", 0, 89, []],

	// Buttons you can disable: "Land", "Armored", "Tanks", "Helicopters", "Boats", "Planes"
	["VehStore1", 0, 53, ["Boats"]],
	["VehStore2", 0, 7, ["Boats"]],
	["VehStore3", 0, 328, []],
	["VehStore4", 0, 278, []],
	["VehStore5", 0, 225, []]
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	["GenStore1", [["weapon", ""], ["uniform", "rhs_uniform_cu_ucp"]]],
	["GenStore2", [["weapon", ""], ["uniform", "rhs_uniform_cu_ucp"]]],
	["GenStore3", [["weapon", ""], ["uniform", "rhs_uniform_cu_ucp"]]],
	["GenStore4", [["weapon", ""], ["uniform", "rhs_uniform_cu_ucp"]]],
	["GenStore5", [["weapon", ""], ["uniform", "rhs_uniform_cu_ucp"]]],

	["GunStore1", [["weapon", "rhs_weap_m240G"], ["uniform", "rhs_uniform_FROG01_d"]]],
	["GunStore2", [["weapon", "rhs_weap_m240G"], ["uniform", "rhs_uniform_FROG01_d"]]],
	["GunStore3", [["weapon", "rhs_weap_m240G"], ["uniform", "rhs_uniform_FROG01_d"]]],
	["GunStore4", [["weapon", "rhs_weap_m240G"], ["uniform", "rhs_uniform_FROG01_d"]]],
	["GunStore5", [["weapon", "rhs_weap_m240G"], ["uniform", "rhs_uniform_FROG01_d"]]],

	["VehStore1", [["weapon", ""], ["uniform", "rhs_uniform_FROG01_m81"]]],
	["VehStore2", [["weapon", ""], ["uniform", "rhs_uniform_FROG01_m81"]]],
	["VehStore3", [["weapon", ""], ["uniform", "rhs_uniform_FROG01_m81"]]],
	["VehStore4", [["weapon", ""], ["uniform", "rhs_uniform_FROG01_m81"]]],
	["VehStore5", [["weapon", ""], ["uniform", "rhs_uniform_FROG01_m81"]]]
];
