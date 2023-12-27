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
RMenu.Add('policefemme', 'main', RageUI.CreateMenu("Police Nationale", "Intéraction"))
RMenu:Get('policefemme', 'main').EnableMouse = false
RMenu:Get('policefemme', 'main').Closed = function()
    Pn.ekip= false
end

Pn = {
    ekip= false,
}

function OpenVestiaireFemmePolice()
    if Pn.ekip then
        Pn.ekip= false
    else
        Pn.ekip= true 
        RageUI.Visible(RMenu:Get('policefemme', 'main'), true)

        Citizen.CreateThread(function()
            while Pn.ekip do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('policefemme', 'main'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
        
        
                    RageUI.ButtonWithStyle("Tenue 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 35, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 48, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 20, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 30, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 85, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Tenue 2",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 35, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 48, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 20, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 30, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 85, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Tenue 3",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 35, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 48, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 20, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 30, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 85, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Gestion GPB~s~ ↓")
        
                    RageUI.ButtonWithStyle("Gilet par balle 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 3, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)

                        end
                    end)

                    RageUI.ButtonWithStyle("Gilet par balle 2",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 3, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)

                        end
                    end)

                    RageUI.ButtonWithStyle("Enlever gilet par balle",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 0, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 0)
                        end
                    end)
        
                end, function()
                end, 1)
 
            end    
        end)            
    end            
end    

local position = {
    {x = 441.53219604492, y = -993.23583984375, z = 34.297351837158}
}

Citizen.CreateThread(function()
    while true do

      local wait = 200

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 5.0 then
            wait = 100

            DrawMarker(22, -556.35,-120.96,42.25, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true)  
        
            if dist <= 0.5 then
               wait = 100
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Pour changer de vêtements (Femme)",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireFemmePolice()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)
