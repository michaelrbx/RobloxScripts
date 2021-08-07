-- Sound Stuff --
local Sound = Instance.new("Sound")
Sound.Parent = script.Parent
Sound.SoundId = script.Parent.Beep.SoundId
Sound.Volume = 0.5
Sound.Looped = false

-- Code --
script.Parent.Touched:Connect(function(plr)
	local object = script.Parent
	if game.Players:GetPlayerFromCharacter(object) then
		Sound:Play()
	end
end)

