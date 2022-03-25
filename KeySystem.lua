 -- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local EnterKeyLabel = Instance.new("TextLabel")
local Keydiscordlabel = Instance.new("TextLabel")
local KeyHereTextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local DiscordButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")


--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Frame.Position = UDim2.new(0.314037621, 0, 0.282131672, 0)
Frame.Size = UDim2.new(0, 256, 0, 138)
Frame.Active = true
Frame.Draggable = true

EnterKeyLabel.Name = "EnterKeyLabel"
EnterKeyLabel.Parent = Frame
EnterKeyLabel.BackgroundColor3 = Color3.fromRGB(153, 153, 153)
EnterKeyLabel.BackgroundTransparency = 1.000
EnterKeyLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
EnterKeyLabel.Size = UDim2.new(0, 256, 0, 30)
EnterKeyLabel.Font = Enum.Font.Ubuntu
EnterKeyLabel.Text = "Enter Your Key:"
EnterKeyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
EnterKeyLabel.TextSize = 14.000

Keydiscordlabel.Name = "Keydiscordlabel"
Keydiscordlabel.Parent = Frame
Keydiscordlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keydiscordlabel.BackgroundTransparency = 1.000
Keydiscordlabel.Position = UDim2.new(0, 0, 0.565217376, 0)
Keydiscordlabel.Size = UDim2.new(0, 256, 0, 29)
Keydiscordlabel.Font = Enum.Font.SourceSans
Keydiscordlabel.Text = "Get The Key At Our Discord!"
Keydiscordlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
Keydiscordlabel.TextSize = 14.000
Keydiscordlabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

KeyHereTextBox.Name = "KeyHereTextBox"
KeyHereTextBox.Parent = Frame
KeyHereTextBox.BackgroundColor3 = Color3.fromRGB(153, 153, 153)
KeyHereTextBox.Position = UDim2.new(0.0234375, 0, 0.217391297, 0)
KeyHereTextBox.Size = UDim2.new(0, 244, 0, 42)
KeyHereTextBox.Font = Enum.Font.SourceSans
KeyHereTextBox.PlaceholderText = "Key Here!"
KeyHereTextBox.Text = ""
KeyHereTextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
KeyHereTextBox.TextSize = 20.000

UICorner.Parent = KeyHereTextBox

DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = Frame
DiscordButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.BackgroundTransparency = 1.000
DiscordButton.Position = UDim2.new(0, 0, 0.731884062, 0)
DiscordButton.Size = UDim2.new(0, 256, 0, 37)
DiscordButton.Font = Enum.Font.SourceSans
DiscordButton.Text = "discord.gg/exploitcat (Click To Copy)"
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.TextSize = 14.000
DiscordButton.MouseButton1Down:connect(function()
	setclipboard('https://www.discord.gg/exploitcat')
end)

UICorner_2.Parent = Frame

-- Scripts:

local function XKCQPNL_fake_script() -- KeyHereTextBox.LocalScript 
	local script = Instance.new('LocalScript', KeyHereTextBox)

	script.Parent.FocusLost:Connect(function(enter)
		if script.Parent.Text == game:HttpGet("https://raw.githubusercontent.com/exploitscat/Roblox-Scripts/main/Key.txt") then
			print("test")
			loadstring(game:HttpGet"https://raw.githubusercontent.com/exploitscat/Roblox-Scripts/main/cat-hub.lua")()
			game:GetService("CoreGui").ScreenGui:Destroy()
		end
		end)
end
coroutine.wrap(XKCQPNL_fake_script)() 
