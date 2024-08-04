local prompt = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local TextButton2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

prompt.Name = "prompt"
prompt.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
prompt.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = prompt
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
Frame.BackgroundTransparency = 0.5
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)

UICorner.Parent = Frame

UIAspectRatioConstraint.Parent = Frame
UIAspectRatioConstraint.AspectRatio = 2

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
Frame_2.BackgroundTransparency = 0.5
Frame_2.BorderColor3 = Color3.new(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 0.200000003, 0)
Frame_2.Size = UDim2.new(1, 0, 0, 2)
Frame_2.ZIndex = 2

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 8.70190391e-08, 0)
TextLabel.Size = UDim2.new(0, 350, 0, 35)
TextLabel.Font = Enum.Font.BuilderSans
TextLabel.Text = "Prompt"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextLabel2.Name = "TextLabel2"
TextLabel2.Parent = Frame
TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel2.BackgroundTransparency = 1
TextLabel2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel2.BorderSizePixel = 0
TextLabel2.Position = UDim2.new(8.70190391e-08, 0, 0.24522391, 0)
TextLabel2.Size = UDim2.new(0, 350, 0, 74)
TextLabel2.Font = Enum.Font.BuilderSans
TextLabel2.Text = "Placeholder text, maybe this is like a ToS or something, who knows I hope they have a good time using Utility!"
TextLabel2.TextColor3 = Color3.new(1, 1, 1)
TextLabel2.TextSize = 14
TextLabel2.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
TextButton.BackgroundTransparency = 0.5
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0251197852, 0, 0.666999996, 0)
TextButton.Size = UDim2.new(0.449999988, 0, 0.300000012, 0)
TextButton.Font = Enum.Font.BuilderSansExtraBold
TextButton.Text = "Option1"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextSize = 14

UICorner_2.Parent = TextButton

TextButton2.Name = "TextButton2"
TextButton2.Parent = Frame
TextButton2.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
TextButton2.BackgroundTransparency = 0.5
TextButton2.BorderColor3 = Color3.new(0, 0, 0)
TextButton2.BorderSizePixel = 0
TextButton2.Position = UDim2.new(0.520727217, 0, 0.666999996, 0)
TextButton2.Size = UDim2.new(0.449999988, 0, 0.300000012, 0)
TextButton2.Font = Enum.Font.BuilderSansExtraBold
TextButton2.Text = "Option2"
TextButton2.TextColor3 = Color3.new(1, 1, 1)
TextButton2.TextSize = 14

UICorner_3.Parent = TextButton2
