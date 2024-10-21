local coordsList = {}

--- VECTOR 3

RegisterCommand('addcoord3', function()
    TriggerServerEvent('nrp-coords3:requestLastIndex')
end, false)

RegisterNetEvent('nrp-coords3:setLastIndex')
AddEventHandler('nrp-coords3:setLastIndex', function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    coordsList["coords"] = vector3(coords.x, coords.y, coords.z)
end)

RegisterCommand('closecoord3', function()
    TriggerServerEvent('nrp-coordssave3:saveCoords', coordsList)
end, false)

--- VECTOR 2

RegisterCommand('addcoord2', function()
    TriggerServerEvent('nrp-coords2:requestLastIndex')
end, false)


RegisterNetEvent('nrp-coords2:setLastIndex')
AddEventHandler('nrp-coords2:setLastIndex', function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    coordsList["coords"] = vector2(coords.x, coords.y)
end)

RegisterCommand('closecoord2', function()
    TriggerServerEvent('nrp-coordssave2:saveCoords', coordsList)
end, false)




