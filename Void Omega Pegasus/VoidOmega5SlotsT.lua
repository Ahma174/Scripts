-- 5 Slot Omega
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local lp = Players.LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local rootPart = char:WaitForChild("HumanoidRootPart")

local model = Instance.new("Model")
model.Name = "Void Omega Pegasus"

local base = Instance.new("MeshPart")
base.Name = "Base"
base.MeshId = "rbxassetid://2854375507"
base.Size = Vector3.new(0.5, 0.5, 0.5)
base.Color = Color3.fromRGB(170, 85, 0)
base.Material = Enum.Material.SmoothPlastic
base.CanCollide = false
base.CastShadow = false
base.Massless = true
base.RenderFidelity = Enum.RenderFidelity.Automatic
base.Parent = model

local eyes = Instance.new("Decal")
eyes.Name = "eyes"
eyes.Texture = "rbxassetid://75120384935836"
eyes.Color3 = Color3.new(1, 0.333, 0)
eyes.UVOffset = Vector2.new(-0, 0.0399999991)
eyes.UVScale = Vector2.new(0.400000006, 0.449999988)
eyes.Face = Enum.NormalId.Front
eyes.Parent = base

local pointLight = Instance.new("PointLight")
pointLight.Color = Color3.new(1, 0.333, 0)
pointLight.Parent = base

local petGui = Instance.new("BillboardGui")
petGui.Name = "petGui"
petGui.MaxDistance = 100
petGui.Size = UDim2.new(3, 0, 2, 0)
petGui.StudsOffset = Vector3.new(0, 2.200000047683716, 0)
petGui.Parent = base

local nameLabel = Instance.new("TextLabel")
nameLabel.Name = "nameLabel"
nameLabel.Text = "Void Omega Pegasus"
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.TextScaled = true
nameLabel.TextWrapped = true
nameLabel.TextStrokeTransparency = 0.800000011920929
nameLabel.BackgroundTransparency = 1
nameLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
nameLabel.Position = UDim2.new(0, 0, 0.699999988079071, 0)
nameLabel.Size = UDim2.new(1, 0, 0.30000001192092896, 0)
nameLabel.Parent = petGui

local levelLabel = Instance.new("TextLabel")
levelLabel.Name = "levelLabel"
levelLabel.Text = "Level 200"
levelLabel.TextColor3 = Color3.new(0, 0, 0)
levelLabel.TextScaled = true
levelLabel.TextWrapped = true
levelLabel.TextStrokeColor3 = Color3.new(0.3333333432674408, 1, 0)
levelLabel.TextStrokeTransparency = 0.800000011920929
levelLabel.BackgroundTransparency = 1
levelLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
levelLabel.Position = UDim2.new(0, 0, 0.44999998807907104, 0)
levelLabel.Size = UDim2.new(1, 0, 0.25, 0)
levelLabel.Parent = petGui

local targetLabel = Instance.new("TextLabel")
targetLabel.Name = "targetLabel"
targetLabel.Text = "Target: None"
targetLabel.TextColor3 = Color3.new(0, 0, 0)
targetLabel.TextScaled = true
targetLabel.TextWrapped = true
targetLabel.TextStrokeColor3 = Color3.new(1, 0, 0)
targetLabel.TextStrokeTransparency = 0.699999988079071
targetLabel.BackgroundTransparency = 1
targetLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
targetLabel.AnchorPoint = Vector2.new(0.5, 0)
targetLabel.Position = UDim2.new(0.5, 0, 0.09000000357627869, 0)
targetLabel.Size = UDim2.new(1.2000000476837158, 0, 0.18000000715255737, 0)
targetLabel.Parent = petGui

local function makeEvoLabel(name, text, tc, sc, st, visible)
	local lbl = Instance.new("TextLabel")
	lbl.Name = name
	lbl.Text = text
	lbl.TextColor3 = tc
	lbl.TextScaled = true
	lbl.TextWrapped = true
	lbl.TextStrokeColor3 = sc
	lbl.TextStrokeTransparency = st
	lbl.BackgroundTransparency = 1
	lbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
	lbl.Position = UDim2.new(0, 0, 0.27000001072883606, 0)
	lbl.Size = UDim2.new(1, 0, 0.18000000715255737, 0)
	lbl.Visible = visible or false
	lbl.Parent = petGui
	local sv = Instance.new("StringValue")
	sv.Name = "whichEvolution"
	sv.Value = text
	sv.Parent = lbl
	return lbl
end

makeEvoLabel("evolvedLabel", "EVOLVED", Color3.new(0.6666666865348816, 0.3333333432674408, 1), Color3.new(0.6666666865348816, 0.3333333432674408, 1), 0.800000011920929, false)
makeEvoLabel("eternalizedLabel", "ETERNALIZED", Color3.new(0, 0, 0), Color3.new(1, 0.3333333432674408, 0), 0.5, false)
makeEvoLabel("immortalizedLabel", "IMMORTAL", Color3.new(0, 0, 0), Color3.new(0, 0, 1), 0.5, false)
makeEvoLabel("legendLabel", "LEGEND", Color3.new(0, 0, 0), Color3.new(0.9450980424880981, 0.8196078538894653, 0.10196078568696976), 0.4000000059604645, false)
makeEvoLabel("elementalizedLabel", "ELEMENTAL", Color3.new(0, 0, 0), Color3.new(0, 1, 1), 0.4000000059604645, false)
makeEvoLabel("xGenesisLabel", "X-GENESIS", Color3.new(0, 0, 0), Color3.new(1, 0, 0), 0.4000000059604645, false)
makeEvoLabel("zMasterLabel", "Z-MASTER", Color3.new(0, 0, 0), Color3.new(0.6666666865348816, 0, 1), 0.4000000059604645, false)
makeEvoLabel("ultraBeastLabel", "ULTRA-BEAST", Color3.new(1, 0.6666666865348816, 0), Color3.new(1, 0.3333333432674408, 0), 0.4000000059604645, false)
makeEvoLabel("infinityLordLabel", "INFINITY-LORD", Color3.new(0, 1, 1), Color3.new(0, 0.3333333432674408, 1), 0.4000000059604645, false)
makeEvoLabel("chaosTitanLabel", "CHAOS-TITAN", Color3.new(1, 0.3333333432674408, 0), Color3.new(0.8509804606437683, 0, 0), 0.4000000059604645, false)
makeEvoLabel("ZXLegendLabel", "ZX-LEGEND", Color3.new(0.3333333432674408, 1, 0), Color3.new(0.2196078598499298, 0.658823549747467, 0), 0.4000000059604645, false)
makeEvoLabel("darkElementLabel", "DARK-ELEMENT", Color3.new(0.6666666865348816, 0, 1), Color3.new(0.34117648005485535, 0, 0.5098039507865906), 0.4000000059604645, false)
makeEvoLabel("shadowStormLabel", "SHADOWSTORM", Color3.new(1, 0.3333333432674408, 0), Color3.new(0.8509804606437683, 0, 0), 0.4000000059604645, false)
makeEvoLabel("vortexEliteLabel", "VORTEX-ELITE", Color3.new(1, 0.7843137979507446, 0), Color3.new(1, 0.6352941393852234, 0), 0.4000000059604645, true)

local glowColor = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(1, 0.333, 0)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 0.333, 0))
})

local function makeParticle(parent, props)
	local pe = Instance.new("ParticleEmitter")
	for k, v in pairs(props) do pe[k] = v end
	pe.Parent = parent
end

makeParticle(base, {
	Name = "glowParticle",
	Color = glowColor,
	LightEmission = 1,
	LockedToPart = true,
	Rate = 50,
	RotSpeed = NumberRange.new(-200, 200),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.8), NumberSequenceKeypoint.new(1, 0.8)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(45, 45),
	Texture = "rbxassetid://2796974629",
	Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0.856),
		NumberSequenceKeypoint.new(0.533, 0.937),
		NumberSequenceKeypoint.new(1, 1)
	}),
	ZOffset = 0.1,
	Lifetime = NumberRange.new(2, 2),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.5,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-500, 500),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.6875), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(4, 4),
	SpreadAngle = Vector2.new(-360, 360),
	Texture = "rbxassetid://3258517083",
	Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1),
		NumberSequenceKeypoint.new(0.294, 0),
		NumberSequenceKeypoint.new(0.625, 0.35),
		NumberSequenceKeypoint.new(1, 1)
	}),
	Lifetime = NumberRange.new(0.2, 0.2),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.8,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-360, 360),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.1475), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(900, 900),
	Texture = "rbxassetid://3111898064",
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.619), NumberSequenceKeypoint.new(1, 1)}),
	Lifetime = NumberRange.new(1, 1),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.8,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-360, 360),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.1475), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(900, 900),
	Texture = "rbxassetid://3111898064",
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.619), NumberSequenceKeypoint.new(1, 1)}),
	Lifetime = NumberRange.new(1, 1),
})

local function makeMeshPart(name, meshId, size, color, material)
	local p = Instance.new("MeshPart")
	p.Name = name
	p.MeshId = "rbxassetid://" .. meshId
	p.Size = size
	p.Color = color
	p.Material = material
	p.CanCollide = false
	p.CastShadow = false
	p.Massless = true
	p.RenderFidelity = Enum.RenderFidelity.Automatic
	return p
end

local function makeWeld(name, part0, part1, c0, c1)
	local w = Instance.new("ManualWeld")
	w.Name = name
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
	w.Parent = part0
	return w
end

local hornColor = Color3.fromRGB(218, 133, 65)
local baseColor = Color3.fromRGB(170, 85, 0)

local horn2 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1.899999976158142, 2), hornColor, Enum.Material.Neon)
horn2.Parent = model
makeWeld("Weld", horn2, base,
	CFrame.new(0,0,0, 1,-0,0, 0,0.906297,0.422642, -0,-0.422642,0.906297),
	CFrame.new(0.000183,1.201408,-0.785553, -1,0,0, 0,1,0, 0,0,-1))

local horns = makeMeshPart("Horns", "2861539809", Vector3.new(1.5, 0.6000000238418579, 1), hornColor, Enum.Material.Neon)
horns.Parent = model
makeWeld("Weld", horns, base,
	CFrame.new(0,0,0, 0.087131,-0,-0.996197, 0,1,-0, 0.996197,0,0.087131),
	CFrame.new(0.000183,0.899905,-0.400085, -1,0,0, 0,1,0, 0,0,-1))

local eyePart = Instance.new("Part")
eyePart.Name = "eyePart"
eyePart.Size = Vector3.new(0.05999999865889549, 1.2000000476837158, 1)
eyePart.Color = baseColor
eyePart.Material = Enum.Material.SmoothPlastic
eyePart.Transparency = 1
eyePart.CanCollide = false
eyePart.CastShadow = false
eyePart.Massless = true
eyePart.Parent = model

makeWeld("Weld", eyePart, base,
	CFrame.new(0,0,0, 0,0,1, 0,1,0, -1,0,0),
	CFrame.new(0.000187,0.025898,-0.699600, -1,0,0, 0,1,0, 0,0,-1))

local wings1 = makeMeshPart("Wings", "2854673665", Vector3.new(0.6499999761581421, 0.550000011920929, 0.5), baseColor, Enum.Material.SmoothPlastic)
wings1.Parent = model
makeWeld("Weld", wings1, base,
	CFrame.new(0, 0.180000007, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	CFrame.new(0.000187,1.500209,0.599899, -1,0,0, 0,1,0, 0,0,-1))

local wings2 = makeMeshPart("Wings", "2854673665", Vector3.new(0.550000011920929, 0.44999998807907104, 0.5), baseColor, Enum.Material.SmoothPlastic)
wings2.Parent = model
makeWeld("Weld", wings2, base,
	CFrame.new(0, 0.150000006, 0.129999995, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	CFrame.new(0.000187,0.902054,0.149872, -1,0,0, 0,1,0, 0,0,-1))

local horn54 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn54.Parent = model
makeWeld("Weld", horn54, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(0.000183,0.996097,-0.189758, -1,0,0, 0,1,0, 0,0,-1))

local horn56 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn56.Parent = model
makeWeld("Weld", horn56, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(0.000183,0.896487,0.260284, -1,0,0, 0,1,0, 0,0,-1))

local horn58 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn58.Parent = model
makeWeld("Weld", horn58, base,
	CFrame.new(0,0,0, 1,0,0, 0,0.939701,-0.341998, 0,0.341998,0.939701),
	CFrame.new(0.000183,0.705080,0.650116, -1,0,0, 0,1,0, 0,0,-1))

local horn60 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn60.Parent = model
makeWeld("Weld", horn60, base,
	CFrame.new(0,0,0, 1,0,0, 0,0.422593,-0.906320, 0,0.906320,0.422593),
	CFrame.new(0.000183,0.384767,0.787384, -1,0,0, 0,1,0, 0,0,-1))

local tail = makeMeshPart("Tail", "2861834252", Vector3.new(0.427852, 0.45, 0.48563), hornColor, Enum.Material.Neon)
tail.Parent = model
makeWeld("Weld", tail, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(-0.249832,-0.473633,1.274963, -1,0,0, 0,1,0, 0,0,-1))

local perksFolder = Instance.new("Folder")
perksFolder.Name = "perksFolder"
perksFolder.Parent = model

local chiVal = Instance.new("NumberValue")
chiVal.Name = "chi"
chiVal.Value = 9000000
chiVal.Parent = perksFolder

local coinsVal = Instance.new("NumberValue")
coinsVal.Name = "coins"
coinsVal.Value = 9000000
coinsVal.Parent = perksFolder

local ninjitsuVal = Instance.new("NumberValue")
ninjitsuVal.Name = "ninjitsu"
ninjitsuVal.Value = 9000000
ninjitsuVal.Parent = perksFolder

local requiredRebirths = Instance.new("NumberValue")
requiredRebirths.Name = "requiredRebirths"
requiredRebirths.Value = 15
requiredRebirths.Parent = model

local imageLabel = Instance.new("ImageLabel")
imageLabel.Name = "image"
imageLabel.Image = "rbxassetid://4776499462"
imageLabel.BackgroundTransparency = 1
imageLabel.BorderSizePixel = 0
imageLabel.Visible = false
imageLabel.Parent = model

local animController = Instance.new("AnimationController")
animController.Parent = model
Instance.new("Animator").Parent = animController

model.PrimaryPart = base
model.Parent = char

local bodyPos = Instance.new("BodyPosition")
bodyPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyPos.P = 20000
bodyPos.Position = rootPart.Position
bodyPos.Parent = base

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodyGyro.CFrame = rootPart.CFrame
bodyGyro.Parent = base

local flyingOffset = CFrame.new(4.9, 1.5, -3)
local bobUp = false
local bobT = 0
local bobSpeed = 0.01
local bobMax = 1
local tiltAngle = 5

RunService.RenderStepped:Connect(function()
	if not bobUp then
		bobT = bobT + bobSpeed
		if bobT >= bobMax then bobUp = true end
		if tiltAngle < 5 then tiltAngle = tiltAngle + 0.1 end
	else
		bobT = bobT - bobSpeed
		if bobT <= 0 then bobUp = false end
		if tiltAngle > -5 then tiltAngle = tiltAngle - 0.1 end
	end
	local targetPos = (rootPart.CFrame * flyingOffset).p
	bodyPos.Position = Vector3.new(targetPos.X, targetPos.Y + bobT, targetPos.Z)
	if humanoid.MoveDirection == Vector3.new(0, 0, 0) then
		bodyGyro.CFrame = CFrame.new(base.Position, Vector3.new(rootPart.Position.X, base.Position.Y, rootPart.Position.Z)) * CFrame.Angles(math.rad(tiltAngle), 0, 0)
	else
		bodyGyro.CFrame = rootPart.CFrame * CFrame.Angles(math.rad(tiltAngle), 0, 0)
	end
end)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local lp = Players.LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local rootPart = char:WaitForChild("HumanoidRootPart")

local model = Instance.new("Model")
model.Name = "Void Omega Pegasus"

local base = Instance.new("MeshPart")
base.Name = "Base"
base.MeshId = "rbxassetid://2854375507"
base.Size = Vector3.new(0.5, 0.5, 0.5)
base.Color = Color3.fromRGB(170, 85, 0)
base.Material = Enum.Material.SmoothPlastic
base.CanCollide = false
base.CastShadow = false
base.Massless = true
base.RenderFidelity = Enum.RenderFidelity.Automatic
base.Parent = model

local eyes = Instance.new("Decal")
eyes.Name = "eyes"
eyes.Texture = "rbxassetid://75120384935836"
eyes.Color3 = Color3.new(1, 0.333, 0)
eyes.UVOffset = Vector2.new(-0, 0.0399999991)
eyes.UVScale = Vector2.new(0.400000006, 0.449999988)
eyes.Face = Enum.NormalId.Front
eyes.Parent = base

local pointLight = Instance.new("PointLight")
pointLight.Color = Color3.new(1, 0.333, 0)
pointLight.Parent = base

local petGui = Instance.new("BillboardGui")
petGui.Name = "petGui"
petGui.MaxDistance = 100
petGui.Size = UDim2.new(3, 0, 2, 0)
petGui.StudsOffset = Vector3.new(0, 2.200000047683716, 0)
petGui.Parent = base

local nameLabel = Instance.new("TextLabel")
nameLabel.Name = "nameLabel"
nameLabel.Text = "Void Omega Pegasus"
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.TextScaled = true
nameLabel.TextWrapped = true
nameLabel.TextStrokeTransparency = 0.800000011920929
nameLabel.BackgroundTransparency = 1
nameLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
nameLabel.Position = UDim2.new(0, 0, 0.699999988079071, 0)
nameLabel.Size = UDim2.new(1, 0, 0.30000001192092896, 0)
nameLabel.Parent = petGui

local levelLabel = Instance.new("TextLabel")
levelLabel.Name = "levelLabel"
levelLabel.Text = "Level 200"
levelLabel.TextColor3 = Color3.new(0, 0, 0)
levelLabel.TextScaled = true
levelLabel.TextWrapped = true
levelLabel.TextStrokeColor3 = Color3.new(0.3333333432674408, 1, 0)
levelLabel.TextStrokeTransparency = 0.800000011920929
levelLabel.BackgroundTransparency = 1
levelLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
levelLabel.Position = UDim2.new(0, 0, 0.44999998807907104, 0)
levelLabel.Size = UDim2.new(1, 0, 0.25, 0)
levelLabel.Parent = petGui

local targetLabel = Instance.new("TextLabel")
targetLabel.Name = "targetLabel"
targetLabel.Text = "Target: None"
targetLabel.TextColor3 = Color3.new(0, 0, 0)
targetLabel.TextScaled = true
targetLabel.TextWrapped = true
targetLabel.TextStrokeColor3 = Color3.new(1, 0, 0)
targetLabel.TextStrokeTransparency = 0.699999988079071
targetLabel.BackgroundTransparency = 1
targetLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
targetLabel.AnchorPoint = Vector2.new(0.5, 0)
targetLabel.Position = UDim2.new(0.5, 0, 0.09000000357627869, 0)
targetLabel.Size = UDim2.new(1.2000000476837158, 0, 0.18000000715255737, 0)
targetLabel.Parent = petGui

local function makeEvoLabel(name, text, tc, sc, st, visible)
	local lbl = Instance.new("TextLabel")
	lbl.Name = name
	lbl.Text = text
	lbl.TextColor3 = tc
	lbl.TextScaled = true
	lbl.TextWrapped = true
	lbl.TextStrokeColor3 = sc
	lbl.TextStrokeTransparency = st
	lbl.BackgroundTransparency = 1
	lbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
	lbl.Position = UDim2.new(0, 0, 0.27000001072883606, 0)
	lbl.Size = UDim2.new(1, 0, 0.18000000715255737, 0)
	lbl.Visible = visible or false
	lbl.Parent = petGui
	local sv = Instance.new("StringValue")
	sv.Name = "whichEvolution"
	sv.Value = text
	sv.Parent = lbl
	return lbl
end

makeEvoLabel("evolvedLabel", "EVOLVED", Color3.new(0.6666666865348816, 0.3333333432674408, 1), Color3.new(0.6666666865348816, 0.3333333432674408, 1), 0.800000011920929, false)
makeEvoLabel("eternalizedLabel", "ETERNALIZED", Color3.new(0, 0, 0), Color3.new(1, 0.3333333432674408, 0), 0.5, false)
makeEvoLabel("immortalizedLabel", "IMMORTAL", Color3.new(0, 0, 0), Color3.new(0, 0, 1), 0.5, false)
makeEvoLabel("legendLabel", "LEGEND", Color3.new(0, 0, 0), Color3.new(0.9450980424880981, 0.8196078538894653, 0.10196078568696976), 0.4000000059604645, false)
makeEvoLabel("elementalizedLabel", "ELEMENTAL", Color3.new(0, 0, 0), Color3.new(0, 1, 1), 0.4000000059604645, false)
makeEvoLabel("xGenesisLabel", "X-GENESIS", Color3.new(0, 0, 0), Color3.new(1, 0, 0), 0.4000000059604645, false)
makeEvoLabel("zMasterLabel", "Z-MASTER", Color3.new(0, 0, 0), Color3.new(0.6666666865348816, 0, 1), 0.4000000059604645, false)
makeEvoLabel("ultraBeastLabel", "ULTRA-BEAST", Color3.new(1, 0.6666666865348816, 0), Color3.new(1, 0.3333333432674408, 0), 0.4000000059604645, false)
makeEvoLabel("infinityLordLabel", "INFINITY-LORD", Color3.new(0, 1, 1), Color3.new(0, 0.3333333432674408, 1), 0.4000000059604645, false)
makeEvoLabel("chaosTitanLabel", "CHAOS-TITAN", Color3.new(1, 0.3333333432674408, 0), Color3.new(0.8509804606437683, 0, 0), 0.4000000059604645, false)
makeEvoLabel("ZXLegendLabel", "ZX-LEGEND", Color3.new(0.3333333432674408, 1, 0), Color3.new(0.2196078598499298, 0.658823549747467, 0), 0.4000000059604645, false)
makeEvoLabel("darkElementLabel", "DARK-ELEMENT", Color3.new(0.6666666865348816, 0, 1), Color3.new(0.34117648005485535, 0, 0.5098039507865906), 0.4000000059604645, false)
makeEvoLabel("shadowStormLabel", "SHADOWSTORM", Color3.new(1, 0.3333333432674408, 0), Color3.new(0.8509804606437683, 0, 0), 0.4000000059604645, false)
makeEvoLabel("vortexEliteLabel", "VORTEX-ELITE", Color3.new(1, 0.7843137979507446, 0), Color3.new(1, 0.6352941393852234, 0), 0.4000000059604645, true)

local glowColor = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(1, 0.333, 0)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 0.333, 0))
})

local function makeParticle(parent, props)
	local pe = Instance.new("ParticleEmitter")
	for k, v in pairs(props) do pe[k] = v end
	pe.Parent = parent
end

makeParticle(base, {
	Name = "glowParticle",
	Color = glowColor,
	LightEmission = 1,
	LockedToPart = true,
	Rate = 50,
	RotSpeed = NumberRange.new(-200, 200),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.8), NumberSequenceKeypoint.new(1, 0.8)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(45, 45),
	Texture = "rbxassetid://2796974629",
	Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0.856),
		NumberSequenceKeypoint.new(0.533, 0.937),
		NumberSequenceKeypoint.new(1, 1)
	}),
	ZOffset = 0.1,
	Lifetime = NumberRange.new(2, 2),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.5,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-500, 500),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.6875), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(4, 4),
	SpreadAngle = Vector2.new(-360, 360),
	Texture = "rbxassetid://3258517083",
	Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1),
		NumberSequenceKeypoint.new(0.294, 0),
		NumberSequenceKeypoint.new(0.625, 0.35),
		NumberSequenceKeypoint.new(1, 1)
	}),
	Lifetime = NumberRange.new(0.2, 0.2),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.8,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-360, 360),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.1475), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(900, 900),
	Texture = "rbxassetid://3111898064",
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.619), NumberSequenceKeypoint.new(1, 1)}),
	Lifetime = NumberRange.new(1, 1),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.8,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-360, 360),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.1475), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(900, 900),
	Texture = "rbxassetid://3111898064",
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.619), NumberSequenceKeypoint.new(1, 1)}),
	Lifetime = NumberRange.new(1, 1),
})

local function makeMeshPart(name, meshId, size, color, material)
	local p = Instance.new("MeshPart")
	p.Name = name
	p.MeshId = "rbxassetid://" .. meshId
	p.Size = size
	p.Color = color
	p.Material = material
	p.CanCollide = false
	p.CastShadow = false
	p.Massless = true
	p.RenderFidelity = Enum.RenderFidelity.Automatic
	return p
end

local function makeWeld(name, part0, part1, c0, c1)
	local w = Instance.new("ManualWeld")
	w.Name = name
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
	w.Parent = part0
	return w
end

local hornColor = Color3.fromRGB(218, 133, 65)
local baseColor = Color3.fromRGB(170, 85, 0)

local horn2 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1.899999976158142, 2), hornColor, Enum.Material.Neon)
horn2.Parent = model
makeWeld("Weld", horn2, base,
	CFrame.new(0,0,0, 1,-0,0, 0,0.906297,0.422642, -0,-0.422642,0.906297),
	CFrame.new(0.000183,1.201408,-0.785553, -1,0,0, 0,1,0, 0,0,-1))

local horns = makeMeshPart("Horns", "2861539809", Vector3.new(1.5, 0.6000000238418579, 1), hornColor, Enum.Material.Neon)
horns.Parent = model
makeWeld("Weld", horns, base,
	CFrame.new(0,0,0, 0.087131,-0,-0.996197, 0,1,-0, 0.996197,0,0.087131),
	CFrame.new(0.000183,0.899905,-0.400085, -1,0,0, 0,1,0, 0,0,-1))

local eyePart = Instance.new("Part")
eyePart.Name = "eyePart"
eyePart.Size = Vector3.new(0.05999999865889549, 1.2000000476837158, 1)
eyePart.Color = baseColor
eyePart.Material = Enum.Material.SmoothPlastic
eyePart.Transparency = 1
eyePart.CanCollide = false
eyePart.CastShadow = false
eyePart.Massless = true
eyePart.Parent = model

makeWeld("Weld", eyePart, base,
	CFrame.new(0,0,0, 0,0,1, 0,1,0, -1,0,0),
	CFrame.new(0.000187,0.025898,-0.699600, -1,0,0, 0,1,0, 0,0,-1))

local wings1 = makeMeshPart("Wings", "2854673665", Vector3.new(0.6499999761581421, 0.550000011920929, 0.5), baseColor, Enum.Material.SmoothPlastic)
wings1.Parent = model
makeWeld("Weld", wings1, base,
	CFrame.new(0, 0.180000007, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	CFrame.new(0.000187,1.500209,0.599899, -1,0,0, 0,1,0, 0,0,-1))

local wings2 = makeMeshPart("Wings", "2854673665", Vector3.new(0.550000011920929, 0.44999998807907104, 0.5), baseColor, Enum.Material.SmoothPlastic)
wings2.Parent = model
makeWeld("Weld", wings2, base,
	CFrame.new(0, 0.150000006, 0.129999995, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	CFrame.new(0.000187,0.902054,0.149872, -1,0,0, 0,1,0, 0,0,-1))

local horn54 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn54.Parent = model
makeWeld("Weld", horn54, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(0.000183,0.996097,-0.189758, -1,0,0, 0,1,0, 0,0,-1))

local horn56 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn56.Parent = model
makeWeld("Weld", horn56, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(0.000183,0.896487,0.260284, -1,0,0, 0,1,0, 0,0,-1))

local horn58 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn58.Parent = model
makeWeld("Weld", horn58, base,
	CFrame.new(0,0,0, 1,0,0, 0,0.939701,-0.341998, 0,0.341998,0.939701),
	CFrame.new(0.000183,0.705080,0.650116, -1,0,0, 0,1,0, 0,0,-1))

local horn60 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn60.Parent = model
makeWeld("Weld", horn60, base,
	CFrame.new(0,0,0, 1,0,0, 0,0.422593,-0.906320, 0,0.906320,0.422593),
	CFrame.new(0.000183,0.384767,0.787384, -1,0,0, 0,1,0, 0,0,-1))

local tail = makeMeshPart("Tail", "2861834252", Vector3.new(0.427852, 0.45, 0.48563), hornColor, Enum.Material.Neon)
tail.Parent = model
makeWeld("Weld", tail, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(-0.249832,-0.473633,1.274963, -1,0,0, 0,1,0, 0,0,-1))

local perksFolder = Instance.new("Folder")
perksFolder.Name = "perksFolder"
perksFolder.Parent = model

local chiVal = Instance.new("NumberValue")
chiVal.Name = "chi"
chiVal.Value = 9000000
chiVal.Parent = perksFolder

local coinsVal = Instance.new("NumberValue")
coinsVal.Name = "coins"
coinsVal.Value = 9000000
coinsVal.Parent = perksFolder

local ninjitsuVal = Instance.new("NumberValue")
ninjitsuVal.Name = "ninjitsu"
ninjitsuVal.Value = 9000000
ninjitsuVal.Parent = perksFolder

local requiredRebirths = Instance.new("NumberValue")
requiredRebirths.Name = "requiredRebirths"
requiredRebirths.Value = 15
requiredRebirths.Parent = model

local imageLabel = Instance.new("ImageLabel")
imageLabel.Name = "image"
imageLabel.Image = "rbxassetid://4776499462"
imageLabel.BackgroundTransparency = 1
imageLabel.BorderSizePixel = 0
imageLabel.Visible = false
imageLabel.Parent = model

local animController = Instance.new("AnimationController")
animController.Parent = model
Instance.new("Animator").Parent = animController

model.PrimaryPart = base
model.Parent = char

local bodyPos = Instance.new("BodyPosition")
bodyPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyPos.P = 20000
bodyPos.Position = rootPart.Position
bodyPos.Parent = base

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodyGyro.CFrame = rootPart.CFrame
bodyGyro.Parent = base

local flyingOffset = CFrame.new(-4.9, 1.5, -3)
local bobUp = false
local bobT = 0
local bobSpeed = 0.01
local bobMax = 1
local tiltAngle = 5

RunService.RenderStepped:Connect(function()
	if not bobUp then
		bobT = bobT + bobSpeed
		if bobT >= bobMax then bobUp = true end
		if tiltAngle < 5 then tiltAngle = tiltAngle + 0.1 end
	else
		bobT = bobT - bobSpeed
		if bobT <= 0 then bobUp = false end
		if tiltAngle > -5 then tiltAngle = tiltAngle - 0.1 end
	end
	local targetPos = (rootPart.CFrame * flyingOffset).p
	bodyPos.Position = Vector3.new(targetPos.X, targetPos.Y + bobT, targetPos.Z)
	if humanoid.MoveDirection == Vector3.new(0, 0, 0) then
		bodyGyro.CFrame = CFrame.new(base.Position, Vector3.new(rootPart.Position.X, base.Position.Y, rootPart.Position.Z)) * CFrame.Angles(math.rad(tiltAngle), 0, 0)
	else
		bodyGyro.CFrame = rootPart.CFrame * CFrame.Angles(math.rad(tiltAngle), 0, 0)
	end
end)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local lp = Players.LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local rootPart = char:WaitForChild("HumanoidRootPart")

local model = Instance.new("Model")
model.Name = "Void Omega Pegasus"

local base = Instance.new("MeshPart")
base.Name = "Base"
base.MeshId = "rbxassetid://2854375507"
base.Size = Vector3.new(0.5, 0.5, 0.5)
base.Color = Color3.fromRGB(170, 85, 0)
base.Material = Enum.Material.SmoothPlastic
base.CanCollide = false
base.CastShadow = false
base.Massless = true
base.RenderFidelity = Enum.RenderFidelity.Automatic
base.Parent = model

local eyes = Instance.new("Decal")
eyes.Name = "eyes"
eyes.Texture = "rbxassetid://75120384935836"
eyes.Color3 = Color3.new(1, 0.333, 0)
eyes.UVOffset = Vector2.new(-0, 0.0399999991)
eyes.UVScale = Vector2.new(0.400000006, 0.449999988)
eyes.Face = Enum.NormalId.Front
eyes.Parent = base

local pointLight = Instance.new("PointLight")
pointLight.Color = Color3.new(1, 0.333, 0)
pointLight.Parent = base

local petGui = Instance.new("BillboardGui")
petGui.Name = "petGui"
petGui.MaxDistance = 100
petGui.Size = UDim2.new(3, 0, 2, 0)
petGui.StudsOffset = Vector3.new(0, 2.200000047683716, 0)
petGui.Parent = base

local nameLabel = Instance.new("TextLabel")
nameLabel.Name = "nameLabel"
nameLabel.Text = "Void Omega Pegasus"
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.TextScaled = true
nameLabel.TextWrapped = true
nameLabel.TextStrokeTransparency = 0.800000011920929
nameLabel.BackgroundTransparency = 1
nameLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
nameLabel.Position = UDim2.new(0, 0, 0.699999988079071, 0)
nameLabel.Size = UDim2.new(1, 0, 0.30000001192092896, 0)
nameLabel.Parent = petGui

local levelLabel = Instance.new("TextLabel")
levelLabel.Name = "levelLabel"
levelLabel.Text = "Level 200"
levelLabel.TextColor3 = Color3.new(0, 0, 0)
levelLabel.TextScaled = true
levelLabel.TextWrapped = true
levelLabel.TextStrokeColor3 = Color3.new(0.3333333432674408, 1, 0)
levelLabel.TextStrokeTransparency = 0.800000011920929
levelLabel.BackgroundTransparency = 1
levelLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
levelLabel.Position = UDim2.new(0, 0, 0.44999998807907104, 0)
levelLabel.Size = UDim2.new(1, 0, 0.25, 0)
levelLabel.Parent = petGui

local targetLabel = Instance.new("TextLabel")
targetLabel.Name = "targetLabel"
targetLabel.Text = "Target: None"
targetLabel.TextColor3 = Color3.new(0, 0, 0)
targetLabel.TextScaled = true
targetLabel.TextWrapped = true
targetLabel.TextStrokeColor3 = Color3.new(1, 0, 0)
targetLabel.TextStrokeTransparency = 0.699999988079071
targetLabel.BackgroundTransparency = 1
targetLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
targetLabel.AnchorPoint = Vector2.new(0.5, 0)
targetLabel.Position = UDim2.new(0.5, 0, 0.09000000357627869, 0)
targetLabel.Size = UDim2.new(1.2000000476837158, 0, 0.18000000715255737, 0)
targetLabel.Parent = petGui

local function makeEvoLabel(name, text, tc, sc, st, visible)
	local lbl = Instance.new("TextLabel")
	lbl.Name = name
	lbl.Text = text
	lbl.TextColor3 = tc
	lbl.TextScaled = true
	lbl.TextWrapped = true
	lbl.TextStrokeColor3 = sc
	lbl.TextStrokeTransparency = st
	lbl.BackgroundTransparency = 1
	lbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
	lbl.Position = UDim2.new(0, 0, 0.27000001072883606, 0)
	lbl.Size = UDim2.new(1, 0, 0.18000000715255737, 0)
	lbl.Visible = visible or false
	lbl.Parent = petGui
	local sv = Instance.new("StringValue")
	sv.Name = "whichEvolution"
	sv.Value = text
	sv.Parent = lbl
	return lbl
end

makeEvoLabel("evolvedLabel", "EVOLVED", Color3.new(0.6666666865348816, 0.3333333432674408, 1), Color3.new(0.6666666865348816, 0.3333333432674408, 1), 0.800000011920929, false)
makeEvoLabel("eternalizedLabel", "ETERNALIZED", Color3.new(0, 0, 0), Color3.new(1, 0.3333333432674408, 0), 0.5, false)
makeEvoLabel("immortalizedLabel", "IMMORTAL", Color3.new(0, 0, 0), Color3.new(0, 0, 1), 0.5, false)
makeEvoLabel("legendLabel", "LEGEND", Color3.new(0, 0, 0), Color3.new(0.9450980424880981, 0.8196078538894653, 0.10196078568696976), 0.4000000059604645, false)
makeEvoLabel("elementalizedLabel", "ELEMENTAL", Color3.new(0, 0, 0), Color3.new(0, 1, 1), 0.4000000059604645, false)
makeEvoLabel("xGenesisLabel", "X-GENESIS", Color3.new(0, 0, 0), Color3.new(1, 0, 0), 0.4000000059604645, false)
makeEvoLabel("zMasterLabel", "Z-MASTER", Color3.new(0, 0, 0), Color3.new(0.6666666865348816, 0, 1), 0.4000000059604645, false)
makeEvoLabel("ultraBeastLabel", "ULTRA-BEAST", Color3.new(1, 0.6666666865348816, 0), Color3.new(1, 0.3333333432674408, 0), 0.4000000059604645, false)
makeEvoLabel("infinityLordLabel", "INFINITY-LORD", Color3.new(0, 1, 1), Color3.new(0, 0.3333333432674408, 1), 0.4000000059604645, false)
makeEvoLabel("chaosTitanLabel", "CHAOS-TITAN", Color3.new(1, 0.3333333432674408, 0), Color3.new(0.8509804606437683, 0, 0), 0.4000000059604645, false)
makeEvoLabel("ZXLegendLabel", "ZX-LEGEND", Color3.new(0.3333333432674408, 1, 0), Color3.new(0.2196078598499298, 0.658823549747467, 0), 0.4000000059604645, false)
makeEvoLabel("darkElementLabel", "DARK-ELEMENT", Color3.new(0.6666666865348816, 0, 1), Color3.new(0.34117648005485535, 0, 0.5098039507865906), 0.4000000059604645, false)
makeEvoLabel("shadowStormLabel", "SHADOWSTORM", Color3.new(1, 0.3333333432674408, 0), Color3.new(0.8509804606437683, 0, 0), 0.4000000059604645, false)
makeEvoLabel("vortexEliteLabel", "VORTEX-ELITE", Color3.new(1, 0.7843137979507446, 0), Color3.new(1, 0.6352941393852234, 0), 0.4000000059604645, true)

local glowColor = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(1, 0.333, 0)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 0.333, 0))
})

local function makeParticle(parent, props)
	local pe = Instance.new("ParticleEmitter")
	for k, v in pairs(props) do pe[k] = v end
	pe.Parent = parent
end

makeParticle(base, {
	Name = "glowParticle",
	Color = glowColor,
	LightEmission = 1,
	LockedToPart = true,
	Rate = 50,
	RotSpeed = NumberRange.new(-200, 200),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.8), NumberSequenceKeypoint.new(1, 0.8)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(45, 45),
	Texture = "rbxassetid://2796974629",
	Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0.856),
		NumberSequenceKeypoint.new(0.533, 0.937),
		NumberSequenceKeypoint.new(1, 1)
	}),
	ZOffset = 0.1,
	Lifetime = NumberRange.new(2, 2),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.5,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-500, 500),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.6875), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(4, 4),
	SpreadAngle = Vector2.new(-360, 360),
	Texture = "rbxassetid://3258517083",
	Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1),
		NumberSequenceKeypoint.new(0.294, 0),
		NumberSequenceKeypoint.new(0.625, 0.35),
		NumberSequenceKeypoint.new(1, 1)
	}),
	Lifetime = NumberRange.new(0.2, 0.2),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.8,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-360, 360),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.1475), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(900, 900),
	Texture = "rbxassetid://3111898064",
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.619), NumberSequenceKeypoint.new(1, 1)}),
	Lifetime = NumberRange.new(1, 1),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.8,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-360, 360),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.1475), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(900, 900),
	Texture = "rbxassetid://3111898064",
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.619), NumberSequenceKeypoint.new(1, 1)}),
	Lifetime = NumberRange.new(1, 1),
})

local function makeMeshPart(name, meshId, size, color, material)
	local p = Instance.new("MeshPart")
	p.Name = name
	p.MeshId = "rbxassetid://" .. meshId
	p.Size = size
	p.Color = color
	p.Material = material
	p.CanCollide = false
	p.CastShadow = false
	p.Massless = true
	p.RenderFidelity = Enum.RenderFidelity.Automatic
	return p
end

local function makeWeld(name, part0, part1, c0, c1)
	local w = Instance.new("ManualWeld")
	w.Name = name
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
	w.Parent = part0
	return w
end

local hornColor = Color3.fromRGB(218, 133, 65)
local baseColor = Color3.fromRGB(170, 85, 0)

local horn2 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1.899999976158142, 2), hornColor, Enum.Material.Neon)
horn2.Parent = model
makeWeld("Weld", horn2, base,
	CFrame.new(0,0,0, 1,-0,0, 0,0.906297,0.422642, -0,-0.422642,0.906297),
	CFrame.new(0.000183,1.201408,-0.785553, -1,0,0, 0,1,0, 0,0,-1))

local horns = makeMeshPart("Horns", "2861539809", Vector3.new(1.5, 0.6000000238418579, 1), hornColor, Enum.Material.Neon)
horns.Parent = model
makeWeld("Weld", horns, base,
	CFrame.new(0,0,0, 0.087131,-0,-0.996197, 0,1,-0, 0.996197,0,0.087131),
	CFrame.new(0.000183,0.899905,-0.400085, -1,0,0, 0,1,0, 0,0,-1))

local eyePart = Instance.new("Part")
eyePart.Name = "eyePart"
eyePart.Size = Vector3.new(0.05999999865889549, 1.2000000476837158, 1)
eyePart.Color = baseColor
eyePart.Material = Enum.Material.SmoothPlastic
eyePart.Transparency = 1
eyePart.CanCollide = false
eyePart.CastShadow = false
eyePart.Massless = true
eyePart.Parent = model

makeWeld("Weld", eyePart, base,
	CFrame.new(0,0,0, 0,0,1, 0,1,0, -1,0,0),
	CFrame.new(0.000187,0.025898,-0.699600, -1,0,0, 0,1,0, 0,0,-1))

local wings1 = makeMeshPart("Wings", "2854673665", Vector3.new(0.6499999761581421, 0.550000011920929, 0.5), baseColor, Enum.Material.SmoothPlastic)
wings1.Parent = model
makeWeld("Weld", wings1, base,
	CFrame.new(0, 0.180000007, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	CFrame.new(0.000187,1.500209,0.599899, -1,0,0, 0,1,0, 0,0,-1))

local wings2 = makeMeshPart("Wings", "2854673665", Vector3.new(0.550000011920929, 0.44999998807907104, 0.5), baseColor, Enum.Material.SmoothPlastic)
wings2.Parent = model
makeWeld("Weld", wings2, base,
	CFrame.new(0, 0.150000006, 0.129999995, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	CFrame.new(0.000187,0.902054,0.149872, -1,0,0, 0,1,0, 0,0,-1))

local horn54 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn54.Parent = model
makeWeld("Weld", horn54, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(0.000183,0.996097,-0.189758, -1,0,0, 0,1,0, 0,0,-1))

local horn56 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn56.Parent = model
makeWeld("Weld", horn56, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(0.000183,0.896487,0.260284, -1,0,0, 0,1,0, 0,0,-1))

local horn58 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn58.Parent = model
makeWeld("Weld", horn58, base,
	CFrame.new(0,0,0, 1,0,0, 0,0.939701,-0.341998, 0,0.341998,0.939701),
	CFrame.new(0.000183,0.705080,0.650116, -1,0,0, 0,1,0, 0,0,-1))

local horn60 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn60.Parent = model
makeWeld("Weld", horn60, base,
	CFrame.new(0,0,0, 1,0,0, 0,0.422593,-0.906320, 0,0.906320,0.422593),
	CFrame.new(0.000183,0.384767,0.787384, -1,0,0, 0,1,0, 0,0,-1))

local tail = makeMeshPart("Tail", "2861834252", Vector3.new(0.427852, 0.45, 0.48563), hornColor, Enum.Material.Neon)
tail.Parent = model
makeWeld("Weld", tail, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(-0.249832,-0.473633,1.274963, -1,0,0, 0,1,0, 0,0,-1))

local perksFolder = Instance.new("Folder")
perksFolder.Name = "perksFolder"
perksFolder.Parent = model

local chiVal = Instance.new("NumberValue")
chiVal.Name = "chi"
chiVal.Value = 9000000
chiVal.Parent = perksFolder

local coinsVal = Instance.new("NumberValue")
coinsVal.Name = "coins"
coinsVal.Value = 9000000
coinsVal.Parent = perksFolder

local ninjitsuVal = Instance.new("NumberValue")
ninjitsuVal.Name = "ninjitsu"
ninjitsuVal.Value = 9000000
ninjitsuVal.Parent = perksFolder

local requiredRebirths = Instance.new("NumberValue")
requiredRebirths.Name = "requiredRebirths"
requiredRebirths.Value = 15
requiredRebirths.Parent = model

local imageLabel = Instance.new("ImageLabel")
imageLabel.Name = "image"
imageLabel.Image = "rbxassetid://4776499462"
imageLabel.BackgroundTransparency = 1
imageLabel.BorderSizePixel = 0
imageLabel.Visible = false
imageLabel.Parent = model

local animController = Instance.new("AnimationController")
animController.Parent = model
Instance.new("Animator").Parent = animController

model.PrimaryPart = base
model.Parent = char

local bodyPos = Instance.new("BodyPosition")
bodyPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyPos.P = 20000
bodyPos.Position = rootPart.Position
bodyPos.Parent = base

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodyGyro.CFrame = rootPart.CFrame
bodyGyro.Parent = base

local flyingOffset = CFrame.new(-4.9, 1.5, 4)
local bobUp = false
local bobT = 0
local bobSpeed = 0.01
local bobMax = 1
local tiltAngle = 5

RunService.RenderStepped:Connect(function()
	if not bobUp then
		bobT = bobT + bobSpeed
		if bobT >= bobMax then bobUp = true end
		if tiltAngle < 5 then tiltAngle = tiltAngle + 0.1 end
	else
		bobT = bobT - bobSpeed
		if bobT <= 0 then bobUp = false end
		if tiltAngle > -5 then tiltAngle = tiltAngle - 0.1 end
	end
	local targetPos = (rootPart.CFrame * flyingOffset).p
	bodyPos.Position = Vector3.new(targetPos.X, targetPos.Y + bobT, targetPos.Z)
	if humanoid.MoveDirection == Vector3.new(0, 0, 0) then
		bodyGyro.CFrame = CFrame.new(base.Position, Vector3.new(rootPart.Position.X, base.Position.Y, rootPart.Position.Z)) * CFrame.Angles(math.rad(tiltAngle), 0, 0)
	else
		bodyGyro.CFrame = rootPart.CFrame * CFrame.Angles(math.rad(tiltAngle), 0, 0)
	end
end)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local lp = Players.LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local rootPart = char:WaitForChild("HumanoidRootPart")

local model = Instance.new("Model")
model.Name = "Void Omega Pegasus"

local base = Instance.new("MeshPart")
base.Name = "Base"
base.MeshId = "rbxassetid://2854375507"
base.Size = Vector3.new(0.5, 0.5, 0.5)
base.Color = Color3.fromRGB(170, 85, 0)
base.Material = Enum.Material.SmoothPlastic
base.CanCollide = false
base.CastShadow = false
base.Massless = true
base.RenderFidelity = Enum.RenderFidelity.Automatic
base.Parent = model

local eyes = Instance.new("Decal")
eyes.Name = "eyes"
eyes.Texture = "rbxassetid://75120384935836"
eyes.Color3 = Color3.new(1, 0.333, 0)
eyes.UVOffset = Vector2.new(-0, 0.0399999991)
eyes.UVScale = Vector2.new(0.400000006, 0.449999988)
eyes.Face = Enum.NormalId.Front
eyes.Parent = base

local pointLight = Instance.new("PointLight")
pointLight.Color = Color3.new(1, 0.333, 0)
pointLight.Parent = base

local petGui = Instance.new("BillboardGui")
petGui.Name = "petGui"
petGui.MaxDistance = 100
petGui.Size = UDim2.new(3, 0, 2, 0)
petGui.StudsOffset = Vector3.new(0, 2.200000047683716, 0)
petGui.Parent = base

local nameLabel = Instance.new("TextLabel")
nameLabel.Name = "nameLabel"
nameLabel.Text = "Void Omega Pegasus"
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.TextScaled = true
nameLabel.TextWrapped = true
nameLabel.TextStrokeTransparency = 0.800000011920929
nameLabel.BackgroundTransparency = 1
nameLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
nameLabel.Position = UDim2.new(0, 0, 0.699999988079071, 0)
nameLabel.Size = UDim2.new(1, 0, 0.30000001192092896, 0)
nameLabel.Parent = petGui

local levelLabel = Instance.new("TextLabel")
levelLabel.Name = "levelLabel"
levelLabel.Text = "Level 200"
levelLabel.TextColor3 = Color3.new(0, 0, 0)
levelLabel.TextScaled = true
levelLabel.TextWrapped = true
levelLabel.TextStrokeColor3 = Color3.new(0.3333333432674408, 1, 0)
levelLabel.TextStrokeTransparency = 0.800000011920929
levelLabel.BackgroundTransparency = 1
levelLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
levelLabel.Position = UDim2.new(0, 0, 0.44999998807907104, 0)
levelLabel.Size = UDim2.new(1, 0, 0.25, 0)
levelLabel.Parent = petGui

local targetLabel = Instance.new("TextLabel")
targetLabel.Name = "targetLabel"
targetLabel.Text = "Target: None"
targetLabel.TextColor3 = Color3.new(0, 0, 0)
targetLabel.TextScaled = true
targetLabel.TextWrapped = true
targetLabel.TextStrokeColor3 = Color3.new(1, 0, 0)
targetLabel.TextStrokeTransparency = 0.699999988079071
targetLabel.BackgroundTransparency = 1
targetLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
targetLabel.AnchorPoint = Vector2.new(0.5, 0)
targetLabel.Position = UDim2.new(0.5, 0, 0.09000000357627869, 0)
targetLabel.Size = UDim2.new(1.2000000476837158, 0, 0.18000000715255737, 0)
targetLabel.Parent = petGui

local function makeEvoLabel(name, text, tc, sc, st, visible)
	local lbl = Instance.new("TextLabel")
	lbl.Name = name
	lbl.Text = text
	lbl.TextColor3 = tc
	lbl.TextScaled = true
	lbl.TextWrapped = true
	lbl.TextStrokeColor3 = sc
	lbl.TextStrokeTransparency = st
	lbl.BackgroundTransparency = 1
	lbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
	lbl.Position = UDim2.new(0, 0, 0.27000001072883606, 0)
	lbl.Size = UDim2.new(1, 0, 0.18000000715255737, 0)
	lbl.Visible = visible or false
	lbl.Parent = petGui
	local sv = Instance.new("StringValue")
	sv.Name = "whichEvolution"
	sv.Value = text
	sv.Parent = lbl
	return lbl
end

makeEvoLabel("evolvedLabel", "EVOLVED", Color3.new(0.6666666865348816, 0.3333333432674408, 1), Color3.new(0.6666666865348816, 0.3333333432674408, 1), 0.800000011920929, false)
makeEvoLabel("eternalizedLabel", "ETERNALIZED", Color3.new(0, 0, 0), Color3.new(1, 0.3333333432674408, 0), 0.5, false)
makeEvoLabel("immortalizedLabel", "IMMORTAL", Color3.new(0, 0, 0), Color3.new(0, 0, 1), 0.5, false)
makeEvoLabel("legendLabel", "LEGEND", Color3.new(0, 0, 0), Color3.new(0.9450980424880981, 0.8196078538894653, 0.10196078568696976), 0.4000000059604645, false)
makeEvoLabel("elementalizedLabel", "ELEMENTAL", Color3.new(0, 0, 0), Color3.new(0, 1, 1), 0.4000000059604645, false)
makeEvoLabel("xGenesisLabel", "X-GENESIS", Color3.new(0, 0, 0), Color3.new(1, 0, 0), 0.4000000059604645, false)
makeEvoLabel("zMasterLabel", "Z-MASTER", Color3.new(0, 0, 0), Color3.new(0.6666666865348816, 0, 1), 0.4000000059604645, false)
makeEvoLabel("ultraBeastLabel", "ULTRA-BEAST", Color3.new(1, 0.6666666865348816, 0), Color3.new(1, 0.3333333432674408, 0), 0.4000000059604645, false)
makeEvoLabel("infinityLordLabel", "INFINITY-LORD", Color3.new(0, 1, 1), Color3.new(0, 0.3333333432674408, 1), 0.4000000059604645, false)
makeEvoLabel("chaosTitanLabel", "CHAOS-TITAN", Color3.new(1, 0.3333333432674408, 0), Color3.new(0.8509804606437683, 0, 0), 0.4000000059604645, false)
makeEvoLabel("ZXLegendLabel", "ZX-LEGEND", Color3.new(0.3333333432674408, 1, 0), Color3.new(0.2196078598499298, 0.658823549747467, 0), 0.4000000059604645, false)
makeEvoLabel("darkElementLabel", "DARK-ELEMENT", Color3.new(0.6666666865348816, 0, 1), Color3.new(0.34117648005485535, 0, 0.5098039507865906), 0.4000000059604645, false)
makeEvoLabel("shadowStormLabel", "SHADOWSTORM", Color3.new(1, 0.3333333432674408, 0), Color3.new(0.8509804606437683, 0, 0), 0.4000000059604645, false)
makeEvoLabel("vortexEliteLabel", "VORTEX-ELITE", Color3.new(1, 0.7843137979507446, 0), Color3.new(1, 0.6352941393852234, 0), 0.4000000059604645, true)

local glowColor = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(1, 0.333, 0)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 0.333, 0))
})

local function makeParticle(parent, props)
	local pe = Instance.new("ParticleEmitter")
	for k, v in pairs(props) do pe[k] = v end
	pe.Parent = parent
end

makeParticle(base, {
	Name = "glowParticle",
	Color = glowColor,
	LightEmission = 1,
	LockedToPart = true,
	Rate = 50,
	RotSpeed = NumberRange.new(-200, 200),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.8), NumberSequenceKeypoint.new(1, 0.8)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(45, 45),
	Texture = "rbxassetid://2796974629",
	Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0.856),
		NumberSequenceKeypoint.new(0.533, 0.937),
		NumberSequenceKeypoint.new(1, 1)
	}),
	ZOffset = 0.1,
	Lifetime = NumberRange.new(2, 2),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.5,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-500, 500),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.6875), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(4, 4),
	SpreadAngle = Vector2.new(-360, 360),
	Texture = "rbxassetid://3258517083",
	Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1),
		NumberSequenceKeypoint.new(0.294, 0),
		NumberSequenceKeypoint.new(0.625, 0.35),
		NumberSequenceKeypoint.new(1, 1)
	}),
	Lifetime = NumberRange.new(0.2, 0.2),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.8,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-360, 360),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.1475), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(900, 900),
	Texture = "rbxassetid://3111898064",
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.619), NumberSequenceKeypoint.new(1, 1)}),
	Lifetime = NumberRange.new(1, 1),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.8,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-360, 360),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.1475), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(900, 900),
	Texture = "rbxassetid://3111898064",
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.619), NumberSequenceKeypoint.new(1, 1)}),
	Lifetime = NumberRange.new(1, 1),
})

local function makeMeshPart(name, meshId, size, color, material)
	local p = Instance.new("MeshPart")
	p.Name = name
	p.MeshId = "rbxassetid://" .. meshId
	p.Size = size
	p.Color = color
	p.Material = material
	p.CanCollide = false
	p.CastShadow = false
	p.Massless = true
	p.RenderFidelity = Enum.RenderFidelity.Automatic
	return p
end

local function makeWeld(name, part0, part1, c0, c1)
	local w = Instance.new("ManualWeld")
	w.Name = name
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
	w.Parent = part0
	return w
end

local hornColor = Color3.fromRGB(218, 133, 65)
local baseColor = Color3.fromRGB(170, 85, 0)

local horn2 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1.899999976158142, 2), hornColor, Enum.Material.Neon)
horn2.Parent = model
makeWeld("Weld", horn2, base,
	CFrame.new(0,0,0, 1,-0,0, 0,0.906297,0.422642, -0,-0.422642,0.906297),
	CFrame.new(0.000183,1.201408,-0.785553, -1,0,0, 0,1,0, 0,0,-1))

local horns = makeMeshPart("Horns", "2861539809", Vector3.new(1.5, 0.6000000238418579, 1), hornColor, Enum.Material.Neon)
horns.Parent = model
makeWeld("Weld", horns, base,
	CFrame.new(0,0,0, 0.087131,-0,-0.996197, 0,1,-0, 0.996197,0,0.087131),
	CFrame.new(0.000183,0.899905,-0.400085, -1,0,0, 0,1,0, 0,0,-1))

local eyePart = Instance.new("Part")
eyePart.Name = "eyePart"
eyePart.Size = Vector3.new(0.05999999865889549, 1.2000000476837158, 1)
eyePart.Color = baseColor
eyePart.Material = Enum.Material.SmoothPlastic
eyePart.Transparency = 1
eyePart.CanCollide = false
eyePart.CastShadow = false
eyePart.Massless = true
eyePart.Parent = model

makeWeld("Weld", eyePart, base,
	CFrame.new(0,0,0, 0,0,1, 0,1,0, -1,0,0),
	CFrame.new(0.000187,0.025898,-0.699600, -1,0,0, 0,1,0, 0,0,-1))

local wings1 = makeMeshPart("Wings", "2854673665", Vector3.new(0.6499999761581421, 0.550000011920929, 0.5), baseColor, Enum.Material.SmoothPlastic)
wings1.Parent = model
makeWeld("Weld", wings1, base,
	CFrame.new(0, 0.180000007, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	CFrame.new(0.000187,1.500209,0.599899, -1,0,0, 0,1,0, 0,0,-1))

local wings2 = makeMeshPart("Wings", "2854673665", Vector3.new(0.550000011920929, 0.44999998807907104, 0.5), baseColor, Enum.Material.SmoothPlastic)
wings2.Parent = model
makeWeld("Weld", wings2, base,
	CFrame.new(0, 0.150000006, 0.129999995, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	CFrame.new(0.000187,0.902054,0.149872, -1,0,0, 0,1,0, 0,0,-1))

local horn54 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn54.Parent = model
makeWeld("Weld", horn54, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(0.000183,0.996097,-0.189758, -1,0,0, 0,1,0, 0,0,-1))

local horn56 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn56.Parent = model
makeWeld("Weld", horn56, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(0.000183,0.896487,0.260284, -1,0,0, 0,1,0, 0,0,-1))

local horn58 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn58.Parent = model
makeWeld("Weld", horn58, base,
	CFrame.new(0,0,0, 1,0,0, 0,0.939701,-0.341998, 0,0.341998,0.939701),
	CFrame.new(0.000183,0.705080,0.650116, -1,0,0, 0,1,0, 0,0,-1))

local horn60 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn60.Parent = model
makeWeld("Weld", horn60, base,
	CFrame.new(0,0,0, 1,0,0, 0,0.422593,-0.906320, 0,0.906320,0.422593),
	CFrame.new(0.000183,0.384767,0.787384, -1,0,0, 0,1,0, 0,0,-1))

local tail = makeMeshPart("Tail", "2861834252", Vector3.new(0.427852, 0.45, 0.48563), hornColor, Enum.Material.Neon)
tail.Parent = model
makeWeld("Weld", tail, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(-0.249832,-0.473633,1.274963, -1,0,0, 0,1,0, 0,0,-1))

local perksFolder = Instance.new("Folder")
perksFolder.Name = "perksFolder"
perksFolder.Parent = model

local chiVal = Instance.new("NumberValue")
chiVal.Name = "chi"
chiVal.Value = 9000000
chiVal.Parent = perksFolder

local coinsVal = Instance.new("NumberValue")
coinsVal.Name = "coins"
coinsVal.Value = 9000000
coinsVal.Parent = perksFolder

local ninjitsuVal = Instance.new("NumberValue")
ninjitsuVal.Name = "ninjitsu"
ninjitsuVal.Value = 9000000
ninjitsuVal.Parent = perksFolder

local requiredRebirths = Instance.new("NumberValue")
requiredRebirths.Name = "requiredRebirths"
requiredRebirths.Value = 15
requiredRebirths.Parent = model

local imageLabel = Instance.new("ImageLabel")
imageLabel.Name = "image"
imageLabel.Image = "rbxassetid://4776499462"
imageLabel.BackgroundTransparency = 1
imageLabel.BorderSizePixel = 0
imageLabel.Visible = false
imageLabel.Parent = model

local animController = Instance.new("AnimationController")
animController.Parent = model
Instance.new("Animator").Parent = animController

model.PrimaryPart = base
model.Parent = char

local bodyPos = Instance.new("BodyPosition")
bodyPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyPos.P = 20000
bodyPos.Position = rootPart.Position
bodyPos.Parent = base

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodyGyro.CFrame = rootPart.CFrame
bodyGyro.Parent = base

local flyingOffset = CFrame.new(4.9, 1.5, 4)
local bobUp = false
local bobT = 0
local bobSpeed = 0.01
local bobMax = 1
local tiltAngle = 5

RunService.RenderStepped:Connect(function()
	if not bobUp then
		bobT = bobT + bobSpeed
		if bobT >= bobMax then bobUp = true end
		if tiltAngle < 5 then tiltAngle = tiltAngle + 0.1 end
	else
		bobT = bobT - bobSpeed
		if bobT <= 0 then bobUp = false end
		if tiltAngle > -5 then tiltAngle = tiltAngle - 0.1 end
	end
	local targetPos = (rootPart.CFrame * flyingOffset).p
	bodyPos.Position = Vector3.new(targetPos.X, targetPos.Y + bobT, targetPos.Z)
	if humanoid.MoveDirection == Vector3.new(0, 0, 0) then
		bodyGyro.CFrame = CFrame.new(base.Position, Vector3.new(rootPart.Position.X, base.Position.Y, rootPart.Position.Z)) * CFrame.Angles(math.rad(tiltAngle), 0, 0)
	else
		bodyGyro.CFrame = rootPart.CFrame * CFrame.Angles(math.rad(tiltAngle), 0, 0)
	end
end)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local lp = Players.LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local rootPart = char:WaitForChild("HumanoidRootPart")

local model = Instance.new("Model")
model.Name = "Void Omega Pegasus"

local base = Instance.new("MeshPart")
base.Name = "Base"
base.MeshId = "rbxassetid://2854375507"
base.Size = Vector3.new(0.5, 0.5, 0.5)
base.Color = Color3.fromRGB(170, 85, 0)
base.Material = Enum.Material.SmoothPlastic
base.CanCollide = false
base.CastShadow = false
base.Massless = true
base.RenderFidelity = Enum.RenderFidelity.Automatic
base.Parent = model

local eyes = Instance.new("Decal")
eyes.Name = "eyes"
eyes.Texture = "rbxassetid://75120384935836"
eyes.Color3 = Color3.new(1, 0.333, 0)
eyes.UVOffset = Vector2.new(-0, 0.0399999991)
eyes.UVScale = Vector2.new(0.400000006, 0.449999988)
eyes.Face = Enum.NormalId.Front
eyes.Parent = base

local pointLight = Instance.new("PointLight")
pointLight.Color = Color3.new(1, 0.333, 0)
pointLight.Parent = base

local petGui = Instance.new("BillboardGui")
petGui.Name = "petGui"
petGui.MaxDistance = 100
petGui.Size = UDim2.new(3, 0, 2, 0)
petGui.StudsOffset = Vector3.new(0, 2.200000047683716, 0)
petGui.Parent = base

local nameLabel = Instance.new("TextLabel")
nameLabel.Name = "nameLabel"
nameLabel.Text = "Void Omega Pegasus"
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.TextScaled = true
nameLabel.TextWrapped = true
nameLabel.TextStrokeTransparency = 0.800000011920929
nameLabel.BackgroundTransparency = 1
nameLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
nameLabel.Position = UDim2.new(0, 0, 0.699999988079071, 0)
nameLabel.Size = UDim2.new(1, 0, 0.30000001192092896, 0)
nameLabel.Parent = petGui

local levelLabel = Instance.new("TextLabel")
levelLabel.Name = "levelLabel"
levelLabel.Text = "Level 200"
levelLabel.TextColor3 = Color3.new(0, 0, 0)
levelLabel.TextScaled = true
levelLabel.TextWrapped = true
levelLabel.TextStrokeColor3 = Color3.new(0.3333333432674408, 1, 0)
levelLabel.TextStrokeTransparency = 0.800000011920929
levelLabel.BackgroundTransparency = 1
levelLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
levelLabel.Position = UDim2.new(0, 0, 0.44999998807907104, 0)
levelLabel.Size = UDim2.new(1, 0, 0.25, 0)
levelLabel.Parent = petGui

local targetLabel = Instance.new("TextLabel")
targetLabel.Name = "targetLabel"
targetLabel.Text = "Target: None"
targetLabel.TextColor3 = Color3.new(0, 0, 0)
targetLabel.TextScaled = true
targetLabel.TextWrapped = true
targetLabel.TextStrokeColor3 = Color3.new(1, 0, 0)
targetLabel.TextStrokeTransparency = 0.699999988079071
targetLabel.BackgroundTransparency = 1
targetLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
targetLabel.AnchorPoint = Vector2.new(0.5, 0)
targetLabel.Position = UDim2.new(0.5, 0, 0.09000000357627869, 0)
targetLabel.Size = UDim2.new(1.2000000476837158, 0, 0.18000000715255737, 0)
targetLabel.Parent = petGui

local function makeEvoLabel(name, text, tc, sc, st, visible)
	local lbl = Instance.new("TextLabel")
	lbl.Name = name
	lbl.Text = text
	lbl.TextColor3 = tc
	lbl.TextScaled = true
	lbl.TextWrapped = true
	lbl.TextStrokeColor3 = sc
	lbl.TextStrokeTransparency = st
	lbl.BackgroundTransparency = 1
	lbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
	lbl.Position = UDim2.new(0, 0, 0.27000001072883606, 0)
	lbl.Size = UDim2.new(1, 0, 0.18000000715255737, 0)
	lbl.Visible = visible or false
	lbl.Parent = petGui
	local sv = Instance.new("StringValue")
	sv.Name = "whichEvolution"
	sv.Value = text
	sv.Parent = lbl
	return lbl
end

makeEvoLabel("evolvedLabel", "EVOLVED", Color3.new(0.6666666865348816, 0.3333333432674408, 1), Color3.new(0.6666666865348816, 0.3333333432674408, 1), 0.800000011920929, false)
makeEvoLabel("eternalizedLabel", "ETERNALIZED", Color3.new(0, 0, 0), Color3.new(1, 0.3333333432674408, 0), 0.5, false)
makeEvoLabel("immortalizedLabel", "IMMORTAL", Color3.new(0, 0, 0), Color3.new(0, 0, 1), 0.5, false)
makeEvoLabel("legendLabel", "LEGEND", Color3.new(0, 0, 0), Color3.new(0.9450980424880981, 0.8196078538894653, 0.10196078568696976), 0.4000000059604645, false)
makeEvoLabel("elementalizedLabel", "ELEMENTAL", Color3.new(0, 0, 0), Color3.new(0, 1, 1), 0.4000000059604645, false)
makeEvoLabel("xGenesisLabel", "X-GENESIS", Color3.new(0, 0, 0), Color3.new(1, 0, 0), 0.4000000059604645, false)
makeEvoLabel("zMasterLabel", "Z-MASTER", Color3.new(0, 0, 0), Color3.new(0.6666666865348816, 0, 1), 0.4000000059604645, false)
makeEvoLabel("ultraBeastLabel", "ULTRA-BEAST", Color3.new(1, 0.6666666865348816, 0), Color3.new(1, 0.3333333432674408, 0), 0.4000000059604645, false)
makeEvoLabel("infinityLordLabel", "INFINITY-LORD", Color3.new(0, 1, 1), Color3.new(0, 0.3333333432674408, 1), 0.4000000059604645, false)
makeEvoLabel("chaosTitanLabel", "CHAOS-TITAN", Color3.new(1, 0.3333333432674408, 0), Color3.new(0.8509804606437683, 0, 0), 0.4000000059604645, false)
makeEvoLabel("ZXLegendLabel", "ZX-LEGEND", Color3.new(0.3333333432674408, 1, 0), Color3.new(0.2196078598499298, 0.658823549747467, 0), 0.4000000059604645, false)
makeEvoLabel("darkElementLabel", "DARK-ELEMENT", Color3.new(0.6666666865348816, 0, 1), Color3.new(0.34117648005485535, 0, 0.5098039507865906), 0.4000000059604645, false)
makeEvoLabel("shadowStormLabel", "SHADOWSTORM", Color3.new(1, 0.3333333432674408, 0), Color3.new(0.8509804606437683, 0, 0), 0.4000000059604645, false)
makeEvoLabel("vortexEliteLabel", "VORTEX-ELITE", Color3.new(1, 0.7843137979507446, 0), Color3.new(1, 0.6352941393852234, 0), 0.4000000059604645, true)

local glowColor = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(1, 0.333, 0)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 0.333, 0))
})

local function makeParticle(parent, props)
	local pe = Instance.new("ParticleEmitter")
	for k, v in pairs(props) do pe[k] = v end
	pe.Parent = parent
end

makeParticle(base, {
	Name = "glowParticle",
	Color = glowColor,
	LightEmission = 1,
	LockedToPart = true,
	Rate = 50,
	RotSpeed = NumberRange.new(-200, 200),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.8), NumberSequenceKeypoint.new(1, 0.8)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(45, 45),
	Texture = "rbxassetid://2796974629",
	Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0.856),
		NumberSequenceKeypoint.new(0.533, 0.937),
		NumberSequenceKeypoint.new(1, 1)
	}),
	ZOffset = 0.1,
	Lifetime = NumberRange.new(2, 2),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.5,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-500, 500),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.6875), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(4, 4),
	SpreadAngle = Vector2.new(-360, 360),
	Texture = "rbxassetid://3258517083",
	Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1),
		NumberSequenceKeypoint.new(0.294, 0),
		NumberSequenceKeypoint.new(0.625, 0.35),
		NumberSequenceKeypoint.new(1, 1)
	}),
	Lifetime = NumberRange.new(0.2, 0.2),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.8,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-360, 360),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.1475), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(900, 900),
	Texture = "rbxassetid://3111898064",
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.619), NumberSequenceKeypoint.new(1, 1)}),
	Lifetime = NumberRange.new(1, 1),
})
makeParticle(base, {
	Color = glowColor,
	LightEmission = 0.8,
	LockedToPart = true,
	Rate = 40,
	RotSpeed = NumberRange.new(-360, 360),
	Rotation = NumberRange.new(-360, 360),
	Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.1475), NumberSequenceKeypoint.new(1, 0)}),
	Speed = NumberRange.new(0, 0),
	SpreadAngle = Vector2.new(900, 900),
	Texture = "rbxassetid://3111898064",
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.619), NumberSequenceKeypoint.new(1, 1)}),
	Lifetime = NumberRange.new(1, 1),
})

local function makeMeshPart(name, meshId, size, color, material)
	local p = Instance.new("MeshPart")
	p.Name = name
	p.MeshId = "rbxassetid://" .. meshId
	p.Size = size
	p.Color = color
	p.Material = material
	p.CanCollide = false
	p.CastShadow = false
	p.Massless = true
	p.RenderFidelity = Enum.RenderFidelity.Automatic
	return p
end

local function makeWeld(name, part0, part1, c0, c1)
	local w = Instance.new("ManualWeld")
	w.Name = name
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
	w.Parent = part0
	return w
end

local hornColor = Color3.fromRGB(218, 133, 65)
local baseColor = Color3.fromRGB(170, 85, 0)

local horn2 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1.899999976158142, 2), hornColor, Enum.Material.Neon)
horn2.Parent = model
makeWeld("Weld", horn2, base,
	CFrame.new(0,0,0, 1,-0,0, 0,0.906297,0.422642, -0,-0.422642,0.906297),
	CFrame.new(0.000183,1.201408,-0.785553, -1,0,0, 0,1,0, 0,0,-1))

local horns = makeMeshPart("Horns", "2861539809", Vector3.new(1.5, 0.6000000238418579, 1), hornColor, Enum.Material.Neon)
horns.Parent = model
makeWeld("Weld", horns, base,
	CFrame.new(0,0,0, 0.087131,-0,-0.996197, 0,1,-0, 0.996197,0,0.087131),
	CFrame.new(0.000183,0.899905,-0.400085, -1,0,0, 0,1,0, 0,0,-1))

local eyePart = Instance.new("Part")
eyePart.Name = "eyePart"
eyePart.Size = Vector3.new(0.05999999865889549, 1.2000000476837158, 1)
eyePart.Color = baseColor
eyePart.Material = Enum.Material.SmoothPlastic
eyePart.Transparency = 1
eyePart.CanCollide = false
eyePart.CastShadow = false
eyePart.Massless = true
eyePart.Parent = model

makeWeld("Weld", eyePart, base,
	CFrame.new(0,0,0, 0,0,1, 0,1,0, -1,0,0),
	CFrame.new(0.000187,0.025898,-0.699600, -1,0,0, 0,1,0, 0,0,-1))

local wings1 = makeMeshPart("Wings", "2854673665", Vector3.new(0.6499999761581421, 0.550000011920929, 0.5), baseColor, Enum.Material.SmoothPlastic)
wings1.Parent = model
makeWeld("Weld", wings1, base,
	CFrame.new(0, 0.180000007, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	CFrame.new(0.000187,1.500209,0.599899, -1,0,0, 0,1,0, 0,0,-1))

local wings2 = makeMeshPart("Wings", "2854673665", Vector3.new(0.550000011920929, 0.44999998807907104, 0.5), baseColor, Enum.Material.SmoothPlastic)
wings2.Parent = model
makeWeld("Weld", wings2, base,
	CFrame.new(0, 0.150000006, 0.129999995, 1, 0, 0, 0, 1, 0, 0, 0, 1),
	CFrame.new(0.000187,0.902054,0.149872, -1,0,0, 0,1,0, 0,0,-1))

local horn54 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn54.Parent = model
makeWeld("Weld", horn54, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(0.000183,0.996097,-0.189758, -1,0,0, 0,1,0, 0,0,-1))

local horn56 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn56.Parent = model
makeWeld("Weld", horn56, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(0.000183,0.896487,0.260284, -1,0,0, 0,1,0, 0,0,-1))

local horn58 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn58.Parent = model
makeWeld("Weld", horn58, base,
	CFrame.new(0,0,0, 1,0,0, 0,0.939701,-0.341998, 0,0.341998,0.939701),
	CFrame.new(0.000183,0.705080,0.650116, -1,0,0, 0,1,0, 0,0,-1))

local horn60 = makeMeshPart("Horn", "2861895545", Vector3.new(2.5, 1, 2.5), hornColor, Enum.Material.Neon)
horn60.Parent = model
makeWeld("Weld", horn60, base,
	CFrame.new(0,0,0, 1,0,0, 0,0.422593,-0.906320, 0,0.906320,0.422593),
	CFrame.new(0.000183,0.384767,0.787384, -1,0,0, 0,1,0, 0,0,-1))

local tail = makeMeshPart("Tail", "2861834252", Vector3.new(0.427852, 0.45, 0.48563), hornColor, Enum.Material.Neon)
tail.Parent = model
makeWeld("Weld", tail, base,
	CFrame.new(0,0,0, 1,0,0, 0,1,0, 0,0,1),
	CFrame.new(-0.249832,-0.473633,1.274963, -1,0,0, 0,1,0, 0,0,-1))

local perksFolder = Instance.new("Folder")
perksFolder.Name = "perksFolder"
perksFolder.Parent = model

local chiVal = Instance.new("NumberValue")
chiVal.Name = "chi"
chiVal.Value = 9000000
chiVal.Parent = perksFolder

local coinsVal = Instance.new("NumberValue")
coinsVal.Name = "coins"
coinsVal.Value = 9000000
coinsVal.Parent = perksFolder

local ninjitsuVal = Instance.new("NumberValue")
ninjitsuVal.Name = "ninjitsu"
ninjitsuVal.Value = 9000000
ninjitsuVal.Parent = perksFolder

local requiredRebirths = Instance.new("NumberValue")
requiredRebirths.Name = "requiredRebirths"
requiredRebirths.Value = 15
requiredRebirths.Parent = model

local imageLabel = Instance.new("ImageLabel")
imageLabel.Name = "image"
imageLabel.Image = "rbxassetid://4776499462"
imageLabel.BackgroundTransparency = 1
imageLabel.BorderSizePixel = 0
imageLabel.Visible = false
imageLabel.Parent = model

local animController = Instance.new("AnimationController")
animController.Parent = model
Instance.new("Animator").Parent = animController

model.PrimaryPart = base
model.Parent = char

local bodyPos = Instance.new("BodyPosition")
bodyPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyPos.P = 20000
bodyPos.Position = rootPart.Position
bodyPos.Parent = base

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodyGyro.CFrame = rootPart.CFrame
bodyGyro.Parent = base

local flyingOffset = CFrame.new(1.7, 1.5, -5.35)
local bobUp = false
local bobT = 0
local bobSpeed = 0.01
local bobMax = 1
local tiltAngle = 5

RunService.RenderStepped:Connect(function()
	if not bobUp then
		bobT = bobT + bobSpeed
		if bobT >= bobMax then bobUp = true end
		if tiltAngle < 5 then tiltAngle = tiltAngle + 0.1 end
	else
		bobT = bobT - bobSpeed
		if bobT <= 0 then bobUp = false end
		if tiltAngle > -5 then tiltAngle = tiltAngle - 0.1 end
	end
	local targetPos = (rootPart.CFrame * flyingOffset).p
	bodyPos.Position = Vector3.new(targetPos.X, targetPos.Y + bobT, targetPos.Z)
	if humanoid.MoveDirection == Vector3.new(0, 0, 0) then
		bodyGyro.CFrame = CFrame.new(base.Position, Vector3.new(rootPart.Position.X, base.Position.Y, rootPart.Position.Z)) * CFrame.Angles(math.rad(tiltAngle), 0, 0)
	else
		bodyGyro.CFrame = rootPart.CFrame * CFrame.Angles(math.rad(tiltAngle), 0, 0)
	end
end)