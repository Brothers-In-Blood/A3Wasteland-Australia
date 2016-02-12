// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

// empty name = name is extracted from class config

pistolArray = compileFinal str
[
	// Handguns
	["M320 Handheld", "rhs_weap_M320", 200],
	["Glock 17 Gen4", "rhsusf_weap_glock17g4", 150],
	["M1911A1", "rhsusf_weap_m1911a1", 100],
	["Beretta M9", "rhsusf_weap_m9", 125],
	["Makarov", "rhs_weap_makarov_pmm", 75],
	["MP-443", "rhs_weap_pya", 100]
];

smgArray = compileFinal str
[
		
	// Shotguns
	["Mossberg 590 (Long)", "rhs_weap_M590_8RD", 400],
	["Mossberg 590 (Breacher)", "rhs_weap_M590_5RD", 400],
	
	// 6-shot Standalone Launcher
	["M32 MGL", "rhs_weap_m32", 1000]
];

rifleArray = compileFinal str
[
	// AK-47
	["AK-103 (GP25, Top Rail)", "rhs_weap_ak103_gp25_npz", 1050],
	["AK-103 (GP25)", "rhs_weap_ak103_gp25", 1000],
	["AK-103 (Top Rail)", "rhs_weap_ak103_npz", 950],
	["AK-103", "rhs_weap_ak103", 900],
	["AK-104 (Top Rail)", "rhs_weap_ak104_npz", 950],
	["AK-104", "rhs_weap_ak104", 900],
	
	// AK-74
	["AK-74M", "rhs_weap_ak74m_plummag_folded", 500],
	["AK-74M (Desert)", "rhs_weap_ak74m_desert_folded", 500],
	["AK-74M (Camo)", "rhs_weap_ak74m_camo_folded", 500],
	["AK-74", "rhs_weap_ak74m", 600],
	["AK-74 (Top Rail)", "rhs_weap_ak74m_npz", 650],
	["AK-74 (Camo)", "rhs_weap_ak74m_camo", 650],
	["AK-74 (Camo, Top Rail)", "rhs_weap_ak74m_camo_npz", 750],
	["AK-74 (Desert)", "rhs_weap_ak74m_desert", 650],
	["AK-74 (Desert, Top Rail)", "rhs_weap_ak74m_desert_npz", 750],
	["AK-74 (GP25)", "rhs_weap_ak74m_gp25", 875],
	["AK-74 (GP25, Top Rail)", "rhs_weap_ak74m_gp25_npz", 875],
	["AK-105 (Top Rail)", "rhs_weap_ak105_npz", 750],
	["AK-105", "rhs_weap_ak105", 750],
	["AKM", "rhs_weap_akm", 750],
	["AKM (GP25)", "rhs_weap_akm_gp25", 850],
	["AKMS", "rhs_weap_akms", 800],
	["AKMS (GP25)", "rhs_weap_akms_gp25", 850],

	// Marksmen Rifles
	["AS VAL", "rhs_weap_asval", 1300],
	["AS VAL (Top Rail)", "rhs_weap_asval_npz", 1300],
	["M2010 ESR", "rhs_weap_XM2010", 2200],
	["M2010 ESR (Woodland)", "rhs_weap_XM2010_wd", 2200],
	["M2010 ESR (Desert)", "rhs_weap_XM2010_d", 2200],
	["M2010 ESR (Semi-Arid)", "rhs_weap_XM2010_sa", 2200],
	["SVDM", "rhs_weap_svdp", 1800],
	["SVDM (Camo)", "rhs_weap_svdp_wd", 1800],
	["SVDM (Top Rail)", "rhs_weap_svdp_npz", 1900],
	["SVDM (Camo, Top Rail)", "rhs_weap_svdp_wd_npz", 1900],
	["SVDS", "rhs_weap_svds", 1800],
	["SVDS (Top Rail)", "rhs_weap_svds_npz", 1900],
	["KAC SR-25EC", "rhs_weap_sr25_ec", 2100],
	["KAC SR-25M", "rhs_weap_sr25", 2100],
	["M14 EBR-RI", "rhs_weap_m14ebrri", 2250],

	// M16
	["M16A4", "rhs_weap_m16a4", 1000],
	["M16A4 (Carryhandle)", "rhs_weap_m16a4_carryhandle", 900],
	["M16A4 (Grippod)", "rhs_weap_m16a4_grip", 1000],
	["M16A4 (Carryhandle, Grippod)", "rhs_weap_m16a4_carryhandle_grip", 950],
	["M16A4 (M203)", "rhs_weap_m16a4_carryhandle_M203", 1150],
	
	// M4/M4A1/M27
	["M4", "rhs_weap_m4", 1000],
	["M4 (AFG)", "rhs_weap_m4_grip2", 1050],
	["M4 (Carryhandle)", "rhs_weap_m4_carryhandle", 950],
	["M4 (Grippod)", "rhs_weap_m4_grip", 1050],
	["M4 (M203)", "rhs_weap_m4_m203", 1150],
	["M4 (M203S)", "rhs_weap_m4_m203S", 1125],
	["M4 (M320)", "rhs_weap_m4_m320", 1200],
	["M4A1 (Carryhandle)", "rhs_weap_m4a1_carryhandle", 900],
	["M4A1 (Carryhandle, AFG)", "rhs_weap_m4a1_carryhandle_grip2", 900],
	["M4A1 (Carryhandle, Grippod)", "rhs_weap_m4a1_carryhandle_grip", 900],
	["M4A1 (Carryhandle, M203)", "rhs_weap_m4a1_carryhandle_m203", 1000],
	["M4A1 (Carryhandle, M203S)", "rhs_weap_m4a1_carryhandle_m203S", 1000],
	["M4A1 PIP", "rhs_weap_m4a1", 1100],
	["M4A1 PIP (AFG)", "rhs_weap_m4a1_grip2", 1150],
	["M4A1 PIP (Grippod)", "rhs_weap_m4a1_grip", 1150],
	["M4A1 PIP (M203)", "rhs_weap_m4a1_m203", 1250],
	["M4A1 PIP (M203S)", "rhs_weap_m4a1_m203s", 1250],
	["M4A1 PIP (M320)", "rhs_weap_m4a1_m320", 1300],
	["SDAR UW Rifle", "arifle_SDAR_F", 1000]

];

lmgArray = compileFinal str
[
	// M240	
	["M240B", "rhs_weap_m240B", 1500],
	["M240G", "rhs_weap_m240G", 1450],
	
	// M249
	["M249 PIP", "rhs_weap_m249_pip_L", 1350],
	["M249 PIP (Para)", "rhs_weap_m249_pip_L_para", 1350],
	["M249 PIP (VFG)", "rhs_weap_m249_pip_L_vfg", 1350],
	["M249 PIP (Short)", "rhs_weap_m249_pip_S", 1350],
	["M249 PIP (Short, Para)", "rhs_weap_m249_pip_S_para", 1350],
	["M249 PIP (Short, VFG)", "rhs_weap_m249_pip_S_vfg", 1350],
	
	//AKM & PKP
	["PKM", "rhs_weap_pkm", 1400],
	["PKP", "rhs_weap_pkp", 1450]
];

launcherArray = compileFinal str
[
	["9K38 Igla", "rhs_weap_igla", 5000],
	["FGM-148 Javelin", "rhs_weap_fgm148", 6000],
	["FIM-92 Stinger", "rhs_weap_fim92", 5500],
	["M136 HEAT (Single-use)", "rhs_weap_M136", 3000],
	["M136 HEDP (Single-use)", "rhs_weap_M136_hedp", 3000],
	["M136 HP (Single-use)", "rhs_weap_M136_hp", 2800],
	["MK153 Mod 0 SMAW (Black)", "rhs_weap_smaw", 5000],
	["MK153 Mod 0 SMAW (Green)", "rhs_weap_smaw_green", 5000],
	["RPG-26", "rhs_weap_rpg26", 4000],
	["RPG-7", "rhs_weap_rpg7", 3500],
	["RSHG-2", "rhs_weap_rshg2", 3800]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 30000],
	["2A18M Howitzer", "rhs_D30_msv", 10000], 
	["2B14 82mm Mortar", "rhs_2b14_82mm_msv", 8000],
	["9K115-2 ATGM", "rhs_Metis_9k115_2_msv", 7000],
	["Static 2x 9K38 Igla Pod", "rhs_Igla_AA_pod_msv", 9000],
	["AGS30 40mm GMG (Low Tripod)", "RHS_AGS30_TriPod_MSV", 3000],
	["DShKM (High Tripod)", "rhs_DSHKM_ins", 3000],
	["DShKM (Low Tripod)", "rhs_DSHKM_Mini_TriPod_ins", 2500],
	["Static 2x FIM-92F Stinger Pod", "RHS_Stinger_AA_pod_D", 8500],//
	["KORD 12.7mm (Low Tripod)", "rhs_KORD_MSV", 2500],
	["KORD 12.7mm (High Tripod)", "rhs_KORD_high_MSV", 3000], 
	["M119 Howitzer", "RHS_M119_D", 10000],//
	["M252 81mm Mortar", "RHS_M252_D", 8500],//
	["'Ma Deuce' (High Tripod)", "RHS_M2StaticMG_D", 3500],//
	["'Ma Deuce' (Low Tripod)", "RHS_M2StaticMG_MiniTripod_D", 3000],//
	["M41A4 TOW", "RHS_TOW_TriPod_D", 7000],//
	["Mk. 19 (Low Tripod)", "RHS_MK19_TriPod_D", 4000],//
	["MSV 12.7mm (Low Tripod)", "RHS_NSV_TriPod_MSV", 4000],
	["SPG-9 Recoilless Rocket", "rhs_SPG9_INS", 5000]
];

throwputArray = compileFinal str
[
	// Grenades
	["RGD-5 Frag", "rhs_mag_rgd5", 100],
	["RGN Frag", "rhs_mag_rgn", 100],
	["RGO Frag", "rhs_mag_rgo", 100],
	["RDG-2 Smoke (White)", "rhs_mag_rdg2_white", 50],
	["RDG-2 Smoke (Black)", "rhs_mag_rdg2_black", 50],
	["M67 Frag", "rhs_mag_m67", 100],
	["MK3A2 Concussion", "rhs_mag_mk3a2", 50],
	["M18 Smoke (Yellow)", "rhs_mag_m18_yellow", 50],
	["M18 Smoke (Purple)", "rhs_mag_m18_purple", 50],
	["M18 Smoke (Red)", "rhs_mag_m18_red", 50],
	["M18 Smoke (Green)", "rhs_mag_m18_green", 50],
	["AN-M8 Smoke HC", "rhs_mag_an_m8hc", 50],
	["M7A3 Teargas", "rhs_mag_m7a3_cs", 80],
	["AN-M14 TH3 Indinciary", "rhs_mag_an_m14_th3", 50],
	["M84 Flashbang", "rhs_mag_mk84", 50],
	["Plamya-M Stun Grenade", "rhs_mag_plamyam", 50],
	["Fakel Flashbang", "rhs_mag_fakel", 50],
	["Fakel Stun Grenade", "rhs_mag_fakels", 50],
	["Zarya-2 Flashbang", "rhs_mag_zarya2", 50],
	["M69 Practice Grenade", "rhs_mag_m69", 50],
	
	// Mines
	["M112 Demo Charge", "rhsusf_m112_mag", 250],
	["M112 Demo Block (4x M112)", "rhsusf_m112x4_mag", 800],
	["M19 AT Mine", "rhs_mine_M19_mag", 100],
	["TM-62M AT Mine", "rhs_mine_tm62m_mag", 100],
	["PMN-2 AP Mine", "rhs_mine_pmn2_mag", 50],
	["Small IED (Dug-in)", "IEDLandSmall_Remote_Mag", 300],
	["Large IED (Dug-in)", "IEDLandBig_Remote_Mag", 400],
	["Small IED (Urban)", "IEDUrbanSmall_Remote_Mag", 300],
	["Large IED (Urban)", "IEDUrbanBig_Remote_Mag", 400],
	["AP Mine (Tripwire)", "APERSTripMine_Wire_Mag", 200],
	["AP Mine (Step)", "APERSMine_Range_Mag", 200]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	/* ----PISTOL ARRAY---- */
	["17rd 9x19 JHP (Glock 17)", "rhsusf_mag_17Rnd_9x19_JHP", 10],
	["7rd 45ACP (M1911A1)", "rhsusf_mag_7x45acp_MHP", 15],
	["15rd 9x19 JHP (M9)", "rhsusf_mag_15Rnd_9x19_JHP", 15],
	["17rd 9x19 (MP-443)", "rhs_mag_9x19_17", 15],
	["12rd 9x18 (Makarov)", "rhs_mag_9x18_12_57N181S", 15],
	
	/* ----SMG ARRAY---- */
	// SMG ARRAY
	// Shotguns
	["8rd 12ga Buckshot (590 Long)", "rhsusf_8Rnd_00Buck", 20],
	["5rd 12ga Buckshot (590 Short)", "rhsusf_5Rnd_00Buck", 20],
	
	// M32 MGL
	["6x 40MM M441 HE", "rhsusf_mag_6Rnd_M441_HE", 55],
	["6x 40MM M433 HEDP", "rhsusf_mag_6Rnd_M433_HEDP", 55],
	["6x 40MM M576 Buckshot", "rhsusf_mag_6Rnd_M576_Buckshot", 55],
	["6x 40MM M781 Practice", "rhsusf_mag_6Rnd_M781_Practice", 55],
	["6x 40MM M714 White Smoke", "rhsusf_mag_6Rnd_M714_white", 55],
	
	
	/* ----RIFLE ARRAY----*/	
	// AK-47
	["30rd 7.62x39mm 231", "rhs_30Rnd_762x39mm", 15], 
	["30rd 7.62x39mm 231P(Tracers)", "rhs_30Rnd_762x39mm_tracer", 15], 
	["30rd 7.62x39mm 231-89", "rhs_30Rnd_762x39mm_89", 15], 
	["30rd 7.62x39mm 231U", "rhs_30Rnd_762x39mm_U", 15], 
	
	// AK-74
	["30rd 5.45x39 (Mixed Tracers/Non)", "rhs_30Rnd_545x39_AK", 25],
	["30rd 5.45x39", "rhs_30Rnd_545x39_AK_no_tracers", 25],
	["30rd 5.45x39 7N10", "rhs_30Rnd_545x39_7N10_AK", 25],
	["30rd 5.45x39 7N22", "rhs_30Rnd_545x39_7N22_AK", 25],
	["30rd 5.45x39 (Green Tracers)", "rhs_30Rnd_545x39_AK_green", 25],
	["30rd 5.45x39 7U1", "rhs_30Rnd_545x39_7U1_AK", 25],
	["45rd 5.45x39 (Mixed Tracers/Non)", "rhs_45Rnd_545X39_AK", 25],
	["45rd 5.45x39 7N10", "rhs_45Rnd_545X39_7N10_AK", 25],
	["45rd 5.45x39 7N22", "rhs_45Rnd_545X39_7N22_AK", 25],
	["45rd 5.45x39 (Green Tracers)", "rhs_45Rnd_545X39_AK_Green", 25],
	["45rd 5.45x39 7U1", "rhs_45Rnd_545X39_7U1_AK", 25],
	
	
	// Marksman Rifle
	["20rd 9x39mm SP-5", "rhs_20rnd_9x39mm_SP5", 25],
	["20rd 9x39mm SP-6", "rhs_20rnd_9x39mm_SP6", 25],
	["5rd .300WM", "rhsusf_5Rnd_300winmag_xm2010", 45],
	["10rd 7.62x54r 7N1", "rhs_10Rnd_762x54mmR_7N1", 25],
	["20rd 7.62x51mm M118 SP", "rhsusf_20Rnd_762x51_m118_special_Mag", 35], 
	["20rd 7.62x51mm M993", "rhsusf_20Rnd_762x51_m993_Mag", 35],
	
	// M4/M16
	["30rd 5.56x45 Mk318", "rhs_mag_30Rnd_556x45_Mk318_Stanag", 15],
	["30rd 5.56x45 Mk262", "rhs_mag_30Rnd_556x45_Mk262_Stanag", 15],
	["30rd 5.56x45 M855A1", "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer", 15],
	["30rd 5.56x45 M855A1 (Mixed Tracers/Non)", "rhs_mag_30Rnd_556x45_M855A1_Stanag", 15],
	["30rd 5.56x45 M855A1 (Red Tracers)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 15],
	["30rd 5.56x45 M855A1 (Green Tracers)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green", 15],
	["30rd 5.56x45 M855A1 (Yellow Tracers)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 15],
	["30rd 5.56x45 M855A1 (Orange Tracers)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Orange", 15],
	["30rd 5.56x45 M200 Blanks", "rhs_mag_30Rnd_556x45_M200_Stanag", 15],
	["30rd 5.56x45 UW Mags (SDAR)", "20Rnd_556x45_UW_mag", 15],
	
	// SHELLS
	
	// GP25
	["40MM VOG25 (GP25)", "rhs_VOG25", 55],
	["40MM VOG25P (GP25)", "rhs_VOG25P", 55],
	["40MM VG40TB (GP25)", "rhs_VG40TB", 55],
	["40MM VG40SZ (GP25)", "rhs_VG40SZ", 55],
	["40MM VG40OP White (GP25)", "rhs_VG40OP_white", 55],
	["40MM VG40OP Green (GP25)", "rhs_VG40OP_green", 55],
	["40MM VG40OP Red (GP25)", "rhs_VG40OP_red", 55],
	["40MM GRD40 White (GP25)", "rhs_GRD40_White", 55],
	["40MM GRD40 Green (GP25)", "rhs_GRD40_Green", 55],
	["40MM GRD40 Red (GP25)", "rhs_GRD40_Red", 55],
	["40MM VG40MD White (GP25)", "rhs_VG40MD_White", 55],
	["40MM VG40MD Green (GP25)", "rhs_VG40MD_Green", 55],
	["40MM VG40MD Red (GP25)", "rhs_VG40MD_Red", 55],
	["40MM GDM40 White (GP25)", "rhs_GDM40", 55],
	
	// M320,M203
	["40MM M441 HE", "rhs_mag_M441_HE", 55],
	["40MM M433 HEDP", "rhs_mag_M433_HEDP", 55],
	["40MM M4009 Stun", "rhs_mag_m4009", 55],
	["40MM M576 Buckshot", "rhs_mag_m576", 55],
	["40MM M585 White Flare", "rhs_mag_M585_white", 55],
	["40MM M661 Green Flare", "rhs_mag_m661_green", 55],
	["40MM M662 Red Flare", "rhs_mag_m662_red", 55],
	["40MM M713 Red Smoke", "rhs_mag_m713_Red", 55],
	["40MM M714 White Smoke", "rhs_mag_m714_White", 55],
	["40MM M716 Green Smoke", "rhs_mag_m715_Green", 55],
	["40MM M716 Yellow Smoke", "rhs_mag_m716_yellow", 55],
	
	
	/* ----LMG ARRAY---- */
	["100rd 7.62x54r", "rhs_100Rnd_762x54mmR", 100],
	["100rd 7.62x54r (Green Tracers)", "rhs_100Rnd_762x54mmR_green", 100],
	["50rd 7.62x51 M80 Ball", "rhsusf_50Rnd_762x51", 35],
	["50rd 7.62x51 M61 AP", "rhsusf_50Rnd_762x51_m61_ap", 35],
	["50rd 7.62x51 M62 Tracer", "rhsusf_50Rnd_762x51_m62_tracer", 35],
	["50rd 7.62x51 M80A1 EPR (AP)", "rhsusf_50Rnd_762x51_m80a1epr", 35],
	["50rd 7.62x51 M82 Blanks", "rhsusf_50Rnd_762x51_m82_blank", 15],
	["50rd 7.62x51 M993", "rhsusf_50Rnd_762x51_m993", 35],
	["100rd 7.62x51 M80 Ball", "rhsusf_100Rnd_762x51", 100],
	["100rd 7.62x51 M61 AP", "rhsusf_100Rnd_762x51_m61_ap", 100],
	["100rd 7.62x51 M62 Tracer", "rhsusf_100Rnd_762x51_m62_tracer", 100],
	["100rd 7.62x51 M80A1 EPR (AP)", "rhsusf_100Rnd_762x51_m80a1epr", 100],
	["100rd 7.62x51 M82 Blanks", "rhsusf_100Rnd_762x51_m82_blank", 100],
	["100rd 7.62x51 M993", "rhsusf_100Rnd_762x51_m993", 100],
	["200rd 5.56x45 M855A1 (Mixed Tracers/Ball)", "rhs_200rnd_556x45_M_SAW", 150],
	["200rd 5.56x45 M855A1 (Ball)", "rhs_200rnd_556x45_B_SAW", 150],
	["200rd 5.56x45 M855A1 (Tracers)", "rhs_200rnd_556x45_T_SAW", 150],
	["100rd 5.56x45 Ball (Pouch)", "rhsusf_100Rnd_556x45_soft_pouch", 100],
	["200rd 5.56x45 Ball (Pouch)", "rhsusf_200Rnd_556x45_soft_pouch", 150],
	["100rd 5.56x45 M200 Blanks (Pouch)", "rhsusf_100Rnd_556x45_M200_soft_pouch", 15],
	
	/* ----LAUNCHER ARRAY---- */
	["9M38 AA Rocket", "rhs_mag_9k38_rocket", 1000],
	["FGM-148 AT Rocket", "rhs_fgm148_magazine_AT", 4000],
	["FIM-92F AA Rocket", "rhs_fim92_mag", 1000],
	["MK153 SMAW HEAA Rocket", "rhs_mag_smaw_HEAA", 3000],
	["MK153 SMAW HEDP Rocket", "rhs_mag_smaw_HEDP", 3000],
	["5rd MK153 SMAW Marker Rounds", "rhs_mag_smaw_SR", 55],
	["RPG-26 AT Rocket", "rhs_rpg26_mag", 2000],
	["RPG-7 PG7VL AT Rocket", "rhs_rpg7_PG7VL_mag", 1000],
	["RPG-7 PG7VR HEAT Rocket", "rhs_rpg7_PG7VR_mag", 1000],
	["RPG-7 OG-7V FRAG Rocket", "rhs_rpg7_OG7V_mag", 500],
	["RPG-7 TBG7V Thermobaric Rocket", "rhs_rpg7_TBG7V_mag", 800],
	["RSHG-2 Thermobaric Rocket", "rhs_rshg2_mag", 800],
	["M136 Rocket (Useless)", "rhs_m136_mag", 999999],
	["M136 Rocket (Useless)", "rhs_m136_hedp_mag", 999999],
	["M136 Rocket (Useless)", "rhs_m136_hp_mag", 999999],
	
	/* ----ARMAMENT PLACEHOLDERS---- */
	["Static 2x FIM-92F Stinger Pod", "RHS_Stinger_AA_pod_D", 2000],
	["M119 Howitzer", "RHS_M119_D", 5000],
	["M252 81mm Mortar", "RHS_M252_D", 5000],
	["'Ma Deuce' (High Tripod)", "RHS_M2StaticMG_D", 3000],
	["'Ma Deuce' (Low Tripod)", "RHS_M2StaticMG_MiniTripod_D", 3000],
	["M41A4 TOW", "RHS_TOW_TriPod_D", 3000],
	["Mk. 19 (Low Tripod)", "RHS_MK19_TriPod_D", 5000]
	
];


//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	/* ----SCOPES---- */
	// Rail Mounted
	["Trijicon ACOG", "rhsusf_acc_ACOG_USMC", 250, "item"],
	["Trijicon ACOG (ARD)", "rhsusf_acc_ACOG2_USMC", 250, "item"],
	["Trijicon ACOG (ARD/Lens Cover)", "rhsusf_acc_ACOG3_USMC", 250, "item"],
	["M145 ELCAN", "rhsusf_acc_ELCAN", 200, "item"],
	["M145 ELCAN (ARD)", "rhsusf_acc_ELCAN_ard", 200, "item"],
	["M2A1 GL Red Dot", "rhsusf_acc_M2A1", 50, "item"],
	["EOTech 552", "rhsusf_acc_eotech_552", 50, "item"],
	["Aimpoint CompM4", "rhsusf_acc_compm4", 50, "item"],
	["Leupold Mk4 ER/T (3.5-10x)", "rhsusf_acc_LEUPOLDMK4", 400, "item"],
	["Leupold Mk4 ER/T (6.5-20x)", "rhsusf_acc_LEUPOLDMK4_2", 500, "item"],
	
	// AK Style Side Mounted
	["1P29 (4x)", "rhs_acc_1p29", 100, "item"],
	["1P63 Red Dot", "rhs_acc_1p63", 50, "item"],
	["1P78 (2.8x)", "rhs_acc_1p78", 50, "item"],
	["1PN93-1 NV (4x)", "rhs_acc_1pn93_1", 50, "item"],
	["1PN93-2 NV (4x)", "rhs_acc_1pn93_2", 50, "item"],
	["EKP-1S-03 Kobra", "rhs_acc_ekp1", 50, "item"],
	["PG0-7V (RPG-7 Sight)", "rhs_acc_pgo7v", 50, "item"],
	["PK-AS Red Dot", "rhs_acc_pkas", 50, "item"],
	["PSO-1M2 (4x)", "rhs_acc_pso1m2", 50, "item"],
	["PSO-1M2 (4x)", "rhs_acc_pso1m2", 50, "item"],
	["PSO-1M2-1 (4x)", "rhs_acc_pso1m21", 50, "item"],
	
	/* ----Rail Accessories---- */
	// Lights & Lasers
	["Zenitco 2DP Light", "rhs_acc_2dpZenit", 50, "item"],
	["PEQ-15 IR Laser/Surefire M952V (Tan)", "rhsusf_acc_anpeq15side", 50, "item"],
	["PEQ-15A IR Laser", "rhsusf_acc_anpeq15A", 50, "item"],
	["FLR-IV Light", "acc_flashlight", 50, "item"],
	
	/* ----Muzzle Devices---- */
	// AK74
	["DPM-AK-5 7.62x39 Flash Suppressor", "rhs_acc_ak5", 50, "item"],
	["DTK 7.62x39 Muzzle Brake", "rhs_acc_dtk", 50, "item"],
	["DTK-1 7.62x39 Muzzle Brake", "rhs_acc_dtk1", 50, "item"],
	["DTK-3 7.62x39 Muzzle Brake", "rhs_acc_dtk3", 50, "item"],
	["DTK-4 7.62x39 Sound Suppressor", "rhs_acc_dtk4short", 50, "item"],
	["TGP-A 7.62x39 Sound Suppressor", "rhs_acc_tgpa", 50, "item"],
	
	// AK47
	["DTK-4 5.45x39 Sound Suppressor", "rhs_acc_dtk4long", 50, "item"],
	["DTK-4 5.45x39 Sound Suppressor (Taped)", "rhs_acc_dtk4screws", 50, "item"],
	["PBS-1 5.45x39 Sound Suppressor", "rhs_acc_pbs1", 50, "item"],
	["PG-S64 5.45x39 Flash Suppressor", "rhs_acc_pgs64", 50, "item"],
	
	// SR-25, M16, M4
	["SR-25 7.62 Sound Suppressor", "rhsusf_acc_SR25S", 250, "item"],
	["KAC NT4 5.56x45 Sound Suppressor", "rhsusf_acc_nt4_black", 50, "item"],
	["KAC NT4 5.56x45 Sound Suppressor (Tan)", "rhsusf_acc_nt4_tan", 50, "item"],
	["Rotex 5 5.56x45 Sound Suppressor", "rhsusf_acc_rotex5_grey", 50, "item"],
	["Rotex 5 5.56x45 Sound Suppressor (Desert)", "rhsusf_acc_rotex5_tan", 50, "item"],
	["Surefire SF3P 5.56x45 Flash Suppressor", "rhsusf_acc_SF3P556", 50, "item"],
	["Surefire SFMB 5.56x45 Muzzle Brake", "rhsusf_acc_SFMB556", 50, "item"],
	
	// M2010
	["AAC TITAN .300WM Sound Suppressor (Tan)", "rhsusf_acc_M2010S", 50, "item"],
	
	/* ----Bipods---- */
	["Harris Bipod", "rhsusf_acc_harris_bipod", 50, "item"],
	["Bipod (Black)", "bipod_01_F_blk", 150, "item"],
	["Bipod (Olive)", "bipod_03_F_oli", 150, "item"],
	["Bipod (Tan)", "bipod_02_F_tan", 150, "item"]
	
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	// USAF
	["ACH", "rhsusf_ach_bare", 50, "hat"],
	["ACH (ESS)", "rhsusf_ach_bare_ess", 50, "hat"],
	["ACH (Headset)", "rhsusf_ach_bare_headset", 50, "hat"],
	["ACH (ESS, Headset)", "rhsusf_ach_bare_headset_ess", 50, "hat"],
	["ACH Desert", "rhsusf_ach_bare_des", 50, "hat"],
	["ACH Desert (ESS)", "rhsusf_ach_bare_des_ess", 50, "hat"],
	["ACH Desert (Headset)", "rhsusf_ach_bare_des_headset", 50, "hat"],
	["ACH Desert (ESS, Headset)", "rhsusf_ach_bare_des_headset_ess", 50, "hat"],
	["ACH Semi-Arid", "rhsusf_ach_bare_semi", 50, "hat"],
	["ACH Semi-Arid (ESS)", "rhsusf_ach_bare_semi_ess", 50, "hat"],
	["ACH Semi-Arid (Headset)", "rhsusf_ach_bare_semi_headset", 50, "hat"],
	["ACH Semi-Arid (ESS, Headset)", "rhsusf_ach_bare_semi_headset_ess", 50, "hat"],
	["ACH Tan", "rhsusf_ach_bare_tan", 50, "hat"],
	["ACH Tan (ESS)", "rhsusf_ach_bare_tan_ess", 50, "hat"],
	["ACH Tan (Headset)", "rhsusf_ach_bare_tan_headset", 50, "hat"],
	["ACH Tan (ESS, Headset)", "rhsusf_ach_bare_tan_headset_ess", 50, "hat"],
	["ACH Woodland", "rhsusf_ach_bare_wood", 50, "hat"],
	["ACH Woodland (ESS)", "rhsusf_ach_bare_wood_ess", 50, "hat"],
	["ACH Woodland (Headset)", "rhsusf_ach_bare_wood_headset", 50, "hat"],
	["ACH Woodland (ESS, Headset)", "rhsusf_ach_bare_wood_headset_ess", 50, "hat"],
	["ACH OCP", "rhsusf_ach_helmet_ocp", 50, "hat"],
	["ACH OCP (ESS)", "rhsusf_ach_helmet_ESS_ocp", 50, "hat"],
	["ACH OCP (Headset)", "rhsusf_ach_helmet_headset_ocp", 50, "hat"],
	["ACH OCP (ESS, Headset)", "rhsusf_ach_helmet_headset_ess_ocp", 50, "hat"],
	["ACH OCP (Netting)", "rhsusf_ach_helmet_camo_ocp", 50, "hat"],
	["ACH UCP", "rhsusf_ach_helmet_ucp", 50, "hat"],
	["ACH UCP (ESS)", "rhsusf_ach_helmet_ESS_ucp", 50, "hat"],
	["ACH UCP (Headset)", "rhsusf_ach_helmet_headset_ucp", 50, "hat"],
	["ACH UCP (ESS, Headset)", "rhsusf_ach_helmet_headset_ess_ucp", 50, "hat"],
	["ACH M81", "rhsusf_ach_helmet_M81", 50, "hat"],
	["Booniehat M81", "rhs_Booniehat_m81", 10, "hat"],
	["Booniehat Desert MARPAT", "rhs_Booniehat_marpatd", 10, "hat"],
	["Booniehat Woodland MARPAT", "rhs_Booniehat_marpatwd", 10, "hat"],
	["Booniehat OCP", "rhs_Booniehat_ocp", 10, "hat"],
	["Booniehat UCP", "rhs_Booniehat_ucp", 10, "hat"],
	["Headset", "rhsusf_Bowman", 5, "hat"],
	["Headset Cap", "rhsusf_bowman_cap", 10, "hat"],
	["Flight Helmet", "rhsusf_hgu56p", 50, "hat"],
	["Flight Helmet (Mouth Cover)", "rhsusf_hgu56p_mask", 50, "hat"],
	["Pilot Helmet (Oxygen Mask)", "RHS_jetpilot_usaf", 60, "hat"],
	["LWH M1942", "rhsusf_lwh_helmet_M1942", 50, "hat"],
	["LWH MARPAT Desert", "rhsusf_lwh_helmet_marpatd", 50, "hat"],
	["LWH MARPAT Desert (ESS)", "rhsusf_lwh_helmet_marpatd_ess", 50, "hat"],
	["LWH MARPAT Desert (Headset)", "rhsusf_lwh_helmet_marpatd_headset", 50, "hat"],
	["LWH MARPAT Woodland", "rhsusf_lwh_helmet_marpatwd", 50, "hat"],
	["LWH MARPAT Woodland (ESS)", "rhsusf_lwh_helmet_marpatwd_ess", 50, "hat"],
	["LWH MARPAT Woodland (Headset)", "rhsusf_lwh_helmet_marpatwd_headset", 50, "hat"],
	["MICH", "rhsusf_mich_bare", 50, "hat"],
	["MICH (Headset)", "rhsusf_mich_bare_alt", 50, "hat"],
	["MICH Semi-Arid", "rhsusf_mich_bare_semi", 50, "hat"],
	["MICH Semi-Arid (Headset)", "rhsusf_mich_bare_alt_semi", 50, "hat"],
	["MICH Tan", "rhsusf_mich_bare_tan", 50, "hat"],
	["MICH Tan (Headset)", "rhsusf_mich_bare_alt_tan", 50, "hat"],
	["MICH MARPAT Desert", "rhsusf_mich_helmet_marpatd", 50, "hat"],
	["MICH MARPAT Desert (Headset)", "rhsusf_mich_helmet_marpatd_alt_headset", 50, "hat"],
	["MICH MARPAT Woodland", "rhsusf_mich_helmet_marpatwd", 50, "hat"],
	["MICH MARPAT Woodland (Headset)", "rhsusf_mich_helmet_marpatwd_alt_headset", 50, "hat"],
	["Patrol Cap OCP", "rhsusf_patrolcap_ocp", 10, "hat"],
	["Patrol Cap UCP", "rhsusf_patrolcap_ucp", 10, "hat"],
	
	// Russia
	["6B26", "rhs_6b26", 50, "hat"],
	["6B26 (Balaclava)", "rhs_6b26_bala", 50, "hat"],
	["6B26 (ESS)", "rhs_6b26_ess", 50, "hat"],
	["6B26 (Balaclava, ESS)", "rhs_6b26_ess_bala", 50, "hat"],
	["6B26 Camo", "rhs_6b26_green", 50, "hat"],
	["6B26 Camo (Balaclava)", "rhs_6b26_bala_green", 50, "hat"],
	["6B26 Camo (ESS)", "rhs_6b26_ess_bala_green", 50, "hat"],
	["6B27M", "rhs_6b27m_green", 50, "hat"],
	["6B27M (Balaclava)", "rhs_6b27m_green_bala", 50, "hat"],
	["6B27M (ESS) ", "rhs_6b27m_green_ess", 50, "hat"],
	["6B27M (Balaclava, ESS)", "rhs_6b27m_green_ess_bala", 50, "hat"],
	["6B27M Camo", "rhs_6b27m", 50, "hat"],
	["6B27M Camo(Balaclava)", "rhs_6b27m_bala", 50, "hat"],
	["6B27M Camo(ESS)", "rhs_6b27m_ess", 50, "hat"],
	["6B27M Camo(Balaclava, ESS)", "rhs_6b27m_ess_bala", 50, "hat"],
	["6B27M Green", "rhs_6b27m_digi", 50, "hat"],
	["6B27M Green (Balaclava)", "rhs_6b27m_digi_bala", 50, "hat"],
	["6B27M Green (ESS)", "rhs_6b27m_digi_ess", 50, "hat"],
	["6B27M Green (Balaclava, ESS)", "rhs_6b27m_digi_ess_bala", 50, "hat"],
	["6B27M Mountain", "rhs_6b27m_ml", 50, "hat"],
	["6B27M Mountain (Balaclava)", "rhs_6b27m_ml_bala", 50, "hat"],
	["6B27M Mountain (ESS)", "rhs_6b27m_ml_ess", 50, "hat"],
	["6B27M Mountain (Balaclava, ESS)", "rhs_6b27m_ML_ess_bala", 50, "hat"],
	["6B28", "rhs_6b28_green", 50, "hat"],
	["6B28 (Balaclava)", "rhs_6b28_green_bala", 50, "hat"],
	["6B28 (ESS)", "rhs_6b28_green_ess", 50, "hat"],
	["6B28 (Balaclava, ESS)", "rhs_6b28_green_ess_bala", 50, "hat"],
	["6B28 Camo", "rhs_6b28_flora", 50, "hat"],
	["6B28 Camo (Balaclava)", "rhs_6b28_flora_bala", 50, "hat"],
	["6B28 Camo (ESS)", "rhs_6b28_flora_ess", 50, "hat"],
	["6B28 Camo (Balaclava, ESS)", "rhs_6b28_flora_ess_bala", 50, "hat"],
	["6B28 Summer", "rhs_6b28", 50, "hat"],
	["6B28 Summer (Balaclava)", "rhs_6b28_bala", 50, "hat"],
	["6B28 Summer (ESS)", "rhs_6b28_ess", 50, "hat"],
	["6B28 Summer (Balaclava, ESS)", "rhs_6b28_ess_bala", 50, "hat"],
	["Booniehat Summer", "rhs_Booniehat_digi", 10, "hat"],
	["Booniehat Camo", "rhs_Booniehat_flora", 10, "hat"],
	["ZSh-7A Pilot Helmet", "rhs_zsh7a", 50, "hat"],
	["ZSh-7A Pilot Helmet (Mask)", "rhs_zsh7a_mike", 50, "hat"],
	["Tsh-4 Bomber Hat", "rhs_tsh4", 50, "hat"],
	["Tsh-4 Bomber Hat (Balaclava)", "rhs_tsh4_bala", 50, "hat"],
	["Tsh-4 Bomber Hat (ESS)", "rhs_tsh4_ess", 50, "hat"],
	["Tsh-4 Bomber Hat (Balaclava, ESS)", "rhs_tsh4_ess_bala", 50, "hat"],
	["SSh-68", "rhs_ssh68", 50, "hat"],
	["Field Cap", "rhs_fieldcap", 5, "hat"],
	["Field Cap Desert", "rhs_fieldcap_digi_des", 5, "hat"],
	["Field Cap Summer", "rhs_fieldcap_digi", 5, "hat"],
	["Field Cap Mountain", "rhs_fieldcap_ml", 5, "hat"],
	["Headset (RUS)", "rhs_gssh18", 5, "hat"],
	["Beanie", "rhs_beanie_green", 10, "hat"],
	["Beanie Urban", "rhs_beanie", 10, "hat"]
	
];

uniformArray = compileFinal str
[
	// USAF
	["Combat Uniform OCP", "rhs_uniform_cu_ocp", 200, "uni"],
	["Combat Uniform OCP (101st Airborn Division)", "rhs_uniform_cu_ocp_101st", 200, "uni"],
	["Combat Uniform OCP (10th Mountain Division)", "rhs_uniform_cu_ocp_10th", 200, "uni"],
	["Combat Uniform OCP (1st Cavalry Division)", "rhs_uniform_cu_ocp_1stcav", 200, "uni"],
	["Combat Uniform OCP (82nd Airborn Division)", "rhs_uniform_cu_ocp_82nd", 200, "uni"],
	["Combat Uniform UCP", "rhs_uniform_cu_ucp", 200, "uni"],
	["Combat Uniform UCP (101st Airborn Division)", "rhs_uniform_cu_ucp_101st", 200, "uni"],
	["Combat Uniform UCP (10th Mountain Division)", "rhs_uniform_cu_ucp_10th", 200, "uni"],
	["Combat Uniform UCP (1st Cavalry Division)", "rhs_uniform_cu_ucp_1stcav", 200, "uni"],
	["Combat Uniform UCP (82nd Airborn Division)", "rhs_uniform_cu_ucp_82nd", 200, "uni"],
	["FROG M81", "rhs_uniform_FROG01_m81", 100, "uni"],
	["FROG MARPAT Desert", "rhs_uniform_FROG01_d", 100, "uni"],
	["FROG MARPAT Woodland", "rhs_uniform_FROG01_wd", 100, "uni"],
	["Wetsuit", "U_B_Wetsuit", 500, "uni"],
	["Wetsuit", "U_O_Wetsuit", 500, "uni"],
	["Wetsuit", "U_I_Wetsuit", 500, "uni"],
	
	// Russia
	["Flight Suit (RUS)", "rhs_uniform_df15", 100, "uni"],
	["EMR Desert", "rhs_uniform_vdv_emr_des", 200, "uni"],
	["EMR Summer", "rhs_uniform_emr_patchless", 200, "uni"],
	["EMR Summer (MSV)", "rhs_uniform_msv_emr", 200, "uni"],
	["EMR Summer (VDV)", "rhs_uniform_vdv_emr", 200, "uni"],
	["Flora (Brown)", "rhs_uniform_flora_patchless_alt", 100, "uni"],
	["Flora", "rhs_uniform_flora_patchless", 100, "uni"],
	["Flora (MSV)", "rhs_uniform_flora", 100, "uni"],
	["Flora (VDV)", "rhs_uniform_vdv_flora", 100, "uni"],
	["Gorka-R Green", "rhs_uniform_gorka_r_g", 100, "uni"],
	["Gorka-R Yellow", "rhs_uniform_gorka_r_y", 100, "uni"],
	["Geurilla Uniform (Flora-Les)", "rhs_chdkz_uniform_5", 100, "uni"],
	["Geurilla Uniform (Half-Flora)", "rhs_chdkz_uniform_4", 100, "uni"],
	["Geurilla Uniform (Half-Kamysh)", "rhs_chdkz_uniform_3", 100, "uni"],
	["Geurilla Uniform (Half-Les)", "rhs_chdkz_uniform_2", 100, "uni"],
	["Geurilla Uniform (Les)", "rhs_chdkz_uniform_1", 100, "uni"],
	["Izlom Uniform", "rhs_uniform_mvd_izlom", 100, "uni"],
	["M88 Tan", "rhs_uniform_m88_patchless", 200, "uni"],
	["Mountain Flora", "rhs_uniform_mflora_patchless", 200, "uni"],
	["Mountain Flora (VDV)", "rhs_uniform_vdv_mflora", 200, "uni"],
	["Guerilla Outfit (Plain, Dark)", "U_IG_Guerilla2_1", 200, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_IG_Guerilla2_3", 200, "uni"],
	["Guerilla Smocks", "U_IG_Guerilla3_1", 200, "uni"],
	["Mountain Flora (VDV)", "U_IG_Guerilla3_2", 200, "uni"],
	["Guerilla Smocks 1", "U_IG_Guerilla2_2", 200, "uni"]

];

vestArray = compileFinal str
[
	// USAF
	["IOTV OCP", "rhsusf_iotv_ocp", 300, "vest"],
	["IOTV OCP (Grenadier)", "rhsusf_iotv_ocp_Grenadier", 300, "vest"],
	["IOTV OCP (Medic)", "rhsusf_iotv_ocp_Medic", 300, "vest"],
	["IOTV OCP (Engineer)", "rhsusf_iotv_ocp_Repair", 300, "vest"],
	["IOTV OCP (Rifleman)", "rhsusf_iotv_ocp_Rifleman", 300, "vest"],
	["IOTV OCP (SAW Gunner)", "rhsusf_iotv_ocp_SAW", 300, "vest"],
	["IOTV OCP (Squad Leader)", "rhsusf_iotv_ocp_Squadleader", 300, "vest"],
	["IOTV OCP (Team Leader)", "rhsusf_iotv_ocp_Teamleader", 300, "vest"],
	["IOTV UCP", "rhsusf_iotv_ucp", 300, "vest"],
	["IOTV UCP (Grenadier)", "rhsusf_iotv_ucp_Grenadier", 300, "vest"],
	["IOTV UCP (Medic)", "rhsusf_iotv_ucp_Medic", 300, "vest"],
	["IOTV UCP (Repair)", "rhsusf_iotv_ucp_Repair", 300, "vest"],
	["IOTV UCP (Rifleman)", "rhsusf_iotv_ucp_Rifleman", 300, "vest"],
	["IOTV UCP (SAW Gunner)", "rhsusf_iotv_ucp_SAW", 300, "vest"],
	["IOTV UCP (Squad Leader)", "rhsusf_iotv_ucp_Squadleader", 300, "vest"],
	["IOTV UCP (Team Leader)", "rhsusf_iotv_ucp_Teamleader", 300, "vest"],
	["SPC", "rhsusf_spc", 250, "vest"],
	["SPC (Corpsman)", "rhsusf_spc_corpsman", 250, "vest"],
	["SPC (Crewman)", "rhsusf_spc_crewman", 250, "vest"],
	["SPC (IAR)", "rhsusf_spc_iar", 250, "vest"],
	["SPC (Light)", "rhsusf_spc_light", 250, "vest"],
	["SPC (Machine Gunner)", "rhsusf_spc_mg", 250, "vest"],
	["SPC (Marksman)", "rhsusf_spc_marksman", 250, "vest"],
	["SPC (Rifleman)", "rhsusf_spc_rifleman", 250, "vest"],
	["SPC (Squad Leader)", "rhsusf_spc_squadleader", 250, "vest"],
	["SPC (Team Leader)", "rhsusf_spc_teamleader", 250, "vest"],
	["Rebreather", "V_RebreatherB", 500, "vest"],
	["Rebreather", "V_RebreatherIR", 500, "vest"],
	["Rebreather", "V_RebreatherIA", 500, "vest"],

	// RUSSIA
	["6B23 6Sh92", "rhs_6b23_6sh92", 200, "vest"],
	["6B23 6Sh92 (Radio)", "rhs_6b23_6sh92_radio", 200, "vest"],
	["6B23 6Sh92 (VOG)", "rhs_6b23_6sh92_vog", 200, "vest"],
	["6B13 6Sh92 Flora", "rhs_6b13_Flora_6sh92", 200, "vest"],
	["6B13 6Sh92 Flora (Radio)", "rhs_6b13_Flora_6sh92_radio", 200, "vest"],
	["6B23 (Crew Ofc.)", "rhs_6b23_crewofficer", 150, "vest"],
	["6B23 (Crew)", "rhs_6b23_crew", 150, "vest"],
	["6B23 (Engineer)", "rhs_6b23_engineer", 150, "vest"],
	["6B23 (Medic)", "rhs_6b23_medic", 150, "vest"],
	["6B23 (Rifleman)", "rhs_6b23_rifleman", 150, "vest"],
	["6B23 (Sniper)", "rhs_6b23_sniper", 150, "vest"],
	["6B23 Vydra-3M", "rhs_6b23_vydra_3m", 200, "vest"],
	["6B23 Summer 6Sh92", "rhs_6b23_digi_6sh92", 200, "vest"],
	["6B23 Summer 6Sh92 (Radio)", "rhs_6b23_digi_6sh92_radio", 200, "vest"],
	["6B23 Summer 6Sh92 (VOG)", "rhs_6b23_digi_6sh92_vog", 200, "vest"],
	["6B23 Summer (Crew Ofc.)", "rhs_6b23_digi_crewofficer", 150, "vest"],
	["6B23 Summer (Crew)", "rhs_6b23_digi_crew", 150, "vest"],
	["6B23 Summer (Engineer)", "rhs_6b23_digi_engineer", 150, "vest"],
	["6B23 Summer (Medic)", "rhs_6b23_digi_medic", 150, "vest"],
	["6B23 Summer (Rifleman)", "rhs_6b23_digi_rifleman", 150, "vest"],
	["6B23 Summer (Sniper)", "rhs_6b23_digi_sniper", 150, "vest"],
	["6B23 Summer Vydra-3M", "rhs_6b23_digi_vydra_3m", 200, "vest"],
	["6B23 Mountain 6Sh92", "rhs_6b23_ML_6sh92", 200, "vest"],
	["6B23 Mountain (Radio)", "rhs_6b23_ML_6sh92_radio", 150, "vest"],
	["6B23 Mountain (VOG)", "rhs_6b23_ML_6sh92_vog", 150, "vest"],
	["6B23 Mountain (Crew Ofc.)", "rhs_6b23_ML_crewofficer", 150, "vest"],
	["6B23 Mountain (Crew)", "rhs_6b23_ML_crew", 150, "vest"],
	["6B23 Mountain (Engineer)", "rhs_6b23_ML_engineer", 150, "vest"],
	["6B23 Mountain (Medic)", "rhs_6b23_ML_medic", 150, "vest"],
	["6B23 Mountain (Rifleman)", "rhs_6b23_ML_rifleman", 150, "vest"],
	["6B23 Mountain (Sniper)", "rhs_6b23_ML_sniper", 150, "vest"],
	["6B23 Mountain Vydra-3M", "rhs_6b23_ML_vydra_3m", 150, "vest"],
	["6Sh92", "rhs_6sh92", 200, "vest"],
	["6Sh92 (Radio)", "rhs_6sh92_radio", 200, "vest"],
	["6Sh92 (VOG)", "rhs_6sh92_vog", 200, "vest"],
	["6Sh92 Mountain", "rhs_6sh92_digi", 200, "vest"],
	["6Sh92 Mountain (VOG)", "rhs_6sh92_digi_vog", 200, "vest"],
	["Pistol Holster", "rhs_vest_pistol_holster", 50, "vest"],
	["Vydra-3M", "rhs_vydra_3m", 200, "vest"]
	
];

backpackArray = compileFinal str
[
	// USAF
	["Eagle A-III Assault Pack Coyote", "rhsusf_assault_eagleaiii_coy", 300, "backpack"],
	["Eagle A-III Assault Pack OCP", "rhsusf_assault_eagleaiii_ocp", 300, "backpack"],
	["Eagle A-III Assault Pack UCP", "rhsusf_assault_eagleaiii_ucp", 300, "backpack"],
	["Kitbag (Coyote)", "B_Kitbag_cbr", 400, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 400, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 400, "backpack"],
	["Bergen (Black)", "B_Bergen_blk", 500, "backpack"],
	["Bergen (Green)", "B_Bergen_rgr", 500, "backpack"],
	["Bergen (MTP)", "B_Bergen_mcamo", 500, "backpack"],
	
	// Russia
	["Sidor", "rhs_sidor", 100, "backpack"],
	["UMBTS", "rhs_assault_umbts", 250, "backpack"],
	["UMBTS (Engineer)", "rhs_assault_umbts_engineer_empty", 250, "backpack"]
	
];

genItemArray = compileFinal str
[
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 40, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 100, "item"],
	["AN/PVS-14 (1-Piece)", "rhsusf_ANPVS_14", 300, "nvg"],
	["AN/PVS-15 (2-Piece)", "rhsusf_ANPVS_15", 300, "nvg"],
	["Balaclava (Green)", "rhs_balaclava", 50, "gogg"],
	["Balaclava (Black)", "G_Balaclava_blk", 50, "gogg"],
	["Balaclava (Olive)", "rhs_balaclava1_olive", 50, "gogg"],
	["Ballistic Glasses (Black)", "rhs_googles_black", 20, "gogg"],
	["Ballistic Glasses (Clear)", "rhs_googles_clear", 20, "gogg"],
	["Ballistic Glasses (Yellow)", "rhs_googles_yellow", 20, "gogg"],
	["Ballistic Glasses (Orange)", "rhs_googles_orange", 20, "gogg"],
	["Ballistic Goggles", "rhs_ess_black", 30, "gogg"],
	["Scarf (Tan)", "rhs_scarf", 50, "gogg"],
	["Diving Goggles", "G_Diving", 200, "gogg"],
	["Lerca 1200 Rangefinder (Black)", "lerca_1200_black", 200, "binoc"],
	["Lerca 1200 Rangefinder (Tan)", "lerca_1200_tan", 200, "binoc"],
	["Leupold Mk4 Spotting Scope", "Leupold_Mk4", 200, "binoc"],
	["Laser Rangefinder", "Rangefinder", 500, "binoc"],
	["PDU-4 Binoculars", "rhs_pdu4", 100, "binoc"],
	["TR-8 Periscope", "rhs_tr8_periscope", 10, "binoc"],
	["UAV Terminal (RUS)", "O_UavTerminal", 300, "gps"],
	["UAV Terminal (USA)", "B_UavTerminal", 300, "gps"],
	["Chemlight (Blue)", "Chemlight_blue", 10, "mag"],
	["Chemlight (Green)", "Chemlight_green", 10, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 10, "mag"],
	["Chemlight (Red)", "Chemlight_red", 10, "mag"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	// Vanilla
	["Empty Ammo Crate", "Box_NATO_Ammo_F", 200, "ammocrate"],
	//["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	//["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 100, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	//["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 400, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 500, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 250, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 500, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 1000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 800, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 10000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 350, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 500, "object"],
	["Scaffolding", "Land_Scaffolding_F", 250, "object"],
	
	// RHS
	["Castle Tower", "Land_Castle_01_tower_F", 6000, "object"], 
	["Castle Wall (Walkway)", "Land_Castle_01_wall_07_F", 3000, "object"], 
	["Castle Wall (Thin, Windows)", "Land_Castle_01_church_a_ruin_F", 1000, "object"], 
	["Castle Wall (U-Shaped, Stairs)", "Land_Castle_01_wall_14_F", 2000, "object"],
	["Lighthouse", "Land_LightHouse_F", 5000, "object"], 
	["Hanger", "Land_Hangar_F", 10000, "object"],
	["Shed (Large)", "Land_Shed_Big_F", 5000, "object"], 
	["Shed (Half, Wall)", "Land_Shed_Small_F", 3000, "object"],
	["Military Office", "Land_Cargo_HQ_V1_F", 1000, "object"],  
	["Medical Office", "Land_Medevac_HQ_V1_F", 1000, "object"]
	
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	// USA
	["HMMWV Open 2-Seat (Woodland)", "rhsusf_m998_w_2dr", 3000, "vehicle"],
	["HMMWV Open 2-Seat (Desert)", "rhsusf_m998_d_2dr", 3000, "vehicle"],
	["HMMWV Open 4-Seat (Woodland)", "rhsusf_m998_w_4dr", 3500, "vehicle"],
	["HMMWV Open 4-Seat (Desert)", "rhsusf_m998_d_4dr", 3500, "vehicle"],
	["LMTV (Desert)", "rhsusf_M1078A1P2_d_fmtv_usarmy", 3000, "vehicle"],
	["LMTV (Woodland)", "rhsusf_M1078A1P2_wd_fmtv_usarmy", 3000, "vehicle"],
	["MTV (Desert)", "rhsusf_M1083A1P2_d_fmtv_usarmy", 4000, "vehicle"],
	["MTV (Woodland)", "rhsusf_M1083A1P2_wd_fmtv_usarmy", 4000, "vehicle"],
	["MTV HQ (Woodland)", "rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy", 4000, "vehicle"],
	
	// Russia
	["BM-21 Ural Based GRAD Launcher", "RHS_BM21_MSV_01", 55000, "vehicle"],
	["GAZ-66 Transport", "rhs_gaz66_vmf", 3500, "vehicle"],
	["GAZ-66 Ammo", "rhs_gaz66_ammo_vmf", 35000, "vehicle"],
	["GAZ-66 Command Post", "rhs_gaz66_r142_vmf", 3500, "vehicle"],
	["GAZ-66 Medical", "rhs_gaz66_ap2_vmf", 4000, "vehicle"],
	["GAZ-66 Repair", "rhs_gaz66_repair_vmf", 4000, "vehicle"],
	["UAZ (Closed)", "RHS_UAZ_MSV_01", 2500, "vehicle"],
	["UAZ (Open)", "rhs_uaz_open_MSV_01", 2000, "vehicle"],
	["UAZ (AGS Grenade Launcher)", "rhs_uaz_ags_chdkz", 6000, "vehicle"],
	["UAZ (DShKM)", "rhs_uaz_dshkm_chdkz", 7000, "vehicle"],
	["UAZ (SPG-9 Recoilless Rocket)", "rhs_uaz_spg9_chdkz", 9500, "vehicle"],
	["Ural Transport (Civ)", "RHS_Ural_Open_Civ_01", 2500, "vehicle"],
	["Ural Transport (Covered)", "RHS_Ural_MSV_01", 2500, "vehicle"],
	["Ural Transport (Open)", "RHS_Ural_Open_MSV_01", 2500, "vehicle"],
	["Ural Fuel", "RHS_Ural_Fuel_MSV_01", 4000, "vehicle"]
	
];

armoredArray = compileFinal str
[
	["9P129-1M Mobile ICBM Launcher", "rhs_9k79", 50000, "vehicle"],
	["9P129-1M Mobile ICBM Launcher (Scatter)", "rhs_9k79_k", 65000, "vehicle"],
	["9P129-1M Mobile ICBM Launcher (Nuclear Warhead)", "rhs_9k79_b", 10000000, "vehicle"],
	["HMMWV (Woodland)", "rhsusf_m1025_w", 4500, "vehicle"],
	["HMMWV (Desert)", "rhsusf_m1025_d", 4500, "vehicle"],
	["HMMWV M2 (Woodland)", "rhsusf_m1025_w_m2", 9500, "vehicle"],
	["HMMWV M2 (Desert)", "rhsusf_m1025_d_m2", 9500, "vehicle"],
	["HMMWV Mk19 (Woodland)", "rhsusf_m1025_w_mk19", 10000, "vehicle"],
	["HMMWV Mk19 (Desert)", "rhsusf_m1025_d_Mk19", 10000, "vehicle"],
	["LMTV Armored (Desert)", "rhsusf_M1078A1P2_B_d_fmtv_usarmy", 5000, "vehicle"],
	["LMTV Armored (Woodland)", "rhsusf_M1078A1P2_B_wd_fmtv_usarmy", 5000, "vehicle"],
	["LMTV Armored M2 (Desert)", "rhsusf_M1078A1P2_B_M2_d_fmtv_usarmy", 9000, "vehicle"],
	["LMTV Armored M2 (Woodland)", "rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy", 9000, "vehicle"],
	["MTV Armored (Desert)", "rhsusf_M1083A1P2_B_d_fmtv_usarmy", 5500, "vehicle"],
	["MTV Armored (Woodland)", "rhsusf_M1083A1P2_B_wd_fmtv_usarmy", 5500, "vehicle"],
	["MTV Armored M2 (Desert)", "rhsusf_M1083A1P2_B_M2_d_fmtv_usarmy", 10500, "vehicle"],
	["MTV Armored M2 (Woodland)", "rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy", 10500, "vehicle"],
	["RG-33 MRAP (Desert)", "rhsusf_rg33_d", 6500, "vehicle"],
	["RG-33 MRAP (Woodland)", "rhsusf_rg33_wd", 6500, "vehicle"],
	["RG-33 MRAP M2 (Desert)", "rhsusf_rg33_m2_d", 12500, "vehicle"],
	["RG-33 MRAP M2 (Woodland)", "rhsusf_rg33_m2_wd", 12500, "vehicle"],
	["GAZ (Flat Top)", "rhs_tigr_vdv", 4500, "vehicle"],
	["GAZ (Port Top)", "rhs_tigr_m_vdv", 5500, "vehicle"],
	["GAZ (Armed)", "rhs_tigr_sts_vdv", 9000, "vehicle"]
	
];

tanksArray = compileFinal str
[

	// USAF
	["M113A3 M2 Ammo (Woodland)", "rhsusf_m113_usarmy_supply", 35000, "vehicle"],
	["M113A3 M2 Ammo (Desert)", "rhsusf_m113d_usarmy_supply", 35000, "vehicle"],
	["M113A3 M2 Crows Nest (Woodland)", "rhsusf_m113_usarmy", 20000, "vehicle"],
	["M113A3 M2 Crows Nest (Desert)", "rhsusf_m113d_usarmy", 20000, "vehicle"],
	["M113A3 M240 (Woodland)", "rhsusf_m113_usarmy_M240", 18000, "vehicle"],
	["M113A3 M240 (Desert)", "rhsusf_m113d_usarmy_M240", 18000, "vehicle"],
	["M113A3 Mk19 (Woodland)", "rhsusf_m113_usarmy_MK19", 18500, "vehicle"],
	["M113A3 Mk19 (Desert)", "rhsusf_m113d_usarmy_MK19", 18500, "vehicle"],
	["M113A3 Unarmed (Woodland)", "rhsusf_m113_usarmy_unarmed", 14000, "vehicle"],
	["M113A3 Unarmed (Desert)", "rhsusf_m113d_usarmy_unarmed", 14000, "vehicle"],
	["M113A3 Unarmed MEV (Woodland)", "rhsusf_m113_usarmy_medical", 14000, "vehicle"],
	["M113A3 Unarmed MEV (Desert)", "rhsusf_m113d_usarmy_medical", 14000, "vehicle"],
	["M2A2 (Woodland)", "RHS_M2A2_wd", 30000, "vehicle"],
	["M2A2 (Desert)", "RHS_M2A2", 30000, "vehicle"],
	["M2A2 BUSK1 (Woodland)", "RHS_M2A2_BUSKI_WD", 33000, "vehicle"],
	["M2A2 BUSK1 (Desert)", "RHS_M2A2_BUSKI", 33000, "vehicle"],
	["M2A3 (Woodland)", "RHS_M2A3_wd", 33000, "vehicle"],
	["M2A3 (Desert)", "RHS_M2A3", 33000, "vehicle"],
	["M2A3 BUSK I (Woodland)", "RHS_M2A3_BUSKI_wd", 34000, "vehicle"],
	["M2A3 BUSK I (Desert)", "RHS_M2A3_BUSKI", 34000, "vehicle"],
	["M2A3 BUSK III (Woodland)", "RHS_M2A3_BUSKIII_wd", 35000, "vehicle"],
	["M2A3 BUSK III (Desert)", "RHS_M2A3_BUSKIII", 35000, "vehicle"],
	["M1A1FEP (Woodland)", "rhsusf_m1a1fep_wd", 45000, "vehicle"],
	["M1A1FEP (Desert)", "rhsusf_m1a1fep_d", 45000, "vehicle"],
	["M1A1FEP (Olive)", "rhsusf_m1a1fep_od", 45000, "vehicle"],
	["M1A1SA (Woodland)", "rhsusf_m1a1aimwd_usarmy", 47000, "vehicle"],
	["M1A1SA (Desert)", "rhsusf_m1a1aimd_usarmy", 47000, "vehicle"],
	["M1A1SA TUSK I (Woodland)", "rhsusf_m1a1aim_tuski_wd", 49000, "vehicle"],
	["M1A1SA TUSK I (Desert)", "rhsusf_m1a1aim_tuski_d", 49000, "vehicle"],
	["M1A2 SEPv1 (Woodland)", "rhsusf_m1a2sep1wd_usarmy", 52000, "vehicle"],
	["M1A2 SEPv1 (Desert)", "rhsusf_m1a2sep1d_usarmy", 52000, "vehicle"],
	["M1A2 SEPv1 TUSK I (Woodland)", "rhsusf_m1a2sep1tuskid_usarmy", 55000, "vehicle"],
	["M1A2 SEPv1 TUSK I (Desert)", "rhsusf_m1a2sep1tuskiwd_usarmy", 55000, "vehicle"],
	["M1A2 SEPv1 TUSK II (Woodland)", "rhsusf_m1a2sep1tuskiid_usarmy", 57000, "vehicle"],
	["M1A2 SEPv1 TUSK II (Desert)", "rhsusf_m1a2sep1tuskiiwd_usarmy", 57000, "vehicle"],
	["M109A6 Paladin (Woodland)", "rhsusf_m109_usarmy", 70000, "vehicle"],
	["M109A6 Paladin (Desert)", "rhsusf_m109d_usarmy", 70000, "vehicle"],
	
	// RUS
	["PRP-3 Recon Vehicle (Flare Launcher)", "rhs_prp3_vdv", 14000, "vehicle"],
	["PTS-M Amphibious Vehicle Transport", "rhs_pts_vmf", 16000, "vehicle"],
	["BTR-60", "rhs_btr60_vmf", 34000, "vehicle"],
	["BTR-70", "rhs_btr70_vmf", 35000, "vehicle"],
	["BTR-80", "rhs_btr80_msv", 36000, "vehicle"],
	["BTR-80a", "rhs_btr80a_msv", 37000, "vehicle"],
	["BMD-1", "rhs_bmd1", 30000, "vehicle"],
	["BMD-1P (ATGM)", "rhs_bmd1p", 35000, "vehicle"],
	["BMD-1PK", "rhs_bmd1pk", 34000, "vehicle"],
	["BMD-1R (Rockets)", "rhs_bmd1r", 33000, "vehicle"],
	["BMD-2", "rhs_bmd2", 32000, "vehicle"],
	["BMD-2M", "rhs_bmd2m", 32000, "vehicle"],
	["BMD-4", "rhs_bmd4_vdv", 32000, "vehicle"],
	["BMD-4M", "rhs_bmd4m_vdv", 32000, "vehicle"],
	["BMD-4MA (Up-Armored)", "rhs_bmd4ma_vdv", 33000, "vehicle"],
	["BMP-1", "rhs_bmp1_vdv", 31000, "vehicle"],
	["BMP-1D", "rhs_bmp1d_vdv", 31000, "vehicle"],
	["BMP-1K", "rhs_bmp1k_vdv", 31000, "vehicle"],
	["BMP-1P", "rhs_bmp1p_vdv", 31000, "vehicle"],
	["BMP-2", "rhs_bmp2_vdv", 31000, "vehicle"],
	["BMP-2E", "rhs_bmp2e_vdv", 31000, "vehicle"],
	["BMP-2D", "rhs_bmp2d_vdv", 32000, "vehicle"],
	["BMP-2K", "rhs_bmp2k_vdv", 32000, "vehicle"],
	["BMP-3 (Early)", "rhs_bmp3_msv", 31000, "vehicle"],
	["BMP-3 (Late)", "rhs_bmp3_late_msv", 31500, "vehicle"],
	["BMP-3M", "rhs_bmp3m_msv", 33000, "vehicle"],
	["BMP-3M/A", "rhs_bmp3mera_msv", 33000, "vehicle"],
	["BMP-1K", "rhs_brm1k_vdv", 33000, "vehicle"],
	["ZSU-23-4V AA", "rhs_zsu234_aa", 38000, "vehicle"],
	["2S25 Sprut", "rhs_sprut_vdv", 45000, "vehicle"],
	["T-72B (1984)", "rhs_t72ba_tv", 46000, "vehicle"],
	["T-72B (1985)", "rhs_t72bb_tv", 46000, "vehicle"],
	["T-72B (1989)", "rhs_t72bc_tv", 46000, "vehicle"],
	["T-72B3 (2012)", "rhs_t72bd_tv", 47000, "vehicle"],
	["T-80", "rhs_t80", 48000, "vehicle"],
	["T-80A", "rhs_t80a", 48000, "vehicle"],
	["T-80B", "rhs_t80b", 48000, "vehicle"],
	["T-80BV", "rhs_t80bv", 48000, "vehicle"],
	["T-80U", "rhs_t80u", 48000, "vehicle"],
	["T-80U (45M)", "rhs_t80u45m", 48000, "vehicle"],
	["T-80UE-1", "rhs_t80ue1", 48000, "vehicle"],
	["T-80UK", "rhs_t80uk", 48500, "vehicle"],
	["T-80UM", "rhs_t80um", 48500, "vehicle"],
	["T-90 (1992)", "rhs_t90_tv", 50000, "vehicle"],
	["T-90A (2006)", "rhs_t90a_tv", 50000, "vehicle"],
	["2S3M1 152.4mm Howitzer", "rhs_2s3_tv", 63000, "vehicle"]
	
];


helicoptersArray = compileFinal str
[
	// USAF
	["MH-6 Littlebird", "B_Heli_Light_01_F", 4000, "vehicle"],
	["AH-1Z Viper (Multi-Role)", "RHS_AH1Z", 68000, "vehicle"],
	["AH-1Z Viper (Ground-Suppression)", "RHS_AH1Z_GS", 68000, "vehicle"],
	["AH-1Z Viper (Close-Support)", "RHS_AH1Z_CS", 68000, "vehicle"],
	["AH-64D Longbow (Multi-Role)", "RHS_AH64D", 75000, "vehicle"],
	["AH-64D Longbow (Multi-Role, Grey)", "RHS_AH64DGrey", 75000, "vehicle"],
	["AH-64D Longbow (Ground-Suppression)", "RHS_AH64D_GS", 75000, "vehicle"],
	["AH-64D Longbow (Close-Support)", "RHS_AH64D_CS", 78000, "vehicle"],
	["AH-64D Longbow (AA)", "RHS_AH64D_AA", 73000, "vehicle"],
	["CH-47 Chinook (Brown)", "RHS_CH_47F", 15000, "vehicle"],
	["CH-47 Chinook (Olive)", "RHS_CH_47F_10", 15000, "vehicle"],
	["CH-47 Chinook (Desert)", "RHS_CH_47F_light", 15000, "vehicle"],
	["CH-53 Super Stallion", "rhsusf_CH53E_USMC", 19000, "vehicle"],
	["UH-1Y Venom (FFAR/MG)", "RHS_UH1Y", 45000, "vehicle"],
	["UH-1Y Venom (FFAR)", "RHS_UH1Y_FFAR", 37000, "vehicle"],
	["UH-1Y Venom (Unarmed)", "RHS_UH1Y_UNARMED", 10000, "vehicle"],
	["UH-60M Blackhawk", "RHS_UH60M", 13000, "vehicle"],
	["UH-60M Blackhawk (MEV, ESSS)", "RHS_UH60M_MEV", 8000, "vehicle"],
	["UH-60M Blackhawk (MEV)", "RHS_UH60M_MEV2", 7000, "vehicle"],
	
	// RUS
	["Ka-60 (Camo)", "rhs_ka60_c", 6500, "vehicle"],
	["Ka-60 (Grey)", "rhs_ka60_grey", 6000, "vehicle"],
	["Mi-8AMT", "RHS_Mi8AMT_vvs", 8000, "vehicle"],
	["Mi-8AMT (Civilian)", "RHS_Mi8amt_civilian", 8000, "vehicle"],
	["Mi-8MT", "RHS_Mi8mt_vvs", 8000, "vehicle"],
	["Mi-8MT (Cargo)", "RHS_Mi8mt_Cargo_vvs", 8500, "vehicle"],
	["Mi-8MTSh (Armed)", "RHS_Mi8AMTSh_vvs", 50000, "vehicle"],
	["Mi-8MTV-3 (Armed)", "RHS_Mi8MTV3_vvs", 53000, "vehicle"],
	["Mi-24P Hind (Multi-Role)", "RHS_Mi24P_vvs", 70000, "vehicle"],
	["Mi-24P Hind (CAS)", "RHS_Mi24P_CAS_vvs", 70000, "vehicle"],
	["Mi-24P Hind (AT)", "RHS_Mi24P_AT_vvs", 71500, "vehicle"],
	["Mi-24V SuperHind (CAS)", "RHS_Mi24V_vvs", 73000, "vehicle"],
	["Mi-24V SuperHind (Multi-Role)", "RHS_Mi24V_FAB_vvs", 72000, "vehicle"],
	["Mi-24V SuperHind (AT)", "RHS_Mi24V_AT_vvs", 75000, "vehicle"]
	
];

planesArray = compileFinal str
[
	["A-10A Warthog", "RHS_A10", 90000, "vehicle"],
	["C-130J Super Hercules", "RHS_C130J", 25000, "vehicle"],
	["F-22A Raptor", "rhsusf_f22", 90000, "vehicle"],
	["Su-25 Frogfoot (Bomber)", "RHS_Su25SM", 85000, "vehicle"],
	["Su-25 Frogfoot (ATGM)", "RHS_Su25SM_KH29", 90000, "vehicle"],
	["T-50 Bomber", "RHS_T50_vvs_051", 85000, "vehicle"],
	["T-50 Bomber (Blue)", "RHS_T50_vvs_blueonblue", 85000, "vehicle"],
	["Pchela-1T UAV", "rhs_pchela1t_vvs", 13000, "vehicle"]
	
];

boatsArray = compileFinal str
[
	["Rescue Boat", "C_Rubberboat", 500, "boat"],
	["Rescue Boat (NATO)", "B_Lifeboat", 500, "boat"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 500, "boat"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 600, "boat"],
	["Motorboat", "C_Boat_Civil_01_F", 1000, "boat"],
	["Motorboat Rescue", "C_Boat_Civil_rescue_01_F", 900, "boat"],
	["Motorboat Police", "C_Boat_Civil_police_01_F", 1250, "boat"],
	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 4000, "boat"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 4000, "boat"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 4000, "boat"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 1000, "submarine"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	// In plane array
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_taruDir = "\A3\air_f_heli\Heli_Transport_04\Data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Gray", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.paa"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Bloodshot", _texDir + "bloodshot.paa"],
			["Carbon", _texDir + "carbon.paa"],
			["Confederate", _texDir + "confederate.paa"],
			["Denim", _texDir + "denim.paa"],
			["Digital", _texDir + "digi.paa"],
			["Digital Black", _texDir + "digi_black.paa"],
			["Digital Desert", _texDir + "digi_desert.paa"],
			["Digital Woodland", _texDir + "digi_wood.paa"],
			["Doritos", _texDir + "doritos.paa"],
			["Drylands", _texDir + "drylands.paa"],
			["Hello Kitty", _texDir + "hellokitty.paa"],
			["Hex", _texDir + "hex.paa"],
			["Hippie", _texDir + "hippie.paa"],
			["ISIS", _texDir + "isis.paa"],
			["Leopard", _texDir + "leopard.paa"],
			["Mountain Dew", _texDir + "mtndew.paa"],
			["'Murica", _texDir + "murica.paa"],
			["Nazi", _texDir + "nazi.paa"],
			["Orange Camo", _texDir + "camo_orange.paa"],
			["Pink Camo", _texDir + "camo_pink.paa"],
			["Pride", _texDir + "pride.paa"],
			["Psych", _texDir + "psych.paa"],
			["Red Camo", _texDir + "camo_red.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Sand", _texDir + "sand.paa"],
			["Snake", _texDir + "snake.paa"],
			["Stripes", _texDir + "stripes.paa"],
			["Stripes 2", _texDir + "stripes2.paa"],
			["Stripes 3", _texDir + "stripes3.paa"],
			["Swamp", _texDir + "swamp.paa"],
			["Tiger", _texDir + "tiger.paa"],
			["Trippy", _texDir + "rainbow.paa"],
			["Union Jack", _texDir + "unionjack.paa"],
			["Urban", _texDir + "urban.paa"],
			["Weed", _texDir + "weed.paa"],
			["Woodland", _texDir + "woodland.paa"],
			["Woodland Dark", _texDir + "wooddark.paa"],
			["Woodland Tiger", _texDir + "woodtiger.paa"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Black (Kart)", [[0, _kartDir + "kart_01_base_black_co.paa"]]],
			["White (Kart)", [[0, _kartDir + "kart_01_base_white_co.paa"]]],
			["Blue (Kart)", [[0, _kartDir + "kart_01_base_blue_co.paa"]]],
			["Green (Kart)", [[0, _kartDir + "kart_01_base_green_co.paa"]]],
			["Yellow (Kart)", [[0, _kartDir + "kart_01_base_yellow_co.paa"]]],
			["Orange (Kart)", [[0, _kartDir + "kart_01_base_orange_co.paa"]]],
			["Red (Kart)", [[0, _kartDir + "kart_01_base_red_co.paa"]]]
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Mohawk colors
		"Heli_Transport_02_base_F",
		[
			["Dahoman (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_dahoman_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_dahoman_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_dahoman_co.paa"]
			]],
			["ION (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_ion_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_ion_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_ion_co.paa"]
			]]
		]
	],
	[ // Taru base colors
		"Heli_Transport_04_base_F",
		[
			["Black (Taru)", [
				[0, _taruDir + "heli_transport_04_base_01_black_co.paa"],
				[1, _taruDir + "heli_transport_04_base_02_black_co.paa"],
				[2, _taruDir + "heli_transport_04_pod_ext01_black_co.paa"],
				[3, _taruDir + "heli_transport_04_pod_ext02_black_co.paa"]
			]]
		]
	],
	[ // Taru bench colors
		"O_Heli_Transport_04_bench_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_bench_black_co.paa"]]]
		]
	],
	[ // Taru fuel colors
		"O_Heli_Transport_04_fuel_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_fuel_black_co.paa"]]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 30, 15],
	["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 1500, 750],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 200, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 100, 50],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
