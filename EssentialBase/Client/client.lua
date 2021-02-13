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
		HideHudAndRadarThisFrame(1)
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

