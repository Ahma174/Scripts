local Core = game:GetService("CoreGui")

local gui = Instance.new("ScreenGui")
gui.Name = "Simple Editor"
gui.Parent = Core

local fr = Instance.new("Frame")
fr.Size = UDim2.new(0, 550, 0, 300)
fr.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
fr.BackgroundTransparency = 0.3
fr.Parent = gui

local drag = Instance.new("UIDragDetector")
drag.Parent = fr

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 255, 255)
stroke.Parent = fr

local U = Instance.new("UICorner")
U.CornerRadius = UDim.new(0.05, 0)
U.Parent = fr

local B = Instance.new("TextButton")
B.Name = "Execute"
B.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
B.Position = UDim2.new(0, 5, 0, 245)
B.Size = UDim2.new(0, 150, 0, 50)
B.TextColor3 = Color3.fromRGB(255, 255, 255)
B.TextSize = 20
B.Font = Enum.Font.RobotoMono
B.Text = "Execute"
B.Parent = fr

local BC = Instance.new("UICorner")
BC.CornerRadius = UDim.new(0.25, 0)
BC.Parent = B

local T = Instance.new("TextLabel")
T.Size = UDim2.new(0, 550, 0, 50)
T.Interactable = false
T.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
T.TextColor3 = Color3.fromRGB(255, 255, 255)
T.TextSize = 20
T.Text = "Simple Editor"
T.Font = Enum.Font.RobotoMono
T.Parent = fr

local TU = Instance.new("UICorner")
TU.CornerRadius = UDim.new(0.3, 0)
TU.Parent = T

local Box = Instance.new("TextBox")
Box.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Box.Position = UDim2.new(0, 0, 0, 55)
Box.Size = UDim2.new(0, 550, 0, 185)
Box.ClearTextOnFocus = false
Box.ClipsDescendants = true
Box.TextColor3 = Color3.fromRGB(255, 255, 255)
Box.TextWrap = true
Box.TextSize = 12
Box.Font = Enum.Font.RobotoMono
Box.TextXAlignment = "Left"
Box.TextYAlignment = "Top"
Box.PlaceholderText = "Enter Code Here"
Box.Text = ""
Box.Parent = fr

local BU = Instance.new("UICorner")
BU.CornerRadius = UDim.new(0.1, 0)
BU.Parent = Box

local C = Instance.new("TextButton")
C.Name = "Clear"
C.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
C.Position = UDim2.new(0, 160, 0, 245)
C.Size = UDim2.new(0, 150, 0, 50)
C.TextColor3 = Color3.fromRGB(255, 255, 255)
C.TextSize = 20
C.Font = Enum.Font.RobotoMono
C.Text = "Clear"
C.Parent = fr

local CC = Instance.new("UICorner")
CC.CornerRadius = UDim.new(0.25, 0)
CC.Parent = C

local Co = Instance.new("TextButton")
Co.Name = "Copy"
Co.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Co.Position = UDim2.new(0, 315, 0, 245)
Co.Size = UDim2.new(0, 150, 0, 50)
Co.TextColor3 = Color3.fromRGB(255, 255, 255)
Co.TextSize = 20
Co.Font = Enum.Font.RobotoMono
Co.Text = "Copy"
Co.Parent = fr

local COC = Instance.new("UICorner")
COC.CornerRadius = UDim.new(0.25, 0)
COC.Parent = Co

B.Activated:Connect(function()
loadstring(Box.Text)()
end)

C.Activated:Connect(function()
Box.Text = ""
end)

Co.Activated:Connect(function()
setclipboard("".. Box.Text)
end)
