local coregui = game:GetService("CoreGui")
local link = "https://raw.githubusercontent.com/Ahma174/Scripts/refs/heads/main/config.txt"

local storage = {[1] = "Value"}

local gui = Instance.new("ScreenGui")
gui.Name = "ClickingGUI"
gui.Parent = coregui

local fr = Instance.new("Frame")
fr.Position = UDim2.new(0.5, -122, 0.5, -233)
fr.Size = UDim2.new(0, 300,  0, 175)
fr.Parent = gui

local b = Instance.new("TextButton")
b.Name = "ClickSimulatorButton"
b.Position = UDim2.new(0, 5, 0, 2.5)
b.Size = UDim2.new(0, 100, 0, 170)
b.Text = "Click Here"
b.Parent = fr

local SC = Instance.new("TextButton")
SC.Name = "Save Config"
SC.Position = UDim2.new(0, 235, 0, 18)
SC.Size = UDim2.new(0, 65, 0, 30)
SC.Text = "Save Config"
SC.Parent = fr

local LC = Instance.new("TextButton")
LC.Name = "Load Config"
LC.Position = UDim2.new(0, 235, 0, 49)
LC.Size = UDim2.new(0, 65, 0, 30)
LC.Text = "Load Config"
LC.Parent = fr

-- needed instances

local UICD = Instance.new("UIDragDetector") -- Used For the Dragging Logic
UICD.Parent = fr

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

local DSE = Instance.new("DistortionSoundEffect")
DSE.Level = 0.75
DSE.Parent = amb

local CSE = Instance.new("ChorusSoundEffect")
CSE.Depth = 0.2
CSE.Mix = 0.5
CSE.Rate = 0.5
CSE.Parent = amb

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

local ab = Instance.new("TextButton")
ab.Name = "Bonnie"
ab.Position = UDim2.new(0, 110, 0, 18)
ab.Size = UDim2.new(0, 50, 0, 30)
ab.Text = "Bonnie"
ab.Parent = fr

local ac = Instance.new("TextButton")
ac.Name = "Chica"
ac.Position = UDim2.new(0, 160, 0, 18)
ac.Size = UDim2.new(0, 50, 0, 30)
ac.Text = "Chica"
ac.Parent = fr

local af = Instance.new("TextButton")
af.Name = "foxy"
af.Position = UDim2.new(0, 210, 0, 18)
af.Size = UDim2.new(0, 25, 0, 30)
af.Text = "Foxy"
af.Parent = fr

local aff = Instance.new("TextButton")
aff.Name = "Freddy"
aff.Position = UDim2.new(0, 110, 0, 49)
aff.Size = UDim2.new(0, 50, 0, 30)
aff.Text = "Freddy"
aff.Parent = fr

local ag = Instance.new("TextButton")
ag.Name = "Golden Freddy"
ag.Position = UDim2.new(0, 160, 0, 49)
ag.Size = UDim2.new(0, 75, 0, 30)
ag.Text = "Golden Freddy"
ag.Parent = fr

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

SC.Activated:Connect(function()
writefile("config.txt", "".. Valley.Value)
end)

LC.Activated:Connect(function()
local reading = readfile("config.txt")
Valley.Value = reading
h.Text = "Clicking Simulator Value: ".. Valley.Value
end)

ab.Activated:Connect(function()
ib.Image = "rbxassetid://7231005994"
ib.Name = "BONNIE"
end)

ac.Activated:Connect(function()
ib.Image = "rbxassetid://5216108076"
ib.Name = "CHICA"
end)

af.Activated:Connect(function()
ib.Image = "rbxassetid://5070519822"
ib.Name = "FOXY"
end)

aff.Activated:Connect(function()
ib.Image = "rbxassetid://7084794697"
ib.Name = "FREDDY"
end)

ag.Activated:Connect(function()
ib.Image = "rbxassetid://5185798268"
ib.Name = "GOLDEN FREDDY"
end)

if storage[1] ~= "Value" then
    print("Where's the Value?")
    task.wait(1)
    gui:Destroy()
end
