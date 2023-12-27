ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5000)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

--------------------- HELICO ---------------------


--------------------------------------

RMenu.Add('garagehelicopn', 'main', RageUI.CreateMenu("", "Garage Helico..."))
RMenu:Get('garagehelicopn', 'main').EnableMouse = false
RMenu:Get('garagehelicopn', 'main').Closed = function()
    Pn.vehp= false
end

Pn = {
    vehp= false,
}

function tumegnogni()
    if Pn.vehp then
        Pn.vehp= false
    else
        Pn.vehp= true
        RageUI.Visible(RMenu:Get('garagehelicopn', 'main'), true)

        Citizen.CreateThread(function()
            while Pn.vehp do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('garagehelicopn', 'main'), true, true, true, function()

                    RageUI.Separator("↓ ~r~     Ranger les voitures    ~s~↓")
      
                    RageUI.ButtonWithStyle("Mettre le véhicule dans le garage", "Pour ranger un véhicule.", {RightLabel = "→→→"},true, function(Hovered, Active, Selected)
                        if (Selected) then   
                        local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
                        if dist4 < 4 then
                            ESX.ShowAdvancedNotification("Garagiste Wendy", "Le véhicule est de retour!", "", "CHAR_MINOTAUR", 1)
                            DeleteEntity(veh)
                        end 
                        end
                        end)   

                        RageUI.Separator("  _______________________")

                        RageUI.ButtonWithStyle("AS 350", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                            if (Selected) then
                            Citizen.Wait(1)  
                            spawnuniCar2("as350gn")
                            RageUI.CloseAll()
                            end
                        end)

                        RageUI.ButtonWithStyle("EC 145", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                            if (Selected) then
                            Citizen.Wait(1)  
                            spawnuniCar2("ec145gn")
                            RageUI.CloseAll()
                            end
                        end)


                end, function()
                end) 
            end    
        end)            
    end            
end    

local dauze = {
    {x = 1568.8334960938, y = 832.51647949219, z = 77.141471862793}
    }


Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(dauze) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, dauze[k].x, dauze[k].y, dauze[k].z)

            if dist <= 2.5 then
            wait = 0
        
            if dist <= 2.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Pour ouvrir le garage hélicoptère",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					tumegnogni()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

function spawnuniCar2(car)
    local car = GetHashKey(car)
    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end
    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, Config.spawn.spawnheli.position.x, Config.spawn.spawnheli.position.y, Config.spawn.spawnheli.position.z, Config.spawn.spawnheli.position.h, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    local plaque = "PN"..math.random(1,9)
    SetVehicleNumberPlateText(vehicle, plaque) 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
    SetVehicleMaxMods(vehicle)
end

function SetVehicleMaxMods(vehicle)
    local props = {
      modEngine       = 2,
      modBrakes       = 2,
      modTransmission = 2,
      modSuspension   = 3,
      modTurbo        = true,
    }
    ESX.Game.SetVehicleProperties(vehicle, props)
  end