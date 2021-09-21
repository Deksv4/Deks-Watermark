local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")


RegisterServerEvent("GetID:server")
AddEventHandler("GetID:server", function()
  local source = source
  local user_id = vRP.getUserId({source})
  
  if user_id ~= nil then
    TriggerClientEvent("GetID:client", source, user_id)
  else
    TriggerClientEvent("GetID:client", source, "Ukendt")
  end
end)
