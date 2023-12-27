ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local PlayerData = {}

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

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
    Citizen.Wait(0) 
end)

---------------- FONCTIONS ------------------
RMenu.Add('coffrepolice', 'main', RageUI.CreateMenu("", "Stockage..."))
RMenu:Get('coffrepolice', 'main').EnableMouse = false
RMenu:Get('coffrepolice', 'main').Closed = function()
    Pn.ekip= false
end

Pn = {
    ekip= false,
}

function odfpsdfsdf()
    if Pn.ekip then
        Pn.ekip= false
    else
        Pn.ekip= true 
        RageUI.Visible(RMenu:Get('coffrepolice', 'main'), true)

        Citizen.CreateThread(function()
            while Pn.ekip do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('coffrepolice', 'main'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Déposer un objet",nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                        if Selected then
                            OpenPutStocksLSPDMenu()  
							RageUI.CloseAll()                      
                        end
                    end)

					if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'boss' or ESX.PlayerData.job.grade_name == 'grade12' or ESX.PlayerData.job.grade_name == 'grade11' or ESX.PlayerData.job.grade_name == 'grade10'then 
					RageUI.ButtonWithStyle("Retirer un objet",nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                        if Selected then
                            OpenGetStocksLSPDMenu() 
							RageUI.CloseAll()                       
                        end
                    end)
					end

					if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'boss' or ESX.PlayerData.job.grade_name == 'grade12' or ESX.PlayerData.job.grade_name == 'grade11' or ESX.PlayerData.job.grade_name == 'grade10'then 
						RageUI.ButtonWithStyle("Prendre Arme(s)",nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
							if Selected then
								OpenGetWeaponMenu()
								RageUI.CloseAll()
							end
						end)
					end
						RageUI.ButtonWithStyle("Déposer Arme(s)",nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
							if Selected then
								OpenPutWeaponMenu()
								RageUI.CloseAll()
							end
						end)
					

                end, function()
                end) 
            end    
        end)            
    end            
end    

---------------------------------------------

local position = {
    {x = 458.41897583008, y = -988.66644287109, z = 27.485549926758}
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

				message = "Appuyez sur [~r~E~w~] Pour ouvrir le coffre",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					odfpsdfsdf()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

function OpenGetStocksLSPDMenu()
	ESX.TriggerServerCallback('esx_policejob:prendreitem', function(items)
		local elements = {}

		for i=1, #items, 1 do
            table.insert(elements, {
                label = 'x' .. items[i].count .. ' ' .. items[i].label,
                value = items[i].name
            })
        end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
            css      = 'Police Nationale',
			title    = 'police stockage',
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			local itemName = data.current.value

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count', {
                css      = 'police',
				title = 'quantité'
			}, function(data2, menu2)
				local count = tonumber(data2.value)

				if not count then
					ESX.ShowNotification('quantité invalide')
				else
					menu2.close()
					menu.close()
					TriggerServerEvent('esx_policejob:prendreitems', itemName, count)

					Citizen.Wait(300)
					OpenGetStocksLSPDMenu()
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		end, function(data, menu)
			menu.close()
		end)
	end)
end

function OpenPutStocksLSPDMenu()
	ESX.TriggerServerCallback('esx_policejob:inventairejoueur', function(inventory)
		local elements = {}

		for i=1, #inventory.items, 1 do
			local item = inventory.items[i]

			if item.count > 0 then
				table.insert(elements, {
					label = item.label .. ' x' .. item.count,
					type = 'item_standard',
					value = item.name
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
            css      = 'police',
			title    = 'inventaire',
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			local itemName = data.current.value

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count', {
                css      = 'police',
				title = 'quantité'
			}, function(data2, menu2)
				local count = tonumber(data2.value)

				if not count then
					ESX.ShowNotification('quantité invalide')
				else
					menu2.close()
					menu.close()
					TriggerServerEvent('esx_policejob:stockitem', itemName, count)

					Citizen.Wait(300)
					OpenPutStocksLSPDMenu()
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		end, function(data, menu)
			menu.close()
		end)
	end)
end


function OpenGetWeaponMenu()

	ESX.TriggerServerCallback('esx_policejob:getArmoryWeapons', function(weapons)
		local elements = {}

		for i=1, #weapons, 1 do
			if weapons[i].count > 0 then
				table.insert(elements, {
					label = 'x' .. weapons[i].count .. ' ' .. ESX.GetWeaponLabel(weapons[i].name),
					value = weapons[i].name
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory_get_weapon',
		{
			title    = _U('get_weapon_menu'),
			align    = 'top-left',
			elements = elements
		}, function(data, menu)

			menu.close()

			ESX.TriggerServerCallback('esx_policejob:removeArmoryWeapon', function()
				OpenGetWeaponMenu()
			end, data.current.value)

		end, function(data, menu)
			menu.close()
		end)
	end)

end

function OpenPutWeaponMenu()
	local elements   = {}
	local playerPed  = PlayerPedId()
	local weaponList = ESX.GetWeaponList()

	for i=1, #weaponList, 1 do
		local weaponHash = GetHashKey(weaponList[i].name)

		if HasPedGotWeapon(playerPed, weaponHash, false) and weaponList[i].name ~= 'WEAPON_UNARMED' then
			table.insert(elements, {
				label = weaponList[i].label,
				value = weaponList[i].name
			})
		end
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory_put_weapon',
	{
		title    = _U('put_weapon_menu'),
		align    = 'top-left',
		elements = elements
	}, function(data, menu)

		menu.close()

		ESX.TriggerServerCallback('esx_policejob:addArmoryWeapon', function()
			OpenPutWeaponMenu()
		end, data.current.value, true)

	end, function(data, menu)
		menu.close()
	end)
end

-------armurerie

RMenu.Add('alllerrrchut', 'main', RageUI.CreateMenu("", "Armurerie"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('alllerrrchut', 'main'), true, true, true, function()   

            RageUI.ButtonWithStyle("[~h~~r~EQUIPEMENT~s~] - Basique", nil, { },true, function(Hovered, Active, Selected)
                if (Selected) then   
                    TriggerServerEvent('equipementbase')
                end
            end)

			RageUI.Separator("  _______________________")


			if ESX.PlayerData.job.grade_name == 'grade0' or ESX.PlayerData.job.grade_name == 'grade1' or ESX.PlayerData.job.grade_name == 'grade12' or ESX.PlayerData.job.grade_name == 'boss' or ESX.PlayerData.job.grade_name == 'sergeant' or ESX.PlayerData.job.grade_name == 'grade6' or ESX.PlayerData.job.grade_name == 'grade5' or ESX.PlayerData.job.grade_name == 'grade13' or ESX.PlayerData.job.grade_name == 'grade8' or ESX.PlayerData.job.grade_name == 'grade9' or ESX.PlayerData.job.grade_name == 'sousgrade10' or ESX.PlayerData.job.grade_name == 'grade10' == 'grade5' or ESX.PlayerData.job.grade_name == 'grade13' or ESX.PlayerData.job.grade_name == 'grade8' or ESX.PlayerData.job.grade_name == 'grade9' or ESX.PlayerData.job.grade_name == 'sousgrade10' or ESX.PlayerData.job.grade_name == 'grade10' or ESX.PlayerData.job.grade_name == 'grade11' or ESX.PlayerData.job.grade_name == 'boss' then 
                for k,v in pairs(Config.armurerie) do
                RageUI.ButtonWithStyle(v.nom, nil, { },true, function(Hovered, Active, Selected)
                    if (Selected) then   
                        TriggerServerEvent('armurerie', v.arme, v.prix)
                    end
                end)
            end
        end

		if ESX.PlayerData.job.grade_name == 'grade0' or ESX.PlayerData.job.grade_name == 'grade1' or ESX.PlayerData.job.grade_name == 'grade12' or ESX.PlayerData.job.grade_name == 'grade6' or ESX.PlayerData.job.grade_name == 'boss' or ESX.PlayerData.job.grade_name == 'sergeant' or ESX.PlayerData.job.grade_name == 'grade6' or ESX.PlayerData.job.grade_name == 'grade5' or ESX.PlayerData.job.grade_name == 'grade13' or ESX.PlayerData.job.grade_name == 'grade5' or ESX.PlayerData.job.grade_name == 'grade8' or ESX.PlayerData.job.grade_name == 'grade9' or ESX.PlayerData.job.grade_name == 'sousgrade10' or ESX.PlayerData.job.grade_name == 'grade10' == 'grade5' or ESX.PlayerData.job.grade_name == 'grade13' or ESX.PlayerData.job.grade_name == 'grade8' or ESX.PlayerData.job.grade_name == 'grade9' or ESX.PlayerData.job.grade_name == 'grade10' or ESX.PlayerData.job.grade_name == 'grade11' or ESX.PlayerData.job.grade_name == 'boss' then 
                for k,v in pairs(Config.arm) do
                RageUI.ButtonWithStyle(v.nom, nil, { },true, function(Hovered, Active, Selected)
                    if (Selected) then   
                        TriggerServerEvent('armurerie', v.arme, v.prix)
                    end
                end)
            end
        end

		if ESX.PlayerData.job.grade_name == 'grade0' or ESX.PlayerData.job.grade_name == 'grade1' or ESX.PlayerData.job.grade_name == 'grade12' or ESX.PlayerData.job.grade_name == 'grade6' or ESX.PlayerData.job.grade_name == 'boss' or ESX.PlayerData.job.grade_name == 'sergeant' or ESX.PlayerData.job.grade_name == 'grade6' or ESX.PlayerData.job.grade_name == 'grade5' or ESX.PlayerData.job.grade_name == 'grade13' or ESX.PlayerData.job.grade_name == 'grade5' or ESX.PlayerData.job.grade_name == 'grade8' or ESX.PlayerData.job.grade_name == 'grade9' or ESX.PlayerData.job.grade_name == 'sousgrade10' or ESX.PlayerData.job.grade_name == 'grade10' == 'grade5' or ESX.PlayerData.job.grade_name == 'grade13' or ESX.PlayerData.job.grade_name == 'grade8' or ESX.PlayerData.job.grade_name == 'grade9' or ESX.PlayerData.job.grade_name == 'grade10' or ESX.PlayerData.job.grade_name == 'grade11' or ESX.PlayerData.job.grade_name == 'boss' then 
                    for k,v in pairs(Config.arm) do
                    RageUI.ButtonWithStyle(v.nom, nil, { },true, function(Hovered, Active, Selected)
                        if (Selected) then   
                            TriggerServerEvent('armurerie', v.arme, v.prix)
                        end
                    end)
                end
            end

            if ESX.PlayerData.job.grade_name == 'boss' then
                for k,v in pairs(Config.armi) do
                RageUI.ButtonWithStyle(v.nom, nil, { },true, function(Hovered, Active, Selected)
                    if (Selected) then   
                        TriggerServerEvent('armurerie', v.arme, v.prix)
                    end
                end)
            end
        end

    



        end, function()
        end)
    Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
                local plyCoords2 = GetEntityCoords(GetPlayerPed(-1), false)
                local dist2 = Vdist(plyCoords2.x, plyCoords2.y, plyCoords2.z, Config.pos.armurerie.position.x, Config.pos.armurerie.position.y, Config.pos.armurerie.position.z)
		    if dist2 <= 1.0 then
		    if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 	
                    ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour accéder à l'armurerie")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('alllerrrchut', 'main'), not RageUI.Visible(RMenu:Get('alllerrrchut', 'main')))
                    end   
                end
            end 
        end
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("mp_m_shopkeep_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
	end
	ped = CreatePed("PED_TYPE_CIVMALE", "s_m_y_cop_01", 440.1262512207,-984.02947998047,33.297317504883,284.7752075195313, false, true)
	SetBlockingOfNonTemporaryEvents(ped, true)
	FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)