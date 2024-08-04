-- headshot test 

local Headshot = headshot(game.Players.LocalPlayer.UserId)

local screenGui = Instance.new("ScreenGui")
local image = Instance.new("ImageLabel")

screenGui.Name = "headshot"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

image.Parent = screenGui
image.AnchorPoint = Vector2.new(0.5,0.5)
image.Position = UDim2.new(0.5,0,0.5,0)
image.Image = Headshot
image.Size = UDim2.new(0,420,0,420)
