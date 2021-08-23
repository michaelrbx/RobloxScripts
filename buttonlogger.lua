game.ReplicatedStorage.InteractionEvent.OnServerEvent:Connect(function(player)
local url = "" -- webhook
        local http = game:GetService("HttpService")
        
        local ddata = {
              embeds = {
                    {
                        author = "Ocean Ferries",
                        title = "Boat Interaction",
                        type = "rich",
                        description = player.."has activated a button on the boat",
                    }
                }
            }
                        
        local newdata = http:JSONEncode(ddata)
        http:PostAsync(url,newdata)
