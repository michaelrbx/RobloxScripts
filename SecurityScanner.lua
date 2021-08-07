-- Variables

local HubID = "814112160564379709" -- done for u 
local Product = "Security Scanner" -- product name
local MainModel = script.Parent.Parent.Parent -- place here
local myPod = require(4460787902)

-- Services

local http = game:GetService("HttpService")
local myPod = require(4460787902)

-- Whitelist Checker

function httpe()
	local s = pcall(function()
		game:GetService('HttpService'):GetAsync('http://www.google.com/') 
	end)
	return s
end

if httpe() == false then
	MainModel:Destroy()
end

local PlaceId = game.PlaceId
local PlaceInfo = game:GetService("MarketplaceService"):GetProductInfo(PlaceId)
local gameOwner = nil
if game.CreatorType == Enum.CreatorType.Group then
	gameOwner = game:GetService("GroupService"):GetGroupInfoAsync(PlaceInfo.Creator.CreatorTargetId).Owner.Id
else
	gameOwner = game.CreatorId
end

myPod:GetAsync(HubID, Product, gameOwner, function(Success, Value)
	if Success == false then
		MainModel:Destroy()
	end
end)

	-- Sound Stuff --
local Sound = Instance.new("Sound")
Sound.Parent = script.Parent
Sound.SoundId = script.Parent.Beep.SoundId
Sound.Volume = 0.3
Sound.Looped = false

-- Code --
script.Parent.Touched:Connect(function(plr)
	wait(0.5)
		Sound:Play()
end)
