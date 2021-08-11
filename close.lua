local Close = script.Parent

Close.MouseButton1Click:Connect(function()
local TweenService = game:GetService("TweenService")
local info = TweenInfo.new(1.7, Enum.EasingStyle.Linear) -- 5 is the time and there are a few more parameters to it, which you can view in the official docs
local guiInstance = script.Parent.Parent.Parent.Main
local TweenToPlay = TweenService:Create(guiInstance, info, { Position = UDim2.new(0, -1200, 0.154, 0) }) -- example to tween gui position.
	TweenToPlay:Play()
end)
