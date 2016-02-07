// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: fn_refilltruck.sqf
//	@file Author: AgentRev
//	@file Created: 30/06/2013 15:28

if (!isServer) exitWith {};

#define RANDOM_BETWEEN(START,END) (START + floor random ((END - START) + 1))

private ["_truck", "_truckItems", "_item", "_qty", "_mag"];
_truck = _this;

// Clear prexisting cargo first
clearMagazineCargoGlobal _truck;
clearWeaponCargoGlobal _truck;
clearItemCargoGlobal _truck;

// Item type, Item, # of items, # of magazines per weapon
_truckItems =
[
			["wep", ["rhs_weap_rpg7", "rhs_weap_smaw", "rhs_weap_rpg26"], RANDOM_BETWEEN(3,5), RANDOM_BETWEEN(1,2)],
			["wep", "rhs_weap_igla", RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,2)],
			["mag", ["IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "rhs_mine_M19_mag", "rhsusf_m112_mag", "rhs_mine_pmn2_mag"], RANDOM_BETWEEN(3,8)],
			["itm", ["muzzle_snds_M", "muzzle_snds_H", "muzzle_snds_H_MG", "muzzle_snds_B", "muzzle_snds_acp"], RANDOM_BETWEEN(0,3)],
			["wep", ["rhs_pdu4", "Leupold_Mk4"], RANDOM_BETWEEN(1,5)],
			["itm", "Medikit", RANDOM_BETWEEN(1,3)],
			["itm", "Toolkit", RANDOM_BETWEEN(0,1)],
			["itm", ["rhsusf_acc_ACOG_USMC", "rhsusf_acc_ELCAN", "rhsusf_acc_eotech_552", "rhsusf_acc_LEUPOLDMK4"], RANDOM_BETWEEN(0,2)],
			["itm", ["rhsusf_acc_nt4_black", "rhsusf_acc_SR25S", "rhsusf_acc_SF3P556", "rhsusf_acc_SFMB556"], RANDOM_BETWEEN(0,3)],
			["wep", ["rhsusf_weap_glock17g4", "rhs_weap_M590_8RD", "rhsusf_weap_m9"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(3,5)],
			["wep", ["rhs_weap_m16a4_grip", "rhs_weap_m4a1_carryhandle_grip", "rhs_weap_sr25"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["rhs_weap_m249_pip_S", "rhs_weap_m240B"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,4)],
			["mag", "rhsusf_20Rnd_762x51_m118_special_Mag", RANDOM_BETWEEN(4,8)],
			["mag", "rhs_mag_30Rnd_556x45_Mk318_Stanag", RANDOM_BETWEEN(4,8)],
			["mag", "rhs_mag_30Rnd_556x45_Mk262_Stanag", RANDOM_BETWEEN(4,8)],
			["mag", "rhs_mag_m67", RANDOM_BETWEEN(1,5)],
			["wep", ["rhs_weap_XM2010", "rhs_weap_XM2010_d", "rhs_weap_svdp_npz", "rhs_weap_sr25_ec"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["rhs_weap_m14ebrri", "rhs_weap_m32"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["Binocular", "Rangefinder"], RANDOM_BETWEEN(1,3)],
			["mag", "rhsusf_mag_6Rnd_M441_HE", RANDOM_BETWEEN(3,5)],
			["mag", "rhsusf_mag_6Rnd_M714_white", RANDOM_BETWEEN(3,5)],
			["itm", ["rhsusf_acc_M2010S", "rhsusf_acc_SR25S", "rhsusf_acc_harris_bipod", "rhsusf_acc_anpeq15side"], RANDOM_BETWEEN(0,2)],
			["itm", "rhsusf_acc_LEUPOLDMK4_2", RANDOM_BETWEEN(1,2)]

];

[_truck, _truckItems] call processItems;
