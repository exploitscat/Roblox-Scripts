local player = game.Players.LocalPlayer
local library = loadstring(game:HttpGet("https://pastebin.com/raw/JsdM2jiP",true))()
library.options.underlinecolor = "rainbow"



local Hub = library:CreateWindow("Cat Hub")
Hub:Section("Hubs/Scripts:")

local Saza = Hub:Button("Saza Hub", function()
_G.Color = Color3.fromRGB(255, 255, 255)
loadstring(game:HttpGet"https://rawscripts.net/raw/SAZA-HUB_496")()
end)

local Arsenal = Hub:Button("Arsenal Script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fusiongreg/BoltsHubV5/main/Main", true))()
end)

local Flee = Hub:Button("Flee the Facility", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Drifty96/ftfgui/main/ftfgui", true))()
end)

local Infinite = Hub:Button("Infinite Yield", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local ESP =Hub:Button("Player ESP", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/exploitscat/Roblox-Scripts/main/Unnamed-Esp.lua'))()
end)


Hub:Section("--------------")
----------------------------------------------------------------------------------------------------
--Credits
local Credits = library:CreateWindow("Credits")
Credits:Section("Credits:")
Credits:Section("Made By U8K50")
Credits:Section("Discord:")
local discord = Credits:Button("discord.gg/exploitcat", function()
setclipboard('https://www.discord.gg/exploitcat
end)
Credits:Section("---------------")
Credits:Section("All Scripts Used Here")
Credits:Section("have Credits in them.")
Credits:Section("If you have a")
Credits:Section("Problem, Please DM Us")

-- Toggable GUI Key
Hub:Bind("Toggle GUI Key",
{flag = "Toggle", owo = true},
function()
library.toggled = not library.toggled;
for i, data in next, library.queue do
local pos = (library.toggled and data.p or UDim2.new(-1, 0, -0.5,0))
data.w:TweenPosition(pos, (library.toggled and 'Out' or 'In'), 'Quad', 0.15, true)
wait();
end
end)

-- Destroy GUI
local Kill = Hub:Button("Destroy GUI", function()
game:GetService("CoreGui").ScreenGui:Destroy()
end)


-- Anti-AFK
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
function()
vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
