local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local teleportLocations = {
    {Vector3.new(72, 94, 1370), 2},
    {Vector3.new(68, 93, 2907), 2},
    {Vector3.new(-56, -364, 9496), 0.5},
    {Vector3.new(35, 68, 4448), 2},
    {Vector3.new(45, 71, 5984), 2},
    {Vector3.new(47, 59, 7528), 2}
}

local function createPlatform(position)
    local platform = Instance.new("Part")
    platform.Size = Vector3.new(10, 1, 10)
    platform.Position = position - Vector3.new(0, 3, 0)
    platform.Anchored = true
    platform.Parent = game.Workspace
end

local function teleportToPosition(position, delayTime)
    createPlatform(position)
    humanoidRootPart.CFrame = CFrame.new(position)
    wait(delayTime)
end

for _, location in ipairs(teleportLocations) do
    teleportToPosition(location[1], location[2])
end