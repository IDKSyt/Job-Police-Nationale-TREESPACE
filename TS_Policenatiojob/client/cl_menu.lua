 local PlayerData, CurrentActionData, handcuffTimer, dragStatus, blipsCops, currentTask, spawnedVehicles = {}, {}, {}, {}, {}, {}, {}
local HasAlreadyEnteredMarker, isDead, IsHandcuffed, hasAlreadyJoined, playerInService, isInShopMenu = false, false, false, false, false, false
local LastStation, LastPart, LastPartNum, LastEntity, CurrentAction, CurrentActionMsg
dragStatus.isDragged = false
blip = nil
local policeDog = false
local PlayerData = {}
closestDistance, closestEntity = -1, nil
local IsHandcuffed, DragStatus = false, {}
DragStatus.IsDragged          = false
local attente = 0
local currentTask = {}

local function LoadAnimDict(dictname)
	if not HasAnimDictLoaded(dictname) then
		RequestAnimDict(dictname) 
		while not HasAnimDictLoaded(dictname) do 
			Citizen.Wait(1)
		end
	end
end

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	local PlayerData = {}
	local ped = PlayerPedId()
	local vehicle = GetVehiclePedIsIn( ped, false )

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
     PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)  
	PlayerData.job = job  
	
	Citizen.Wait(5000) 
end)

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
    end
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()

    end
end)

local pos = vector3(465.4, -988.77, 26.99)
Citizen.CreateThread(function()
	local blip = AddBlipForCoord(pos)

	SetBlipSprite (blip, 60)
	SetBlipScale  (blip, 1.3)
	SetBlipColour (blip, 4)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName('STRING')
	AddTextComponentSubstringPlayerName('Police Nationale')
	EndTextCommandSetBlipName(blip)
end)


loadDict = function(dict)
    while not HasAnimDictLoaded(dict) do Wait(0) RequestAnimDict(dict) end
end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

Keys.Register('f6', 'kaitpolice', 'Menu police', function() 
      if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
		RageUI.Visible(RMenu:Get('pn', 'main'), not RageUI.Visible(RMenu:Get('pn', 'main')))

  end
end)

--------------- MENU F7 -----------------

local Items = {}      -- Item que le joueur possède (se remplit lors d'une fouille)
local Armes = {}    -- Armes que le joueur possède (se remplit lors d'une fouille)
local ArgentSale = {}  -- Argent sale que le joueur possède (se remplit lors d'une fouille)
local IsHandcuffed, DragStatus = false, {}
DragStatus.IsDragged          = false

local PlayerData = {}

local function MarquerJoueur()
	local ped = GetPlayerPed(ESX.Game.GetClosestPlayer())
	local pos = GetEntityCoords(ped)
	local target, distance = ESX.Game.GetClosestPlayer()
	if distance <= 4.0 then
	DrawMarker(2, pos.x, pos.y, pos.z+1.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 0, 255, 0, 170, 0, 1, 2, 1, nil, nil, 0)
end
end

-- Reprise du menu fouille du pz_core (modifié)
local function getPlayerInv(player)
Items = {}
Armes = {}
ArgentSale = {}

ESX.TriggerServerCallback('esx_policejob:getOtherPlayerData', function(data)
	for i=1, #data.accounts, 1 do
		if data.accounts[i].name == 'black_money' and data.accounts[i].money > 0 then
			table.insert(ArgentSale, {
				label    = ESX.Math.Round(data.accounts[i].money),
				value    = 'black_money',
				itemType = 'item_account',
				amount   = data.accounts[i].money
			})

			break
		end
	end

	for i=1, #data.weapons, 1 do
		table.insert(Armes, {
			label    = ESX.GetWeaponLabel(data.weapons[i].name),
			value    = data.weapons[i].name,
			right    = data.weapons[i].ammo,
			itemType = 'item_weapon',
			amount   = data.weapons[i].ammo
		})
	end

	for i=1, #data.inventory, 1 do
		if data.inventory[i].count > 0 then
			table.insert(Items, {
				label    = data.inventory[i].label,
				right    = data.inventory[i].count,
				value    = data.inventory[i].name,
				itemType = 'item_standard',
				amount   = data.inventory[i].count
			})
		end
	end
end, GetPlayerServerId(player))
end

Citizen.CreateThread(function()
    while true do 
       Citizen.Wait(500)
       if VarColor == "~HUD_COLOUR_PLATFORM_BLUE~" then VarColor = "~HUD_COLOUR_CHOP~" else VarColor = "~HUD_COLOUR_PLATFORM_BLUE~" end 
   end 
end)

RMenu.Add('pn', 'main', RageUI.CreateMenu("", "Pro patria vigilant"))
RMenu.Add('pn', 'tablette', RageUI.CreateSubMenu(RMenu:Get('pn', 'main'), "", "Pro patria vigilant"))
RMenu.Add('pn', 'inter', RageUI.CreateSubMenu(RMenu:Get('pn', 'main'), "", "Pro patria vigilant"))
RMenu.Add('pn', 'fouiller', RageUI.CreateSubMenu(RMenu:Get('pn', 'main'), "", "Pro patria vigilant"))
RMenu.Add('pn', 'emote', RageUI.CreateSubMenu(RMenu:Get('pn', 'main'), "", "Pro patria vigilant"))
RMenu.Add('pn', 'radcoe', RageUI.CreateSubMenu(RMenu:Get('pn', 'main'), "", "Pro patria vigilant"))
RMenu.Add('pn', 'info', RageUI.CreateSubMenu(RMenu:Get('pn', 'main'), "", "Pro patria vigilant"))
RMenu.Add('pn', 'doc', RageUI.CreateSubMenu(RMenu:Get('pn', 'main'), "", "Pro patria vigilant"))
RMenu.Add('pn', 'renfort', RageUI.CreateSubMenu(RMenu:Get('pn', 'main'), "", "Pro patria vigilant"))
RMenu.Add('pn', 'voiture', RageUI.CreateSubMenu(RMenu:Get('pn', 'main'), "", "Pro patria vigilant"))
RMenu.Add('pn', 'chien', RageUI.CreateSubMenu(RMenu:Get('pn', 'radcoe'), "", "Pro patria vigilant"))
RMenu.Add('pn', 'tenue', RageUI.CreateSubMenu(RMenu:Get('pn', 'main'), "", "Pro patria vigilant"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('pn', 'main'), true, true, true, function()

			RageUI.Separator(VarColor.."→→    |  // POLICE NATIONALE \\\\  |   ←←")

            RageUI.Checkbox("~h~~g~Prendre~s~/~r~~h~Quitter~s~ son service                  →→",nil, service,{},function(Hovered,Ative,Selected,Checked)
                if Selected then

                    service = Checked


                    if Checked then
                        onservice = true
						RageUI.Popup({
							message = "Vous avez pris votre service !"})

                        
                    else
                        onservice = false
						RageUI.Popup({
							message = "Vous avez quitter votre service !"})

                    end
                end
            end)

			if onservice then

				RageUI.Separator("  _______________________")

				RageUI.Separator("~HUD_COLOUR_G11~/~s~/~HUD_COLOUR_RED~/  ~s~~h~ Police Nationale : "..ESX.PlayerData.job.grade_label..'~h~~w~   ~HUD_COLOUR_G11~/~s~/~HUD_COLOUR_RED~/')

				RageUI.Separator(VarColor.."↓ | GESTION | ↓")

				RageUI.ButtonWithStyle("~HUD_COLOUR_PLATFORM_BLUE~[TABLETTE]~s~ - Annonce", nil, {RightLabel = "→"},true, function()
				end, RMenu:Get('pn', 'tablette'))

				RageUI.ButtonWithStyle("~HUD_COLOUR_PLATFORM_BLUE~[TABLETTE]~s~ - Infos Service", nil, {RightLabel = "→"},true, function()
				end, RMenu:Get('pn', 'info'))

				RageUI.ButtonWithStyle("~HUD_COLOUR_PLATFORM_BLUE~[TABLETTE]~s~ - Renfort", nil, {RightLabel = "→"},true, function()
				end, RMenu:Get('pn', 'renfort'))

				RageUI.ButtonWithStyle("~HUD_COLOUR_PLATFORM_BLUE~[TABLETTE]~s~ - Facture",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
					if Selected then 
						OpenBillingMenu()
						RageUI.CloseAll()
					end
				end)

                RageUI.Separator(VarColor.."↓ | INTERACTION | ↓")

				RageUI.ButtonWithStyle("~HUD_COLOUR_CHOP~→~s~  Intéractions Individu & Matériel", nil, {RightLabel = "~HUD_COLOUR_CHOP~→→→"},true, function()
				end, RMenu:Get('pn', 'inter'))

				RageUI.ButtonWithStyle("~HUD_COLOUR_CHOP~→~s~  Intéractions Véhicule", nil, {RightLabel = "~HUD_COLOUR_CHOP~→→→"},true, function()
				end, RMenu:Get('pn', 'voiture'))

				RageUI.ButtonWithStyle("~HUD_COLOUR_CHOP~→~s~  Intéractions Personnel", nil, {RightLabel = "~HUD_COLOUR_CHOP~→→→"},true, function()
				end, RMenu:Get('pn', 'tenue'))

				RageUI.ButtonWithStyle("~HUD_COLOUR_CHOP~→~s~  Intéractions Emotes", nil, {RightLabel = "~HUD_COLOUR_CHOP~→→→"},true, function()
				end, RMenu:Get('pn', 'emote'))

				RageUI.ButtonWithStyle("~HUD_COLOUR_CHOP~→~s~  Intéractions Cynophile", nil, {RightLabel = "~HUD_COLOUR_CHOP~→→→"},true, function()
				end, RMenu:Get('pn', 'radcoe'))

				if ESX.PlayerData.job.grade_name == 'sergeant' or ESX.PlayerData.job.grade_name == 'lieutenant' or ESX.PlayerData.job.grade_name == 'boss' then
				RageUI.Separator("-- // POLICE NATIONALE \\\\ --", nil, {RightLabel = "→"},true, function()
				end, RMenu:Get('pn', 'cam'))                                                                                                           -------- Les cams, pour l'activer "Separator" remplacez le par "ButtonWithStyle" er sa sera bon ;)
				else
					RageUI.Separator('-- // POLICE NATIONALE \\\\ --', description, {RightBadge = RageUI.BadgeStyle.Lock }, false, function(Hovered, Active, Selected)
						if (Selected) then
							end 
						end)
					end
				end


    end, function()
	end)

	RageUI.IsVisible(RMenu:Get('pn', 'tenue'), true, true, true, function()

		RageUI.Separator("~o~ ↓~s~ ~b~|~s~ Equipement Tenues ~b~|~s~ ~o~ ↓")

		RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, { Color = {BackgroundColor = { 100, 13, 13, 0}} }, true, function(Hovered, Active, Selected)
			if Selected then
				ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
				TriggerEvent('skinchanger:loadSkin', skin)
				end)
			end
		end)

		RageUI.Separator("~o~ ↓~s~ ~b~|~s~ Gilet ~s~ ~b~|~s~ ~o~ ↓")

		RageUI.ButtonWithStyle("~o~GPB~s~ | Fluorescent ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedComponentVariation(GetPlayerPed(-1) , 9, 112, 0)   --gilet par balle 
				SetPedArmour(GetPlayerPed(-1) , 100)
			end
		end)

		RageUI.ButtonWithStyle("~o~GPB~s~ | (N°1) ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedComponentVariation(GetPlayerPed(-1) , 9, 77, 0)   --gilet par balle 
				SetPedArmour(GetPlayerPed(-1) , 100)
			end
		end)

		RageUI.ButtonWithStyle("~o~GPB~s~ | (N°2) ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedComponentVariation(GetPlayerPed(-1) , 9, 80, 0)   --gilet par balle 
				SetPedArmour(GetPlayerPed(-1) , 100)
			end
		end)

		RageUI.ButtonWithStyle("~o~GPB~s~ | (N°3) ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedComponentVariation(GetPlayerPed(-1) , 9, 87, 0)   --gilet par balle 
				SetPedArmour(GetPlayerPed(-1) , 100)
			end
		end)

		RageUI.ButtonWithStyle("~o~GPB~s~ | (N°1 = CRS) ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedComponentVariation(GetPlayerPed(-1) , 9, 101, 0)   --gilet par balle 
				SetPedArmour(GetPlayerPed(-1) , 100)
			end
		end)

		RageUI.ButtonWithStyle("~o~GPB~s~ | (N°2 = CRS) ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedComponentVariation(GetPlayerPed(-1) , 9, 109, 0)   --gilet par balle 
				SetPedArmour(GetPlayerPed(-1) , 100)
			end
		end)

		RageUI.ButtonWithStyle("~o~GPB~s~ | (N°1 = RAID) ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedComponentVariation(GetPlayerPed(-1) , 9, 82, 0)   --gilet par balle 
				SetPedArmour(GetPlayerPed(-1) , 100)
			end
		end)

		RageUI.ButtonWithStyle("~o~GPB~s~ | (N°2 = RAID) ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedComponentVariation(GetPlayerPed(-1) , 9, 113, 0)   --gilet par balle 
				SetPedArmour(GetPlayerPed(-1) , 100)
			end
		end)

		RageUI.Separator("~b~  _______________________")

		RageUI.Separator("~o~ ↓~s~ ~b~|~s~ Casque~s~ ~b~|~s~ ~o~ ↓")

		RageUI.ButtonWithStyle("~o~CASQUE~s~ | BMU (~g~OUVERT~s~) ~HUD_COLOUR_GREYLIGHT~[BLANC]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedPropIndex(GetPlayerPed(-1) , 0, 22, 0)   --casque
			end
		end)

		RageUI.ButtonWithStyle("~o~CASQUE~s~ | BMU (~r~FERMER~s~) ~HUD_COLOUR_GREYLIGHT~[BLANC]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedPropIndex(GetPlayerPed(-1) , 0, 23, 0)   --casque
			end
		end)

		RageUI.ButtonWithStyle("~o~CASQUE~s~ | (N°1) (~g~OUVERT~s~) ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedPropIndex(GetPlayerPed(-1) , 0, 30, 0)   --casque
			end
		end)
		
		RageUI.ButtonWithStyle("~o~CASQUE~s~ | (N°1) (~r~FERMER~s~) ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedPropIndex(GetPlayerPed(-1) , 0, 31, 0)   --casque
			end
		end)

		RageUI.ButtonWithStyle("~o~CASQUE~s~ | CRS (~g~OUVERT~s~) ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedPropIndex(GetPlayerPed(-1) , 0, 32, 0)   --casque
			end
		end)
		
		RageUI.ButtonWithStyle("~o~CASQUE~s~ | CRS (~r~FERMER~s~) ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedPropIndex(GetPlayerPed(-1) , 0, 33, 0)   --casque
			end
		end)

		RageUI.Separator("~o~ ↓~s~ ~b~|~s~ Masque~s~ ~b~|~s~ ~o~ ↓")

		RageUI.ButtonWithStyle("~o~MASQUE~s~ | ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedComponentVariation(GetPlayerPed(-1) , 1, 14, 0) --masque 
			end
		end)

		RageUI.ButtonWithStyle("~o~MASQUE~s~ | ~HUD_COLOUR_GREYLIGHT~[TETE DE MORT]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedComponentVariation(GetPlayerPed(-1) , 1, 14, 1) --masque 
			end
		end)

		RageUI.ButtonWithStyle("~o~MASQUE~s~ | ~HUD_COLOUR_GREYLIGHT~[KACKI]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedComponentVariation(GetPlayerPed(-1) , 1, 14, 2) --masque 
			end
		end)

		RageUI.ButtonWithStyle("~o~MASQUE GLOBALITE~s~ | ~HUD_COLOUR_GREYLIGHT~[NOIR]",nil, {nil}, true, function(Hovered, Active, Selected)
			if Selected then
				SetPedComponentVariation(GetPlayerPed(-1) , 1, 13, 0) --masque 
			end
		end)

	end, function()
	end)

	RageUI.IsVisible(RMenu:Get('pn', 'emote'), true, true, true, function()

		RageUI.Separator("~HUD_COLOUR_GREY~↓~s~ Gestions Animation ~HUD_COLOUR_GREY~|~s~ Position ~HUD_COLOUR_GREY~↓")

		RageUI.ButtonWithStyle("                    ARRETER L'EMOTE",nil, { Color = {BackgroundColor = { 201, 14, 14, 0}} }, true, function(Hovered, Active, Selected)
			if Selected then
				ExecuteCommand'e c'
			end
		end)

		RageUI.Separator("  _______________________")

		RageUI.ButtonWithStyle("→  ~HUD_COLOUR_GREY~[FAIRE]~s~~h~ - Salut Militaire",nil, {RightLabel = "~HUD_COLOUR_GREY~→→→"}, true, function(Hovered, Active, Selected)
			if Selected then
				ExecuteCommand'e salute'
			end
		end)

		RageUI.ButtonWithStyle("→  ~HUD_COLOUR_GREY~[FAIRE]~s~~h~ - Note",nil, {RightLabel = "~HUD_COLOUR_GREY~→→→"}, true, function(Hovered, Active, Selected)
			if Selected then
				ExecuteCommand'e notepad'
			end
		end)

		RageUI.ButtonWithStyle("→  ~HUD_COLOUR_GREY~[FAIRE]~s~~h~ - Tablette",nil, {RightLabel = "~HUD_COLOUR_GREY~→→→"}, true, function(Hovered, Active, Selected)
			if Selected then
				ExecuteCommand'e tablet'
			end
		end)

		RageUI.ButtonWithStyle("→  ~HUD_COLOUR_GREY~[FAIRE]~s~~h~ - Bras Croisé",nil, {RightLabel = "~HUD_COLOUR_GREY~→→→"}, true, function(Hovered, Active, Selected)
			if Selected then
				ExecuteCommand'e cop2'
			end
		end)

		RageUI.ButtonWithStyle("→  ~HUD_COLOUR_GREY~[FAIRE]~s~~h~ - Appel Radio",nil, {RightLabel = "~HUD_COLOUR_GREY~→→→"}, true, function(Hovered, Active, Selected)
			if Selected then
				ExecuteCommand'e cop3'
			end
		end)

		RageUI.ButtonWithStyle("→  ~HUD_COLOUR_GREY~[FAIRE]~s~~h~ - Traction",nil, {RightLabel = "~HUD_COLOUR_GREY~→→→"}, true, function(Hovered, Active, Selected)
			if Selected then
				ExecuteCommand'e chinup'
			end
		end)

		RageUI.ButtonWithStyle("→  ~HUD_COLOUR_GREY~[FAIRE]~s~~h~ - Pompe",nil, {RightLabel = "~HUD_COLOUR_GREY~→→→"}, true, function(Hovered, Active, Selected)
			if Selected then
				ExecuteCommand'e pushup'
			end
		end)

		RageUI.ButtonWithStyle("→  ~HUD_COLOUR_GREY~[FAIRE]~s~~h~ - Abdos",nil, {RightLabel = "~HUD_COLOUR_GREY~→→→"}, true, function(Hovered, Active, Selected)
			if Selected then
				ExecuteCommand'e situp'
			end
		end)


	end, function()
	end)

	RageUI.IsVisible(RMenu:Get('pn', 'radcoe'), true, true, true, function()

		RageUI.Separator(VarColor.."↓ CYNOPHILE ↓")

		RageUI.Checkbox("~g~~h~Sortir~s~/~r~~h~Rentrer~s~ le chien",nil, chien,{},function(Hovered,Ative,Selected,Checked)
			if Selected then
				chien = Checked
				if not DoesEntityExist(policeDog) then
					RequestModel(0x4E8F95A2)
					while not HasModelLoaded(0x4E8F95A2) do Wait(0) end
					policeDog = CreatePed(4, 0x4E8F95A2, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 1.0, -0.98), 0.0, true, false)
					SetEntityAsMissionEntity(policeDog, true, true)
					ESX.ShowNotification('~g~Chien Spawn')
				else
					ESX.ShowNotification('~r~Chien Rentrer')
					DeleteEntity(policeDog)
				end
			end
		end)

		RageUI.Separator("  _______________________")

		RageUI.ButtonWithStyle("DIRE : Assis",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				if DoesEntityExist(policeDog) then
					if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(policeDog), true) <= 5.0 then
						if IsEntityPlayingAnim(policeDog, "creatures@rottweiler@amb@world_dog_sitting@base", "base", 3) then
							ClearPedTasks(policeDog)
						else
							loadDict('rcmnigel1c')
							TaskPlayAnim(PlayerPedId(), 'rcmnigel1c', 'hailing_whistle_waive_a', 8.0, -8, -1, 120, 0, false, false, false)
							Wait(2000)
							loadDict("creatures@rottweiler@amb@world_dog_sitting@base")
							TaskPlayAnim(policeDog, "creatures@rottweiler@amb@world_dog_sitting@base", "base", 8.0, -8, -1, 1, 0, false, false, false)
						end
					else
						ESX.ShowNotification('dog_too_far')
					end
				else
					ESX.ShowNotification('no_dog')
				end
			end
		end)

	RageUI.ButtonWithStyle("DIRE : Cherche de drogue",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
		if Selected then
			if DoesEntityExist(policeDog) then
				if not IsPedDeadOrDying(policeDog) then
					if GetDistanceBetweenCoords(GetEntityCoords(policeDog), GetEntityCoords(PlayerPedId()), true) <= 3.0 then
						local player, distance = ESX.Game.GetClosestPlayer()
						if distance ~= -1 then
							if distance <= 3.0 then
								local playerPed = GetPlayerPed(player)
								if not IsPedInAnyVehicle(playerPed, true) then
									TriggerServerEvent('esx_policedog:hasClosestDrugs', GetPlayerServerId(player))
								end
							end
						end
					end
				else
					ESX.ShowNotification('Votre chien est mort')
				end
			else
				ESX.ShowNotification('Vous n\'avez pas de chien')
			end
		end
	end)

	RageUI.ButtonWithStyle("DIRE : Attaquer",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
		if Selected then
			if DoesEntityExist(policeDog) then
				if not IsPedDeadOrDying(policeDog) then
					if GetDistanceBetweenCoords(GetEntityCoords(policeDog), GetEntityCoords(PlayerPedId()), true) <= 3.0 then
						local player, distance = ESX.Game.GetClosestPlayer()
						if distance ~= -1 then
							if distance <= 3.0 then
								local playerPed = GetPlayerPed(player)
								if not IsPedInCombat(policeDog, playerPed) then
									if not IsPedInAnyVehicle(playerPed, true) then
										TaskCombatPed(policeDog, playerPed, 0, 16)
									end
								else
									ClearPedTasksImmediately(policeDog)
								end
							end
						end
					end
				else
					ESX.ShowNotification('Votre chien est mort')
				end
			else
				ESX.ShowNotification('Vous n\'avez pas de chien')
		end
	end
end)

end, function()
end)

		RageUI.IsVisible(RMenu:Get('pn', 'inter'), true, true, true, function()

			RageUI.Separator(VarColor.."↓ | MATERIELS | ↓")

			RageUI.ButtonWithStyle("- | ~g~PRENDRE~s~ | - Gazeuse",nil,  {RightLabel = "→"}, true, function(Hovered, Active, Selected)
				if Selected then
					ExecuteCommand'pepperspray'
				end
			end)

			RageUI.ButtonWithStyle("- | ~r~SOINS~s~ | - Antidote (GAZEUSE)",nil,  {RightLabel = "→"}, true, function(Hovered, Active, Selected)
				if Selected then
					ExecuteCommand'antidote'
				end
			end)


			RageUI.ButtonWithStyle("- | ~g~METTRE~s~ | - Bouclier",nil,  {RightLabel = "→"}, true, function(Hovered, Active, Selected)
				if Selected then
					ExecuteCommand'Shield Firearms'
				end
			end)

			
			RageUI.ButtonWithStyle("- | ~r~ENLEVER~s~ | - Bouclier",nil,  {RightLabel = "→"}, true, function(Hovered, Active, Selected)
				if Selected then
					ExecuteCommand'Shield'
				end
			end)

			RageUI.Separator(VarColor.."↓ | INSPECTER | ↓")

			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

			RageUI.ButtonWithStyle("Prendre Carte d'identité", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then   
					ExecuteCommand("me prend la carté d'identité")
                	RageUI.CloseAll()
                	OpenIdentityCardMenu(closestPlayer)
            	end
            end)
			
			RageUI.ButtonWithStyle("Calculatrice",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
				if Selected then
					ExecuteCommand'calc'
				end
			end)

			RageUI.ButtonWithStyle("Escorter", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                TriggerServerEvent('esx_policejob:drag', GetPlayerServerId(closestPlayer))
            end
        end)

			RageUI.ButtonWithStyle('Fouiller la personne', nil, {RightLabel = "→"}, closestPlayer ~= -1 and closestDistance <= 3.0, function(_, a, s)
				if a then
					MarquerJoueur()
					if s then
					getPlayerInv(closestPlayer)
					ExecuteCommand("me fouille l'individu") -- rajouter une commande individu
				end
			end
			end, RMenu:Get('pn', 'fouiller')) 

		
			RageUI.Separator("  _______________________")

		RageUI.ButtonWithStyle("- | ~g~MENOTTER~s~ | - | ~r~DEMENOTTER~s~ |", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
            if (Selected) then 
                TriggerServerEvent('esx_policejob:handcuff', GetPlayerServerId(closestPlayer))
            end
        end)

            RageUI.ButtonWithStyle("- | ~g~METTRE~s~ | - dans un véhicule", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                TriggerServerEvent('esx_policejob:putInVehicle', GetPlayerServerId(closestPlayer))
                end
            end)

            RageUI.ButtonWithStyle("- | ~r~SORTIR~s~ | - du véhicule", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                TriggerServerEvent('esx_policejob:OutVehicle', GetPlayerServerId(closestPlayer))
            end
        end)

    end, function()
	end)

	RageUI.IsVisible(RMenu:Get('pn', 'info'), true, true, true, function()

		RageUI.ButtonWithStyle("→ ~m~[RADIO]~s~ Prise de service",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'prise'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

		RageUI.ButtonWithStyle("→ ~m~[RADIO]~s~ Fin de service",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'fin'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

		RageUI.ButtonWithStyle("→ ~m~[RADIO]~s~ Pause de service",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'pause'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

		RageUI.ButtonWithStyle("→ ~m~[RADIO]~s~ Standby",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'standby'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

		RageUI.ButtonWithStyle("→ ~m~[RADIO]~s~ Control en cours",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'control'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

		RageUI.ButtonWithStyle("→ ~m~[RADIO]~s~ Refus d'obtempérer",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'refus'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

		RageUI.ButtonWithStyle("→ ~m~[RADIO]~s~ Crime en cours",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'crime'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

    end, function()
	end)

	RageUI.IsVisible(RMenu:Get("pn",'fouiller'),true,true,true,function() -- Le menu de fouille (inspiré du pz_core / Modifié)
		local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

		RageUI.Separator("↓ ~g~Argent Sale ~s~↓")
		for k,v  in pairs(ArgentSale) do
			RageUI.ButtonWithStyle("Argent sale :", nil, {RightLabel = "~g~"..v.label.."$"}, true, function(_, _, s)
				if s then
					local combien = KeyboardInput("Combien ?", '' , '', 999999999)
					if tonumber(combien) > v.amount then
						RageUI.Popup({message = "~r~Quantité invalide"})
					else
						TriggerServerEvent('jejey:confiscatePlayerItem', GetPlayerServerId(closestPlayer), v.itemType, v.value, tonumber(combien))
					end
					RageUI.GoBack()
				end
			end)
		end

		RageUI.Separator("↓ ~g~Objets ~s~↓")
		for k,v  in pairs(Items) do
			RageUI.ButtonWithStyle(v.label, nil, {RightLabel = "~g~x"..v.right}, true, function(_, _, s)
				if s then
					local combien = KeyboardInput("Combien ?", '' , '', 99999999)
					if tonumber(combien) > v.amount then
						RageUI.Popup({message = "~r~Quantité invalide"})
					else
						TriggerServerEvent('jejey:confiscatePlayerItem', GetPlayerServerId(closestPlayer), v.itemType, v.value, tonumber(combien))
					end
					RageUI.GoBack()
				end
			end)
		end
			RageUI.Separator("↓ ~g~Armes ~s~↓")

			for k,v  in pairs(Armes) do
				RageUI.ButtonWithStyle(v.label, nil, {RightLabel = "avec ~g~"..v.right.. " ~s~balle(s)"}, true, function(_, _, s)
					if s then
						local combien = KeyboardInput("Combien ?", '' , '', 9999999)
						if tonumber(combien) > v.amount then
							RageUI.Popup({message = "~r~Quantité invalide"})
						else
							TriggerServerEvent('jejey:confiscatePlayerItem', GetPlayerServerId(closestPlayer), v.itemType, v.value, tonumber(combien))
						end
						RageUI.GoBack()
					end
				end)
			end

		end, function() 
		end)

	RageUI.IsVisible(RMenu:Get('pn', 'renfort'), true, true, true, function()

		RageUI.ButtonWithStyle("→ Petite demande",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local raison = 'petite'
				local elements  = {}
				local playerPed = PlayerPedId()
				local coords  = GetEntityCoords(playerPed)
				local name = GetPlayerName(PlayerId())
			TriggerServerEvent('renfort', coords, raison)
		end
	end)

	RageUI.ButtonWithStyle("→ Moyenne demande",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
		if Selected then
			local raison = 'moyen'
			local elements  = {}
			local playerPed = PlayerPedId()
			local coords  = GetEntityCoords(playerPed)
			local name = GetPlayerName(PlayerId())
		TriggerServerEvent('renfort', coords, raison)
	end
end)

RageUI.ButtonWithStyle("→ Grosse demande",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
	if Selected then
		local raison = 'grosse'
		local elements  = {}
		local playerPed = PlayerPedId()
		local coords  = GetEntityCoords(playerPed)
		local name = GetPlayerName(PlayerId())
	TriggerServerEvent('renfort', coords, raison, name)
end
end)

    end, function()
	end)

	RageUI.IsVisible(RMenu:Get('pn', 'voiture'), true, true, true, function()
		local coords  = GetEntityCoords(PlayerPedId())
		local vehicle = ESX.Game.GetVehicleInDirection()

		RageUI.Checkbox("~r~~h~Sortir~s~/~g~~h~Prendre~s~ Radar", nil, radar,{},function(Hovered,Ative,Selected,Checked)
			if Selected then
			radar = Checked
				RageUI.CloseAll()       
				TriggerEvent('police:police_radar')
			end
		end)

		RageUI.ButtonWithStyle("Menu Balisage",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
			if Selected then 
				OpenpoliceActionsMenu()
				RageUI.CloseAll()
			end
		end)

		RageUI.Separator("  _______________________")

		RageUI.ButtonWithStyle("Rechercher une plaque",nil, {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
			if Selected then 
				LookupVehicle()
				RageUI.CloseAll()
			end
			end)

			RageUI.ButtonWithStyle("Mettre en fourrière", nil, { RightLabel = "→→→" }, true, function(Hovered, Active, Selected)
				if Selected then

					TaskStartScenarioInPlace(PlayerPedId(), 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)

					currentTask.busy = true
					currentTask.task = ESX.SetTimeout(10000, function()
						ClearPedTasks(playerPed)
						ESX.Game.DeleteVehicle(vehicle)
						ESX.ShowNotification("~o~Mise en fourrière effectuée")
						currentTask.busy = false
						Citizen.Wait(100) 
					end)

					
					Citizen.CreateThread(function()
						while currentTask.busy do
							Citizen.Wait(1000)

							vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 3.0, 0, 71)
							if not DoesEntityExist(vehicle) and currentTask.busy then
								ESX.ShowNotification("~r~Le véhicule a bougé!")
								ESX.ClearTimeout(currentTask.task)
								ClearPedTasks(playerPed)
								currentTask.busy = false
								break
							end
						end
					end)
				end
			end)
	
			
	end, function()
	end)

	RageUI.IsVisible(RMenu:Get('pn', 'chien'), true, true, true, function()

			RageUI.ButtonWithStyle("Sortir/Rentrer le chien",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
				if Selected then
					if not DoesEntityExist(policeDog) then
                        RequestModel(0x4E8F95A2)
                        while not HasModelLoaded(0x4E8F95A2) do Wait(0) end
                        policeDog = CreatePed(4, 0x4E8F95A2, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 1.0, -0.98), 0.0, true, false)
                        SetEntityAsMissionEntity(policeDog, true, true)
                        ESX.ShowNotification('~g~Chien Spawn')
                    else
                        ESX.ShowNotification('~r~Chien Rentrer')
                        DeleteEntity(policeDog)
                    end
				end
			end)

			RageUI.ButtonWithStyle("Assis",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
				if Selected then
					if DoesEntityExist(policeDog) then
                        if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(policeDog), true) <= 5.0 then
                            if IsEntityPlayingAnim(policeDog, "creatures@rottweiler@amb@world_dog_sitting@base", "base", 3) then
                                ClearPedTasks(policeDog)
                            else
                                loadDict('rcmnigel1c')
                                TaskPlayAnim(PlayerPedId(), 'rcmnigel1c', 'hailing_whistle_waive_a', 8.0, -8, -1, 120, 0, false, false, false)
                                Wait(2000)
                                loadDict("creatures@rottweiler@amb@world_dog_sitting@base")
                                TaskPlayAnim(policeDog, "creatures@rottweiler@amb@world_dog_sitting@base", "base", 8.0, -8, -1, 1, 0, false, false, false)
                            end
                        else
                            ESX.ShowNotification('dog_too_far')
                        end
                    else
                        ESX.ShowNotification('no_dog')
                    end
				end
			end)

		RageUI.ButtonWithStyle("Cherche de drogue",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				if DoesEntityExist(policeDog) then
					if not IsPedDeadOrDying(policeDog) then
						if GetDistanceBetweenCoords(GetEntityCoords(policeDog), GetEntityCoords(PlayerPedId()), true) <= 3.0 then
							local player, distance = ESX.Game.GetClosestPlayer()
							if distance ~= -1 then
								if distance <= 3.0 then
									local playerPed = GetPlayerPed(player)
									if not IsPedInAnyVehicle(playerPed, true) then
										TriggerServerEvent('esx_policedog:hasClosestDrugs', GetPlayerServerId(player))
									end
								end
							end
						end
					else
						ESX.ShowNotification('Votre chien est mort')
					end
				else
					ESX.ShowNotification('Vous n\'avez pas de chien')
				end
			end
		end)

		RageUI.ButtonWithStyle("Dire d'attaquer",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				if DoesEntityExist(policeDog) then
					if not IsPedDeadOrDying(policeDog) then
						if GetDistanceBetweenCoords(GetEntityCoords(policeDog), GetEntityCoords(PlayerPedId()), true) <= 3.0 then
							local player, distance = ESX.Game.GetClosestPlayer()
							if distance ~= -1 then
								if distance <= 3.0 then
									local playerPed = GetPlayerPed(player)
									if not IsPedInCombat(policeDog, playerPed) then
										if not IsPedInAnyVehicle(playerPed, true) then
											TaskCombatPed(policeDog, playerPed, 0, 16)
										end
									else
										ClearPedTasksImmediately(policeDog)
									end
								end
							end
						end
					else
						ESX.ShowNotification('Votre chien est mort')
					end
				else
					ESX.ShowNotification('Vous n\'avez pas de chien')
			end
		end
	end)

    end, function()
	end)

RageUI.IsVisible(RMenu:Get('pn', 'tablette'), true, true, true, function()

	RageUI.ButtonWithStyle("Annonce ~g~~h~OUVERTURE", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
		if Selected then
			TriggerServerEvent('Ouvre:pn')
		end
	end)

	   RageUI.ButtonWithStyle("Annonce ~r~~h~FERMETURE", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
		if Selected then
			TriggerServerEvent('Ferme:pn')  
		end
	end)

	RageUI.ButtonWithStyle("Annonce ~y~~h~RECRUTEMENT", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
		if Selected then
			TriggerServerEvent('Recru:pn')  
		end
	end)

	
	RageUI.Separator("  ~b~_______________________")


	RageUI.ButtonWithStyle("Annonce ~m~~h~PERSONNALISE",nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
		if Selected then
			local te = KeyboardInput("Message", "", 100)
			ExecuteCommand("pn " ..te)
		end
	end)

end, function()
end)

Citizen.Wait(0)
end
end)

function OpenIdentityCardMenu(player)
	ESX.TriggerServerCallback('esx_policejob:getOtherPlayerData', function(data)
		local elements = {}
		local nameLabel = _U('name', data.name)
		local jobLabel, sexLabel, dobLabel, heightLabel, idLabel

		if data.job.grade_label and  data.job.grade_label ~= '' then
			jobLabel = _U('job', data.job.label .. ' - ' .. data.job.grade_label)
		else
			jobLabel = _U('job', data.job.label)
		end

		if Config.EnableESXIdentity then
			nameLabel = _U('name', data.firstname .. ' ' .. data.lastname)

			if data.sex then
				if string.lower(data.sex) == 'm' then
					sexLabel = _U('sex', _U('male'))
				else
					sexLabel = _U('sex', _U('female'))
				end
			else
				sexLabel = _U('sex', _U('unknown'))
			end

			if data.dob then
				dobLabel = _U('dob', data.dob)
			else
				dobLabel = _U('dob', _U('unknown'))
			end

			if data.height then
				heightLabel = _U('height', data.height)
			else
				heightLabel = _U('height', _U('unknown'))
			end
		end

		local elements = {
			{label = nameLabel},
			{label = jobLabel}
		}

		if Config.EnableESXIdentity then
			table.insert(elements, {label = sexLabel})
			table.insert(elements, {label = dobLabel})
			table.insert(elements, {label = heightLabel})
		end

		if data.drunk then
			table.insert(elements, {label = _U('bac', data.drunk)})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'citizen_interaction', {
			css      = 'police',
			title    = _U('citizen_interaction'),
			align    = 'top-left',
			elements = elements
		}, nil, function(data, menu)
			menu.close()
		end)
	end, GetPlayerServerId(player))
end

function OpenBillingMenu()

	ESX.UI.Menu.Open(
	  'dialog', GetCurrentResourceName(), 'billing',
	  {
		title = "Quelle est le montant de la facture ?"
	  },
	  function(data, menu)
	  
		local amount = tonumber(data.value)
		local player, distance = ESX.Game.GetClosestPlayer()
  
		if player ~= -1 and distance <= 3.0 then
  
		  menu.close()
		  if amount == nil then
			  ESX.ShowNotification("~r~Problèmes~s~: Montant invalide")
		  else
			local playerPed        = GetPlayerPed(-1)
			TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TIME_OF_DEATH', 0, true)
			Citizen.Wait(5000)
			  TriggerServerEvent('esx_billing:sendBill1', GetPlayerServerId(player), 'society_police', ('police'), amount) -- enlever "1", si vos facture de marche pas ;)
			  Citizen.Wait(100)
			  ESX.ShowNotification("~r~Vous avez bien envoyer la facture")
		  end
  
		else
		  ESX.ShowNotification("~r~Problèmes~s~: Aucun joueur à proximitée")
		end
  
	  end,
	  function(data, menu)
		  menu.close()
	  end
	)
  end

function OpenVehicleInfosMenu(vehicleData)
	ESX.TriggerServerCallback('esx_policejob:getVehicleInfos', function(retrivedInfo)
		local elements = {{label = _U('plate', retrivedInfo.plate)}}

		if retrivedInfo.owner == nil then
			table.insert(elements, {label = _U('owner_unknown')})
		else
			table.insert(elements, {label = _U('owner', retrivedInfo.owner)})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_infos', {
			css      = 'police',
			title    = _U('vehicle_info'),
			align    = 'top-left',
			elements = elements
		}, nil, function(data, menu)
			menu.close()
		end)
	end, vehicleData.plate)
end

function LookupVehicle()
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'lookup_vehicle', {
		title = _U('search_database_title'),
	}, function(data, menu)
		local length = string.len(data.value)
		if not data.value or length < 2 or length > 8 then
			ESX.ShowNotification(_U('search_database_error_invalid'))
		else
			ESX.TriggerServerCallback('esx_policejob:getVehicleInfos', function(retrivedInfo)
				local elements = {{label = _U('plate', retrivedInfo.plate)}}
				menu.close()

				if not retrivedInfo.owner then
					table.insert(elements, {label = _U('owner_unknown')})
				else
					table.insert(elements, {label = _U('owner', retrivedInfo.owner)})
				end

				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_infos', {
					title    = _U('vehicle_info'),
					align    = 'top-left',
					elements = elements
				}, nil, function(data2, menu2)
					menu2.close()
				end)
			end, data.value)

		end
	end, function(data, menu)
		menu.close()
	end)
end



RegisterNetEvent('renfort:setBlip')
AddEventHandler('renfort:setBlip', function(coords, raison)
	if raison == 'petite' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		ESX.ShowAdvancedNotification('INFORMATIONS', '~b~Demande de renfort', 'Demande de renfort demandé.\nRéponse: ~g~CODE-2\n~w~Importance: ~g~Légère.', 'CHAR_PN', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
		color = 2
	elseif raison == 'moyen' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		ESX.ShowAdvancedNotification('INFORMATIONS', '~b~Demande de renfort', 'Demande de renfort demandé.\nRéponse: ~g~CODE-3\n~w~Importance: ~o~Importante.', 'CHAR_PN', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
		color = 47
	elseif raison == 'grosse' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		PlaySoundFrontend(-1, "FocusIn", "HintCamSounds", 1)
		ESX.ShowAdvancedNotification('INFORMATIONS', '~b~Demande de renfort', 'Demande de renfort demandé.\nRéponse: ~g~CODE-99\n~w~Importance: ~r~URGENTE !\nDANGER IMPORTANT', 'CHAR_PN', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "FocusOut", "HintCamSounds", 1)
		color = 1
	end
	local blipId = AddBlipForCoord(coords)
	SetBlipSprite(blipId, 161)
	SetBlipScale(blipId, 1.2)
	SetBlipColour(blipId, color)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Demande renfort')
	EndTextCommandSetBlipName(blipId)
	Wait(80 * 1000)
	RemoveBlip(blipId)
end)

RegisterNetEvent('police:InfoService')
AddEventHandler('police:InfoService', function(service, nom)
	if service == 'prise' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('INFORMATIONS', '~b~Prise de service', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-8\n~w~Information: ~g~Prise de service.', 'CHAR_PN', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'fin' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('INFORMATIONS', '~b~Fin de service', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-10\n~w~Information: ~g~Fin de service.', 'CHAR_PN', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'pause' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('INFORMATIONS', '~b~Pause de service', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-6\n~w~Information: ~g~Pause de service.', 'CHAR_PN', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'standby' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('INFORMATIONS', '~b~Mise en standby', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-12\n~w~Information: ~g~Standby, en attente de dispatch.', 'CHAR_PN', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'control' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('INFORMATIONS', '~b~Control routier', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-48\n~w~Information: ~g~Control routier en cours.', 'CHAR_PN', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'refus' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('INFORMATIONS', '~b~Refus d\'obtemperer', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-30\n~w~Information: ~g~Refus d\'obtemperer / Delit de fuite en cours.', 'CHAR_PN', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'crime' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('INFORMATIONS', '~b~Crime en cours', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-31\n~w~Information: ~g~Crime en cours / poursuite en cours.', 'CHAR_PN', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	end
end)

-------------------------- Intéraction 

RegisterNetEvent('esx_policejob:handcuff')
AddEventHandler('esx_policejob:handcuff', function()

  IsHandcuffed    = not IsHandcuffed;
  local playerPed = GetPlayerPed(-1)

  Citizen.CreateThread(function()

    if IsHandcuffed then

        RequestAnimDict('mp_arresting')
        while not HasAnimDictLoaded('mp_arresting') do
            Citizen.Wait(100)
        end

      TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0, 0, 0, 0)
      DisableControlAction(2, 37, true)
      SetEnableHandcuffs(playerPed, true)
      SetPedCanPlayGestureAnims(playerPed, false)
      FreezeEntityPosition(playerPed,  true)
      DisableControlAction(0, 24, true) -- Attack
      DisableControlAction(0, 257, true) -- Attack 2
      DisableControlAction(0, 25, true) -- Aim
      DisableControlAction(0, 263, true) -- Melee Attack 1
      DisableControlAction(0, 37, true) -- Select Weapon
      DisableControlAction(0, 47, true)  -- Disable weapon
      DisplayRadar(false)

    else

      ClearPedSecondaryTask(playerPed)
      SetEnableHandcuffs(playerPed, false)
      SetPedCanPlayGestureAnims(playerPed,  true)
      FreezeEntityPosition(playerPed, false)

    end

  end)
end)

RegisterNetEvent('esx_policejob:drag')
AddEventHandler('esx_policejob:drag', function(cop)
  IsDragged = not IsDragged
  CopPed = tonumber(cop)
end)

Citizen.CreateThread(function()
  while true do
    Wait(0)
    if IsHandcuffed then
      if IsDragged then
        local ped = GetPlayerPed(GetPlayerFromServerId(CopPed))
        local myped = GetPlayerPed(-1)
        AttachEntityToEntity(myped, ped, 11816, 0.54, 0.54, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
      else
        DetachEntity(GetPlayerPed(-1), true, false)
      end
    end
  end
end)

RegisterNetEvent('esx_policejob:putInVehicle')
AddEventHandler('esx_policejob:putInVehicle', function()

  local playerPed = GetPlayerPed(-1)
  local coords    = GetEntityCoords(playerPed)

  if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then

    local vehicle = GetClosestVehicle(coords.x,  coords.y,  coords.z,  5.0,  0,  71)

    if DoesEntityExist(vehicle) then

      local maxSeats = GetVehicleMaxNumberOfPassengers(vehicle)
      local freeSeat = nil

      for i=maxSeats - 1, 0, -1 do
        if IsVehicleSeatFree(vehicle,  i) then
          freeSeat = i
          break
        end
      end

      if freeSeat ~= nil then
        TaskWarpPedIntoVehicle(playerPed,  vehicle,  freeSeat)
      end

    end

  end

end)

RegisterNetEvent('esx_policejob:OutVehicle')
AddEventHandler('esx_policejob:OutVehicle', function(t)
  local ped = GetPlayerPed(t)
  ClearPedTasksImmediately(ped)
  plyPos = GetEntityCoords(GetPlayerPed(-1),  true)
  local xnew = plyPos.x+2
  local ynew = plyPos.y+2

  SetEntityCoords(GetPlayerPed(-1), xnew, ynew, plyPos.z)
end)

-- Handcuff
Citizen.CreateThread(function()
  while true do
    Wait(0)
    if IsHandcuffed then
      DisableControlAction(0, 142, true) -- MeleeAttackAlternate
      DisableControlAction(0, 30,  true) -- MoveLeftRight
      DisableControlAction(0, 31,  true) -- MoveUpDown
    end
  end
end)

function KeyboardInput(TextEntry, ExampleText, MaxStringLength)

	AddTextEntry('FMMC_KEY_TIP1', TextEntry .. ':')
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
	blockinput = true

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end

	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		blockinput = false
		return result
	else
		Citizen.Wait(500)
		blockinput = false
		return nil
	end
end

-------------------------------------------------------------

function OpenpoliceActionsMenu()
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'police_actions', {
		css      = 'police',
		title    = 'police',
		align    = 'top-left',
		elements = {
			{label = '<span style="color:orange;">📋 Menu Balisage <span style="color:cyan;"> >', value = 'object_spawner'}
	}}, function(data, menu)
		if data.current.value == 'citizen_interaction' then

		elseif data.current.value == 'object_spawner' then
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'citizen_interaction', {
				css      = 'police',
				title    = _U('traffic_interaction'),
				align    = 'top-left',
				elements = {
					{label = _U('0'), model = 'prop_mp_num_0'},
					{label = _U('1'), model = 'prop_mp_num_1'},
					{label = _U('2'), model = 'prop_mp_num_2'}, 
					{label = _U('3'), model = 'prop_mp_num_3'},
					{label = _U('4'), model = 'prop_mp_num_4'},
					{label = _U('5'), model = 'prop_mp_num_5'},
					{label = _U('6'), model = 'prop_mp_num_6'},
					{label = _U('barrier1'), model = 'prop_mp_barrier_02b'},
					{label = _U('barrier2'), model = 'prop_mp_barrier_02'},		
			}}, function(data2, menu2)
				local playerPed = PlayerPedId()
				local coords    = GetEntityCoords(playerPed)
				local forward   = GetEntityForwardVector(playerPed)
				local x, y, z   = table.unpack(coords + forward * 1.0)

				if data2.current.model == 'prop_roadcone02a' then
					z = z + 2.0
				end

				ESX.Game.SpawnObject(data2.current.model, {x = x, y = y, z = z}, function(obj)
					SetEntityHeading(obj, GetEntityHeading(playerPed))
					PlaceObjectOnGroundProperly(obj)
				end)
			end, function(data2, menu2)
				menu2.close()
			end)
		end
	end, function(data, menu)
		menu.close()
	end)
end

---------------------------------

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0) 
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	isPlayerWhitelisted = refreshPlayerWhitelisted()
	PlayerData = ESX.GetPlayerData()
end)




RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job

	isPlayerWhitelisted = refreshPlayerWhitelisted()
	Citizen.Wait(5000)
	TriggerServerEvent('policejob:forceBlip')
end)


AddEventHandler('policejob:hasEnteredEntityZone', function(entity)
	local playerPed = PlayerPedId()

	if PlayerData.job and PlayerData.job.name == 'police' and IsPedOnFoot(playerPed) then
		CurrentAction     = 'remove_entity'
		CurrentActionMsg  = _U('remove_prop')
		CurrentActionData = {entity = entity}
	end

	if GetEntityModel(entity) == GetHashKey('p_ld_stinger_s') then
		local playerPed = PlayerPedId()
		local coords    = GetEntityCoords(playerPed)

		if IsPedInAnyVehicle(playerPed, false) then
			local vehicle = GetVehiclePedIsIn(playerPed)

			for i=0, 7, 1 do
				SetVehicleTyreBurst(vehicle, i, true, 1000)
			end
		end
	end
end)

AddEventHandler('policejob:hasExitedEntityZone', function(entity)
	if CurrentAction == 'remove_entity' then
		CurrentAction = nil
	end
end)


-- Display markers
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if PlayerData.job and PlayerData.job.name == 'police' then

			local playerPed = PlayerPedId()
			local coords    = GetEntityCoords(playerPed)
			local isInMarker, hasExited, letSleep = false, false, true
			local currentStation, currentPart, currentPartNum

			if isInMarker and not HasAlreadyEnteredMarker or (isInMarker and (LastStation ~= currentStation or LastPart ~= currentPart or LastPartNum ~= currentPartNum)) then
				if
					(LastStation and LastPart and LastPartNum) and
					(LastStation ~= currentStation or LastPart ~= currentPart or LastPartNum ~= currentPartNum)
				then
					TriggerEvent('policejob:hasExitedMarker', LastStation, LastPart, LastPartNum)
					hasExited = true
				end

				HasAlreadyEnteredMarker = true
				LastStation             = currentStation
				LastPart                = currentPart
				LastPartNum             = currentPartNum

				TriggerEvent('policejob:hasEnteredMarker', currentStation, currentPart, currentPartNum)
			end

			if not hasExited and not isInMarker and HasAlreadyEnteredMarker then
				HasAlreadyEnteredMarker = false
				TriggerEvent('policejob:hasExitedMarker', LastStation, LastPart, LastPartNum)
			end

			if letSleep then
				Citizen.Wait(500)
			end

		else
			Citizen.Wait(500)
		end
	end
end)

-- Props
Citizen.CreateThread(function() 
	local trackedEntities = {
		'prop_mp_num_0',
		'prop_mp_num_1',
		'prop_mp_num_2',
		'prop_mp_num_3',
		'prop_mp_num_4',
		'prop_mp_num_5',
		'prop_mp_num_6',
		'prop_mp_barrier_02b',
		'prop_mp_barrier_02'
	}

	while true do
		Citizen.Wait(500)

		local playerPed = PlayerPedId()
		local coords    = GetEntityCoords(playerPed)

		local closestDistance = -1
		local closestEntity   = nil

		for i=1, #trackedEntities, 1 do
			local object = GetClosestObjectOfType(coords, 3.0, GetHashKey(trackedEntities[i]), false, false, false)

			if DoesEntityExist(object) then
				local objCoords = GetEntityCoords(object)
				local distance  = GetDistanceBetweenCoords(coords, objCoords, true)

				if closestDistance == -1 or closestDistance > distance then
					closestDistance = distance
					closestEntity   = object
				end
			end
		end

		if closestDistance ~= -1 and closestDistance <= 3.0 then
			if LastEntity ~= closestEntity then
				TriggerEvent('policejob:hasEnteredEntityZone', closestEntity)
				LastEntity = closestEntity
			end
		else
			if LastEntity then
				TriggerEvent('policejob:hasExitedEntityZone', LastEntity)
				LastEntity = nil
			end
		end
	end
end)

-- Key Controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if CurrentAction then
			ESX.ShowHelpNotification(CurrentActionMsg)

			if IsControlJustReleased(0, 38) and PlayerData.job and PlayerData.job.name == 'police' then

				if CurrentAction == 'remove_entity' then
					DeleteEntity(CurrentActionData.entity)
				end

				CurrentAction = nil
			end
		end 


		if IsControlJustReleased(0, 38) and currentTask.busy then
			ESX.ShowNotification(_U('impound_canceled'))
			ESX.ClearTimeout(currentTask.task)
			ClearPedTasks(PlayerPedId())

			currentTask.busy = false
		end
	end
end)


function refreshPlayerWhitelisted()
	if not ESX.PlayerData then
		return false
	end

	if not ESX.PlayerData.job then
		return false
	end

	for k,v in ipairs(Config.WhitelistedCops) do
		if v == ESX.PlayerData.job.name then
			return true
		end
	end

	return false
end