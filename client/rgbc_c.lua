-------------------------------
---------- CASE#2506 ----------
-------------------------------

local QBCore = exports['qb-core']:GetCoreObject()
local VehiclesWithNeons = {}

RegisterNetEvent('case-rgbcontroller:client:OpenRGBMenu', function()
    local src = GetPlayerName(source)
    local playerPed	= PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed, false)
	if not vehicle or not IsPedInAnyVehicle(playerPed, true) or GetPedInVehicleSeat(vehicle, -1) ~= playerPed then 
        QBCore.Functions.Notify(Config.Lang['rgbout'], "error", 3500)
        return 
    end -- ignore if not in car or driver seat	
	local hasNeons = HasNeon(vehicle)
	if not hasNeons then 
        QBCore.Functions.Notify(Config.Lang['noneons'], "error", 3500)    
        return 
    end
    if IsPedSittingInAnyVehicle(playerPed) then
        local vehicle = GetVehiclePedIsIn(playerPed)
        local plate = GetVehicleNumberPlateText(vehicle)
            QBCore.Functions.TriggerCallback('qb-garage:server:checkVehicleOwner', function(owned)
                if owned then
                    TriggerEvent("case-rgbcontroller:client:ControllerMainMenu")
                else
                    QBCore.Functions.Notify(Config.Lang['unowned'], "error", 3500)
                end
        end, plate)
    end
end)
-- RGB Controller main menu
RegisterNetEvent('case-rgbcontroller:client:ControllerMainMenu', function()
    exports['qb-menu']:openMenu({
		{
            header = "RGB Controller",
            txt = "Take control of your RGBs!",
            isMenuHeader = true
        },
        {
            header = "Toggle Neons",
            txt = "Toggle your neons on/off",
            params = {
                event = "case-rgbcontroller:client:ToggleNeonsMenu",
            }
        },
        {
            header = "Change Neon Color",
            txt = "Change the color of your neons",
            params = {
                event = "case-rgbcontroller:client:NeonColoursMenu",
            }
        },
        {
            header = "Change Xenons Color",
            txt = "Change the color of your xenons",
            params = {
                event = "case-rgbcontroller:client:XenonColoursMenu",
            }
        },
        {
            header = "< Exit",
            txt = "",
            params = {
                event = "case-rgbcontroller:client:StopMenu",
            }
        },
    })
end)
-- Toggle neons menu
RegisterNetEvent('case-rgbcontroller:client:ToggleNeonsMenu', function()
    exports['qb-menu']:openMenu({
		{
            header = "Toggle Neons",
            txt = "Take control of your RGBs!",
            isMenuHeader = true
        },
        {
            header = "Toggle On",
            params = {
                event = "case-rgbcontroller:client:ToggleNeons",
                args = 1
            }
        },
        {
            header = "Toggle Off",
            params = {
                event = "case-rgbcontroller:client:ToggleNeons",
                args = 2
            }
        },
        {
            header = "< Return",
            params = {
                event = "case-rgbcontroller:client:ControllerMainMenu",
            }
        },
    })
end)
-- Neon colour menu
RegisterNetEvent('case-rgbcontroller:client:NeonColoursMenu', function()
    exports['qb-menu']:openMenu({
		{
            header = "Neon Colours",
            txt = "Take control of your RGBs!",
            isMenuHeader = true
        },
        {
            header = "White",
            params = {
                event = "case-rgbcontroller:client:ChangeNeonColour",
                args = 1
            }
        },
        {
            header = "Blue",
            params = {
                event = "case-rgbcontroller:client:ChangeNeonColour",
                args = 2
            }
        },
        {
            header = "Electric Blue",
            params = {
                event = "case-rgbcontroller:client:ChangeNeonColour",
                args = 3
            }
        },
        {
            header = "Mint Green",
            params = {
                event = "case-rgbcontroller:client:ChangeNeonColour",
                args = 4
            }
        },
        {
            header = "Lime Green",
            params = {
                event = "case-rgbcontroller:client:ChangeNeonColour",
                args = 5
            }
        },
        {
            header = "Yellow",
            params = {
                event = "case-rgbcontroller:client:ChangeNeonColour",
                args = 6
            }
        },
        {
            header = "Gold",
            params = {
                event = "case-rgbcontroller:client:ChangeNeonColour",
                args = 7
            }
        },
        {
            header = "Orange",
            params = {
                event = "case-rgbcontroller:client:ChangeNeonColour",
                args = 8
            }
        },
        {
            header = "Red",
            params = {
                event = "case-rgbcontroller:client:ChangeNeonColour",
                args = 9
            }
        },
        {
            header = "Pony Pink",
            params = {
                event = "case-rgbcontroller:client:ChangeNeonColour",
                args = 10
            }
        },
        {
            header = "Hot Pink",
            params = {
                event = "case-rgbcontroller:client:ChangeNeonColour",
                args = 11
            }
        },
        {
            header = "Purple",
            params = {
                event = "case-rgbcontroller:client:ChangeNeonColour",
                args = 12
            }
        },
        {
            header = "Blacklight",
            params = {
                event = "case-rgbcontroller:client:ChangeNeonColour",
                args = 13
            }
        },
        {
            header = "< Return",
            params = {
                event = "case-rgbcontroller:client:ControllerMainMenu",
            }
        },
    })
end)
-- Event to toggle neons
RegisterNetEvent('case-rgbcontroller:client:ToggleNeons', function(args) 
    local args = tonumber(args)
    local playerPed	= PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed)
	if args == 1 then
        SetVehicleNeonLightEnabled(vehicle, 0, true)
        SetVehicleNeonLightEnabled(vehicle, 1, true)
        SetVehicleNeonLightEnabled(vehicle, 2, true)
        SetVehicleNeonLightEnabled(vehicle, 3, true)
		QBCore.Functions.Notify(Config.Lang['neonon'], "success", 3500)
    elseif args == 2 then 
        SetVehicleNeonLightEnabled(vehicle, 0, false)
        SetVehicleNeonLightEnabled(vehicle, 1, false)
        SetVehicleNeonLightEnabled(vehicle, 2, false)
        SetVehicleNeonLightEnabled(vehicle, 3, false)
		QBCore.Functions.Notify(Config.Lang['neonoff'], "error", 3500)
    end
end)
-- Event to change neon colour
RegisterNetEvent('case-rgbcontroller:client:ChangeNeonColour', function(args) 
    local args = tonumber(args)
    local playerPed	= PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed)
	TriggerEvent('case-rgbcontroller:client:NeonColoursMenu')
	QBCore.Functions.Notify(Config.Lang['neonchanged'], "success", 3500)
	if args == 1 then 
        SetVehicleNeonLightsColour(vehicle, 222, 222, 255)
    elseif args == 2 then 
        SetVehicleNeonLightsColour(vehicle, 2, 21, 255)
    elseif args == 3 then 
        SetVehicleNeonLightsColour(vehicle, 3, 83, 255)
    elseif args == 4 then 
        SetVehicleNeonLightsColour(vehicle, 0, 255, 140)
    elseif args == 5 then 
        SetVehicleNeonLightsColour(vehicle, 94,	255, 1)
    elseif args == 6 then 
        SetVehicleNeonLightsColour(vehicle, 255, 255, 0)
    elseif args == 7 then 
        SetVehicleNeonLightsColour(vehicle, 255, 150, 0)
    elseif args == 8 then 
        SetVehicleNeonLightsColour(vehicle, 255, 62, 0)
    elseif args == 9 then 
        SetVehicleNeonLightsColour(vehicle, 255, 1, 1)
    elseif args == 10 then 
        SetVehicleNeonLightsColour(vehicle, 255, 50, 100)
    elseif args == 11 then 
        SetVehicleNeonLightsColour(vehicle, 255, 5, 190)
    elseif args == 12 then 
        SetVehicleNeonLightsColour(vehicle, 35,	1, 255)		
    elseif args == 13 then 
        SetVehicleNeonLightsColour(vehicle, 15, 3, 255)	
    end
end)
-- Xenon colour menu
RegisterNetEvent('case-rgbcontroller:client:XenonColoursMenu', function()
    exports['qb-menu']:openMenu({
		{
            header = "Xenon Colours",
            txt = "Take control of your RGBs!",
            isMenuHeader = true
        },
        {
            header = "White",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 1
            }
        },
        {
            header = "Ice Blue",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 2
            }
        },
        {
            header = "Blue",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 3
            }
        },
        {
            header = "Electric Blue",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 4
            }
        },
        {
            header = "Mint Green",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 5
            }
        },
        {
            header = "Lime Green",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 6
            }
        },
        {
            header = "Yellow",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 7
            }
        },
        {
            header = "Gold",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 8
            }
        },
        {
            header = "Orange",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 9
            }
        },
        {
            header = "Red",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 10
            }
        },
        {
            header = "Pony Pink",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 11
            }
        },
        {
            header = "Hot Pink",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 12
            }
        },
        {
            header = "Purple",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 13
            }
        },
        {
            header = "Blacklight",
            params = {
                event = "case-rgbcontroller:client:ChangeXenonColour",
                args = 14
            }
        },
        {
            header = "< Return",
            params = {
                event = "case-rgbcontroller:client:ControllerMainMenu",
            }
        },
    })
end)
RegisterNetEvent('case-rgbcontroller:client:ChangeXenonColour', function(args) 
    local args = tonumber(args)
    local playerPed	= PlayerPedId()
	local vehicle = GetVehiclePedIsIn(playerPed, false)
	TriggerEvent('case-rgbcontroller:client:XenonColoursMenu')
	QBCore.Functions.Notify(Config.Lang['xenonchanged'], "success", 3500)
	if args == 1 then 
		SetVehicleHeadlightsColour(vehicle, 0)
    elseif args == 2 then 
		SetVehicleHeadlightsColour(vehicle, -1)	
    elseif args == 3 then 
		SetVehicleHeadlightsColour(vehicle, 1)	
    elseif args == 4 then 
		SetVehicleHeadlightsColour(vehicle, 2)
    elseif args == 5 then
		SetVehicleHeadlightsColour(vehicle, 3)
	elseif args == 6 then
		SetVehicleHeadlightsColour(vehicle, 4)	
	elseif args == 7 then
		SetVehicleHeadlightsColour(vehicle, 5)
	elseif args == 8 then
		SetVehicleHeadlightsColour(vehicle, 6)
	elseif args == 9 then
		SetVehicleHeadlightsColour(vehicle, 7)
	elseif args == 10 then
		SetVehicleHeadlightsColour(vehicle, 8)
	elseif args == 11 then
		SetVehicleHeadlightsColour(vehicle, 9)
	elseif args == 12 then
		SetVehicleHeadlightsColour(vehicle, 10)
	elseif args == 13 then
		SetVehicleHeadlightsColour(vehicle, 11)
	elseif args == 14 then
		SetVehicleHeadlightsColour(vehicle, 12)
    end        
end)

--<!>-- DO NOT CHANGE NAYTHING BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING! --<!>--
-- Function to check for neons on vehicle
function HasNeon(vehicle)
    if VehiclesWithNeons[vehicle] ~= nil then
        return true
    end
    if IsVehicleNeonLightEnabled(vehicle) then
        VehiclesWithNeons[vehicle] = true
        return true
    end
end
function CheckVehicleNeons()
    for k,v in pairs(VehiclesWithNeons) do
        local valid = DoesEntityExist(k)
        if (not valid) then
            VehiclesWithNeons[k] = nil
            return
        end
    end
    Wait(5000)
    CheckVehicleNeons()
end

-- Event to close down qb-menu and update vehicle)
RegisterNetEvent('case-rgbcontroller:client:StopMenu', function()
    CurrentVehicleData = QBCore.Functions.GetVehicleProperties(vehicle)
    TriggerServerEvent('updateVehicle', CurrentVehicleData)
    ClearPedTasks(PlayerPedId())
    QBCore.Functions.Notify(Config.Lang['menuclose'], "error", 3500)
end)

