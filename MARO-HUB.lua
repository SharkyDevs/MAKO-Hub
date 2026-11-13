-- // MAKOS Hub - Outdated / Fake Script Notice
-- // All UI texts are in English as requested.

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Change this to your actual / real loadstring
local REAL_LOADSTRING = "loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/018e2898926c508559efe3c55a940b5c3a8add8c74a28eed86900b2641f6b92f/download"))()"

-- Remove existing notice if executed multiple times
if CoreGui:FindFirstChild("MakosOutdatedNotice") then
    CoreGui.MakosOutdatedNotice:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MakosOutdatedNotice"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.IgnoreGuiInset = true

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, -180, 0.5, -110)
MainFrame.Size = UDim2.new(0, 360, 0, 220)

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = MainFrame
UIStroke.Color = Color3.fromRGB(255, 69, 69)
UIStroke.Thickness = 2

local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.BackgroundTransparency = 1.00
Title.Position = UDim2.new(0, 0, 0, 20)
Title.Size = UDim2.new(1, 0, 0, 25)
Title.Font = Enum.Font.GothamBold
Title.Text = "⚠️ SCRIPT OUTDATED"
Title.TextColor3 = Color3.fromRGB(255, 69, 69)
Title.TextSize = 18

local Description = Instance.new("TextLabel")
Description.Parent = MainFrame
Description.BackgroundTransparency = 1.00
Description.Position = UDim2.new(0, 20, 0, 55)
Description.Size = UDim2.new(1, -40, 0, 70)
Description.Font = Enum.Font.Gotham
Description.Text = "This loadstring is outdated, fake, or unauthorized. Please click the button below to copy the official and updated real script."
Description.TextColor3 = Color3.fromRGB(200, 200, 210)
Description.TextSize = 13
Description.TextWrapped = true
Description.TextXAlignment = Enum.TextXAlignment.Center

local CopyButton = Instance.new("TextButton")
CopyButton.Parent = MainFrame
CopyButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
CopyButton.Position = UDim2.new(0.5, -140, 0.8, -35)
CopyButton.Size = UDim2.new(0, 280, 0, 42)
CopyButton.Font = Enum.Font.GothamBold
CopyButton.Text = "📋 Copy Real Script"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.TextSize = 14

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 8)
ButtonCorner.Parent = CopyButton

-- Copy Functionality
CopyButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(REAL_LOADSTRING)
        CopyButton.Text = "✅ Copied to Clipboard!"
        CopyButton.BackgroundColor3 = Color3.fromRGB(67, 181, 129)
        task.wait(2)
        CopyButton.Text = "📋 Copy Real Script"
        CopyButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
    else
        CopyButton.Text = "❌ Exploit not supported"
    end
end)
