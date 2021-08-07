local ReplicatedStorage = game:GetService("ReplicatedStorage")

local myEvent = game.ReplicatedStorage.ecoevent

local myButton = script.Parent
myButton.MouseButton1Down:Connect(function()
	myEvent:FireServer()
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

