---------------
-- Variables --
---------------

local veh = { 
	('rkangoo21cafe'),
	('rkangoo21kpauto'),
	('rs72021'),
	('2021m5'),
	('21s580m'),
	('huragucci'),
	('p208_2020'),
	('r820'),
	('roma20'),
	('p208_autoecole'),
	('yxt1200zst_csi'),
    ('yxt1200zst_bri'),
    ('p3008_gn'),
    ('p3008_pn'),
    ('p3008_pm'),
    ('rscenic22_pn'),
    ('rscenic22_gn'),
    ('yfjr1300_gn'),
    ('yfjr1300_pn'),
    ('yfjr1300_csi'),
    ('dduster18_gn'),
    ('dduster18_pm'),
    ('dduster18_spvl-bspp'),
    ('p508sw_bac75n'),
	('rtrafic19_dirif'),
	('rmaster319_dirif'),
}
local vehselect 

---------------
-- Detection --
---------------

Citizen.CreateThread(function()
	while true do 
		if IsPedSittingInAnyVehicle(GetPlayerPed(-1)) then
			for i, v in pairs(veh) do
				if GetEntityModel(GetVehiclePedIsIn(GetPlayerPed(-1), false)) == GetHashKey(v) then 
					vehselect = GetVehiclePedIsIn(GetPlayerPed(-1), false)	
					SetVehicleModKit(vehselect, 0)
					for modType = 0, 10, 1 do 
						local index = GetNumVehicleMods(vehselect, modType)-1
						SetVehicleMod(vehselect, modType, index, false)
					end
				end
			end
		end	
	Citizen.Wait(100)
	end
end)

-----------------------------------------------------------------------------
-------------------------------- Instructions -------------------------------
-----------------------------------------------------------------------------
--[[

Pour ajouter un véhicule, copie la ligne 7 et colle la en dessous avec ton nom de véhicule (Nom du yft)

Voici la liste des ModsKit détectés et mis automatiquement par le code 

0	Spoilers
1	Front Bumper
2	Rear Bumper
3	Side Skirt
4	Exhaust
5	Frame
6	Grille
7	Hood
8	Fender
9	Right Fender
10	Roof

]]