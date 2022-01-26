-------------------------------
---------- CASE#2506 ----------
-------------------------------

### QBCORE RGB CONTROLLER ###

A very simple RGB controller for your server!
You can control both neons and xenons if installed.
This was just a quick thing as people in my city requested a way to toggle on/off neons and I went a little OTT.
Enjoy!

**UPDATE V2**

Third-eye targeting added to vehicle bones to install neon kits and xenons

### USAGE ###

- Use RGB Controller to open menu

### USAGE FOR V2 ###

- Third-eye to install neons and xenons
- RGB controller to control neons and xenons

**MUST HAVE NEONS INSTALLED TO OPEN MENU**

### INSTALL ###

1) Customise notifications to your liking in config.lua
2) For rgbcontrollerv2 replace the original files with files inside `withinstall`
3) Drag and drop `case-rgccontroller` into your server resources
4) Insert shared.lua data below into your `qb-core/shared/items.lua` or `qb-core/shared.lua`
5) Restart city :)

### REQUIREMENTS ###

qb-menu -- https://github.com/qbcore-framework/qb-menu
qb-garages -- https://github.com/qbcore-framework/qb-garages

### ADDITIONAL REQUIREMENTS IF USING RGBCONTROLLERV2 ###

qb-target - https://github.com/BerkieBb/qb-target
progressbar - https://github.com/qbcore-framework/progressbar

### SHARED.LUA ### 
-- Insert into shared.lua here; `qb-core/shared/items.lua` or `qb-core/shared.lua`

	["rgbcontroller"] 		 	 	 = {["name"] = "rgbcontroller", 				["label"] = "RGB Controller", 			["weight"] = 50, 	["type"] = "item", 		["image"] = "rgbcontroller.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   	["description"] = "Sorry I cant hear you over the sound of my RGB!"},

-- Data if using installed parts (rgbcontrollerv2)

	["neonkit"] 		 	 		 = {["name"] = "neonkit", 						["label"] = "Neon Kit", 				["weight"] = 800, 	["type"] = "item", 		["image"] = "neonkit.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   	["description"] = "The more RGB the better!"},
	["xenons"] 		 	 		 	 = {["name"] = "xenons", 						["label"] = "Xenon Headlights", 		["weight"] = 1000, 	["type"] = "item", 		["image"] = "xenons.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   	["description"] = "Shine bright like a diamond!"},

### PREVIEW V2 (VIDEO WILL BE UPDATED WITH YOUTUBE LINK) ###
https://streamable.com/iq7oco

### PREVIEW V1 ###
https://www.youtube.com/watch?v=HAR5v332zo4

### SUPPORT ###
https://discord.gg/qkWHBqHJg6
