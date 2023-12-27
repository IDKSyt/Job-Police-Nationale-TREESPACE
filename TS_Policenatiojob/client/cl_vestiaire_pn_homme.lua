ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5000)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(200)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

---------------- FONCTIONS ------------------
RMenu.Add('policehomme', 'main', RageUI.CreateMenu("", "GILET PAR BALLE"))
RMenu:Get('policehomme', 'main').EnableMouse = false
RMenu:Get('policehomme', 'main').Closed = function()
    Zdr.ekip= false
end

Zdr = {
    ekip= false,
}

function OpenVestiaireHommePoliceGpb()
    if Zdr.ekip then
        Zdr.ekip= false
    else
        Zdr.ekip= true 
        RageUI.Visible(RMenu:Get('policehomme', 'main'), true)

        Citizen.CreateThread(function()
            while Zdr.ekip do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('policehomme', 'main'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
        
        RageUI.Separator("↓ ~o~GPB Divers ~s~ ↓")             
        
        RageUI.ButtonWithStyle("CSI",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 0)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB 1~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 75, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 75, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 75, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 75, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 75, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 75, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 75, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 75, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 75, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 75, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 75, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 75, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB 2~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 76, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 76, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 76, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 76, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 76, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 76, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 76, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 76, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 76, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 76, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 76, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 76, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB 3~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 77, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 77, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 77, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 77, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 77, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 77, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 77, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 77, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 77, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 77, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 77, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 77, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB Spécialiste de Terrain~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 78, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 78, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 78, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 78, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 78, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 78, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 78, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 78, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 78, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 78, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 78, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 78, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB Police Judiciaire~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 79, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 79, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 79, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 79, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 79, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 79, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 79, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 79, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 79, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 79, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 79, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 79, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB Equipé 1~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 80, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 80, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 80, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 80, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 80, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 80, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 80, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 80, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 80, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 80, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 80, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 80, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB Equipé 2~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 81, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 81, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 81, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 81, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 81, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 81, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 81, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 81, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 81, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 81, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 81, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 81, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB RAID~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 82, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 82, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 82, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 82, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 82, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 82, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 82, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 82, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 82, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 82, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 82, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 82, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB Equipé 3~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 83, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 83, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 83, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 83, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 83, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 83, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 83, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 83, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 83, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 83, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 83, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 83, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

                RageUI.Separator("↓ ~o~GPB Equipé 4~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 84, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 84, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 84, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 84, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 84, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 84, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 84, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 84, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 84, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 84, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 84, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 84, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB Equipé Tazer 1~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 85, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 85, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 85, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 85, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 85, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 85, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 85, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 85, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 85, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 85, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 85, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 85, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB Equipé Tazer 2~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 86, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 86, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 86, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 86, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 86, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 86, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 86, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 86, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 86, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 86, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 86, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 86, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB 2~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 87, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 87, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 87, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 87, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 87, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 87, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 87, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 87, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 87, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 87, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 87, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 87, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB 3~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 88, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 88, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 88, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 88, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 88, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 88, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 88, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 88, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 88, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 88, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 88, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 88, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB Police Judiciaire~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB Equipé Tazer + Radio 1~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 90, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 90, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 90, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 90, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 90, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 90, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 90, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 90, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 90, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 90, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 90, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 90, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB CRS~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 101, 0)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 101, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 101, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 101, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 101, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 101, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 101, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 101, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 101, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 101, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 101, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 101, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB Police Judiciaire~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 89, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.Separator("↓ ~o~GPB Lourd~s~ ↓")         

        RageUI.ButtonWithStyle("ADS Police Adloint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 113, 1)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 113, 2)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 113, 3)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 113, 4)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 113, 5)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 113, 6)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine-Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 113, 7)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 113, 8)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 113, 9)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 113, 10)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 113, 11)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)

        RageUI.ButtonWithStyle("Commissaire Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 9, 113, 12)   --bulletwear
                SetPedArmour(GetPlayerPed(-1) , 100)
            end
        end)
        
end, function()
end, 1)

end    
end)            
end            
end      

local position = {
    {x = 458.38116455078, y = -981.21325683594, z = 34.297351837158}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 5.0 then
            wait = 0

            DrawMarker(22, -563.04,-117.38,42.25, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] GPB",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommePoliceGpb()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

---------------- FONCTIONS ------------------
RMenu.Add('policehommeps', 'main1', RageUI.CreateMenu("", "Police Secours"))
RMenu:Get('policehommeps', 'main1').EnableMouse = false
RMenu:Get('policehommeps', 'main1').Closed = function()
    Zdr1.ekip1= false
end

Zdr1 = {
    ekip1= false,
}

function OpenVestiaireHommePolicePs()
    if Zdr1.ekip1 then
        Zdr1.ekip1= false
    else
        Zdr1.ekip1= true 
        RageUI.Visible(RMenu:Get('policehommeps', 'main1'), true)

        Citizen.CreateThread(function()
            while Zdr1.ekip1 do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('policehommeps', 'main1'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
        
        RageUI.Separator("↓ ~o~T-Shirt Blanc Manches Courtes~s~ ↓")    
        
        RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 54, 1)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 54, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 54, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 54, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 54, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 54, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 54, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 54, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 54, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 54, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 54, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 54, 12)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.Separator("↓ ~o~T-Shirt Bleu Manches Courtes~s~ ↓")    
        
        RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 55, 1)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 55, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 55, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 55, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 55, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 55, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 55, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 55, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 55, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 55, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 55, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 55, 12)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.Separator("↓ ~o~T-Shirt Noire Manches Courtes~s~ ↓")    
        
        RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 56, 1)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 56, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 56, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 56, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 56, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 56, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 56, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 56, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 56, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 56, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 56, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 56, 12)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.Separator("↓ ~o~T-Shirt Blanc Manches Longues~s~ ↓")    
        
        RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, 1)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, 12)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.Separator("↓ ~o~T-Shirt Bleu Mache Courte~s~ ↓")    
        
        RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 58, 1)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 58, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 58, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 58, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 58, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 58, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 58, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 58, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 58, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 58, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 58, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 58, 12)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.Separator("↓ ~o~T-Shirt Noir Manche Courte~s~ ↓")    
        
        RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 59, 1)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 59, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 59, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 59, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 59, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 59, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 59, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 59, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 59, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 59, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 59, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 59, 12)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.Separator("↓ ~o~Pull Manches Longues~s~ ↓")    
        
        RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 61, 1)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 61, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 61, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 61, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 61, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 61, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 61, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 61, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 61, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 61, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 61, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 61, 12)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.Separator("↓ ~o~Veste Police~s~ ↓")    
        
        RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 62, 1)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 62, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 62, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 62, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 62, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 62, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 62, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 62, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 62, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 62, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 62, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 62, 12)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.Separator("↓ ~o~Veste Police 2~s~ ↓")    
        
        RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 63, 1)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 63, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 63, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 63, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 63, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 63, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 63, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 63, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 63, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 63, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 63, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 63, 12)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.Separator("↓ ~o~Veste Police 3~s~ ↓")    
        
        RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 64, 1)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 64, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 64, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 64, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 64, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 64, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 64, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 64, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 64, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 64, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 64, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 64, 12)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.Separator("↓ ~o~Veste Police 3~s~ ↓")    
        
        RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 65, 1)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 65, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 65, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 65, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 65, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 65, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 65, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 65, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 65, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 65, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 65, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 65, 12)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.Separator("↓ ~o~Veste Police 4~s~ ↓")    
        
        RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 66, 1)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 66, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 66, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 66, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 66, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 66, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 66, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 66, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 66, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 66, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 66, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 66, 12)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
            end
        end)     
end, function()
end, 1)

end    
end)            
end            
end      

local positionps = {
    {x = 457.91622924805, y = -978.99145507813, z = 34.297351837158}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positionps[k].x, positionps[k].y, positionps[k].z)

            if dist <= 5.0 then
            wait = 0

            DrawMarker(22, -563.17,-115.83,42.25, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Tenues PS",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommePolicePs()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

---------------- FONCTIONS ------------------
RMenu.Add('policehommebacn', 'main2', RageUI.CreateMenu("", "BAC 75N"))
RMenu:Get('policehommebacn', 'main2').EnableMouse = false
RMenu:Get('policehommebacn', 'main2').Closed = function()
    Zdr2.ekip2= false
end

Zdr2 = {
    ekip2= false,
}

function OpenVestiaireHommePoliceBacn()
    if Zdr2.ekip2 then
        Zdr2.ekip2= false
    else
        Zdr2.ekip2= true 
        RageUI.Visible(RMenu:Get('policehommebacn', 'main2'), true)

        Citizen.CreateThread(function()
            while Zdr2.ekip2 do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('policehommebacn', 'main2'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
        
        RageUI.Separator("↓ ~o~BAC75N~s~ ↓") 
        
        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 24, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 3)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 0)   --Ecussons
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 24, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 3)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 0)   --Ecussons
            end
        end)

        RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 24, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 3)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 0)   --Ecussons
            end
        end)

        RageUI.ButtonWithStyle("Brigadier Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 24, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 3)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 0)   --Ecussons
            end
        end)
        
        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 24, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 3)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 0)   --Ecussons
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 24, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 3)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 0)   --Ecussons
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 24, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 3)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 0)   --Ecussons
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 24, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 3)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 0)   --Ecussons
            end
        end)
        
        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 24, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 3)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 0)   --Ecussons
            end
        end)


end, function()
end, 1)

end    
end)            
end            
end      

local positionbacn = {
    {x = 458.38131713867, y = -977.02642822266, z = 34.297351837158}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positionbacn[k].x, positionbacn[k].y, positionbacn[k].z)

            if dist <= 5.0 then
            wait = 0

            DrawMarker(22, -562.44,-118.72,42.25, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Tenues BAC 75N",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommePoliceBacn()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

---------------- FONCTIONS ------------------
RMenu.Add('policehommeacces', 'main3', RageUI.CreateMenu("", "Accessoires"))
RMenu:Get('policehommeacces', 'main3').EnableMouse = false
RMenu:Get('policehommeacces', 'main3').Closed = function()
    Zdr3.ekip3= false
end

Zdr3 = {
    ekip3= false,
}

function OpenVestiaireHommePoliceAcces()
    if Zdr3.ekip3 then
        Zdr3.ekip3= false
    else
        Zdr3.ekip3= true 
        RageUI.Visible(RMenu:Get('policehommeacces', 'main3'), true)

        Citizen.CreateThread(function()
            while Zdr3.ekip3 do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('policehommeacces', 'main3'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
        
                    RageUI.ButtonWithStyle("Retirer l'accessoire",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 0, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Retirer le ceinturons",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Enlever le Casque",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 65, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Enlever Brassard",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque
                        end
                    end)
        
                    RageUI.Separator("↓ ~o~Ceinturons~s~ ↓")

                    RageUI.ButtonWithStyle("Ceinturons 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 22, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 2",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 28, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 3",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 26, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 4",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 36, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 5",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 37, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 6",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 7",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 39, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 8",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 40, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 9",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 41, 0) --tshirt 
                        end
                    end)

                    RageUI.Separator("↓ ~o~Holster~s~ ↓")

                    RageUI.ButtonWithStyle("Holster Administratif Ceinture",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 16, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Holster Administratif Ceinture PA",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 17, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Holster Administratif Ceinture  Cuissarde",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 18, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Holster Administratif Ceinture Lampe",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 23, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Holster Administratif Ceinture Haut de Cuisse",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 27, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Holster Administratif Cuisse 2 Clips",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 30, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Holster Administratif Cuisse 1 Clip",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 33, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Holster Administratif Cuisse 1 Clip avec Lampe",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 36, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Holster Port Discret avec Rétention",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 50, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Holster Port Discret",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 53, 0)   --chain
                        end
                    end)
                    
                    RageUI.Separator("↓ ~o~Casque / Casquette~s~ ↓")

                    RageUI.ButtonWithStyle("Casque SCM Ouvert",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 22, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Casque SCM Fermé",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 23, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Casque Balistique Visière Fermée",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 28, 0)   --casque
                        end
                    end)                

                    RageUI.ButtonWithStyle("Casque MO Visière Baissée",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 31, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Casque MO Visière Levée",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 30, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Ancien Casque MO Visière Baissée",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 205, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Ancien Casque MO Visière Levée",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 206, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Casque CRS Visière Baissée",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 33, 0)   --casque
                        end
                    end)
                    

                    RageUI.ButtonWithStyle("Casque CRS Visière Levée",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 32, 0)   --casque
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Casque Déminage",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 203, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Casquette Police",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 202, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Bonnet Police",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 200, 0)   --casque
                        end
                    end)

                    RageUI.Separator("↓ ~o~Masque~s~ ↓")

                    RageUI.ButtonWithStyle("Masque a gaze",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 1, 18, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Cache Cou",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 1, 12, 2)   --casque
                        end
                    end)

                    RageUI.Separator("↓ ~o~Gants~s~ ↓")

                    RageUI.ButtonWithStyle("Gants",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)   --casque
                        end
                    end)


                    RageUI.Separator("↓ ~o~Calot~s~ ↓")

                    RageUI.ButtonWithStyle("Calot EGPX",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 198, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Calot GPXS",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 198, 1)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Calot GPX",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 198, 2)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Calot Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 198, 3)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Calot Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 198, 4)   --casque
                        end
                    end)

                    
                    RageUI.ButtonWithStyle("Calot Brigadier Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 198, 5)   --casque
                        end
                    end)

                    
                    RageUI.ButtonWithStyle("Lieutenant Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 198, 6)   --casque
                        end
                    end)

                    
                    RageUI.ButtonWithStyle("Calot Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 198, 7)   --casque
                        end
                    end)

                    
                    RageUI.ButtonWithStyle("Calot Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 198, 8)   --casque
                        end
                    end)

                    
                    RageUI.ButtonWithStyle("Calot Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 198, 9)   --casque
                        end
                    end)

                    
                    RageUI.ButtonWithStyle("Calot Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 198, 10)   --casque
                        end
                    end)

                    RageUI.Separator("↓ ~o~Casquettes de Cérémonies~s~ ↓")

                    RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 211, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 211, 1)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 211, 2)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 211, 3)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Elève GPX",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 211, 5)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 211, 6)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 211, 7)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 211, 8)   --casque
                        end
                    end)

                    RageUI.Separator("↓ ~o~Brassard~s~ ↓")

                    RageUI.ButtonWithStyle("Brassard 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 23, 1)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Brassard 2",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 24, 1)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Brassard 3",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 25, 1)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Brassard 4",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 26, 1)   --casque
                        end
                    end)



end, function()
end, 1)

end    
end)            
end            
end      

local positionacces = {
    {x = 459.68099975586, y = -977.05487060547, z = 34.297351837158}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positionacces[k].x, positionacces[k].y, positionacces[k].z)

            if dist <= 5.0 then
            wait = 0

            DrawMarker(22, -561.77,-120.06,42.25, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Tenues Accessoires",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommePoliceAcces()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

---------------- FONCTIONS ------------------
RMenu.Add('policehommecrs', 'main4', RageUI.CreateMenu("", "CRS"))
RMenu:Get('policehommecrs', 'main4').EnableMouse = false
RMenu:Get('policehommecrs', 'main4').Closed = function()
    Zdr4.ekip4= false
end

Zdr4 = {
    ekip4= false,
}

function OpenVestiaireHommePoliceCrs()
    if Zdr4.ekip4 then
        Zdr4.ekip4= false
    else
        Zdr4.ekip4= true 
        RageUI.Visible(RMenu:Get('policehommecrs', 'main4'), true)

        Citizen.CreateThread(function()
            while Zdr4.ekip4 do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('policehommecrs', 'main4'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
        
                    RageUI.Separator("↓ ~o~Tenues CRS~s~ ↓")    
        
                    RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 60, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 38, 0)   --calque
                        end
                    end)
            
                    RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 60, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 38, 0)   --calque
                        end
                    end)
            
                    RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 60, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 38, 0)   --calque
                        end
                    end)
            
                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 60, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 38, 0)   --calque
                        end
                    end)
            
                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 60, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 38, 0)   --calque
                        end
                    end)
            
                    RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 60, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 38, 0)   --calque
                        end
                    end)
            
                    RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 60, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 38, 0)   --calque
                        end
                    end)
            
                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 60, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 38, 0)   --calque
                        end
                    end)
            
                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 60, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 38, 0)   --calque
                        end
                    end)
            
                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 60, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 38, 0)   --calque
                        end
                    end)
            
                    RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 60, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)-- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 38, 0)   --calque

                        end
                    end)
            
                    RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 60, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                            SetPedComponentVariation(GetPlayerPed(-1) , 10, 38, 0)   --calque
                        end
                    end)
                    
                    RageUI.Separator("↓ ~o~Veste MO~s~ ↓")    
        
        RageUI.ButtonWithStyle("ADS Police Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 1)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Gardien Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Brigadier-Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Capitaine Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 67, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque
            end
        end)


end, function()
end, 1)

end    
end)            
end            
end      

local positioncrs = {
    {x = 461.04415893555, y = -977.24114990234, z = 34.297351837158}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positioncrs[k].x, positioncrs[k].y, positioncrs[k].z)

            if dist <= 5.0 then
            wait = 0

            DrawMarker(22, -561.19,-121.85,42.25, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Tenues CRS",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommePoliceCrs()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

---------------- FONCTIONS ------------------
RMenu.Add('policehommebri', 'main5', RageUI.CreateMenu("", "BRI"))
RMenu:Get('policehommebri', 'main5').EnableMouse = false
RMenu:Get('policehommebri', 'main5').Closed = function()
    Zdr5.ekip5= false
end

Zdr5 = {
    ekip5= false,
}

function OpenVestiaireHommePoliceBri()
    if Zdr5.ekip5 then
        Zdr5.ekip5= false
    else
        Zdr5.ekip5= true 
        RageUI.Visible(RMenu:Get('policehommebri', 'main5'), true)

        Citizen.CreateThread(function()
            while Zdr5.ekip5 do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('policehommebri', 'main5'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
        
        RageUI.Separator("↓ ~o~Tenue BRI~s~ ↓")

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 48, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 24, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10,33, 9)   --Ecussons
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 48, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 24, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10,33, 9)   --Ecussons
            end
        end)

        RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 48, 12)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 24, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10,33, 9)   --Ecussons
            end
        end)

        RageUI.ButtonWithStyle("Brigadier Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 48, 13)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 24, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10,33, 9)   --Ecussons
            end
        end)
        
        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 48, 14)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 24, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10,33, 9)   --Ecussons
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 48, 15)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 24, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10,33, 9)   --Ecussons
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 48, 16)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 24, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10,33, 9)   --Ecussons
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 48, 17)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 24, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10,33, 9)   --Ecussons
            end
        end)


end, function()
end, 1)

end    
end)            
end            
end      

local positionbri = {
    {x = 460.86346435547, y = -978.69384765625, z = 34.297351837158}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positionbri[k].x, positionbri[k].y, positionbri[k].z)

            if dist <= 5.0 then
            wait = 0

            DrawMarker(22, -560.41,-123.36,42.25, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Tenues BRI",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommePoliceBri()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

---------------- FONCTIONS ------------------
RMenu.Add('policehommescm', 'main6', RageUI.CreateMenu("", "SCM"))
RMenu:Get('policehommescm', 'main6').EnableMouse = false
RMenu:Get('policehommescm', 'main6').Closed = function()
    Zdr6.ekip6= false
end

Zdr6 = {
    ekip6= false,
}

function OpenVestiaireHommePoliceScm()
    if Zdr6.ekip6 then
        Zdr6.ekip6= false
    else
        Zdr6.ekip6= true 
        RageUI.Visible(RMenu:Get('policehommescm', 'main6'), true)

        Citizen.CreateThread(function()
            while Zdr6.ekip6 do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('policehommescm', 'main6'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
        
        RageUI.Separator("↓ ~o~Veste Epaisse~s~ ↓")
        
        RageUI.ButtonWithStyle("ADS Policier Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 69, 0)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 69, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 69, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 69, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 69, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Brigadier Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 69, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 69, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 69, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 69, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 69, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 69, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 69, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.Separator("↓ ~o~Veste Légère~s~ ↓")
        
        RageUI.ButtonWithStyle("ADS Policier Adjoint",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 68, 0)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("GPX Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 68, 2)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("GPX",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 68, 3)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 68, 4)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 68, 5)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Brigadier Major",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 68, 6)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant Stagiaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 68, 7)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 68, 8)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 68, 9)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 68, 10)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Commissaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 68, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque  
            end
        end)

        RageUI.ButtonWithStyle("Commissaire-Divisionnaire",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                SetPedComponentVariation(GetPlayerPed(-1) , 11, 68, 11)  --torse
                SetPedComponentVariation(GetPlayerPed(-1) , 3, 255, 0)  -- bras
                SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque                
            end
        end)


end, function()
end, 1)

end    
end)            
end            
end      

local positionscm = {
    {x = 460.7145690918, y = -979.52178955078, z = 34.297351837158}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positionscm[k].x, positionscm[k].y, positionscm[k].z)

            if dist <= 5.0 then
            wait = 0

            DrawMarker(22, -559.91,-124.84,42.25, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Tenues SCM",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommePoliceScm()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

---------------- FONCTIONS ------------------
RMenu.Add('policehommecal', 'main7', RageUI.CreateMenu("", "ECUSSONS"))
RMenu:Get('policehommecal', 'main7').EnableMouse = false
RMenu:Get('policehommecal', 'main7').Closed = function()
    Zdr7.ekip7= false
end

Zdr7 = {
    ekip7= false,
}

function OpenVestiaireHommePoliceCal()
    if Zdr7.ekip7 then
        Zdr7.ekip7= false
    else
        Zdr7.ekip7= true 
        RageUI.Visible(RMenu:Get('policehommecal', 'main7'), true)

        Citizen.CreateThread(function()
            while Zdr7.ekip7 do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('policehommecal', 'main7'), true, true, true, function()
        
        
        RageUI.ButtonWithStyle("Enlever écussons",nil, {nil}, true, function(Hovered, Active, Selected)
        if Selected then
             SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, 0)   --calque
        end
        end)  

        RageUI.Separator("↓ ~o~Ecussons DSPAP~s~ ↓") 
        
        RageUI.ButtonWithStyle("Ecussons 1",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 27, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 2",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 28, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 3",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 29, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 4",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 30, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 5",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 31, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 6",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 7",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 33, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 8",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 34, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 9",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 35, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 10",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 36, 0)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 11",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 37, 0)   --calque
            end
        end)

        RageUI.Separator("↓ ~o~Ecussons DGSI~s~ ↓") 
        
        RageUI.ButtonWithStyle("Ecussons 1",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 27, 2)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 2",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 28, 2)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 3",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 29, 2)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 4",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 30, 2)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 5",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 31, 2)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 6",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 2)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 7",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 33, 2)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 8",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 34, 2)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 9",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 35, 2)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 10",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 36, 2)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 11",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 37, 2)   --calque
            end
        end)

        RageUI.Separator("↓ ~o~Ecussons BST~s~ ↓") 
        
        RageUI.ButtonWithStyle("Ecussons 1",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 27, 3)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 2",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 28, 3)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 3",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 29, 3)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 4",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 30, 3)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 5",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 31, 3)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 6",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 3)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 7",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 33, 3)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 8",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 34, 3)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 9",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 35, 3)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 10",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 36, 3)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 11",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 37, 3)   --calque
            end
        end)

        RageUI.Separator("↓ ~o~Ecussons BAC75N~s~ ↓") 
        
        RageUI.ButtonWithStyle("Ecussons 1",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 28, 4)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 2",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 29, 4)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 3",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 30, 4)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 4",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 31, 4)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 5",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 4)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 6",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 33, 4)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 7",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 34, 4)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 8",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 35, 4)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 9",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 36, 4)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 10",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 37, 4)   --calque
            end
        end)



        RageUI.Separator("↓ ~o~Ecussons Cynophile~s~ ↓") 
        
        RageUI.ButtonWithStyle("Ecussons 1",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 27, 4)   --calque
            end
        end)

        RageUI.Separator("↓ ~o~Ecussons PJ~s~ ↓")

        RageUI.ButtonWithStyle("Ecussons 1",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 27, 5)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 2",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 28, 5)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 3",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 29, 5)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 4",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 30, 5)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 5",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 31, 5)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 6",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 5)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 7",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 33, 5)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 8",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 34, 5)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 9",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 35, 5)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 10",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 36, 5)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 11",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 37, 5)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 12",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 27, 7)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 13",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 28, 7)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 14",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 29, 7)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 15",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 30, 7)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 16",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 31, 7)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 17",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 7)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 18",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 33, 7)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 19",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 34, 7)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 20",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 35, 7)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 21",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 36, 7)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 22",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 37, 7)   --calque
            end
        end)

        RageUI.Separator("↓ ~o~Ecussons DGPN~s~ ↓") 
        
        RageUI.ButtonWithStyle("Ecussons 1",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 27, 6)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 2",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 28, 6)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 3",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 29, 6)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 4",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 30, 6)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 5",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 31, 6)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 6",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 6)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 7",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 33, 6)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 8",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 34, 6)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 9",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 35, 6)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 10",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 36, 6)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 11",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 37, 6)   --calque
            end
        end)

        RageUI.Separator("↓ ~o~Ecussons DCPJ~s~ ↓") 
        
        RageUI.ButtonWithStyle("Ecussons 1",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 27, 8)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 2",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 28, 8)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 3",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 29, 8)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 4",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 30, 8)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 5",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 31, 8)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 6",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 8)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 7",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 33, 8)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 8",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 34, 8)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 9",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 35, 8)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 10",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 36, 8)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 11",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 37, 8)   --calque
            end
        end)

        RageUI.Separator("↓ ~o~Ecussons BRI PP~s~ ↓") 
        
        RageUI.ButtonWithStyle("Ecussons 1",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 27, 9)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 2",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 28, 9)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 3",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 29, 9)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 4",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 30, 9)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 5",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 31, 9)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 6",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 9)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 7",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 33, 9)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 8",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 34, 9)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 9",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 35, 9)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 10",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 36, 9)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 11",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 37, 9)   --calque
            end
        end)
        RageUI.Separator("↓ ~o~Ecussons BRI PJ~s~ ↓")

        RageUI.ButtonWithStyle("Ecussons 1",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 27, 15)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 2",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 28, 15)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 3",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 29, 15)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 4",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 30, 15)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 5",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 31, 15)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 6",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 15)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 7",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 33, 15)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 8",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 34, 15)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 9",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 35, 15)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 10",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 36, 15)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 11",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 37, 15)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 12",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 27, 16)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 13",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 28, 16)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 14",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 29, 16)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 15",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 30, 16)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 16",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 31, 16)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 17",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 16)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 18",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 33, 16)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 19",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 34, 16)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 20",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 35, 16)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 21",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 36, 16)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 22",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 37, 16)   --calque
            end
        end)

        RageUI.Separator("↓ ~o~Ecussons DCRFPN~s~ ↓") 
        
        RageUI.ButtonWithStyle("Ecussons 1",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 27, 10)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 2",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 28, 10)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 3",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 29, 10)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 4",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 30, 10)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 5",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 31, 10)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 6",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 32, 10)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 7",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 33, 10)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 8",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 34, 10)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 9",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 35, 10)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 10",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 36, 10)   --calque
            end
        end)

        RageUI.ButtonWithStyle("Ecussons 11",nil, {nil}, true, function(Hovered, Active, Selected)
            if Selected then
                SetPedComponentVariation(GetPlayerPed(-1) , 10, 37, 10)   --calque
            end
        end)





end, function()
end, 1)

end    
end)            
end            
end      

local positioncal = {
    {x = 460.90328979492, y = -981.97875976563, z = 34.297351837158}
}

Citizen.CreateThread(function()
    while true do

      local wait = 200

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positioncal[k].x, positioncal[k].y, positioncal[k].z)

            if dist <= 5.0 then
            wait = 100

            DrawMarker(22, -557.53,-118.53,42.25, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 100
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Ecussons",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommePoliceCal()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)