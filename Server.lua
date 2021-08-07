local StarterGUI = game:GetService("StarterGui")
local startbtn = StarterGUI.SurfaceGui.StartP.ImageButton

local Players = game:GetService("Players")

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local myEvent = ReplicatedStorage.ecoevent

local mySpecialTool = ReplicatedStorage:WaitForChild("Eco Boarding Pass")

myEvent.OnServerEvent:Connect(function(player)
	myEvent:FireAllClients()
	local newTool = mySpecialTool:Clone()
	newTool.Parent = player.Backpack  
	game.Workspace.SCI.Collide.CanCollide = false
end)


local BusinessEvent = ReplicatedStorage.businessevent

local BusinessTool = ReplicatedStorage:WaitForChild("Business Boarding Pass")

BusinessEvent.OnServerEvent:Connect(function(player1)
	BusinessEvent:FireAllClients()
	local newTool1 = BusinessTool:Clone()
	newTool1.Parent = player1.Backpack  
	game.Workspace.SCI.Collide.CanCollide = false
end)

local ErrorEvent = ReplicatedStorage.errorevent

ErrorEvent.OnServerEvent:Connect(function()
	ErrorEvent:FireAllClients()
	game.Workspace.SCI.Collide.CanCollide = false
end)
