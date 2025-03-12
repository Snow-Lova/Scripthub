local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

local teleportLocations = {
    {108, -1, 1335, 2},
    {53, 92, 2132, 2},
    {61, 92, 2902, 2},
    {60, 56, 3673, 2},
    {-56, -364, 9496, 0.25},
    {62, 81, 4443, 2},
    {60, 69, 5212, 2},
    {41, 40, 5985, 2},
    {47, 37, 6755, 2}
}

local function createInvisiblePlatform(position)
    local part = Instance.new("Part")
    part.Size = Vector3.new(2, 0.25, 2)
    part.Position = position - Vector3.new(0, 3, 0)
    part.Anchored = true
    part.Transparency = 1
    part.CanCollide = true
    part.Parent = game.Workspace
end

for _, loc in ipairs(teleportLocations) do
    local x, y, z, delayTime = unpack(loc)
    if humanoidRootPart then
        if not ((x == 60 and y == 56 and z == 3673) or
        (x == 62 and y == 81 and z == 4443) or
        (x == -56 and y == -364 and z == 9496 and delayTime == 0.25)) then
            if workspace:FindFirstChild("ClaimRiverResultsGold") then
                print("Firing ClaimRiverResultsGold")
                workspace.ClaimRiverResultsGold:FireServer()
        end
    end
    humanoidRootPart.CFrame = CFrame.new(x, y, z)
    createInvisiblePlatform(Vector3.new(x, y, z))
    task.wait(delayTime)
end