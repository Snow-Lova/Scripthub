if game.PlaceId == 537413528 then
    print("Build A Boat Detected")
    print("Loading BABFT SNOW LOVER")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Snow-Lova/Scripthub/refs/heads/main/BuildABoat/Gui.lua"))()
else
    for i = 1, 10 do
        warn("Game Not Supported")
        task.wait(0.25)
    end
end
