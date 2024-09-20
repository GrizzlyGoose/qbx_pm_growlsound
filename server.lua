
RegisterServerEvent('pm_growlsound:notifyNearbyPlayers')
AddEventHandler('pm_growlsound:notifyNearbyPlayers', function()
    local sourcePlayer = source
    local coords = GetEntityCoords(GetPlayerPed(sourcePlayer))

    local nearbyPlayers = lib.getNearbyPlayers(coords, Config.SoundDistance)
    for _, v in pairs(nearbyPlayers) do
        TriggerClientEvent('pm_growlsound:playSound', v.id)
    end

end)
