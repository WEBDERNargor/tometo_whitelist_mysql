

AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)
    local player = source
    local steam
    local identifiers = GetPlayerIdentifiers(player)
    deferrals.defer()

    -- mandatory wait!
    

    deferrals.update(string.format("ตรวจสอบ Whitelist", name))
    Wait(5000)
    for _, v in pairs(identifiers) do
        if string.find(v, "steam") then
            steam = v
            break
        end
    end

    -- mandatory wait!
    Wait(0)


       

        MySQL.Async.fetchAll("SELECT * FROM  allowlist WHERE identifier=@a", { ["@a"]=steam }, function(result)
           if #result>=1 then 
            deferrals.done()
           else
            deferrals.done(steam.."ไม่มีสิทธิเข้า")
           end
          end)
       
  
end)