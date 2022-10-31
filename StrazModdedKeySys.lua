--// Variables

local Players = game:GetService("Players")
local OldNameCall = nil

--// Global Variables

getgenv().SendNotifications = true -- Set to true if you want to get notified regularly.

--// Anti Kick Hook

OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local NameCallMethod = getnamecallmethod()

    if tostring(string.lower(NameCallMethod)) == "kick" then
        if getgenv().SendNotifications == true then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Exunys Developer",
                Text = "You almost got kicked! Successfully prevented.",
                Icon = "rbxassetid://6238540373",
                Duration = 3,
            })
        end
        
        return nil
    end
    
    return OldNameCall(Self, ...)
end)

if getgenv().SendNotifications == true then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "attempt anti kick",
        Text = "Anti-Kick script loaded",
        Icon = "rbxassetid://6238537240",
        Duration = 5,
    })
end
wait(0.4)

local key = "modzrule"

function writeifnil(filename)
    local bool,error = pcall(function() readfile(filename) end)
    if bool == false then
    writefile(filename,'')
    end
    end

    writeifnil("ModdedStrazkey.txt")    
    if readfile("ModdedStrazkey.txt") == key then
        repeat wait() until game:IsLoaded()
        if game.PlaceId == 10710676163 then
            if game:GetService("Players").LocalPlayer.Character then 
                loadstring(game:HttpGet(("https://raw.githubusercontent.com/UnknownStraz/main/main/main%20for"), true))()
            else
                wait(1)
                local args = {
                    [1] = {
                        [1] = "Respawn"
                    }
                }
                
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                wait(2)
                game.Lighting.Blur.Enabled = false
                game.Players.LocalPlayer.PlayerGui.IntroGui.Enabled = false
                game.Players.LocalPlayer.PlayerGui.ScreenGui.Enabled = true       
                wait(5) 
                loadstring(game:HttpGet(("https://raw.githubusercontent.com/UnknownStraz/main/main/main%20for"), true))()
            end
        elseif game.PlaceId == 8726743209 then 
            loadstring(game:HttpGet(("https://raw.githubusercontent.com/UnknownStraz/main/main/main%20for"), true))()
        end
         
       else
        getgenv().SecureMode = true     
        local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
        local Window = Rayfield:CreateWindow({
            Name = "Key System",
            LoadingTitle = "Key System",
            LoadingSubtitle = "By Straz [Modified by toxicfox2491]",
            ConfigurationSaving = {
                Enabled = false,
                FileName = "",
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "Sirius Hub",
                Subtitle = "Key System",
                Note = "Join the discord (discord.gg/sirius)",
                Key = "ABCDEF"
            }
            })
        local Tab = Window:CreateTab("Key")
        local Section = Tab:CreateSection("Key Resets if the key system gets changed")

        local Input = Tab:CreateInput({
            Name = "type in \"modzrule\" and press enter",
            PlaceholderText = "Enter Here",
            RemoveTextAfterFocusLost = true,
            Callback = function(Text)
                local userKey = Text
                if Text == key then 
                writefile("ModdedStrazkey.txt", key)
                Rayfield:Notify("Welcome!","Key Authorized",10010348543) -- (t,c,image)
                wait(2)
                Rayfield:Destroy()
                wait(1)
                repeat wait() until game:IsLoaded()
                    if game.PlaceId == 10710676163 then
                        if game:GetService("Players").LocalPlayer.Character then 
                            loadstring(game:HttpGet(("https://raw.githubusercontent.com/UnknownStraz/main/main/main%20for"), true))()
                        else
                            wait(1)
                            local args = {
                                [1] = {
                                    [1] = "Respawn"
                                }
                            }
                            
                            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                            wait(2)
                            game.Lighting.Blur.Enabled = false
                            game.Players.LocalPlayer.PlayerGui.IntroGui.Enabled = false
                            game.Players.LocalPlayer.PlayerGui.ScreenGui.Enabled = true       
                            wait(5) 
                            loadstring(game:HttpGet(("https://raw.githubusercontent.com/UnknownStraz/main/main/main%20for"), true))()
                        end
                    end
                end
                if Value ~= key then
                    Rayfield:Notify("Error!","Key Invalid, try again",10010348543) -- (t,c,image)
                    end
            end,
        })
    end
