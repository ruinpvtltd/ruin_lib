-- Framework Functions

-- Get Player from Framework
function GetUser(source)
    if Config.Framework == 'ESX' or Config.Framework == 'esx' then
        local ESX = exports["es_extended"]:getSharedObject()
        local xPlayer = ESX.GetPlayerFromId(source)
        return xPlayer
    elseif Config.Framework == 'QB' or Config.Framework == 'qb' then
        local QBCore = exports['qb-core']:GetCoreObject()
        local xPlayer = QBCore.Functions.GetPlayer(source)
        return(xPlayer)
    else
        print('^2[ruin_lib]: ^1The Framework is not supported.')
    end
end

-- Get PlayerData from Framework
function GetPlayerData(source)
    if Config.Framework == 'ESX' or Config.Framework == 'esx' then
        PlayerData = ESX.GetPlayerData()
        return(PlayerData)
    elseif Config.Framework == 'QB' or Config.Framework == 'qb' then
        PlayerData = QBCore.Functions.GetPlayerData()
        return(PlayerData)
    else
        print('^2[ruin_lib]: ^1The Framework is not supported.')
    end
end

-- Add Item to Player
function AddItem(source, item, amount)
    local xPlayer = GetUser(source)
    if Config.Framework == 'ESX' or Config.Framework == 'esx' then
        if xPlayer.canCarryItem(item, amount) then
            xPlayer.addInventoryItem(item, amount)
        end
    elseif Config.Framework == 'QB' or Config.Framework == 'qb' then
        xPlayer.Functions.AddItem(item, amount)
    else
        print('^2[ruin_lib]: ^1The Framework is not supported.')
    end
end

-- Remove Item from Player
function RemoveItem(source, item, amount)
    local xPlayer = GetUser(source)
    if Config.Framework == 'ESX' or Config.Framework == 'esx' then
        xPlayer.removeInventoryItem(item, amount)
    elseif Config.Framework == 'QB' or Config.Framework == 'qb' then
        xPlayer.Functions.RemoveItem(item, amount)
    else
        print('^2[ruin_lib]: ^1The Framework is not supported.')
    end
end

-- Add Money to Player
function AddMoney(source, account, amount)
    local xPlayer = GetUser(source)
    if Config.Framework == 'ESX' or Config.Framework == 'esx' then
        xPlayer.addAccountMoney(account, amount)
    elseif Config.Framework == 'QB' or Config.Framework == 'qb' then
        xPlayer.Functions.AddMoney(account, amount)
    else
        print('^2[ruin_lib]: ^1The Framework is not supported.')
    end
end

-- Remove Money from Player
function RemoveMoney(source, account, amount)
    local xPlayer = GetUser(source)
    if Config.Framework == 'ESX' or Config.Framework == 'esx' then
        xPlayer.removeAccountMoney(account, amount)
    elseif Config.Framework == 'QB' or Config.Framework == 'qb' then
        xPlayer.Functions.RemoveMoney(account, amount)
    else
        print('^2[ruin_lib]: ^1The Framework is not supported.')
    end
end


-- Remove Cash from Player
function RemoveCash(source, amount)
    local xPlayer = GetUser(source)
    if Config.Framework == 'ESX' or Config.Framework == 'esx' then
        xPlayer.removeMoney(amount)
    elseif Config.Framework == 'QB' or Config.Framework == 'qb' then
        xPlayer.Functions.RemoveMoney('cash', amount)
    else
        print('^2[ruin_lib]: ^1The Framework is not supported.')
    end
end
-- Add Cash from Player
function AddCash(source, amount)
    local xPlayer = GetUser(source)
    if Config.Framework == 'ESX' or Config.Framework == 'esx' then
        xPlayer.addMoney(amount)
    elseif Config.Framework == 'QB' or Config.Framework == 'qb' then
        xPlayer.Functions.addMoney('cash', amount)
    else
        print('^2[ruin_lib]: ^1The Framework is not supported.')
    end
end

---[ Get Functions ]------
function GetJob(source)
    local xPlayer = GetUser(source)
    if Config.Framework == 'ESX' or Config.Framework == 'esx' then
        return xPlayer.getJob().name
    elseif Config.Framework == 'QB' or Config.Framework == 'qb' then
       return xPlayer.PlayerData.job.name
    else
        print('^2[ruin_lib]: ^1The Framework is not supported.')
    end
end

function GetGroup(source)
    local xPlayer = GetUser(source)
    if Config.Framework == 'ESX' or Config.Framework == 'esx' then
        return xPlayer.getGroup()
    elseif Config.Framework == 'QB' or Config.Framework == 'qb' then
       -- xPlayer.Functions.RemoveMoney(account, amount)
    else
        print('^2[ruin_lib]: ^1The Framework is not supported.')
    end
end

function GetMoney(source)
    local xPlayer = GetUser(source)
    if Config.Framework == 'ESX' or Config.Framework == 'esx' then
        return xPlayer.getMoney()
    elseif Config.Framework == 'QB' or Config.Framework == 'qb' then
        xPlayer.Functions.GetMoney()
    else
        print('^2[ruin_lib]: ^1The Framework is not supported.')
    end
end


function GetAccountMoney(source, account)
    local xPlayer = GetUser(source)
    if Config.Framework == 'ESX' or Config.Framework == 'esx' then
        return xPlayer.getAccount(account).money
    elseif Config.Framework == 'QB' or Config.Framework == 'qb' then
        xPlayer.Functions.GetMoney(account)
    else
        print('^2[ruin_lib]: ^1The Framework is not supported.')
    end
end




-- Don't Edit This
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    print('^2[ruin_lib]: ^4Resource Started!')
    if Config.Framework == 'ESX' or Config.Framework == 'esx' then
        print('^2[ruin_lib]: ^4Framework has been set to ^2ESX')
    elseif Config.Framework == 'QB' or Config.Framework == 'qb' then
        print('^2[ruin_lib]: ^4Framework has been set to ^1QBCore')
    else
        print('^2[ruin_lib]: ^1The Framework is not supported.')
    end
    
end)
  

