-- Services --
local Teams = game:GetService("Teams")

-- Teams-- 
local team1 = Teams.NAME 

-- Other-- 
plr.CharacterAppearanceLoaded:Connect(function(char) -- Wait until the charcter's clothing has been loaded
local shirt = char:FindFirstChild("Shirt") or Instance.new("Shirt", char) -- Use the existing shirt OR create a shirt if it does not exist
local pants = char:FindFirstChild("Pants") or Instance.new("Pants", char) -- Use the existing pants OR create pants if they do not exist
		
-- Function-- 

local function playerAdded(team1)    
	end	
end

-- Players Added -- 

teamname.PlayerAdded:Connect(function(player)
	playerAdded(teamname)
end)

teamname.PlayerAdded:Connect(function(player)
	playerAdded(teamname)
end)


-- not being used/ didnt get finished - mike -- 
