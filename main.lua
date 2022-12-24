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

    MainSection:NewButton("CMD-X", "loads CMD-X", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
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

    --Player Section
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("Walk Speed", "set walk speed", 1000, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    PlayerSection:NewSlider("Jump Power", "set jump power", 1000, 50, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    PlayerSection:NewButton("ESP", "loads the unnamed ESP script", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
    end)

    PlayerSection:NewTextBox("teleport to player", "attempts to teleport to player", function(txt)
        local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
        local p2 = txt
        local pos = p1.CFrame
       
        p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame
       
        wait(5)
       
        p1.CFrame = pos
        
    end)       

    --Other
    local Other = Window:NewTab("Other")
    local OtherSection = Other:NewSection("Other")

    OtherSection:NewButton("AutoClicker", "Auto Clicker Script", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/JustEzpi/ROBLOX-Scripts/main/ROBLOX_AutoClicker"))()
    end)

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

    --notes
    local Notes = Window:NewTab("Notes")
    local NotesSection = Notes:NewSection("Notes")

    NotesSection:NewButton("discord", "discord", function()
    setclipboard("https://discord.gg/vtWvcXsymb")
    game.StarterGui:SetCore("SendNotification", {Title = "Discord", Text = "Discord copied to clipboard"})
    end)
 --loadstring(game:HttpGet(('https://raw.githubusercontent.com/toxicfox2491/file-script-dumping/main/main.lua'),true))()
print("Stat.save Error Report to #📝origin-bug-reports immediately!!! your stats could be at risk otherwise")
