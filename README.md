-------------------------------
---------- CASE#2506 ----------
-------------------------------

### QBCORE RGB CONTROLLER ###

A very simple RGB controller for your server!
You can control both neons and xenons if installed.
This was just a quick thing as people in my city requested a way to toggle on/off neons and I went a little OTT.
Enjoy!

### USAGE ###

- Use RGB Controller to open menu

**MUST HAVE NEONS INSTALLED TO OPEN MENU**

### INSTALL ###

1) Customise notifications to your liking in config.lua
2) Drag and drop `case-rgccontroller` into your server resources
3) Insert shared.lua data below into your `qb-core/shared/items.lua` or `qb-core/shared.lua`
4) Restart city :)

### REQUIREMENTS ###

qb-menu -- https://github.com/qbcore-framework/qb-menu

### SHARED.LUA ### 
-- Insert into shared.lua here; `qb-core/shared/items.lua` or `qb-core/shared.lua`

	["rgbcontroller"] 		 	 	 = {["name"] = "rgbcontroller", 				["label"] = "RGB Controller", 			["weight"] = 50, 	["type"] = "item", 		["image"] = "rgbcontroller.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   	["description"] = "Sorry I cant hear you over the sound of my RGB!"},

### PREVIEW ###
https://www.youtube.com/watch?v=SNH05IPah4w

### SUPPORT ###
https://discord.gg/qkWHBqHJg6
