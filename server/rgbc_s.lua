-------------------------------
---------- CASE#2506 ----------
-------------------------------

local QBCore = exports['qb-core']:GetCoreObject()

-- RGB Controller item to open menu 
QBCore.Functions.CreateUseableItem("rgbcontroller", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('case-rgbcontroller:client:OpenRGBMenu', source)
end)
