LOADING SCREEN SCRIPT : ROBLOX.
-------------------------------

Designing within LocalScripts
To design and display a custom loading screen:

In ReplicatedFirst, create a LocalScript. 

Use the following code sample to create and customize a ScreenGui object. You can modify the following code with your own values to create your design: 


SCRIPT


local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui
-- Replace ScreenGui values with your own
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundColor3 = Color3.fromRGB(0, 20, 40)
textLabel.Font = Enum.Font.GothamSemibold
textLabel.TextColor3 = Color3.new(0.8, 0.8, 0.8)
textLabel.Text = "Loading"
textLabel.TextSize = 28
textLabel.Parent = screenGui

-- Remove the default loading screen
ReplicatedFirst:RemoveDefaultLoadingScreen()

task.wait(5)  -- Force screen to appear for a minimum number of seconds
if not game:IsLoaded() then
 game.Loaded:Wait()
end
screenGui:Destroy()

Referencing ScreenGuis
Instead of creating the ScreenGui through a LocalScript, you can also reference an existing ScreenGui directly in your workspace. Ensure that your experience includes a ScreenGui within ReplicatedFirst and that the ScreenGui includes UI elements like TextLabels and ImageLabels, then set it as the loading screen by referencing it within a LocalScript. This method allows you to easily view your loading screen as you're creating it.

To demonstrate this process, the following LocalScript references a ScreenGui named LoadingScreen within ReplicatedFirst, then removes the default loading screen so the only loading screen a user can see is your own custom loading screen:


local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = ReplicatedFirst:FindFirstChild("LoadingScreen")
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui

-- Remove the default loading screen
ReplicatedFirst:RemoveDefaultLoadingScreen()

task.wait(5)  -- Force screen to appear for a minimum number of seconds
if not game:IsLoaded() then
	game.Loaded:Wait()
end
screenGui:Destroy()

Adding Animations
In addition to static custom loading screens, you can add animations to enhance the loading screen and indicate loading progress. The easiest way to do this is to create a UI element, such as a TextLabel or ImageLabel, then to animate it using TweenService. For example, the following code sample creates a new ScreenGui with a child ImageLabel, removes the default loading screen, then TweenService rotates the ImageLabel continuously until the experience loads:

local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundColor3 = Color3.fromRGB(0, 20, 40)
textLabel.Font = Enum.Font.GothamSemibold
textLabel.TextColor3 = Color3.new(0.8, 0.8, 0.8)
textLabel.Text = "Loading"
textLabel.TextSize = 28
textLabel.Parent = screenGui
local loadingRing = Instance.new("ImageLabel")
loadingRing.Size = UDim2.new(0, 256, 0, 256)
loadingRing.BackgroundTransparency = 1
loadingRing.Image = "rbxassetid://4965945816"
loadingRing.AnchorPoint = Vector2.new(0.5, 0.5)
loadingRing.Position = UDim2.new(0.5, 0, 0.5, 0)
loadingRing.Parent = screenGui

-- Remove the default loading screen
ReplicatedFirst:RemoveDefaultLoadingScreen()

local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
local tween = TweenService:Create(loadingRing, tweenInfo, {Rotation = 360})
tween:Play()

task.wait(5)  -- Force screen to appear for a minimum number of seconds
if not game:IsLoaded() then
 game.Loaded:Wait()
end
screenGui:Destroy()

Enjoy the script.
