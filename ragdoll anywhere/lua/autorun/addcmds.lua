if !SERVER then return end

local rag_exist = false

concommand.Add("ragdoll", function( ply, cmd, args )
    if rag_exist == true then
        rag_exist = false
        if ply and ply:GetRagdollEntity():IsValid() then
            ply:GetRagdollEntity():Remove()
        else
            rag_exist = true
            ply:CreateRagdoll()
        end
    else
        rag_exist = true
        ply:CreateRagdoll()
    end
end)