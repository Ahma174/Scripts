local coregui = game:GetService("CoreGui")

local gui = Instance.new("ScreenGui")
gui.Name = "ClickingGUI"
gui.Parent = coregui

local fr = Instance.new("Frame")
fr.Position = UDim2.new(0.5, -122, 0.5, -233)
fr.Size = UDim2.new(0, 250,  0, 175)
fr.Draggable = true
fr.Parent = gui

local b = Instance.new("TextButton")
b.Name = "ClickSimulatorButton"
b.Position = UDim2.new(0, 5, 0, 2.5)
b.Size = UDim2.new(0, 100, 0, 170)
b.Text = "Click Here"
b.Parent = fr

-- needed instances
local click = Instance.new("Sound")
click.Name = "ClickSound"
click.SoundId = "rbxassetid://138567614125924"
click.Parent = gui

local amb = Instance.new("Sound")
amb.Name = "Ambience"
amb.SoundId = "rbxassetid://7018639553"
amb.Playing = false
amb.Looped = false
amb.Volume = 5
amb.Parent = gui

local Valley = Instance.new("NumberValue") -- folk valley fr
Valley.Name = "Zvvvvvvv Value"
Valley.Value = 0
Valley.Parent = fr

local t = Instance.new("TextLabel")
t.Name = "ClickSimulatorTitle"
t.Position = UDim2.new(0, 125, 0, 0)
t.Size = UDim2.new(0, 125, 0, 15)
t.Text = "Clicking Simulator"
t.Parent = fr

local h = Instance.new("TextLabel")
h.Name = "ClickSimulator"
h.Position = UDim2.new(0, 110, 0, 80)
h.Size = UDim2.new(0, 135, 0, 15)
h.Text = "Clicking Simulator Value: ".. Valley.Value
h.Parent = fr

local ib = Instance.new("ImageButton")
ib.Name = "FREDDY"
ib.Position = UDim2.new(0, 110, 0, 102)
ib.Size = UDim2.new(0, 135, 0, 67)
ib.Image = "rbxassetid://7084794697"
ib.Parent = fr

-- Into Activation and Clicking functions now
b.Activated:Connect(function()
click:Play()
Valley.Value += 1
h.Text = "Clicking Simulator Value: ".. Valley.Value
end)

ib.Activated:Connect(function()
amb:Play()
Valley.Value = 0
h.Text = "Clicking Simulator Value: ".. Valley.Value
end)
