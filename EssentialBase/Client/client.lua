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