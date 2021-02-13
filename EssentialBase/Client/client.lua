-- DENSITY OF AI CIVILLIANS
Citizen.CreateThread(function()
	while true do
	    Citizen.Wait(0)
	    SetVehicleDensityMultiplierThisFrame(config.density)
	    SetPedDensityMultiplierThisFrame(config.density)
	    SetRandomVehicleDensityMultiplierThisFrame(config.density)
	    SetParkedVehicleDensityMultiplierThisFrame(config.density)
	    SetScenarioPedDensityMultiplierThisFrame(config.density, config.density)
	end
end)


-- Wanted Stars/Dispatch
Citizen.CreateThread(function()
	while true do
		Wait(0)
		for i = 1, 12 do
			EnableDispatchService(i, config.dispatch)
		end
		SetPlayerWantedLevel(PlayerId(), 0, config.dispatch)
		SetPlayerWantedLevelNow(PlayerId(), config.dispatch)
		SetPlayerWantedLevelNoDrop(PlayerId(), 0, config.dispatch)
	end
end)


-- Disabling God Mode and Infinite Ammo 
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if config.antigod == true then
			SetPedInfiniteAmmoClip(PlayerPedId(),false)
			SetPlayerInvincible(PlayerId(),false)
			SetEntityInvincible(PlayerPedId(),false)
			SetEntityCanBeDamaged(PlayerPedId(),true)
			ResetEntityAlpha(PlayerPedId())
		end
	end
end)

-- GUN HITTING
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
			if config.gunhit == true then
        		local ped = PlayerPedId()
                if IsPedArmed(ped, 6) then
                	DisableControlAction(1, 140, true)
                	DisableControlAction(1, 141, true)
                	DisableControlAction(1, 142, true)
				end
			end
        end
    end
end)

-- HUD
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for key, val in pairs(config.hudelements) do
            if val.shown == false then
                HideHudComponentThisFrame(val.id)
            else
                ShowHudComponentThisFrame(val.id)
            end
        end
    end
end)