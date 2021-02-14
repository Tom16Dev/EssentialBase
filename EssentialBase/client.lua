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
	if config.antigod == true then
		while true do
			Citizen.Wait(0)
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
	local ped = PlayerPedId()
	if config.gunhit == true then
    	while true do
			Citizen.Wait(0)
			if IsPedArmed(ped, 6) then
				DisableControlAction(1, 140, true)
				DisableControlAction(1, 141, true)
				DisableControlAction(1, 142, true)
			end
		end
	end
end)

Citizen.CreateThread(function()
	if config.stamina == false then
		while true do
			Citizen.Wait(0)
			RestorePlayerStamina(PlayerId(), 1.0)
		end
	end
end)

-- Anti VDM
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
        SetWeaponDamageModifier(-1553120962, config.antivdm)-- run over by a car
        --SetWeaponDamageModifier(133987706, config.antivdm)
    end
end)