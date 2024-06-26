-- awesome_mode: api-level=4:screen=on

-- load luarocks if installed
pcall(require, "luarocks.loader")

-- load theme
local beautiful = require("beautiful")
beautiful.init("~/.config/awesome/theme.lua")

-- load key and mouse bindings
require("bindings")

-- load rules
require("rules")

-- load signals
require("signals")
