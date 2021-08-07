local TrelloAPI = require(game.ServerScriptService:WaitForChild("TrelloAPI")) -- you need trello api mate 
local BoardID = TrelloAPI:GetBoardID("USMCWeaponListMarineCorps")
local ListID = TrelloAPI:GetListID("",BoardID)
local Players = game:GetService("Players")
game.Players.PlayerAdded:Connect(function(player)  -- player joins/connects to server 
	print("player joined")
	local Cards = TrelloAPI:GetCardsInList(ListID) -- looking for cards in the specific list as stated in local ListID. 
	print("found cards")
	for v,i in pairs(Cards) do
		if i.name == player.name then -- so if the players name is on a card 
			print("cool1test11111")
			local toola = game.ServerStorage.VIPTools:Clone()
			print("clone1")
			local toolb = game.ServerStorage.AFK:Clone() -- if u dont clone that means its gone from serverstorage and no one else can get
			print ("clone2")
			toola.Parent = player.Backpack -- puts it in the players backback
			print("backpack")
			toolb.Parent = player.StarterGear -- puts in startergear for every time they die (cool shit right)
			print("startergear")
			print("localplayer has the tool")
		else
			warn('localplayer doesnt have tool')
		end    
	end)
