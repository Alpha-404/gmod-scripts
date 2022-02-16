if SERVER then
    hook.Add("PlayerSay", "british", function(ply, text)
        strText = string.lower(text)
        if (strText == "british") then
            print("can i inspect your bri'ish")
            ply:Give("weapon_knifegun", false)
            ply:ChatPrint("You have recived a gun that throws knives")
            return true
        end
    end)
end