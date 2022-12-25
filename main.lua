    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("SPTS:Origins utility script", "Serpent")
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    --button example  
    --MainSection:NewButton("name", "description", function()
    -- [code here]
    --end)
    MainSection:NewButton("Keyless straz hub", "loads straz hub without key sys", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/UnknownStraz/main/main/main%20for"), true))()
    end)

    MainSection:NewButton("Infinite Yield", "loads the inf yield script", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end)

    MainSection:NewKeybind("Toggle UI", "UI toggle key", Enum.KeyCode.E, function()
	Library:ToggleUI()
    end)

    MainSection:NewLabel('when loading straz hub you have to drag this GUI\n somehwere else first')
    MainSection:NewLabel("Undetectable, 100% safe + anti afk")
    MainSection:NewLabel("auto updates every week")

  --anti afk loader
  local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       end)

    --ESP Section
    local ESP = Window:NewTab("ESP")
    local ESPSection = ESP:NewSection("ESP")

    ESPSection:NewButton("ESP", "loads the unnamed ESP script", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
    end)

    ESPSection:NewLabel('ESP toggles are F3 and F4')

    --Other
    local Other = Window:NewTab("Other")
    local OtherSection = Other:NewSection("Other")


    OtherSection:NewButton("bypassed fly", "nicuse's fly script", function()
       
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/BypassedFly.lua"))() 
        Fly(true)
    end)

    OtherSection:NewToggle("No Render", "disables 3D render", function(state)
    if state then
	if cansetfpscap then
		setfpscap(15)
	end
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    else
	if cansetfpscap then
		setfpscap(60)
	end
        game:GetService("RunService"):Set3dRenderingEnabled(true)
      end
    end)

    OtherSection:NewButton("Night Time", "turns the ingame sky to night", function()
        if state then
        lighting = game:GetService("Lighting")
        if lighting.TimeOfDay == "00:00:00" then
        lighting.TimeOfDay = 11
        end)

    OtherSection:NewKeybind("quick reset", "quickly reset character", Enum.KeyCode.PageUp, function()
    game.Players.LocalPlayer.Character.Head:Destroy()
    end)
    --notes
    local Notes = Window:NewTab("Notes")
    local NotesSection = Notes:NewSection("Notes")

    NotesSection:NewButton("discord", "discord", function()
    setclipboard("https://discord.gg/vtWvcXsymb")
    game.StarterGui:SetCore("SendNotification", {Title = "Discord", Text = "Discord copied to clipboard"})
    end)
 --loadstring(game:HttpGet(('https://raw.githubusercontent.com/toxicfox2491/file-script-dumping/main/main.lua'),true))()
print("Stat.save Error Report to #📝origin-bug-reports immediately!!! your stats could be at risk otherwise")
