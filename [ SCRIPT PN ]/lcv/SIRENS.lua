--[[
---------------------------------------------------
LUXART VEHICLE CONTROL V3 (FOR FIVEM)
---------------------------------------------------
Coded by Lt.Caine
ELS Clicks by Faction
Additions by TrevorBarns
---------------------------------------------------
FILE: SIRENS.lua
PURPOSE: Associate specific sirens with specific
vehicles. Siren assignments. 
---------------------------------------------------
SIREN TONE TABLE: 
	ID- Generic Name	(SIREN STRING)									[vehicles.awc name]
	1 - Airhorn 		(SIRENS_AIRHORN)								[AIRHORN_EQD]
	2 - Wail 			(VEHICLES_HORNS_SIREN_1)						[SIREN_PA20A_WAIL]
	3 - Yelp 			(VEHICLES_HORNS_SIREN_2)						[SIREN_2]
	4 - Priority 		(VEHICLES_HORNS_POLICE_WARNING)					[POLICE_WARNING]
	5 - CustomA* 		(RESIDENT_VEHICLES_SIREN_WAIL_01)				[SIREN_WAIL_01]
	6 - CustomB* 		(RESIDENT_VEHICLES_SIREN_WAIL_02)				[SIREN_WAIL_02]
	7 - CustomC* 		(RESIDENT_VEHICLES_SIREN_WAIL_03)				[SIREN_WAIL_03]
	8 - CustomD* 		(RESIDENT_VEHICLES_SIREN_QUICK_01)				[SIREN_QUICK_01]
	9 - CustomE* 		(RESIDENT_VEHICLES_SIREN_QUICK_02)				[SIREN_QUICK_02]
	10 - CustomF* 		(RESIDENT_VEHICLES_SIREN_QUICK_03)				[SIREN_QUICK_03]
	11 - Powercall 		(VEHICLES_HORNS_AMBULANCE_WARNING)				[AMBULANCE_WARNING]
	12 - FireHorn	 	(VEHICLES_HORNS_FIRETRUCK_WARNING)				[FIRE_TRUCK_HORN]
	13 - Firesiren 		(RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01)		[SIREN_FIRETRUCK_WAIL_01]
	14 - Firesiren2 	(RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01)	[SIREN_FIRETRUCK_QUICK_01]
]]
-- CHANGE SIREN NAMES, AUDIONAME, AUDIOREF
SIRENS = {	
	--[[1]]	  { Name = "Airhorn", 		String = "SIRENS_AIRHORN", 								Ref = 0 }, --1
	--[[2]]	  { Name = "Police", 			String = "VEHICLES_HORNS_SIREN_1", 						Ref = 0 }, --2
	--[[3]]	  { Name = "Yelp", 			String = "VEHICLES_HORNS_SIREN_2", 						Ref = 0 }, --3
	--[[4]]	  { Name = "Samu", 		String = "VEHICLES_HORNS_POLICE_WARNING", 				Ref = 0 }, --4
	--[[5]]	  { Name = "PompierL", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_01", 			Ref = 0 }, --5
	--[[6]]	  { Name = "CustomB", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_02", 			Ref = 0 }, --6
	--[[7]]	  { Name = "Gendarmerie", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_03", 			Ref = 0 }, --7
	--[[8]]	  { Name = "CustomD", 		String = "RESIDENT_VEHICLES_SIREN_QUICK_01", 			Ref = 0 }, --8
	--[[9]]	  { Name = "CustomE",		String = "RESIDENT_VEHICLES_SIREN_QUICK_02",			Ref = 0 }, --9
	--[[10]]  { Name = "CustomF",		String = "RESIDENT_VEHICLES_SIREN_QUICK_03", 			Ref = 0 }, --10
	--[[11]]  { Name = "Powercall", 	String = "VEHICLES_HORNS_AMBULANCE_WARNING", 			Ref = 0 }, --11
	--[[12]]  { Name = "Fire Horn", 	String = "VEHICLES_HORNS_FIRETRUCK_WARNING", 			Ref = 0 }, --12
	--[[13]]  { Name = "Pompier", 	String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01", 	Ref = 0 }, --13
	--[[14]]  { Name = "Fire Wail", 	String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01", 	Ref = 0 }, --14
}

--ASSIGN SIRENS TO VEHICLES
SIREN_ASSIGNMENTS = {
	--['<gameName>'] = {tones},
	['DEFAULT'] = { 2, 2, 2, 2 }, 
	['FIRETRUK'] = { 1, 13, 14, 11 }, 
	['AMBULAN'] = { 1, 2, 3, 4, 11 }, 
	['LGUARD'] = { 1, 2, 3, 4, 11 },
	['samu'] = { 1, 4, 4 },
	['pompierl'] = { 1, 5, 5 },
	['pompier'] = { 1, 13, 13 },
	['police'] = {1, 2, 2},
	['police2'] = {1, 2, 2},
	['gendarmerie'] = {1, 7, 7},
	['un'] = {1, 1, 1},
	['deux'] = {2, 2, 2},
	['trois'] = {3, 3, 3},
	['quatre'] = {4, 4, 4},
	['cinq'] = {5, 5, 5},
	['six'] = {6, 6, 6},
	['sept'] = {7, 7, 7},
	['huit'] = {8, 8, 8},
	['neuf'] = {9, 9, 9},
	['dix'] = {10, 10, 10},
	['onze'] = {11, 11, 11},
	['douze'] = {12, 12, 12},
	['treize'] = {13, 13, 13},
	['quatorze'] = {14, 14, 14},
	['quinze'] = {15, 15, 15},

}