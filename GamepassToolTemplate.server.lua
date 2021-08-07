local MarketPlaceService = game:GetService("MarketplaceService")
local players = game:GetService("Players")
local Tool = game.ServerStorage.Tool -- tool loc (like serverstorage or whatever)
local ToolID = 000000 -- gamepass id

	players.PlayerAdded:Connect(function(player)
	wait(1)
	if MarketPlaceService:UserOwnsGamePassAsync(player.UserID,ToolID) then
		print(player.Name .. " has the pass - access granted by big boy michael")
		Tool.Clone().Parent = player.Backpack
		Tool.Clone().Parent = player.StarterGear
	end
end)

