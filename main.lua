local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/toxicfox2491/file-script-dumping/main/source/source.lua"))()
local Window = Library.CreateLib("a catboys Util script", "Sentinel")
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    --button example  
    --MainSection:NewButton("name", "description", function()
    -- [code here]
    --end)


    MainSection:NewButton("straz hub keyless", "loads straz hub without key sys", function()
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

    --LOCAL PLAYER
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
 print("Stat.save Error Report to #📝origin-bug-reports immediately!!! your stats could be at risk otherwise")
