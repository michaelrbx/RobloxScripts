local ReplicatedStorage = game:GetService("ReplicatedStorage")

local myEvent = game.ReplicatedStorage.businessevent
local errorevent = game.ReplicatedStorage.errorevent
local myButton = script.Parent
local ASSET_ID = 000000000000000
local mps = game:GetService("MarketplaceService")
local PlayerOwnsAsset = mps.PlayerOwnsAsset
myButton.MouseButton1Down:Connect(function(player)
local doesPlayerOwnAsset = pcall(PlayerOwnsAsset, mps, player, ASSET_ID)
	if doesPlayerOwnAsset then
		print("you have it wow")
		myEvent:FireServer()
	else 
		mps:PromptPurchase(player, 6818528916)
		errorevent:FireServer()
	end
end)

local StarterGUI = game:GetService("StarterGui")

local function makeScreenChange()
	game.Workspace.SCI.Collide.CanCollide = false
	script.Parent.Parent.Parent.Printing.Visible = false
	local endscreen = script.Parent.Parent.Parent.endscreen
	endscreen.Visible = true
	wait(5)	
	endscreen.Visible = false
	script.Parent.Parent.Parent.Printing.Visible = false
	script.Parent.Parent.Parent.StartP.Visible = true
	script.Parent.Parent.Parent.Select.Visible = false
end

myEvent.OnClientEvent:Connect(function()
	makeScreenChange()
end)

local function ErrorEventScreen()
	script.Parent.Parent.Parent.Select.Visible = false
	script.Parent.Parent.Parent.error.Visible = true
end

errorevent.OnClientEvent:Connect(function()
	ErrorEventScreen()
end)


-- needing fix
