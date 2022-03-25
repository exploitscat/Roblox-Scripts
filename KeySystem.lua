-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local EnterKeyLabel = Instance.new("TextLabel")
local Keydiscordlabel = Instance.new("TextLabel")
local KeyHereTextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local DiscordButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local DestroyButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Workspace
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
main.Position = UDim2.new(0.314037621, 0, 0.23197493, 0)
main.Size = UDim2.new(0, 256, 0, 171)

EnterKeyLabel.Name = "EnterKeyLabel"
EnterKeyLabel.Parent = main
EnterKeyLabel.BackgroundColor3 = Color3.fromRGB(153, 153, 153)
EnterKeyLabel.BackgroundTransparency = 1.000
EnterKeyLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
EnterKeyLabel.Size = UDim2.new(0, 256, 0, 30)
EnterKeyLabel.Font = Enum.Font.Ubuntu
EnterKeyLabel.Text = "Enter Your Key:"
EnterKeyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
EnterKeyLabel.TextSize = 14.000

Keydiscordlabel.Name = "Keydiscordlabel"
Keydiscordlabel.Parent = main
Keydiscordlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keydiscordlabel.BackgroundTransparency = 1.000
Keydiscordlabel.Position = UDim2.new(0, 0, 0.413170576, 0)
Keydiscordlabel.Size = UDim2.new(0, 256, 0, 29)
Keydiscordlabel.Font = Enum.Font.SourceSans
Keydiscordlabel.Text = "Get The Key At Our Discord!"
Keydiscordlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
Keydiscordlabel.TextSize = 14.000
Keydiscordlabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

KeyHereTextBox.Name = "KeyHereTextBox"
KeyHereTextBox.Parent = main
KeyHereTextBox.BackgroundColor3 = Color3.fromRGB(153, 153, 153)
KeyHereTextBox.Position = UDim2.new(0.0234375, 0, 0.170607671, 0)
KeyHereTextBox.Size = UDim2.new(0, 244, 0, 42)
KeyHereTextBox.Font = Enum.Font.SourceSans
KeyHereTextBox.PlaceholderText = "Key Here!"
KeyHereTextBox.Text = ""
KeyHereTextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
KeyHereTextBox.TextSize = 20.000

UICorner.Parent = KeyHereTextBox

DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = main
DiscordButton.BackgroundColor3 = Color3.fromRGB(153, 153, 153)
DiscordButton.Position = UDim2.new(0.0546875, 0, 0.585685253, 0)
DiscordButton.Size = UDim2.new(0, 228, 0, 30)
DiscordButton.Font = Enum.Font.Ubuntu
DiscordButton.Text = "discord.gg/exploitcat (Click To Copy)"
DiscordButton.TextColor3 = Color3.fromRGB(58, 58, 58)
DiscordButton.TextSize = 12.000

UICorner_2.Parent = DiscordButton

UICorner_3.Parent = main

DestroyButton.Name = "DestroyButton"
DestroyButton.Parent = main
DestroyButton.BackgroundColor3 = Color3.fromRGB(153, 153, 153)
DestroyButton.Position = UDim2.new(0.0234375, 0, 0.802059531, 0)
DestroyButton.Size = UDim2.new(0, 244, 0, 25)
DestroyButton.Font = Enum.Font.Ubuntu
DestroyButton.Text = "Destroy Gui"
DestroyButton.TextColor3 = Color3.fromRGB(58, 58, 58)
DestroyButton.TextSize = 14.000
DestroyButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

UICorner_4.Parent = DestroyButton
