--    #    ####### #          #    #     # #######    #        #####   #####  ######  ### ######  #######  #####
--   # #      #    #         # #   ##    #    #      # #      #     # #     # #     #  #  #     #    #    #     #
--  #   #     #    #        #   #  # #   #    #     #   #     #       #       #     #  #  #     #    #    #
-- #     #    #    #       #     # #  #  #    #    #     #     #####  #       ######   #  ######     #     #####
-- #######    #    #       ####### #   # #    #    #######          # #       #   #    #  #          #          #
-- #     #    #    #       #     # #    ##    #    #     #    #     # #     # #    #   #  #          #    #     #
-- #     #    #    ####### #     # #     #    #    #     #     #####   #####  #     # ### #          #     #####

-- DISCORD SERVER: https://discord.gg/sCMKeZHxS5

Shared = {}

Shared.EnableButtonOpen = true                          -- Open Menu from everywhere with a button
Shared.OpenMenuCommand = "loadout"                      -- The command to open the menu
Shared.OpenButton = "M"                                 -- The button to open everywhere the menu
Shared.EnableNPC = true                                 -- If you want to open the menu with NPC
Shared.EnableNPCText = true                             -- If you want to draw a text above the NPC
Shared.EnableNPCWeapon = true                           -- If you want to put a weapon to the NPC hand(s)
Shared.Notify = true                                    -- Notify if you successfully purchased the kit or you dont have enough mone

Shared.Translation = {
    ['MENU_TITLE'] = "Loadout Menu",
    ['NOTIFY_SUCCES'] = "Successful kit purchase!",
    ['NOTIFY_NOTENOUGH'] = "You don't have enough money!",
    ['OPEN_BUTTON_DESCRIPTION'] = "Open Loadout Menu", -- Description to the button in FiveM Menu Keybinds
    ['UNKNOWN'] = "Unknown",
}

Shared.Loadouts = {
    ["TEC9"] = {
        name = "TEC-9 Kit",                 -- Loadout label
        description = "Click to purchase (%s$)", -- Loadout description
        icon = 'box',                      -- Loadout icon
        price = 5000,                      -- Loadout price
        slot = 2,                          -- Loadout slot
        items = {                          -- Loadout items
            ["WEAPON_MACHINEPISTOL"] = { count = 1, slot = 1 },
            ["at_clip_drum_smg"] = { count = 1, slot = 7 },
            ["armour"] = { count = 5, slot = 3 },
            ["adrenalin"] = { count = 5, slot = 5 },
            ["ammo-9"] = { count = 500, slot = 2 },
            ["radio"] = { count = 1, slot = 4 },
            ["medikit"] = { count = 1, slot = 6 },
        }
    },

    ["AP"] = {
        name = "AP Kit",
        description = "Click to purchase (%s$)",
        icon = 'box',
        price = 10000,
        slot = 1,
        items = {
            ["WEAPON_APPISTOL"] = { count = 1, slot = 1 },
            ["at_clip_extended_pistol"] = { count = 1, slot = 7 },
            ["at_suppressor_light"] = { count = 1, slot = 8 },
            ["armour"] = { count = 5, slot = 3 },
            ["adrenalin"] = { count = 5, slot = 5 },
            ["ammo-9"] = { count = 500, slot = 2 },
            ["radio"] = { count = 1, slot = 4 },
            ["medikit"] = { count = 1, slot = 6 },
        }
    },

    ["P90"] = {
        name = "P90 Kit",
        description = "Click to purchase (%s$)",
        icon = 'box',
        price = 7500,
        slot = 3,
        items = {
            ["at_clip_extended_smg"] = { count = 1, slot = 8 },
            ["WEAPON_ASSAULTSMG"] = { count = 1, slot = 1 },
            ["at_suppressor_heavy"] = { count = 1, slot = 7 },
            ["armour"] = { count = 5, slot = 3 },
            ["adrenalin"] = { count = 5, slot = 4 },
            ["medikit"] = { count = 1, slot = 6 },
            ["ammo-9"] = { count = 500, slot = 2 },
            ["radio"] = { count = 1, slot = 5 },
        }
    },

    ["UZI"] = {
        name = "UZI Kit",
        description = "Click to purchase (%s$)",
        icon = 'box',
        price = 5000,
        slot = 4,
        items = {
            ["WEAPON_MICROSMG"] = { count = 1, slot = 1 },
            ["at_clip_extended_smg"] = { count = 1, slot = 8 },
            ["at_suppressor_heavy"] = { count = 1, slot = 7 },
            ["armour"] = { count = 5, slot = 3 },
            ["adrenalin"] = { count = 5, slot = 5 },
            ["ammo-9"] = { count = 500, slot = 2 },
            ["radio"] = { count = 1, slot = 4 },
            ["medikit"] = { count = 1, slot = 6 },
        }
    },

    ["CW1"] = {
        name = "CW Kit #1",
        description = "Click to purchase (%s$)",
        icon = 'box',
        price = 12500,
        slot = 5,
        items = {
            ["WEAPON_MACHINEPISTOL"] = { count = 1, slot = 1 },
            ["ammo-9"] = { count = 2000, slot = 2 },
            ["armour"] = { count = 20, slot = 3 },
            ["adrenalin"] = { count = 20, slot = 4 },
            ["radio"] = { count = 1, slot = 5 },
            ["at_clip_drum_smg"] = { count = 1, slot = 6 },
        }
    },

    ["CW2"] = {
        name = "CW Kit #2",
        description = "Click to purchase (%s$)",
        icon = 'box',
        price = 15000,
        slot = 6,
        items = {
            ["WEAPON_ASSAULTSMG"] = { count = 1, slot = 1 },
            ["ammo-9"] = { count = 2000, slot = 2 },
            ["armour"] = { count = 20, slot = 3 },
            ["adrenalin"] = { count = 20, slot = 4 },
            ["radio"] = { count = 1, slot = 5 },
            ["at_clip_extended_smg"] = { count = 1, slot = 6 },
            ["at_suppressor_heavy"] = { count = 1, slot = 7 },
        }
    },
}

Shared.NPC = {
    ["npc1"] = {                                              -- TEMPLATE
        coords = vec(1725.6833, 3315.3984, 40.2235, 207.5598), -- coords
        model = "s_m_y_dealer_01",                            -- Ped model
        text = "~b~LOADOUT~s~ NPC",                           -- text
        text2 = "~w~Press [~b~E~s~] to open",                  -- text
        weapon = "weapon_assaultsmg",                         -- Weapon in ped hands
    },
}

