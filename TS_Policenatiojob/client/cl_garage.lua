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



  -------------------------------------------

  --------------------------------------

RMenu.Add('garagepn', 'main', RageUI.CreateMenu("", "GARAGE"))
RMenu:Get('garagepn', 'main').EnableMouse = false
RMenu:Get('garagepn', 'main').Closed = function()
    Pn.ekip= false
end

Pn = {
    ekip= false,
}

function garage()
    if Pn.ekip then
        Pn.ekip= false 
    else
        Pn.ekip= true 
        RageUI.Visible(RMenu:Get('garagepn', 'main'), true)

        Citizen.CreateThread(function()
            while Pn.ekip do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('garagepn', 'main'), true, true, true, function()
                    RageUI.ButtonWithStyle("~r~~h~ RANGER LA VOITURE", nil, {RightLabel = "→→→"},true, function(Hovered, Active, Selected)
                        if (Selected) then   
                        local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
                        if dist4 < 4 then
                            DeleteEntity(veh)
                            RageUI.CloseAll()
                        end 
                    end
                end) 

                RageUI.Separator("~b~↓ Véhicule PAM ↓")
                            
                if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
                    RageUI.ButtonWithStyle("[~r~PAM~s~] Berlingo", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("cberlingo_pn")
                    RageUI.CloseAll()
                    end
                end)
            end

            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
                RageUI.ButtonWithStyle("[~r~PAM~s~] Dacia Duster", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                if (Selected) then
                Citizen.Wait(1)  
                spawnuniCar("dduster_pn")
                RageUI.CloseAll()
                end
            end)
        end

            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
                RageUI.ButtonWithStyle("[~r~PAM~s~] Ford C max", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                if (Selected) then
                Citizen.Wait(1)  
                spawnuniCar("fcmax_pn")
                RageUI.CloseAll()
                end
            end)
        end
            
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
            RageUI.ButtonWithStyle("[~r~PAM~s~] Ford Focus", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
            if (Selected) then
            Citizen.Wait(1)  
            spawnuniCar("ffocus3sw_pn")
            RageUI.CloseAll()
            end
        end)
    end

    if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
        RageUI.ButtonWithStyle("[~r~PAM~s~] Peugeot 308", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
        if (Selected) then
        Citizen.Wait(1)  
        spawnuniCar("p308_pn")
        RageUI.CloseAll()
        end
    end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
            RageUI.ButtonWithStyle("[~r~PAM~s~] Peugeot 3008", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
            if (Selected) then
            Citizen.Wait(1)  
            spawnuniCar("p3008_pn")
            RageUI.CloseAll()
            end
        end)
    end
                            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
            RageUI.ButtonWithStyle("[~r~PAM~s~] Peugeot 5008", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
            if (Selected) then
            Citizen.Wait(1)  
            spawnuniCar("p5008_pn")
            RageUI.CloseAll()
            end
        end)
    end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~r~PAM~s~] Peugeot Expert", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("pexpert17_pn")
    RageUI.CloseAll()
    end
end)
end
                            
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~r~PAM~s~] Dacia Duster (GRIS)", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("police2")
    RageUI.CloseAll()
    end
end)
end                            

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~r~PAM~s~] Peugeot Partner - 12", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("ppartner12_pn")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~r~PAM~s~] Renault Megane - 10", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("rmegane3e10_pn")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~r~PAM~s~] Renault Megane - 18", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("rmegane4e18_pn")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~r~PAM~s~] Renault Scenic - 1", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("rscenic3_pn1")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~r~PAM~s~] Renault Scenic - 2", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("rscenic3_pn2")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~r~PAM~s~] Renault Scenic - 22", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("rscenic22_pn")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~r~PAM~s~] Skodia", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("skodiaq_pn")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~r~PAM~s~] Octavia", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("soctavia_pn")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~r~PAM~s~] Octavia - Combi", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("soctaviacombi_pn")
    RageUI.CloseAll()
    end
end)
end

                RageUI.Separator("~b~↓ Véhicule BAC75N ↓")
                            
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~u~BAC75~s~] Peugeot 508", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("p508gt_ban-pn")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~u~BAC75~s~] Volkswagen GTE", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("vpassatgte_bac75n")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~u~BAC75~s~] Volkswagen GTE 2", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("vpassatgtev_bac75n2")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~u~BAC75~s~] Volkswagen GTE 3", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("vpassatgtev_bac75n1")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~u~BAC75~s~] Octavia", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("soctavia_bac75n")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~u~BAC75~s~] Octavia Combi", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("soctaviacombi_bac75n")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~u~BAC75~s~] Peugeot 508 2", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("p508sw_bac75n")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~u~BAC75~s~] Mondeo - 17 (BANA)", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("fmondeo17_bac75n2")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~u~BAC75~s~] Mondeo - 17 n°2 (BANA)", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("fmondeo17_bac75n1")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~u~BAC75~s~] Mondeo - 09 (BANA)", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("fmondeo09_bac75n")
    RageUI.CloseAll()
    end
end)
end

RageUI.Separator("~b~↓ Véhicule CRS ↓")

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~y~CRS~s~] Ford Transit", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("ftransit_pn")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~y~CRS~s~] Renault Master", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("rmaster205_pn")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~y~CRS~s~] Renault Master - 317", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("rmaster317_crs")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~y~CRS~s~] Peugeot Expert - 17", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("pexpert17_crsa")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~y~CRS~s~] Renault Trafic - 15", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("rtrafic15_crsa")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~y~CRS~s~] Ford Transit", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("ftransit_crs")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~y~CRS~s~] Ford Focus", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("ffocus3sw_crs")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~y~CRS~s~] Ford C max", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("fcmax_crs")
    RageUI.CloseAll()
    end
end)
end

                RageUI.Separator("~b~↓ Véhicule BRI ↓")

                if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
                    RageUI.ButtonWithStyle("[~g~BRI~s~] Yxt1200", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("yxt1200zst_bri")
                    RageUI.CloseAll()
                    end
                end)
                end

                if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
                    RageUI.ButtonWithStyle("[~g~BRI~s~] PPVP", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("ppvp_bri")
                    RageUI.CloseAll()
                    end
                end)
                end

                if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
                    RageUI.ButtonWithStyle("[~g~BRI~s~] Titus", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("ntitus_bri")
                    RageUI.CloseAll()
                    end
                end)
                end

                RageUI.Separator("~b~↓ Véhicule BMU ↓")                            

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~b~BMU~s~] Yamaha FJR1300", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("yfjr1300_pn")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    RageUI.ButtonWithStyle("[~b~BMU~s~] Yamaha MT09", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("ymt09t_pn")
    RageUI.CloseAll()
    end
end)
end                 
 
                end, function()
                end) 
            end    
        end)            
    end            
end

local position = {
    {x = 463.56192016602, y = -984.18505859375, z = 26.821495056152}
    }


Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 2.5 then
            wait = 0
        
            if dist <= 2.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyer sur [~r~E~w~] Pour ouvrir le garage",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					garage()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)



function spawnuniCar(car)
    local car = GetHashKey(car)

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end

    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, Config.spawn.spawnvoiture.position.x, Config.spawn.spawnvoiture.position.y, Config.spawn.spawnvoiture.position.z, Config.spawn.spawnvoiture.position.h, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    --local plaque = "police"..math.random(1,9)
    --SetVehicleNumberPlateText(vehicle, plaque) 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1) 
end


local npc2 = {
	{hash="s_m_y_cop_01",x = 463.56192016602, y = -984.18505859375, z = 26.821495056152, a=225.72467041015625},
}

Citizen.CreateThread(function()
	for _, item2 in pairs(npc2) do
		local hash = GetHashKey(item2.hash)
		while not HasModelLoaded(hash) do
		RequestModel(hash)
		Wait(20)
		end
		ped2 = CreatePed("PED_TYPE_CIVFEMALE", item2.hash, item2.x, item2.y, item2.z-0.92, item2.a, false, true)
		SetBlockingOfNonTemporaryEvents(ped2, true)
		FreezeEntityPosition(ped2, true)
		SetEntityInvincible(ped2, true)
	end
end)