game.Players.PlayerAdded:Connect(function(player)
    local datastore = require(script.Parent.Parent.modules.datastores).dataStores

    local leaderstats = Instance.new("Configuration", player) -- must be parented to the player
    leaderstats.Name = "leaderstats" -- changing this will break the leaderstats

    --[[
        Now we create the stats

        there are 3 types of vaules that can be used to create a leaderstats
        ○ StringValue
        ○ NumberValue
        ○ IntValue

        you can create as many values as you wish but roblox will only show the first 3
    ]]

    -- Examples of non-saving stats
    local money = Instance.new("NumberValue", leaderstats)
    money.Name = "Money"
    money.Valuealue = 100 -- Starting money

    local credits = Instance.new("StringValue", leaderstats)
    credits.Name = "Credits"
    credits.Value = "None" -- Starting rank

    local level = Instance.new("IntValue")
    level.Name = "Level"
    level.Value = 0 -- Starting level

    -- Examples of saving stats
    local token = Instance.new("NumberValue", leaderstats)
    token.Name = "Token"

    local xp = Instance.new("IntValue", leaderstats)
    xp.Name = "xp"

    local rank = Instance.new("NumberValue", leaderstats)
    rank.Name = "Rank"


    local extra = player.UserId
    if datastore.leaderstats.token.storage.use.userId == false then
        extra = player.Name
    end
    token.Value = datastore.leaderstats.token.storage:GetAsync(extra..datastore.leaderstats.token.storage.key)

    local extra2 = player.UserId
    if datastore.leaderstats.xp.storage.use.userId == false then
        extra = player.Name
    end
    xp.Value = datastore.leaderstats.rank.storage:GetAsync(extra2..datastore.leaderstats.xp.storage.key)
    
    local extra3 = player.UserId
    if datastore.leaderstats.rank.storage.use.userId == false then
        extra = player.Name
    end
    rank.Value = datastore.leaderstats.rank.storage:GetAsync(extra..datastore.leaderstats.rank.storage.key)
end)