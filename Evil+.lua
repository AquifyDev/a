--// Variables

local CEEggactive = false
local CEEggFarm = false

local function toggleScript()
    CEEggactive = not CEEggactive
    CEEggFarm = CEEggactive
end

game:GetService("RunService").Heartbeat:Connect(function()
    if CEEggFarm then
        for i, v in pairs(game:GetService("Workspace").EasterEggs:GetChildren()) do
            local cframe = v.CFrame
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
        
        end
    end
end)

local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("Evil+ / Jews#8618 / ",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local CasinoEmpire = win:Tab("Casino Empire")


CasinoEmpire:Toggle("Enable Easter Egg Farm",false, function(t)
print("Auto Easter Egg Farm is:",t)
toggleScript()
end)





local changeclr = win:Tab("Ui Settings")

changeclr:Colorpicker("Change UI Color",Color3.fromRGB(44, 120, 224), function(t)
lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)