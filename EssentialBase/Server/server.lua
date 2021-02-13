-- Anti VDM
Citizen.CreateThread(function()
    while true do
        SetWeaponDamageModifier(-1553120962, config.antivdm)-- run over by a car
        --SetWeaponDamageModifier(133987706, config.antivdm)
	    Wait(0)
    end
end)