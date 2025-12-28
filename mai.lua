-- Create UI
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "AutoStealUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0.5, -100, 0.7, 0)
button.Text = "AUTO STEAL: OFF"
button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Parent = gui

-- Toggle logic
local enabled = false

button.MouseButton1Click:Connect(function()
	enabled = not enabled

	if enabled then
		button.Text = "AUTO STEAL: ON"
		print("Auto mode enabled")
	else
		button.Text = "AUTO STEAL: OFF"
		print("Auto mode disabled")
	end
end)
