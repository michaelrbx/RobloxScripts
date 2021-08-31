-- an unchecked script written in github xd

local TrelloAPI = require(game.ServerScriptService:WaitForChild("TrelloAPI")) -- you need trello api mate 
local BoardID = TrelloAPI:GetBoardID("") // ban board
local Banned = TrelloAPI:GetListID("",BoardID)
local Players = game:GetService("Players")
function checkBanned(Player)
    local isBanned = Banned:GetCardByName(tostring(Player.Name))
    if isBanned then
        local reason = isBanned:GetDesc()
        if reason == nil then
        Player:Kick("You have been banned from . Reason: N/A")
        else
        Player:Kick("You have been banned from this game. Reason:"..reason)
        end
    end
end

game.Players.PlayerAdded:Connect(function(plr)  -- player joins/connects to server 
checkBanned(plr)
