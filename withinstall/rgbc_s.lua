-------------------------------
---------- CASE#2506 ----------
-------------------------------

local QBCore = exports['qb-core']:GetCoreObject()

-- RGB Controller item to open menu 
QBCore.Functions.CreateUseableItem("rgbcontroller", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('case-rgbcontroller:client:OpenRGBMenu', source)
end)
RegisterNetEvent('case-rgbcontroler:server:InstallNeons', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('neonkit', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['neonkit'], "remove", 1)
    TriggerClientEvent('QBCore:Notify', source, Config.Lang['neoninstalled'], 'success')
end)
RegisterNetEvent('case-rgbcontroller:server:InstallXenons', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('xenons', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['xenons'], "remove", 1)
    TriggerClientEvent('QBCore:Notify', source, Config.Lang['xenoninstalled'], 'success')
end)
