local TweenService = game:GetService("TweenService")
local info = TweenInfo.new(5, Enum.EasingStyle.Exponential)
local play = true

function tween()
    if not play then
        return
    end

    play = false

	local TweenService = game:GetService("TweenService")
	local info = TweenInfo.new(1.7, Enum.EasingStyle.Linear) -- 5 is the time and there are a few more parameters to it, which you can view in the official docs
	local GUI = script.Parent.Parent.Parent.Main
	local TweenToPlay = TweenService:Create(GUI, info, { Position = UDim2.new(0, -1200, 0.154, 0) }) -- example to tween gui position.
	TweenToPlay:Play()
	TweenToPlay.Completed:Wait()
	GUI.Players.Visible = true 
	GUI.ServerFrame.Visible = false
	GUI.Management.Visible = false
	GUI.Logs.Visible = false
	GUI.Players.Visible = true
	wait(5)
	local info2 = TweenInfo.new(1.7, Enum.EasingStyle.Linear) -- 5 is the time and there are a few more parameters to it, which you can view in the official docs
	local guiInstance = script.Parent.Parent.Parent.Main
	local TweenToPlay2 = TweenService:Create(guiInstance, info2, { Position = UDim2.new(0.184, 0, 0.154, 0) }) -- example to tween gui position.
	TweenToPlay2:Play()
    TweenToPlay2.Completed:Wait()

    play = true

end

local Close = script.Parent
Close.MouseButton1Down:Connect(tween)
