local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Snow Lover BABFT",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Loading Snow Lover",
    LoadingSubtitle = "by Snow Lover",
    Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "SnowLoverBABFT"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})

local Gold = Window:CreateTab("Gold", "grape") -- Title, Image

local Basic = Gold:CreateSection("Basic")

local CompleteBasic = Gold:CreateButton({
    Name = "Complete",
    Callback = function()
        Rayfield:Notify({
            Title = "Started",
            Content = "SimpleComplete has been started",
            Duration = 4,
            Image = "bell-ring",
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Snow-Lova/Scripthub/refs/heads/main/BuildABoat/CompleteSimple.lua"))()
        Rayfield:Notify({
            Title = "Completed",
            Content = "SimpleComplete has been finished",
            Duration = 4,
            Image = "bell-plus",
        })
    end,
})

local AutoCompleteBasic = Gold:CreateToggle({
    Name = "Auto Complete",
    CurrentValue = false,
    Flag = "AutoCompleteBasic",
    Callback = function(Value)
        if Value then
            local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

            while not humanoidRootPart do
                character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
                humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                task.wait(0.1) -- Prevents excessive looping
            end
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Snow-Lova/Scripthub/refs/heads/main/BuildABoat/CompleteSimple.lua"))()
            Rayfield:Notify({
            Title = "Completion Notice",
            Content = "Completed Once",
            Duration = 4,
            Image = "bell-plus",
            })
            task.wait(10)
        end
    end,
})

local BasicAmount = Gold:CreateInput({
    Name = "Repeat Complete",
    CurrentValue = "",
    PlaceholderText = "Enter number of times",
    RemoveTextAfterFocusLost = false,
    Flag = "Input1",
    Callback = function(Text)
       local repeatCount = tonumber(Text) -- Convert input to number
 
       if not repeatCount then
          -- Notify user to input a valid number
          Rayfield:Notify({
             Title = "Error",
             Content = "Please enter a valid number!",
             Duration = 4,
             Image = "ellipsis",
          })
          return -- Stop execution if input is invalid
       end
 
 
       -- Run the script the specified number of times
       for i = 1, repeatCount do
            local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
  
            while not humanoidRootPart do
                character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
                humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                task.wait(0.1) -- Prevents excessive looping
            end
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Snow-Lova/Scripthub/refs/heads/main/BuildABoat/CompleteSimple.lua"))()
            task.wait(10)
       end
    end,
})
 
local Basic = Gold:CreateSection("Advanced")

local CompleteAdv = Gold:CreateButton({
    Name = "Complete",
    Callback = function()
        Rayfield:Notify({
            Title = "Started",
            Content = "AdvComplete has been started",
            Duration = 4,
            Image = "bell-ring",
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Snow-Lova/Scripthub/refs/heads/main/BuildABoat/CompleteAdvanced.lua"))()
        Rayfield:Notify({
            Title = "Completed",
            Content = "AdvComplete has been finished",
            Duration = 4,
            Image = "bell-plus",
        })
    end,
})

local AutoCompleteAdv = Gold:CreateToggle({
    Name = "Auto Complete",
    CurrentValue = false,
    Flag = "AutoCompleteAdv",
    Callback = function(Value)
        if Value then
            local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

            while not humanoidRootPart do
                character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
                humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                task.wait(0.1) -- Prevents excessive looping
            end
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Snow-Lova/Scripthub/refs/heads/main/BuildABoat/CompleteAdvanced.lua"))()
            Rayfield:Notify({
            Title = "Completion Notice",
            Content = "Completed Once",
            Duration = 4,
            Image = "bell-plus",
            })
        end
    end,
})

local AdvCOAmount = Gold:CreateInput({
    Name = "Repeat Complete",
    CurrentValue = "",
    PlaceholderText = "Enter number of times",
    RemoveTextAfterFocusLost = false,
    Flag = "AdvCoAmount",
    Callback = function(Text)
       local repeatCount = tonumber(Text) -- Convert input to number
 
       if not repeatCount then
          -- Notify user to input a valid number
          Rayfield:Notify({
             Title = "Error",
             Content = "Please enter a valid number!",
             Duration = 4,
             Image = "ellipsis",
          })
          return -- Stop execution if input is invalid
       end
 
 
       -- Run the script the specified number of times
       for i = 1, repeatCount do
            local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
  
            while not humanoidRootPart do
                character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
                humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                task.wait(0.1) -- Prevents excessive looping
            end
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Snow-Lova/Scripthub/refs/heads/main/BuildABoat/CompleteAdvanced.lua"))()
        end
    end,
})

task.wait(0.25)

Rayfield:LoadConfiguration()