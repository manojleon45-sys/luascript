local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer

local GetCharacter = function()
    local Characters = Workspace:FindFirstChild("Characters")

    if not Characters then
        return nil
    end

    return Characters:FindFirstChild(LocalPlayer.Name)
end

local InfiniteBreath = function()
    local Character = GetCharacter()

    if Character and Character:FindFirstChild("BreathCharge") then
        Character.BreathCharge.Value = 68
    end
end

RunService.RenderStepped:Connect(InfiniteBreath)
