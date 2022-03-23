
-- Dont Use on your main account for safety
--https://www.roblox.com/games/8554378337/

_G.farmNearest = false
_G.farmHighest = false
_G.farmLowest = false
_G.autoCollect = false

local plr = game.Players.LocalPlayer.Character.HumanoidRootPart

function getHighest()
    local high = {}
    for i, v in pairs(game:GetService("Workspace").Fight.Chests:GetChildren()) do
        for a, b in pairs(game:GetService("Workspace").Fight.ClientChests:GetChildren()) do
            if v.Name == b.Name then
                table.insert(high,v.ChestHp.Value)
                table.sort(high, function(a,b) return a > b end)
            end
        end
    end

    for a, b in pairs(game:GetService("Workspace").Fight.Chests:GetChildren()) do
        if high[1] == b.ChestHp.Value then
            return b.Name
        end
    end    
end

function getLowest()
    local low = {}
    for i, v in pairs(game:GetService("Workspace").Fight.Chests:GetChildren()) do
        for a, b in pairs(game:GetService("Workspace").Fight.ClientChests:GetChildren()) do
            if v.Name == b.Name then
                table.insert(low,v.ChestHp.Value)
                table.sort(low, function(a,b) return a < b end)
            end
        end
    end

    for a, b in pairs(game:GetService("Workspace").Fight.Chests:GetChildren()) do
        if low[1] == b.ChestHp.Value then
            return b.Name
        end
    end    
end

function getNear()
    local near;
    local nearr = math.huge

    for i, v in pairs(game:GetService("Workspace").Fight.ClientChests:GetChildren()) do
        if (plr.Position - v.Root.Position).Magnitude < nearr then
            near = v
            nearr = (plr.Position - v.Root.Position).Magnitude
        end
    end

    return near
end

local title = "Weapon Fighting Simulator"
for i, v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == title then
        v:Destroy()
    end
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))()
local venyx = library.new(tostring(title), 5012544693)
 
local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
} 

local page1 = venyx:addPage("Main", 5012544693)
local sec1 = page1:addSection("Farm")

sec1:addToggle("Farm Nearest", nil, function(v)
    _G.farmNearest = v
    
    spawn(function()
        while task.wait() do
            if not _G.farmNearest then break end
            pcall(function()
                local nearest = getNear()
                
                plr.CFrame = nearest.Root.CFrame * CFrame.new(0,0,10)
                wait(.2)

                workspace.Fight.Events.FightAttack:InvokeServer(0,nearest.Name)   
                
                repeat task.wait()
                    plr.CFrame = nearest.Root.CFrame * CFrame.new(0,0,10)
                until nearest.Root == nil or not _G.farmNearest
            end)
        end
    end)
end)

sec1:addToggle("Farm Highest", nil, function(v)
    _G.farmHighest = v

    spawn(function()
        while task.wait() do
            if not _G.farmHighest then break end
            pcall(function()
                local highest = getHighest()

                plr.CFrame = game:GetService("Workspace").Fight.ClientChests[highest].Root.CFrame * CFrame.new(0,0,10)
                wait(.2)

                workspace.Fight.Events.FightAttack:InvokeServer(0,highest)

                repeat task.wait()
                        plr.CFrame = game:GetService("Workspace").Fight.ClientChests[highest].Root.CFrame * CFrame.new(0,0,10)
                until not game:GetService("Workspace").Fight.ClientChests[highest] or not _G.farmHighest
            end)
        end
    end)
end)

sec1:addToggle("Farm Lowest", nil, function(v)
    _G.farmLowest = v

    spawn(function()
        while task.wait() do
            if not _G.farmLowest then break end
            pcall(function()
                local lowest = getLowest()

                plr.CFrame = game:GetService("Workspace").Fight.ClientChests[lowest].Root.CFrame * CFrame.new(0,0,10)
                wait(.2)

                workspace.Fight.Events.FightAttack:InvokeServer(0,lowest)

                repeat task.wait()
                        plr.CFrame = game:GetService("Workspace").Fight.ClientChests[lowest].Root.CFrame * CFrame.new(0,0,10)
                until not game:GetService("Workspace").Fight.ClientChests[lowest] or not _G.farmLowest
            end)
        end
    end)
end)

sec1:addToggle("Collect Rewards", nil, function(v)
    _G.autoCollect = v

    spawn(function()
        while task.wait() do
            if not _G.autoCollect then break end
            for i, v in pairs(game:GetService("Workspace").Rewards:GetChildren()) do
                if v ~= nil then
                    v.CFrame = plr.CFrame
                end
            end
        end
    end)
end)

local miscPage = venyx:addPage("Misc", 5012544693)
local miscSec = miscPage:addSection("Credits")
 
miscSec:addButton("Created by Uzu", function() 
    print("ASD")
end)
miscSec:addButton("Updated & Edited by U8K50 & adrisin", function() 
    print("ASD")
end)
miscSec:addButton("Discord: discord.gg/exploitcat", function() 
    setclipboard('https://www.discord.gg/exploitcat')
end)
 
miscSec:addKeybind("Keybind", Enum.KeyCode.RightControl, function()
    venyx:toggle()
end)
 
miscSec:addButton("Delete Gui", function()
    for i, v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == title then
            v:Destroy()
        end
    end
end)
 
venyx:SelectPage(venyx.pages[1], true)
