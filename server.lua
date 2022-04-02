local whitelist={
    "steam:5555",
    "steam:110000113c5b36d",
}
AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)
    local player = source
    local identifiers = GetPlayerIdentifiers(player)
    local steam
    local allow=false
    deferrals.defer()

    -- mandatory wait!
    Wait(0)
    for _, v in pairs(identifiers) do
        if string.find(v, "steam") then
            steam = v
            break
        end
    end

    for _,data in pairs(whitelist) do
        if steam==data then
            allow=true
        end
    end
    deferrals.update(string.format("สวัสดีคุณ %s ครับ", name))

    if allow==false then 
        deferrals.done("คุณไม่มีไวรีส "..steam)
    else 
        deferrals.done()
    end
    -- mandatory wait!
    Wait(0)

end)