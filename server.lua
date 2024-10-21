local function getLastIndexFromFile()
    local configFile = LoadResourceFile(GetCurrentResourceName(), "config2.lua")
    if not configFile then
        return 0
    end

    local lastIndex = 0
    for loc in string.gmatch(configFile, "loc(%d+)") do
        local num = tonumber(loc)
        if num and num > lastIndex then
            lastIndex = num
        end
    end

    return lastIndex
end

--- COORD COMMAND
RegisterNetEvent('nrp-coordssave2:saveCoords')
AddEventHandler('nrp-coordssave2:saveCoords', function(coordsList)
    local configFile = LoadResourceFile(GetCurrentResourceName(), "config2.lua")

    if not configFile then
        configFile = "Config.Coords2 = {\n"
    else
        configFile = configFile:gsub("%}\n$", "")
    end

    for loc, coords in pairs(coordsList) do
        configFile = configFile .. string.format("{ %s = vector2(%.4f, %.4f) },\n", loc, coords.x, coords.y, coords.z)
    end

    configFile = configFile .. "}\n"

    SaveResourceFile(GetCurrentResourceName(), "config2.lua", configFile, -1)
end)

RegisterNetEvent('nrp-coords2:requestLastIndex')
AddEventHandler('nrp-coords2:requestLastIndex', function()
    local source = source
    local lastIndex = getLastIndexFromFile()
    TriggerClientEvent('nrp-coords2:setLastIndex', source, lastIndex)
end)

RegisterNetEvent('nrp-coordssave3:saveCoords')
AddEventHandler('nrp-coordssave3:saveCoords', function(coordsList)
    local configFile = LoadResourceFile(GetCurrentResourceName(), "config3.lua")

    if not configFile then
        configFile = "Config.Coords3 = {\n"
    else
        configFile = configFile:gsub("%}\n$", "")
    end

    for loc, coords in pairs(coordsList) do
        configFile = configFile .. string.format("{ %s = vector3(%.4f, %.4f, %.4f) },\n", loc, coords.x, coords.y, coords.z)
    end

    configFile = configFile .. "}\n"

    SaveResourceFile(GetCurrentResourceName(), "config3.lua", configFile, -1)
end)

RegisterNetEvent('nrp-coords3:requestLastIndex')
AddEventHandler('nrp-coords3:requestLastIndex', function()
    local source = source
    local lastIndex = getLastIndexFromFile()
    TriggerClientEvent('nrp-coords3:setLastIndex', source, lastIndex)
end)


