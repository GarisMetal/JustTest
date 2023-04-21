
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/matas3535/PoopLibrary/main/Library.lua"))() -- Could Also Save It In Your Workspace And Do loadfile("Library.lua")()


local Window = Library:New({Name = "Capture Hack", Accent = Color3.fromRGB(255, 194, 41)})

local Aimbot = Window:Page({Name = "Main"})

local Aimbot_Main = Aimbot:Section({Name = "First Chapter", Side = "Left"})
local Aimbot_Extra = Aimbot:Section({Name = "Second Chapter", Side = "Right"})

local function aimbot()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheBogt/CaptureHacker/main/AIM%20LOCK"))()("Clicked")
end)



Aimbot_Main:Button({Name = "Aimbot", Callback = function() aimbot() end})



Aimbot_Extra:Keybind({Name = "Readjustment", Default = Enum.UserInputType.MouseButton2, KeybindName = "Readjustment", Mode = "Hold", Pointer = "AimbotExtra_Readjustment"})
Aimbot_Extra:Dropdown({Name = "Aimbot-Type", Options = {"Relative", "Absolute", "Camera", "Camera Relative"}, Default = "Relative", Pointer = "AimbotExtra_Type"})
Aimbot_Extra:Colorpicker({Name = "Locking-Color", Info = "Aimbot Locked Color", Alpha = 0.5, Default = Color3.fromRGB(255, 0, 0), Pointer = "AimbotExtra_Color"})
local VisualsEnemies_BoxEsp = Visuals_Enemies:Toggle({Name = "Box-Esp", Default = false, Pointer = "VisualsEnemies_BoxEsp"})
VisualsEnemies_BoxEsp:Colorpicker({Info = "ESP-Box Color", Alpha = 0.75, Default = Color3.fromRGB(200, 200, 200), pointer = "VisualsEnemies_BoxColor"})
VisualsEnemies_BoxEsp:Colorpicker({Info = "ESP-Box Visible Color", Alpha = 0.25, Default = Color3.fromRGB(200, 100, 100), pointer = "VisualsEnemies_BoxVisibleColor"})

Visuals_Self:Toggle({Name = "Enabled", Default = true, Pointer = "VisualsSelf_Enabled"})

Window:Initialize()
