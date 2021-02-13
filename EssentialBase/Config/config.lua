-- These are all default settings, edit them to see what is best for you.

config = {
    density = 1.0, -- Amount of AI Civillians (0.1 = 10%, 1.0 = 100%)
    dispatch = true, -- Wanted Stars, Police, EMS and Fire Service (true = on, false = off)
    antigod = true, -- Disables Invincibility and Infinite Ammo, 100% recommended to install a dedicated anticheat, this will  only stop very basic hacks (true = on, false = off)
    gunhit = true, -- When you get close to someone with a gun you start to hit them with your gun instead of shooting (true = on, false = off)
    antivdm = 1.0, -- Amount of damage a car does when hitting a player (0.1 = 10%, 1.0 = 100%)
}

hudelements = {
    -- TRUE FOR ON, FALSE FOR OFF. You can experiment to see what you want on.
    HUD = { id = 0, shown = true },
    HUD_WANTED_STARS = { id = 1, shown = true },
    HUD_WEAPON_ICON = { id = 2, shown = true },
    HUD_CASH = { id = 3, shown = true },
    HUD_MP_CASH = { id = 4, shown = true },
    HUD_MP_MESSAGE = { id = 5, shown = true },
    HUD_VEHICLE_NAME = { id = 6, shown = true },
    HUD_AREA_NAME = { id = 7, shown = true },
    HUD_VEHICLE_CLASS = { id = 8, shown = true },
    HUD_STREET_NAME = { id = 9, shown = true },
    HUD_HELP_TEXT = { id = 10, shown = true },
    HUD_FLOATING_HELP_TEXT_1 = { id = 11, shown = true },
    HUD_FLOATING_HELP_TEXT_2 = { id = 12, shown = true },
    HUD_CASH_CHANGE = { id = 13, shown = true },
    HUD_RETICLE = { id = 14, shown = true },
    HUD_SUBTITLE_TEXT = { id = 15, shown = true },
    HUD_RADIO_STATIONS = { id = 16, shown = true },
    HUD_SAVING_GAME = { id = 17, shown = true },
    HUD_GAME_STREAM = { id = 18, shown = true },
    HUD_WEAPON_WHEEL = { id = 19, shown = true },
    HUD_WEAPON_WHEEL_STATS = { id = 20, shown = true },
    MAX_HUD_COMPONENTS = { id = 21, shown = true },
    MAX_HUD_WEAPONS = { id = 22, shown = true },
    MAX_SCRIPTED_HUD_COMPONENTS = { id = 141, shown = true }
}