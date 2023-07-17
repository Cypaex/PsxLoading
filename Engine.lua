-- Loading Screen
if _G.LoadingScreen ~= true then
    local ScreenGui = Instance.new("ScreenGui")
                            local Frame = Instance.new("Frame")
                            local TextLabel = Instance.new("TextLabel")
                            local ImageLabel = Instance.new("ImageLabel")
                            local TextLabel_2 = Instance.new("TextLabel")
 
                            --Properties:
 
                            ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
                            ScreenGui.DisplayOrder = 999999999
 
 
                            Frame.Parent = ScreenGui
                            Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                            Frame.Position = UDim2.new(-1.1603854, 0, -1.10370374, 0)
                            Frame.Size = UDim2.new(0, 1000000, 0, 100000000)
							UIAspectRatioConstraint = Frame
 
                            TextLabel.Parent = ScreenGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Position = UDim2.new(0.1512353545, 0, 0.373532414, 0)
                            TextLabel.Size = UDim2.new(0, 1245, 0, 310)
                            TextLabel.ZIndex = 3
                            TextLabel.Font = Enum.Font.SourceSansBold
                            TextLabel.Text = "We're restarting Pet Simulator X!"
                            TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.TextSize = 70.000
                            TextLabel.TextWrapped = true
 
                            ImageLabel.Parent = ScreenGui
                            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            ImageLabel.BackgroundTransparency = 1.000
                            ImageLabel.Position = UDim2.new(0.3251033338259, 0, 0.13342583251, 0)
                            ImageLabel.Size = UDim2.new(0, 510, 0, 259)
                            ImageLabel.ZIndex = 2
                            ImageLabel.Image = "http://www.roblox.com/asset/?id=13949112615"
 
                            TextLabel_2.Parent = ScreenGui
                            TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel_2.BackgroundTransparency = 1.000
                            TextLabel_2.Position = UDim2.new(0.1512353545, 0, 0.468594134, 0)
                            TextLabel_2.Size = UDim2.new(0, 1245, 0, 310)
                            TextLabel_2.ZIndex = 3
                            TextLabel_2.Font = Enum.Font.SourceSansBold
                            TextLabel_2.Text = "Please wait while we redirect you..."
                            TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel_2.TextSize = 36.000
                            TextLabel_2.TextWrapped = true
end