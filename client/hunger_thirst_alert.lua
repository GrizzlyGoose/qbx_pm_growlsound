
local function playStomachGrowl()
    SendNUIMessage({
        transactionType = 'playSound',
        transactionFile = Config.SoundPath,
        transactionVolume = Config.volume,
    })
end


RegisterNetEvent('pm_growlsound:playSound')
AddEventHandler('pm_growlsound:playSound', function()
    playStomachGrowl()
end)


CreateThread(function()
    while true do
        Wait(Config.CheckTime)
        if LocalPlayer.state.hunger < Config.HungerThreshold or LocalPlayer.state.thirst < Config.ThirstThreshold then
            playStomachGrowl()
            TriggerServerEvent('pm_growlsound:notifyNearbyPlayers')
        end
    end
end)
