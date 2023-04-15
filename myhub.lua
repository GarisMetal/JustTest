loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/GarisMetal/JustTest/main/test3.lua"))()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Capture", "RJTheme3")

local Tab = Window:NewTab("capture")

local Section = Tab:NewSection("https://discord.gg/JNZf2SsAxX")

Section:NewLabel("by: samprds#8394")

Section:NewButton("Aim lock(Press E)", "???", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheBogt/CaptureHacker/main/AIM%20LOCK"))()("Clicked")
end)

Section:NewButton("Light ESP", "???", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheBogt/ThePis/main/LightEsp"))()("Clicked")
end)

Section:NewButton("ESP", "???", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheBogt/Capture-Hacker/main/Capture%20ESP"))()("Clicked")
end)
