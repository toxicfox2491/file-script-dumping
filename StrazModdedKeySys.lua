--anti local script kick
local Players = game:GetService("Players")
local OldNameCall = nil

getgenv().SendNotifications = false

OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local NameCallMethod = getnamecallmethod()

    if tostring(string.lower(NameCallMethod)) == "kick" then
        if getgenv().SendNotifications == true then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "anti kick",
                Text = "kick Successfully prevented.",
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

print("if you see this message send it in the discord servers bug report channel")
print(" exit code : EXP x01t3r")

--modded key system

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
--anti afk
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
