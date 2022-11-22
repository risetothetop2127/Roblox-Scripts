local dataModule = {}

local dataStoreService = game:GetService("DataStoreService")
local runService = game:GetService("RunService")

local dataStoreType = "normal"
if runService:IsStudio() then
    dataStoreType = "test"
end

dataModule.dataStores = {
    ["leaderstats"] = {
        ["token"] = {
            ["storage"] = dataStoreService:GetDataStore("Token:"..dataStoreService),
            ["key"] = ":Token",
            ["use"] = {
                ["userId"] = true, -- best option if you do not want players to lose data
                ["username"] = false, -- not the best option as the use may change their username
            }
        },
        ["xp"] = {
            ["storage"] = dataStoreService:GetDataStore("XP:"..dataStoreService),
            ["key"] = ":XP",
            ["use"] = {
                ["userId"] = true, -- best option if you do not want players to lose data
                ["username"] = false, -- not the best option as the use may change their username
            }
        },
        ["rank"] = {
            ["storage"] = dataStoreService:GetDataStore("Rank:"..dataStoreService),
            ["key"] = ":Rank",
            ["use"] = {
                ["userId"] = true, -- best option if you do not want players to lose data
                ["username"] = false, -- not the best option as the use may change their username
            }
        }
    },
}

return dataModule