local awful = require("awful")
local beautiful = require("beautiful")

local primary_screen = 2;

awful.rules.rules = {
    -- All clients will match this rule.
    {
        rule = {},
        properties = {
            border_width = beautiful.border_width,
            border_color = beautiful.border_normal,
            focus = awful.client.focus.filter,
            raise = true,
            keys = clientkeys,
            buttons = clientbuttons,
            screen = awful.screen.preferred,
            placement = awful.placement.no_overlap + awful.placement.no_offscreen
        }
    },

    -- Floating clients.
    {
        rule_any = {
            instance = {
                "DTA",   -- Firefox addon DownThemAll.
                "copyq", -- Includes session name in class.
                "pinentry",
            },
            class = {
                "Arandr",
                "Blueman-manager",
                "Gpick",
                "Kruler",
                "MessageWin",  -- kalarm.
                "Sxiv",
                "Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
                "Wpa_gui",
                "veromix",
                "xtightvncviewer" },

            -- Note that the name property shown in xprop might be set slightly after creation of the client
            -- and the name shown there might not match defined rules here.
            name = {
                "Event Tester", -- xev.
            },
            role = {
                "AlarmWindow",   -- Thunderbird's calendar.
                "ConfigManager", -- Thunderbird's about:config.
                "pop-up",        -- e.g. Google Chrome's (detached) Developer Tools.
            }
        },
        properties = { floating = true }
    },

    -- Add titlebars to normal clients and dialogs
    {
        rule_any = { type = { "normal", "dialog" }
        },
        properties = { titlebars_enabled = false }
    },
    {
        rule_any = { class = { "google-chrome", "Google-chrome" } },
        properties = {
            screen = primary_screen,
            tag = "1",
            switchtotag = true
        }
    },
    {
        rule_any = { class = { "brave-browser", "Brave-browser" } },
        properties = {
            screen = primary_screen,
            tag = "1",
            switchtotag = true
        }
    },
    {
        rule_any = { class = { "discord" } },
        properties = {
            screen = primary_screen,
            tag = "8",
            switchtotag = true
        }
    },
    {
        rule_any = { class = { "telegram-desktop", "TelegramDesktop" } },
        properties = {
            screen = primary_screen,
            tag = "9",
            switchtotag = true
        }
    },
    {
        rule_any = { class = { "code", "Code" } },
        properties = {
            screen = primary_screen,
            tag = "3",
            switchtotag = true
        }
    },
    {
        rule_any = { class = {"jetbrains-pycharm", "jetbrains-pycharm"} },
        properties = {
            screen = primary_screen,
            tag = "2",
            switchtotag = true
        }
    },
    {
        rule_any = { class = {"jetbrains-clion", "jetbrains-clion"} },
        properties = {
            screen = primary_screen,
            tag = "2",
            switchtotag = true
        }
    },
    {
        rule_any = {class = {"thunar", "Thunar"} },
        properties = {
            screen = primary_screen,
            tag = "6",
            switchtotag = true
        }
    }
}

