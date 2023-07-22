Citizen.CreateThread(function()
    while true do 
        local player = GetPlayerPed(-1)
        Citizen.Wait(5*1000)

        SetDiscordAppId(appId)
        
        --Mayank is on Vinewood
        SetRichPresence( GetPlayerName(source) .. " is on " .. GetStreetNameFromHashKey( GetStreetNameAtCoord(table.unpack)( GetEntityCoords(player) ) ) )

        SetDiscordRichPresenceAsset("big")
        SetDiscordRichPresenceAssetText(GetPlayerName(source))

        SetDiscordRichPresenceAsset("small")
        SetDiscordRichPresenceAssetTextSmallText("Health: "..(GetEntityHealth(player) -100 ) )

    end
end)