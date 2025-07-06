local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Zeinon Hub | Ink-Game (BETA)",
   Icon = 1049060234, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading Hub...",
   LoadingSubtitle = "Made by Zeinon ★",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = Zone, -- Create a custom folder for your hub/game
      FileName = "Secret Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "https://discord.gg/9JMzg2rp", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
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

local Info = Window:CreateTab("Info", "badge-info")
local Main = Window:CreateTab("Main", "house")

local Paragraph = Info:CreateParagraph({Title = "★ Zeinon ", Content = "Main Owner Hub"})
local Paragraph = Info:CreateParagraph({Title = "Join Our discord!", Content = "Join our discord to have some suggestions and features https://discord.gg/9JMzg2rp"})

local Section = Main:CreateSection("LocalPlayer")

local Slider = Tab:CreateSlider({
   Name = "WalkSpeed Changer",
   Range = {1, 150}, -- Min 1, Max 150
   Increment = 1, -- Change per tick
   Suffix = "Speed",
   CurrentValue = 16, -- Default Roblox WalkSpeed
   Flag = "WalkSpeedSlider",
   Callback = function(Value)
       local player = game.Players.LocalPlayer
       local char = player.Character or player.CharacterAdded:Wait()
       local hum = char:FindFirstChildOfClass("Humanoid")
       if hum then
           hum.WalkSpeed = Value
       end
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Jump Height Changer",
   Range = {10, 200}, -- 50 is default
   Increment = 5,
   Suffix = "Power",
   CurrentValue = 50,
   Flag = "JumpPowerSlider",
   Callback = function(Value)
       local player = game.Players.LocalPlayer
       local char = player.Character or player.CharacterAdded:Wait()
       local hum = char:FindFirstChildOfClass("Humanoid")
       if hum then
           hum.JumpPower = Value
       end
   end,
})



