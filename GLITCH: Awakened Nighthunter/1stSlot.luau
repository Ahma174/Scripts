--[[ 
   the model is saved by Dex ReContinued ;) 
   (absolute best dex project, you should try it)
]]

-- Code

if isfile("Glitch Awakened Nighthunter.rbxm") then
  print("File Already Exists")
else
  local linkvar = "https://github.com/Ahma174/Assets/raw/refs/heads/main/ScriptAseets/Models/Glitch%20Awakened%20Nighthunter.rbxm"
  local request = request({
     Url = linkvar,
     Method = "GET"
  })
 writefile("Glitch Awakened Nighthunter.rbxm", request.Body)
end

local model = getcustomasset("Glitch Awakened Nighthunter.rbxm")

local GetObjects = game:GetObjects(model)

local model2 = GetObjects[1]
model2.Parent = game.Players.LocalPlayer.Character

local base = model2.Base
base.BodyPosition:Destroy()
base.BodyGyro:Destroy()

local RunService = game:GetService("RunService")
local humanoid = game.Players.LocalPlayer.Character.Humanoid
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart

task.wait(0.05)

-- Vibecoded Part --

local bodyPos = Instance.new("BodyPosition")
bodyPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bodyPos.P = 20000
bodyPos.Position = rootPart.Position
bodyPos.Parent = base

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bodyGyro.CFrame = rootPart.CFrame
bodyGyro.Parent = base

local flyingOffset = CFrame.new(5, 2, -3)
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
