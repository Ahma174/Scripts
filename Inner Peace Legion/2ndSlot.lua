local player = game.Players.LocalPlayer
repeat task.wait() until player.Character and player.Character:FindFirstChild("HumanoidRootPart")
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")
local RunService = game:GetService("RunService")

local isR15 = humanoid.RigType == Enum.HumanoidRigType.R15
local bodyHeightScale
if isR15 then
	local found = character:FindFirstChild("BodyHeightScale")
	bodyHeightScale = (found and found:IsA("NumberValue")) and found or {Value = 1}
else
	bodyHeightScale = {Value = 1}
end

local white = Color3.fromRGB(248, 248, 248)
local dark  = Color3.fromRGB(17, 17, 17)
local baseScale  = Vector3.new(0.5, 0.5, 0.5)
local wingsScale = Vector3.new(0.4000000059604645, 0.25, 0.5)
local beakScale  = Vector3.new(0.5, 0.800000011920929, 1)

local model = Instance.new("Model")
model.Name = "Inner Peace Legion"

local function makePart(name, meshId, meshScale, size, color, material)
	local p = Instance.new("Part")
	p.Name = name
	p.Size = size
	p.Color = color
	p.Material = material or Enum.Material.Neon
	p.CanCollide = false
	p.CastShadow = false
	p.Massless = true
	p.Anchored = false
	p.TopSurface = Enum.SurfaceType.Smooth
	p.BottomSurface = Enum.SurfaceType.Smooth
	if meshId then
		local sm = Instance.new("SpecialMesh")
		sm.MeshType = Enum.MeshType.FileMesh
		sm.MeshId = "rbxassetid://" .. meshId
		sm.Scale = meshScale
		sm.Parent = p
	end
	p.Parent = model
	return p
end

local function addParticles(parent)
	local gp1 = Instance.new("ParticleEmitter")
	gp1.Name = "glowParticle"
	gp1.Lifetime = NumberRange.new(2, 2)
	gp1.LightEmission = 1
	gp1.LockedToPart = true
	gp1.Rate = 50
	gp1.RotSpeed = NumberRange.new(-200, 200)
	gp1.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.8), NumberSequenceKeypoint.new(1, 0.8)})
	gp1.Speed = NumberRange.new(0, 0)
	gp1.SpreadAngle = Vector2.new(45, 45)
	gp1.Texture = "rbxassetid://2796974629"
	gp1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.856), NumberSequenceKeypoint.new(0.533, 0.937), NumberSequenceKeypoint.new(1, 1)})
	gp1.ZOffset = 0.1
	gp1.Parent = parent
	local gp2 = gp1:Clone()
	gp2.LockedToPart = false
	gp2.Parent = parent
	local dp1 = Instance.new("ParticleEmitter")
	dp1.Color = ColorSequence.new(Color3.new(0, 0, 0))
	dp1.Lifetime = NumberRange.new(1, 1)
	dp1.LightEmission = -2
	dp1.LockedToPart = true
	dp1.Rate = 40
	dp1.RotSpeed = NumberRange.new(-360, 360)
	dp1.Rotation = NumberRange.new(-360, 360)
	dp1.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.147), NumberSequenceKeypoint.new(1, 0)})
	dp1.Speed = NumberRange.new(0, 0)
	dp1.SpreadAngle = Vector2.new(900, 900)
	dp1.Texture = "rbxassetid://3111898064"
	dp1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.618), NumberSequenceKeypoint.new(1, 1)})
	dp1.Parent = parent
	local dp2 = dp1:Clone()
	dp2.LockedToPart = false
	dp2.Parent = parent
	local sp = Instance.new("ParticleEmitter")
	sp.Lifetime = NumberRange.new(0.2, 0.2)
	sp.LightEmission = 1
	sp.Rate = 40
	sp.RotSpeed = NumberRange.new(-500, 500)
	sp.Rotation = NumberRange.new(-360, 360)
	sp.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1.687), NumberSequenceKeypoint.new(1, 0)})
	sp.Speed = NumberRange.new(4, 4)
	sp.SpreadAngle = Vector2.new(-360, 360)
	sp.Texture = "rbxassetid://3258517083"
	sp.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.293, 0), NumberSequenceKeypoint.new(0.624, 0.35), NumberSequenceKeypoint.new(1, 1)})
	sp.ZOffset = 0.2
	sp.Parent = parent
	local pl = Instance.new("PointLight")
	pl.Brightness = 2
	pl.Parent = parent
end

local base    = makePart("Base",  "2854375507", baseScale,  Vector3.new(1.5, 1.5, 1.5),      white, Enum.Material.SmoothPlastic)
local base2_a = makePart("Base2", "2854375507", baseScale,  Vector3.new(1.5, 1.5, 1.5),      white, Enum.Material.SmoothPlastic)
local base2_b = makePart("Base2", "2854375507", baseScale,  Vector3.new(1.5, 1.5, 1.5),      white, Enum.Material.SmoothPlastic)
local wings_1 = makePart("Wings", "2854673665", wingsScale, Vector3.new(3.63, 1.56, 1.156),  dark, Enum.Material.Glass)
local wings_2 = makePart("Wings", "2854673665", wingsScale, Vector3.new(3.63, 1.56, 1.156),  dark, Enum.Material.Glass)
local wings_3 = makePart("Wings", "2854673665", wingsScale, Vector3.new(3.63, 1.56, 1.156),  dark, Enum.Material.Glass)
local beak_1  = makePart("Beak",  "2854426364", beakScale,  Vector3.new(0.61, 0.492, 0.444), dark, Enum.Material.Glass)
local beak_2  = makePart("Beak",  "2854426364", beakScale,  Vector3.new(0.61, 0.492, 0.444), dark, Enum.Material.Glass)
local beak_3  = makePart("Beak",  "2854426364", beakScale,  Vector3.new(0.61, 0.492, 0.444), dark, Enum.Material.Glass)

local eyeBaseOffsets = {
	CFrame.new(0, 0.19949999451637268, -0.75,                       0,0,1,   0,1,0, -1,0,0),
	CFrame.new(-2.537899971008301, 0.6626999974250793, 1.75,         -0.0872,-0.0002,0.9962, -0.0869,0.9962,-0.0074, -0.9924,-0.0872,-0.0869),
	CFrame.new(2.5381999015808105, 0.6625000238418579, 1.75,          0.0872, 0.0001,0.9962, -0.0869,0.9962, 0.0075, -0.9924,-0.0872, 0.0869),
}

local eyeMotors = {}

for i = 1, 3 do
	local ep = Instance.new("Part")
	ep.Name = "eyePart"
	ep.Size = Vector3.new(0.1, 0.6, 1.1)
	ep.Color = Color3.fromRGB(163, 162, 165)
	ep.Material = Enum.Material.SmoothPlastic
	ep.CanCollide = false
	ep.CastShadow = false
	ep.Massless = true
	ep.Anchored = false
	ep.Transparency = 1
	ep.TopSurface = Enum.SurfaceType.Smooth
	ep.BottomSurface = Enum.SurfaceType.Smooth
	local d = Instance.new("Decal")
	d.Name = "eyes"
	d.Texture = "rbxassetid://2855306686"
	d.Face = Enum.NormalId.Right
	d.Parent = ep
	ep.Parent = model

	local m = Instance.new("Motor6D")
	m.Name = "EyeMotor" .. i
	m.Part0 = base
	m.Part1 = ep
	m.C0 = eyeBaseOffsets[i]
	m.C1 = CFrame.new()
	m.Parent = base
	eyeMotors[i] = m

	ep.CFrame = base.CFrame * m.C0
end

addParticles(base)
addParticles(base2_a)
addParticles(base2_b)

local bbg = Instance.new("BillboardGui")
bbg.Name = "petGui"
bbg.MaxDistance = 100
bbg.Size = UDim2.new(3, 0, 2, 0)
bbg.StudsOffset = Vector3.new(0, 2.2, 0)
bbg.Parent = base

local function makeLabel(name, text, tc, sc, stAlpha, pos, sz, visible)
	local lbl = Instance.new("TextLabel")
	lbl.Name = name
	lbl.Text = text
	lbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal)
	lbl.TextSize = 14
	lbl.TextColor3 = tc
	lbl.TextScaled = true
	lbl.TextWrapped = true
	lbl.TextStrokeTransparency = stAlpha or 0.8
	if sc then lbl.TextStrokeColor3 = sc end
	lbl.BackgroundTransparency = 1
	lbl.Size = sz
	lbl.Position = pos
	lbl.Visible = visible ~= false
	lbl.Parent = bbg
	return lbl
end

makeLabel("nameLabel",         "Inner Peace Legion", Color3.new(1,1,1),             nil,                        0.8, UDim2.new(0,0,0.7,0),    UDim2.new(1,0,0.3,0),   true)
makeLabel("levelLabel",        "Level 1",          Color3.fromRGB(20,20,20),       nil,                        0.8, UDim2.new(0,0,0.45,0),   UDim2.new(1,0,0.25,0),  true)
local tgt = makeLabel("targetLabel","Target: None",  Color3.new(0,0,0),             Color3.new(1,0,0),          0.7, UDim2.new(0.5,0,0.09,0), UDim2.new(1.2,0,0.18,0),true)
tgt.AnchorPoint = Vector2.new(0.5, 0)
makeLabel("evolvedLabel",       "EVOLVED",           Color3.fromRGB(170,85,255),     nil,                        0.8, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  false)
makeLabel("eternalizedLabel",   "ETERNALIZED",       Color3.new(0,0,0),              Color3.fromRGB(255,85,0),   0.5, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  false)
makeLabel("immortalizedLabel",  "IMMORTAL",          Color3.new(0,0,0),              Color3.fromRGB(0,0,255),    0.5, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  false)
makeLabel("legendLabel",        "LEGEND",            Color3.new(0,0,0),              Color3.fromRGB(241,209,26), 0.4, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  false)
makeLabel("elementalizedLabel", "ELEMENTAL",         Color3.new(0,0,0),              Color3.fromRGB(0,255,255),  0.4, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  false)
makeLabel("xGenesisLabel",      "X-GENESIS",         Color3.new(0,0,0),              Color3.fromRGB(255,0,0),    0.4, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  false)
makeLabel("zMasterLabel",       "Z-MASTER",          Color3.new(0,0,0),              Color3.fromRGB(170,0,255),  0.4, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  false)
makeLabel("ultraBeastLabel",    "ULTRA-BEAST",       Color3.fromRGB(255,170,0),      Color3.fromRGB(255,85,0),   0.4, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  false)
makeLabel("infinityLordLabel",  "INFINITY-LORD",     Color3.fromRGB(0,255,255),      Color3.fromRGB(0,85,255),   0.4, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  false)
makeLabel("chaosTitanLabel",    "CHAOS-TITAN",       Color3.fromRGB(255,85,0),       Color3.fromRGB(217,0,0),    0.4, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  false)
makeLabel("ZXLegendLabel",      "ZX-LEGEND",         Color3.fromRGB(85,255,0),       Color3.fromRGB(56,168,0),   0.4, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  false)
makeLabel("darkElementLabel",   "DARK-ELEMENT",      Color3.fromRGB(170,0,255),      Color3.fromRGB(87,0,130),   0.4, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  false)
makeLabel("shadowStormLabel",   "SHADOWSTORM",       Color3.fromRGB(255,85,0),       Color3.fromRGB(217,0,0),    0.4, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  false)
makeLabel("vortexEliteLabel",   "VORTEX-ELITE",      Color3.fromRGB(255,200,0),      Color3.fromRGB(255,162,0),  0.4, UDim2.new(0,0,0.27,0),   UDim2.new(1,0,0.18,0),  true)

local imgLabel = Instance.new("ImageLabel")
imgLabel.Name = "image"
imgLabel.Image = "rbxassetid://5353831476"
imgLabel.AnchorPoint = Vector2.new(0.5, 0.5)
imgLabel.BackgroundTransparency = 1
imgLabel.BorderSizePixel = 0
imgLabel.Visible = false
imgLabel.AutoLocalize = false
imgLabel.Parent = bbg

local perksFolder = Instance.new("Folder")
perksFolder.Name = "perksFolder"
perksFolder.Parent = model
local function numVal(n, v, p) local x = Instance.new("NumberValue") x.Name=n x.Value=v x.Parent=p end
numVal("chi",              3000000, perksFolder)
numVal("coins",            3000000, perksFolder)
numVal("ninjitsu",         3000000, perksFolder)
numVal("requiredRebirths", 30,      model)

base.CFrame = rootPart.CFrame * CFrame.new(5, 2, -3)

local function weldTo(primary, part, relCF)
	part.CFrame = primary.CFrame * relCF
	local w = Instance.new("WeldConstraint")
	w.Part0 = primary
	w.Part1 = part
	w.Parent = primary
end

weldTo(base, wings_1, CFrame.new(0.0002, 0.4998, 0.1996,   -1,0,0,  0,1,0,  0,0,-1))
weldTo(base, beak_1,  CFrame.new(0.0002,-0.0502,-0.9998,    0,0,-1,  0,1,0,  1,0,0))
weldTo(base, base2_a, CFrame.new(-2.4770,0.5241,2.5210,     0.9962,-0.0001,0.0871, -0.0075,0.9962,0.0868, -0.0868,-0.0872,0.9924))
weldTo(base, beak_2,  CFrame.new(-2.5640,0.3877,1.5332,     0.0872,-0.0002,-0.9962, 0.0869,0.9962,0.0074, 0.9924,-0.0872,0.0869))
weldTo(base, wings_2, CFrame.new(-2.4595,1.0395,2.6754,    -0.9962,-0.0001,-0.0871, 0.0075,0.9962,-0.0868, 0.0868,-0.0872,-0.9924))
weldTo(base, wings_3, CFrame.new(2.4598, 1.0393,2.6757,    -0.9962,0.0001,0.0871, -0.0075,0.9962,-0.0868, -0.0868,-0.0872,-0.9924))
weldTo(base, beak_3,  CFrame.new(2.5643, 0.3874,1.5334,    -0.0872,0.0001,-0.9962, 0.0869,0.9962,-0.0075, 0.9924,-0.0872,-0.0869))
weldTo(base, base2_b, CFrame.new(2.4770, 0.5238,2.5210,     0.9962,0.0001,-0.0871, 0.0075,0.9962,0.0868, 0.0868,-0.0872,0.9924))

model.PrimaryPart = base
model.Parent = game.Players.LocalPlayer.Character

local bodyPos = Instance.new("BodyPosition")
bodyPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyPos.P = 20000
bodyPos.Position = rootPart.Position
bodyPos.Parent = base

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodyGyro.CFrame = rootPart.CFrame
bodyGyro.Parent = base

local flyingOffset = CFrame.new(-5, 2, -3)
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
