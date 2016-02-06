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
	["Glock 17 Gen4", "rhsusf_weap_glock17g4", 75],
	["M1911A1", "rhsusf_weap_m1911a1", 75],
	["Beretta M9", "rhsusf_weap_m9", 75],
	["Makarov", "rhs_weap_makarov_pmm", 75],
	["MP-443", "rhs_weap_pya", 75]
];

smgArray = compileFinal str
[
		
	// Shotguns
	["Mossberg 590 (Long)", "rhs_weap_M590_8RD", 100],
	["Mossberg 590 (Breacher)", "rhs_weap_M590_5RD", 100],
	
	// 6-shot Standalone Launcher
	["M32 MGL", "rhs_weap_m32", 250]
];

rifleArray = compileFinal str
[
	// AK-47
	["AK-103 (GP25, Top Rail)", "rhs_weap_ak103_gp25_npz", 175],
	["AK-103 (GP25)", "rhs_weap_ak103_gp25", 175],
	["AK-103 (Top Rail)", "rhs_weap_ak103_npz", 150],
	["AK-103", "rhs_weap_ak103", 150],
	["AK-104 (Top Rail)", "rhs_weap_ak104_npz", 150],
	["AK-104", "rhs_weap_ak104", 150],
	
	// AK-74
	["AK-74M", "rhs_weap_ak74m_plummag_folded", 125],
	["AK-74M (Desert)", "rhs_weap_ak74m_desert_folded", 125],
	["AK-74M (Camo)", "rhs_weap_ak74m_camo_folded", 125],
	["AK-74", "rhs_weap_ak74m", 150],
	["AK-74 (Top Rail)", "rhs_weap_ak74m_npz", 150],
	["AK-74 (Camo)", "rhs_weap_ak74m_camo", 150],
	["AK-74 (Camo, Top Rail)", "rhs_weap_ak74m_camo_npz", 150],
	["AK-74 (Desert)", "rhs_weap_ak74m_desert", 150],
	["AK-74 (Desert, Top Rail)", "rhs_weap_ak74m_desert_npz", 150],
	["AK-74 (GP25)", "rhs_weap_ak74m_gp25", 175],
	["AK-74 (GP25, Top Rail)", "rhs_weap_ak74m_gp25_npz", 175],
	["AK-105 (Top Rail)", "rhs_weap_ak105_npz", 150],
	["AK-105", "rhs_weap_ak105", 150],
	["AKM", "rhs_weap_akm", 150],
	["AKM (GP25)", "rhs_weap_akm_gp25", 175],
	["AKMS", "rhs_weap_akms", 150],
	["AKMS (GP25)", "rhs_weap_akms_gp25", 175],

	// Marksmen Rifles
	["AS VAL", "rhs_weap_asval", 300],
	["AS VAL (Top Rail)", "rhs_weap_asval_npz", 300],
	["M2010 ESR", "rhs_weap_XM2010", 400],
	["M2010 ESR (Woodland)", "rhs_weap_XM2010_wd", 400],
	["M2010 ESR (Desert)", "rhs_weap_XM2010_d", 400],
	["M2010 ESR (Semi-Arid)", "rhs_weap_XM2010_sa", 400],
	["SVDM", "rhs_weap_svdp", 300],
	["SVDM (Camo)", "rhs_weap_svdp_wd", 300],
	["SVDM (Top Rail)", "rhs_weap_svdp_npz", 300],
	["SVDM (Camo, Top Rail)", "rhs_weap_svdp_wd_npz", 300],
	["SVDS", "rhs_weap_svds", 150],
	["SVDS (Top Rail)", "rhs_weap_svds_npz", 300],
	["KAC SR-25EC", "rhs_weap_sr25_ec", 300],
	["KAC SR-25M", "rhs_weap_sr25", 300],
	["M14 EBR-RI", "rhs_weap_m14ebrri", 250],

	// M16
	["M16A4", "rhs_weap_m16a4", 150],
	["M16A4 (Carryhandle)", "rhs_weap_m16a4_carryhandle", 150],
	["M16A4 (Grippod)", "rhs_weap_m16a4_grip", 150],
	["M16A4 (Carryhandle, Grippod)", "rhs_weap_m16a4_carryhandle_grip", 150],
	["M16A4 (M203)", "rhs_weap_m16a4_carryhandle_M203", 175],
	
	// M4/M4A1/M27
	["M4", "rhs_weap_m4", 150],
	["M4 (AFG)", "rhs_weap_m4_grip2", 150],
	["M4 (Carryhandle)", "rhs_weap_m4_carryhandle", 150],
	["M4 (Grippod)", "rhs_weap_m4_grip", 150],
	["M4 (M203)", "rhs_weap_m4_m203", 175],
	["M4 (M203S)", "rhs_weap_m4_m203S", 175],
	["M4 (M320)", "rhs_weap_m4_m320", 175],
	["M4A1", "rhs_weap_m4a1_carryhandle", 150],
	["M4A1 (AFG)", "rhs_weap_m4a1_carryhandle_grip2", 150],
	["M4A1 (Grippod)", "rhs_weap_m4a1_carryhandle_grip", 150],
	["M4A1 (M203)", "rhs_weap_m4a1_carryhandle_m203", 175],
	["M4A1 (M203S)", "rhs_weap_m4a1_carryhandle_m203S", 175],
	["M4A1 PIP", "rhs_weap_m4a1", 150],
	["M4A1 PIP (AFG)", "rhs_weap_m4a1_grip2", 150],
	["M4A1 PIP (Grippod)", "rhs_weap_m4a1_grip", 150],
	["M4A1 PIP (M203)", "rhs_weap_m4a1_m203", 150],
	["M4A1 PIP (M203S)", "rhs_weap_m4a1_m203s", 150],
	["M4A1 PIP (M320)", "rhs_weap_m4a1_m320", 150]

];

lmgArray = compileFinal str
[
	// M240	
	["M240B", "rhs_weap_m240B", 400],
	["M240G", "rhs_weap_m240G", 375],
	
	// M249
	["M249 PIP", "rhs_weap_m249_pip_L", 350],
	["M249 PIP (Para)", "rhs_weap_m249_pip_L_para", 350],
	["M249 PIP (VFG)", "rhs_weap_m249_pip_L_vfg", 350],
	["M249 PIP (Short)", "rhs_weap_m249_pip_S", 350],
	["M249 PIP (Short, Para)", "rhs_weap_m249_pip_S_para", 350],
	["M249 PIP (Short, VFG)", "rhs_weap_m249_pip_S_vfg", 350],
	
	//AKM & PKP
	["PKM", "rhs_weap_pkm", 350],
	["PKP", "rhs_weap_pkp", 350]
];

launcherArray = compileFinal str
[
	["9K38 Igla", "rhs_weap_igla", 400],
	["FGM-148 Javelin", "rhs_weap_fgm148", 600],
	["FIM-92 Stinger", "rhs_weap_fim92", 500],
	["M136 HEAT (Single-use)", "rhs_weap_M136", 500],
	["M136 HEDP (Single-use)", "rhs_weap_M136_hedp", 500],
	["M136 HP (Single-use)", "rhs_weap_M136_hp", 600],
	["MK153 Mod 0 SMAW (Black)", "rhs_weap_smaw", 600],
	["MK153 Mod 0 SMAW (Green)", "rhs_weap_smaw_green", 600],
	["RPG-26", "rhs_weap_rpg26", 600],
	["RPG-7", "rhs_weap_rpg7", 600],
	["RSHG-2", "rhs_weap_rshg2", 600]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 25000],
	["2A18M Howitzer", "rhs_D30_msv", 2500], 
	["2B14 82mm Mortar", "rhs_2b14_82mm_msv", 2500],
	["9K115-2 ATGM", "rhs_Metis_9k115_2_msv", 2500],
	["Static 2x 9K38 Igla Pod", "rhs_Igla_AA_pod_msv", 3000],
	["AGS30 40mm GMG (Low Tripod)", "RHS_AGS30_TriPod_MSV", 3000],
	["DShKM (High Tripod)", "rhs_DSHKM_ins", 3000],
	["DShKM (Low Tripod)", "rhs_DSHKM_Mini_TriPod_ins", 2000],
	["Static 2x FIM-92F Stinger Pod", "RHS_Stinger_AA_pod_D", 2000],//
	["KORD 12.7mm (Low Tripod)", "rhs_KORD_MSV", 2000],
	["KORD 12.7mm (High Tripod)", "rhs_KORD_high_MSV", 5000], 
	["M119 Howitzer", "RHS_M119_D", 5000],//
	["M252 81mm Mortar", "RHS_M252_D", 5000],//
	["'Ma Deuce' (High Tripod)", "RHS_M2StaticMG_D", 3000],//
	["'Ma Deuce' (Low Tripod)", "RHS_M2StaticMG_MiniTripod_D", 3000],//
	["M41A4 TOW", "RHS_TOW_TriPod_D", 3000],//
	["Mk. 19 (Low Tripod)", "RHS_MK19_TriPod_D", 5000],//
	["MSV 12.7mm (Low Tripod)", "RHS_NSV_TriPod_MSV", 5000],
	["SPG-9 Recoilless Rocket", "rhs_SPG9_INS", 5000]
];

throwputArray = compileFinal str
[
	// Grenades
	["RGD-5 Frag", "rhs_mag_rgd5", 50],
	["RGN Frag", "rhs_mag_rgn", 50],
	["RGO Frag", "rhs_mag_rgo", 50],
	["RDG-2 Smoke (White)", "rhs_mag_rdg2_white", 50],
	["RDG-2 Smoke (Black)", "rhs_mag_rdg2_black", 50],
	["M67 Frag", "rhs_mag_m67", 50],
	["MK3A2 Concussion", "rhs_mag_mk3a2", 50],
	["M18 Smoke (Yellow)", "rhs_mag_m18_yellow", 50],
	["M18 Smoke (Purple)", "rhs_mag_m18_purple", 50],
	["M18 Smoke (Red)", "rhs_mag_m18_red", 50],
	["M18 Smoke (Green)", "rhs_mag_m18_green", 50],
	["AN-M8 Smoke HC", "rhs_mag_an_m8hc", 50],
	["M7A3 Teargas", "rhs_mag_m7a3_cs", 50],
	["AN-M14 TH3 Indinciary", "rhs_mag_an_m14_th3", 50],
	["M84 Flashbang", "rhs_mag_mk84", 50],
	["Plamya-M Stun Grenade", "rhs_mag_plamyam", 50],
	["Fakel Flashbang", "rhs_mag_fakel", 50],
	["Fakel Stun Grenade", "rhs_mag_fakels", 50],
	["Zarya-2 Flashbang", "rhs_mag_zarya2", 50],
	["M69 Practice Grenade", "rhs_mag_m69", 50],
	
	// Mines
	["M112 Demo Charge", "rhsusf_m112_mag", 50],
	["M112 Demo Block (4x M112)", "rhsusf_m112x4_mag", 50],
	["M19 AT Mine", "rhs_mine_M19_mag", 50],
	["TM-62M AT Mine", "rhs_mine_tm62m_mag", 50],
	["PMN-2 AP Mine", "rhs_mine_pmn2_mag", 50],
	["Small IED (Dug-in)", "IEDLandSmall_Remote_Mag", 50],
	["Large IED (Dug-in)", "IEDLandBig_Remote_Mag", 50],
	["Small IED (Urban)", "IEDUrbanSmall_Remote_Mag", 50],
	["Large IED (Urban)", "IEDUrbanBig_Remote_Mag", 50],
	["AP Mine (Tripwire)", "APERSTripMine_Wire_Mag", 50],
	["AP Mine (Step)", "APERSMine_Range_Mag", 50]
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
	["5rd .300WM", "rhsusf_5Rnd_300winmag_xm2010", 25],
	["10rd 7.62x54r 7N1", "rhs_10Rnd_762x54mmR_7N1", 25],
	["20rd 7.62x51mm M118 SP", "rhsusf_20Rnd_762x51_m118_special_Mag", 15], 
	["20rd 7.62x51mm M993", "rhsusf_20Rnd_762x51_m993_Mag", 15],
	
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
	["100rd 7.62x54r", "rhs_100Rnd_762x54mmR", 15],
	["100rd 7.62x54r (Green Tracers)", "rhs_100Rnd_762x54mmR_green", 15],
	["50rd 7.62x51 M80 Ball", "rhsusf_50Rnd_762x51", 15],
	["50rd 7.62x51 M61 AP", "rhsusf_50Rnd_762x51_m61_ap", 15],
	["50rd 7.62x51 M62 Tracer", "rhsusf_50Rnd_762x51_m62_tracer", 15],
	["50rd 7.62x51 M80A1 EPR (AP)", "rhsusf_50Rnd_762x51_m80a1epr", 15],
	["50rd 7.62x51 M82 Blanks", "rhsusf_50Rnd_762x51_m82_blank", 15],
	["50rd 7.62x51 M993", "rhsusf_50Rnd_762x51_m993", 15],
	["100rd 7.62x51 M80 Ball", "rhsusf_100Rnd_762x51", 15],
	["100rd 7.62x51 M61 AP", "rhsusf_100Rnd_762x51_m61_ap", 15],
	["100rd 7.62x51 M62 Tracer", "rhsusf_100Rnd_762x51_m62_tracer", 15],
	["100rd 7.62x51 M80A1 EPR (AP)", "rhsusf_100Rnd_762x51_m80a1epr", 15],
	["100rd 7.62x51 M82 Blanks", "rhsusf_100Rnd_762x51_m82_blank", 15],
	["100rd 7.62x51 M993", "rhsusf_100Rnd_762x51_m993", 15],
	["200rd 5.56x45 M855A1 (Mixed Tracers/Ball)", "rhs_200rnd_556x45_M_SAW", 15],
	["200rd 5.56x45 M855A1 (Ball)", "rhs_200rnd_556x45_B_SAW", 15],
	["200rd 5.56x45 M855A1 (Tracers)", "rhs_200rnd_556x45_T_SAW", 15],
	["100rd 5.56x45 Ball (Pouch)", "rhsusf_100Rnd_556x45_soft_pouch", 15],
	["200rd 5.56x45 Ball (Pouch)", "rhsusf_200Rnd_556x45_soft_pouch", 15],
	["100rd 5.56x45 M200 Blanks (Pouch)", "rhsusf_100Rnd_556x45_M200_soft_pouch", 15],
	
	/* ----LAUNCHER ARRAY---- */
	["9M38 AA Rocket", "rhs_mag_9k38_rocket", 55],
	["FGM-148 AT Rocket", "rhs_fgm148_magazine_AT", 55],
	["FIM-92F AA Rocket", "rhs_fim92_mag", 55],
	["MK153 SMAW HEAA Rocket", "rhs_mag_smaw_HEAA", 55],
	["MK153 SMAW HEAA Rocket", "rhs_mag_smaw_HEDP", 55],
	["5rd MK153 SMAW Marker Rounds", "rhs_mag_smaw_SR", 55],
	["RPG-26 AT Rocket", "rhs_rpg26_mag", 55],
	["RPG-7 PG7VL AT Rocket", "rhs_rpg7_PG7VL_mag", 55],
	["RPG-7 PG7VR HEAT Rocket", "rhs_rpg7_PG7VR_mag", 55],
	["RPG-7 OG-7V FRAG Rocket", "rhs_rpg7_OG7V_mag", 55],
	["RPG-7 TBG7V Thermobaric Rocket", "rhs_rpg7_TBG7V_mag", 55],
	["RSHG-2 Thermobaric Rocket", "rhs_rshg2_mag", 55],
	["M136 Rocket (Useless)", "rhs_m136_mag", 999999],
	["M136 Rocket (Useless)", "rhs_m136_hedp_mag", 999999],
	["M136 Rocket (Useless)", "rhs_m136_hp_mag", 999999],
	
	/* ----ARMAMENT PLACEHOLDERS---- */
	["Static 2x FIM-92F Stinger Pod", "RHS_Stinger_AA_pod_D", 2000],
	["M119 Howitzer", "RHS_M119_D", 5000],//
	["M252 81mm Mortar", "RHS_M252_D", 5000],//
	["'Ma Deuce' (High Tripod)", "RHS_M2StaticMG_D", 3000],//
	["'Ma Deuce' (Low Tripod)", "RHS_M2StaticMG_MiniTripod_D", 3000],//
	["M41A4 TOW", "RHS_TOW_TriPod_D", 3000],//
	["Mk. 19 (Low Tripod)", "RHS_MK19_TriPod_D", 5000]
	
];


//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	/* ----SCOPES---- */
	// Rail Mounted
	["Trijicon ACOG", "rhsusf_acc_ACOG_USMC", 50, "item"],
	["Trijicon ACOG (ARD)", "rhsusf_acc_ACOG2_USMC", 50, "item"],
	["Trijicon ACOG (ARD/Lens Cover)", "rhsusf_acc_ACOG3_USMC", 50, "item"],
	["M145 ELCAN", "rhsusf_acc_ELCAN", 50, "item"],
	["M145 ELCAN (ARD)", "rhsusf_acc_ELCAN_ard", 50, "item"],
	["M2A1 GL Red Dot", "rhsusf_acc_M2A1", 50, "item"],
	["EOTech 552", "rhsusf_acc_eotech_552", 50, "item"],
	["Aimpoint CompM4", "rhsusf_acc_compm4, 50, "item"],
	["Leupold Mk4 ER/T (3.5-10x)", "rhsusf_acc_LEUPOLDMK4", 50, "item"],
	["Leupold Mk4 ER/T (6.5-20x)", "rhsusf_acc_LEUPOLDMK4_2", 50, "item"],
	
	// AK Style Side Mounted
	["1P29 (4x)", "rhs_acc_1p29", 50, "item"],
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
	["DPM-AK-5 Flash Suppressor", "rhs_acc_ak5", 50, "item"],
	["DTK Muzzle Brake", "rhs_acc_dtk", 50, "item"],
	["DTK-1 Muzzle Brake", "rhs_acc_dtk1", 50, "item"],
	["DTK-3 Muzzle Brake", "rhs_acc_dtk3", 50, "item"],
	["DTK-4 Sound Suppressor", "rhs_acc_dtk4short", 50, "item"],
	["TGP-A Sound Suppressor", "rhs_acc_tgpa", 50, "item"],
	
	// AK47
	["DTK-4 Sound Suppressor", "rhs_acc_dtk4long", 50, "item"],
	["DTK-4 Sound Suppressor (Taped)", "rhs_acc_dtk4screws", 50, "item"],
	["PBS-1 Sound Suppressor", "rhs_acc_pbs1", 50, "item"],
	["PG-S64 Flash Suppressor", "rhs_acc_pgs64", 50, "item"],
	
	// SR-25, M16, M4
	["SR-25 7.62 Sound Suppressor", "rhsusf_acc_SR25S", 50, "item"],
	["KAC NT4 Sound Suppressor", "rhsusf_acc_nt4_black", 50, "item"],
	["KAC NT4 Sound Suppressor (Tan)", "rhsusf_acc_nt4_tan", 50, "item"],
	["Rotex 5 Sound Suppressor", "rhsusf_acc_rotex5_grey", 50, "item"],
	["Rotex 5 Sound Suppressor (Desert)", "rhsusf_acc_rotex5_tan", 50, "item"],
	["Surefire SF3P Flash Suppressor", "rhsusf_acc_SF3P556", 50, "item"],
	["Surefire SFMB Muzzle Brake", "rhsusf_acc_SFMB556", 50, "item"],
	
	// M2010
	["AAC TITAN .300WM Sound Suppressor (Tan)", "rhsusf_acc_M2010S", 50, "item"],
	
	/* ----Bipods---- */
	["Harris Bipod", "rhsusf_acc_harris_bipod", 50, "item"],
	["Surefire SFMB Muzzle Brake", "rhsusf_acc_SFMB556", 50, "item"],
	["Bipod (Black)", "bipod_01_F_blk", 250, "item"],
	["Bipod (Olive)", "bipod_03_F_oli", 250, "item"],
	["Bipod (Tan)", "bipod_02_F_tan", 250, "item"]
	
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
	["Booniehat M81", "rhs_Booniehat_m81", 50, "hat"],
	["Booniehat Desert MARPAT", "rhs_Booniehat_marpatd", 50, "hat"],
	["Booniehat Woodland MARPAT", "rhs_Booniehat_marpatwd", 50, "hat"],
	["Booniehat OCP", "rhs_Booniehat_ocp", 50, "hat"],
	["Booniehat UCP", "rhs_Booniehat_ucp", 50, "hat"],
	["Headset", "rhsusf_Bowman", 50, "hat"],
	["Headset Cap", "rhsusf_bowman_cap", 50, "hat"],
	["Flight Helmet", "rhsusf_hgu56p", 50, "hat"],
	["Flight Helmet (Mouth Cover)", "rhsusf_hgu56p_mask", 50, "hat"],
	["Pilot Helmet (Oxygen Mask)", "RHS_jetpilot_usaf", 50, "hat"],
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
	["Patrol Cap OCP", "rhsusf_patrolcap_ocp", 50, "hat"],
	["Patrol Cap UCP", "rhsusf_patrolcap_ucp", 50, "hat"],
	
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
	["Booniehat Summer", "rhs_Booniehat_digi", 50, "hat"],
	["Booniehat Camo", "rhs_Booniehat_flora", 50, "hat"],
	["ZSh-7A Pilot Helmet", "rhs_zsh7a", 50, "hat"],
	["ZSh-7A Pilot Helmet (Mask)", "rhs_zsh7a_mike", 50, "hat"],
	["Tsh-4 Bomber Hat", "rhs_tsh4", 50, "hat"],
	["Tsh-4 Bomber Hat (Balaclava)", "rhs_tsh4_bala", 50, "hat"],
	["Tsh-4 Bomber Hat (ESS)", "rhs_tsh4_ess", 50, "hat"],
	["Tsh-4 Bomber Hat (Balaclava, ESS)", "rhs_tsh4_ess_bala", 50, "hat"],
	["SSh-68", "rhs_ssh68", 50, "hat"],
	["Field Cap", "rhs_fieldcap", 50, "hat"],
	["Field Cap Desert", "rhs_fieldcap_digi_des", 50, "hat"],
	["Field Cap Summer", "rhs_fieldcap_digi", 50, "hat"],
	["Field Cap Mountain", "rhs_fieldcap_ml", 50, "hat"],
	["Headset (RUS)", "rhs_gssh18", 50, "hat"],
	["Beanie", "rhs_beanie_green", 50, "hat"],
	["Beanie Urban", "rhs_beanie", 50, "hat"]
	
];

uniformArray = compileFinal str
[
	// USAF
	["Combat Uniform OCP", "rhs_uniform_cu_ocp", 300, "uni"],
	["Combat Uniform OCP (101st Airborn Division)", "rhs_uniform_cu_ocp_101st", 300, "uni"],
	["Combat Uniform OCP (10th Mountain Division)", "rhs_uniform_cu_ocp_10th", 300, "uni"],
	["Combat Uniform OCP (1st Cavalry Division)", "rhs_uniform_cu_ocp_1stcav", 300, "uni"],
	["Combat Uniform OCP (82nd Airborn Division)", "rhs_uniform_cu_ocp_82nd", 300, "uni"],
	["Combat Uniform UCP", "rhs_uniform_cu_ucp", 300, "uni"],
	["Combat Uniform UCP (101st Airborn Division)", "rhs_uniform_cu_ucp_101st", 300, "uni"],
	["Combat Uniform UCP (10th Mountain Division)", "rhs_uniform_cu_ucp_10th", 300, "uni"],
	["Combat Uniform UCP (1st Cavalry Division)", "rhs_uniform_cu_ucp_1stcav", 300, "uni"],
	["Combat Uniform UCP (82nd Airborn Division)", "rhs_uniform_cu_ucp_82nd", 300, "uni"],
	["FROG M81", "rhs_uniform_FROG01_m81", 300, "uni"],
	["FROG MARPAT Desert", "rhs_uniform_FROG01_d", 300, "uni"],
	["FROG MARPAT Woodland", "rhs_uniform_FROG01_wd", 300, "uni"],
	
	// Russia
	["Flight Suit (RUS)", "rhs_uniform_df15", 300, "uni"],
	["EMR Desert", "rhs_uniform_vdv_emr_des", 300, "uni"],
	["EMR Summer", "rhs_uniform_emr_patchless", 300, "uni"],
	["EMR Summer (MSV)", "rhs_uniform_msv_emr", 300, "uni"],
	["EMR Summer (VDV)", "rhs_uniform_vdv_emr", 300, "uni"],
	["Flora (Brown)", "rhs_uniform_flora_patchless_alt", 300, "uni"],
	["Flora", "rhs_uniform_flora_patchless", 300, "uni"],
	["Flora (MSV)", "rhs_uniform_flora", 300, "uni"],
	["Flora (VDV)", "rhs_uniform_vdv_flora", 300, "uni"],
	["Gorka-R Green", "rhs_uniform_gorka_r_g", 300, "uni"],
	["Gorka-R Yellow", "rhs_uniform_gorka_r_y", 300, "uni"],
	["Geurilla Uniform (Flora-Les)", "rhs_chdkz_uniform_5", 300, "uni"],
	["Geurilla Uniform (Half-Flora)", "rhs_chdkz_uniform_4", 300, "uni"],
	["Geurilla Uniform (Half-Kamysh)", "rhs_chdkz_uniform_3", 300, "uni"],
	["Geurilla Uniform (Half-Les)", "rhs_chdkz_uniform_2", 300, "uni"],
	["Geurilla Uniform (Les)", "rhs_chdkz_uniform_1", 300, "uni"],
	["Izlom Uniform", "rhs_uniform_mvd_izlom", 300, "uni"],
	["M88 Tan", "rhs_uniform_m88_patchless", 300, "uni"],
	["Mountain Flora", "rhs_uniform_mflora_patchless", 300, "uni"],
	["Mountain Flora (VDV)", "rhs_uniform_vdv_mflora", 300, "uni"]

];

vestArray = compileFinal str
[
	// USAF
	["IOTV OCP", "rhsusf_iotv_ocp", 200, "vest"],
	["IOTV OCP (Grenadier)", "rhsusf_iotv_ocp_Grenadier", 200, "vest"],
	["IOTV OCP (Medic)", "rhsusf_iotv_ocp_Medic", 200, "vest"],
	["IOTV OCP (Engineer)", "rhsusf_iotv_ocp_Repair", 200, "vest"],
	["IOTV OCP (Rifleman)", "rhsusf_iotv_ocp_Rifleman", 200, "vest"],
	["IOTV OCP (SAW Gunner)", "rhsusf_iotv_ocp_SAW", 200, "vest"],
	["IOTV OCP (Squad Leader)", "rhsusf_iotv_ocp_Squadleader", 200, "vest"],
	["IOTV OCP (Team Leader)", "rhsusf_iotv_ocp_Teamleader", 200, "vest"],
	["IOTV UCP", "rhsusf_iotv_ucp", 200, "vest"],
	["IOTV UCP (Grenadier)", "rhsusf_iotv_ucp_Grenadier", 200, "vest"],
	["IOTV UCP (Medic)", "rhsusf_iotv_ucp_Medic", 200, "vest"],
	["IOTV UCP (Repair)", "rhsusf_iotv_ucp_Repair", 200, "vest"],
	["IOTV UCP (Rifleman)", "rhsusf_iotv_ucp_Rifleman", 200, "vest"],
	["IOTV UCP (SAW Gunner)", "rhsusf_iotv_ucp_SAW", 200, "vest"],
	["IOTV UCP (Squad Leader)", "rhsusf_iotv_ucp_Squadleader", 200, "vest"],
	["IOTV UCP (Team Leader)", "rhsusf_iotv_ucp_Teamleader", 200, "vest"],
	["SPC", "rhsusf_spc", 200, "vest"],
	["SPC (Corpsman)", "rhsusf_spc_corpsman", 200, "vest"],
	["SPC (Crewman)", "rhsusf_spc_crewman", 200, "vest"],
	["SPC (IAR)", "rhsusf_spc_iar", 200, "vest"],
	["SPC (Light)", "rhsusf_spc_light", 200, "vest"],
	["SPC (Machine Gunner)", "rhsusf_spc_mg", 200, "vest"],
	["SPC (Marksman)", "rhsusf_spc_marksman", 200, "vest"],
	["SPC (Rifleman)", "rhsusf_spc_rifleman", 200, "vest"],
	["SPC (Squad Leader)", "rhsusf_spc_squadleader", 200, "vest"],
	["SPC (Team Leader)", "rhsusf_spc_teamleader", 200, "vest"],

	// RUSSIA
	["6B23 6Sh92", "rhs_6b23_6sh92", 200, "vest"],
	["6B23 6Sh92 (Radio)", "rhs_6b23_6sh92_radio", 200, "vest"],
	["6B23 6Sh92 (VOG)", "rhs_6b23_6sh92_vog", 200, "vest"],
	["6B13 6Sh92 Flora", "rhs_6b13_Flora_6sh92", 200, "vest"],
	["6B13 6Sh92 Flora (Radio)", "rhs_6b13_Flora_6sh92_radio", 200, "vest"],
	["6B23 (Crew Ofc.)", "rhs_6b23_crewofficer", 200, "vest"],
	["6B23 (Crew)", "rhs_6b23_crew", 200, "vest"],
	["6B23 (Engineer)", "rhs_6b23_engineer", 200, "vest"],
	["6B23 (Medic)", "rhs_6b23_medic", 200, "vest"],
	["6B23 (Rifleman)", "rhs_6b23_rifleman", 200, "vest"],
	["6B23 (Sniper)", "rhs_6b23_sniper", 200, "vest"],
	["6B23 Vydra-3M", "rhs_6b23_vydra_3m", 200, "vest"],
	["6B23 Summer 6Sh92", "rhs_6b23_digi_6sh92", 200, "vest"],
	["6B23 Summer 6Sh92 (Radio)", "rhs_6b23_digi_6sh92_radio", 200, "vest"],
	["6B23 Summer 6Sh92 (VOG)", "rhs_6b23_digi_6sh92_vog", 200, "vest"],
	["6B23 Summer (Crew Ofc.)", "rhs_6b23_digi_crewofficer", 200, "vest"],
	["6B23 Summer (Crew)", "rhs_6b23_digi_crew", 200, "vest"],
	["6B23 Summer (Engineer)", "rhs_6b23_digi_engineer", 200, "vest"],
	["6B23 Summer (Medic)", "rhs_6b23_digi_medic", 200, "vest"],
	["6B23 Summer (Rifleman)", "rhs_6b23_digi_rifleman", 200, "vest"],
	["6B23 Summer (Sniper)", "rhs_6b23_digi_sniper", 200, "vest"],
	["6B23 Summer Vydra-3M", "rhs_6b23_digi_vydra_3m", 200, "vest"],
	["6B23 Mountain 6Sh92", "rhs_6b23_ML_6sh92", 200, "vest"],
	["6B23 Mountain (Radio)", "rhs_6b23_ML_6sh92_radio", 200, "vest"],
	["6B23 Mountain (VOG)", "rhs_6b23_ML_6sh92_vog", 200, "vest"],
	["6B23 Mountain (Crew Ofc.)", "rhs_6b23_ML_crewofficer", 200, "vest"],
	["6B23 Mountain (Crew)", "rhs_6b23_ML_crew", 200, "vest"],
	["6B23 Mountain (Engineer)", "rhs_6b23_ML_engineer", 200, "vest"],
	["6B23 Mountain (Medic)", "rhs_6b23_ML_medic", 200, "vest"],
	["6B23 Mountain (Rifleman)", "rhs_6b23_ML_rifleman", 200, "vest"],
	["6B23 Mountain (Sniper)", "rhs_6b23_ML_sniper", 200, "vest"],
	["6B23 Mountain Vydra-3M", "rhs_6b23_ML_vydra_3m", 200, "vest"],
	["6Sh92", "rhs_6sh92", 200, "vest"],
	["6Sh92 (Radio)", "rhs_6sh92_radio", 200, "vest"],
	["6Sh92 (VOG)", "rhs_6sh92_vog", 200, "vest"],
	["6Sh92 Mountain", "rhs_6sh92_digi", 200, "vest"],
	["6Sh92 Mountain (VOG)", "rhs_6sh92_digi_vog", 200, "vest"],
	["Pistol Holster", "rhs_vest_pistol_holster", 200, "vest"],
	["Vydra-3M", "rhs_vydra_3m", 200, "vest"]
	
];

backpackArray = compileFinal str
[
	// USAF
	["Eagle A-III Assault Pack Coyote", "rhsusf_assault_eagleaiii_coy", 200, "backpack"],
	["Eagle A-III Assault Pack OCP", "rhsusf_assault_eagleaiii_ocp", 200, "backpack"],
	["Eagle A-III Assault Pack UCP", "rhsusf_assault_eagleaiii_ucp", 200, "backpack"],
	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Bergen (Black)", "B_Bergen_blk", 350, "backpack"],
	["Bergen (Green)", "B_Bergen_rgr", 350, "backpack"],
	["Bergen (MTP)", "B_Bergen_mcamo", 350, "backpack"],
	
	// Russia
	["Sidor", "rhs_sidor", 200, "backpack"],
	["UMBTS", "rhs_assault_umbts", 200, "backpack"],
	["UMBTS (Engineer)", "rhs_assault_umbts_engineer_empty", 200, "backpack"]
	
];

genItemArray = compileFinal str
[
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],
	["AN/PVS-14 (1-Piece)", "rhsusf_ANPVS_14", 100, "nvg"],
	["AN/PVS-15 (2-Piece)", "rhsusf_ANPVS_15", 100, "nvg"],
	["Balaclava (Green)", "rhs_balaclava", 100, "gogg"],
	["Balaclava (Black)", "G_Balaclava_blk", 100, "gogg"],
	["Balaclava (Olive)", "rhs_balaclava1_olive", 100, "gogg"],
	["Ballistic Glasses (Black)", "rhs_googles_black", 100, "gogg"],
	["Ballistic Glasses (Clear)", "rhs_googles_clear", 100, "gogg"],
	["Ballistic Glasses (Yellow)", "rhs_googles_yellow", 100, "gogg"],
	["Ballistic Glasses (Orange)", "rhs_googles_orange", 100, "gogg"],
	["Ballistic Goggles", "rhs_ess_black", 100, "gogg"],
	["Scarf (Tan)", "rhs_scarf", 100, "gogg"],
	["Diving Goggles", "G_Diving", 100, "gogg"],
	["Lerca 1200 Rangefinder (Black)", "lerca_1200_black", 50, "binoc"],
	["Lerca 1200 Rangefinder (Tan)", "lerca_1200_tan", 50, "binoc"],
	["Leupold Mk4 Spotting Scope", "Leupold_Mk4", 50, "binoc"],
	["Binoculars", "rhs_pdu4", 50, "binoc"],
	["TR-8 Periscope", "rhs_tr8_periscope", 50, "binoc"],
	["Binoculars", "Binocular", 50, "binoc"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
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
	["Scaffolding", "Land_Scaffolding_F", 250, "object"]
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	["Kart", "C_Kart_01_F", 500, "vehicle"],

	["Quadbike (Civilian)", "C_Quadbike_01_F", 600, "vehicle"],
	["Quadbike (NATO)", "B_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (CSAT)", "O_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (AAF)", "I_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (FIA)", "B_G_Quadbike_01_F", 650, "vehicle"],

	["Hatchback", "C_Hatchback_01_F", 800, "vehicle"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 1000, "vehicle"],
	["SUV", "C_SUV_01_F", 1100, "vehicle"],
	["Offroad", "C_Offroad_01_F", 1100, "vehicle"],
	["Offroad Camo", "B_G_Offroad_01_F", 1250, "vehicle"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle"],
	["Offroad HMG", "B_G_Offroad_01_armed_F", 2500, "vehicle"],

	["Truck", "C_Van_01_transport_F", 700, "vehicle"],
	["Truck (Camo)", "B_G_Van_01_transport_F", 800, "vehicle"],
	["Truck Box", "C_Van_01_box_F", 900, "vehicle"],
	["Fuel Truck", "C_Van_01_fuel_F", 2000, "vehicle"],
	["Fuel Truck (Camo)", "B_G_Van_01_fuel_F", 2100, "vehicle"],

	["HEMTT Tractor", "B_Truck_01_mover_F", 4000, "vehicle"],
	["HEMTT Box", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 7500, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 9000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 10000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 12500, "vehicle"],
	["HEMTT Ammo", "B_Truck_01_ammo_F", 27500, "vehicle"],

	["Tempest Device", "O_Truck_03_device_F", 4000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 7500, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 9000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 10000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 12500, "vehicle"],
	["Tempest Ammo", "O_Truck_03_ammo_F", 27500, "vehicle"],

	["Zamak Transport", "I_Truck_02_transport_F", 4000, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 5000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 7500, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 9000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 10000, "vehicle"],
	["Zamak Ammo", "I_Truck_02_ammo_F", 25000, "vehicle"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 2500, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 15000, "vehicle"]
];

armoredArray = compileFinal str
[
	["Hunter", "B_MRAP_01_F", 4000, "vehicle"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 15000, "vehicle"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 17500, "vehicle"],
	["Ifrit", "O_MRAP_02_F", 4000, "vehicle"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 15000, "vehicle"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 17500, "vehicle"],
	["Strider", "I_MRAP_03_F", 4000, "vehicle"],
	["Strider HMG", "I_MRAP_03_hmg_F", 15000, "vehicle"],
	["Strider GMG", "I_MRAP_03_gmg_F", 17500, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_F", 22500, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 27500, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 30000, "vehicle"]
];

tanksArray = compileFinal str
[
	["CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F", 32500, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 35000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 37500, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 40000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 40000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 40000, "vehicle"],
	["M2A1 Slammer", "B_MBT_01_cannon_F", 50000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 50000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 50000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 50000, "vehicle"]
];


helicoptersArray = compileFinal str
[
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 4000, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 5000, "vehicle"], // MH-6
	["PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F", 7000, "vehicle"], // Ka-60
	["WY-55 Hellcat (Green)", "I_Heli_light_03_unarmed_F", 7000, "vehicle"], // AW159

	["Mi-290 Taru (Crane) [DLC]", "O_Heli_Transport_04_F", 7500, "vehicle"], // CH-54
	["Mi-290 Taru (Box) [DLC]", "O_Heli_Transport_04_box_F", 8000, "vehicle"],
	["Mi-290 Taru (Fuel) [DLC]", "O_Heli_Transport_04_fuel_F", 8500, "vehicle"],
	["Mi-290 Taru (Bench) [DLC]", "O_Heli_Transport_04_bench_F", 9000, "vehicle"],
	["Mi-290 Taru (Transport) [DLC]", "O_Heli_Transport_04_covered_F", 9500, "vehicle"],
	["CH-67 Huron (Black) [DLC]", "B_Heli_Transport_03_unarmed_F", 10000, "vehicle"], // CH-47
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 10000, "vehicle"], // AW101

	["Mi-290 Taru (Medical) [DLC]", "O_Heli_Transport_04_medevac_F",12500, "vehicle"],
	["Mi-290 Taru (Repair) [DLC]", "O_Heli_Transport_04_repair_F", 15000, "vehicle"],
	["Mi-290 Taru (Ammo) [DLC]", "O_Heli_Transport_04_ammo_F", 25000, "vehicle"],

	["UH-80 Ghost Hawk (Black)", "B_Heli_Transport_01_F", 25000, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["UH-80 Ghost Hawk (Green)", "B_Heli_Transport_01_camo_F", 25000, "vehicle"], // UH-60 Stealth with 2 side miniguns (green camo)
	["CH-67 Huron (Armed) [DLC]", "B_Heli_Transport_03_F", 30000, "vehicle"], // CH-47 with 2 side miniguns
	["AH-9 Pawnee", "B_Heli_Light_01_armed_F", 30000, "vehicle"], // Armed AH-6
	["PO-30 Orca (Armed, Black)", "O_Heli_Light_02_v2_F", 30000, "vehicle"], // Armed Ka-60 with orca paintjob
	["PO-30 Orca (Armed, Hex)", "O_Heli_Light_02_F", 35000, "vehicle"], // Armed Ka-60
	["WY-55 Hellcat (Armed)", "I_Heli_light_03_F", 40000, "vehicle"], // Armed AW159
	["AH-99 Blackfoot", "B_Heli_Attack_01_F", 50000, "vehicle"], // RAH-66 with gunner
	["Mi-48 Kajman (Hex)", "O_Heli_Attack_02_F", 60000, "vehicle"], // Mi-28 with gunner
	["Mi-48 Kajman (Black)", "O_Heli_Attack_02_black_F", 60000, "vehicle"] // Mi-28 with gunner (black camo)
];

planesArray = compileFinal str
[
	["A-143 Buzzard AA", "I_Plane_Fighter_03_AA_F", 40000, "vehicle"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_CAS_F", 45000, "vehicle"],
	["A-164 Wipeout CAS", "B_Plane_CAS_01_F", 60000, "vehicle"],
	["To-199 Neophron CAS", "O_Plane_CAS_02_F", 60000, "vehicle"],
	["MQ4A Greyhawk Missile UAV", "B_UAV_02_F", 20000, "vehicle"],
	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_CAS_F", 10000, "vehicle"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than Missile ones
	["K40 Ababil-3 Missile UAV (CSAT)", "O_UAV_02_F", 20000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (CSAT)", "O_UAV_02_CAS_F", 10000, "vehicle"],
	["K40 Ababil-3 Missile UAV (AAF)", "I_UAV_02_F", 20000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (AAF)", "I_UAV_02_CAS_F", 10000, "vehicle"]
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
	"UAV_02_base_F",
	"UGV_01_base_F"
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
