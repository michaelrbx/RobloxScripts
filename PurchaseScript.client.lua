-- Author: Michael Williams (Star_Treks)
-- This script is for a SurfaceUI TextButton, once clicked shall prompt the player to purchase the gamepass, once purchased text shall say "Purchased".
-- Reselling is prohibited. 

local ID = 000000 -- gamepassid
local player = game.Players.LocalPlayer
local MPS = game:GetService("MarketplaceService")
local Click = script.Parent -- just the button

Click.MouseButton1Click:Connect(function() -- player clicked button 
	MPS:PromptGamePassPurchase(player,ID) -- purchases 
	Click.Parent.Text = "Purchased" -- has it
end)

