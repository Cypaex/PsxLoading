

-- Create the Loading Screen GUI
local RLoading = Instance.new("ScreenGui")
RLoading.Name = "RLoading"
RLoading.Parent = game:GetService("CoreGui")
RLoading.IgnoreGuiInset = true

local RMainFrame = Instance.new("Frame")
RMainFrame.Name = "RMainFrame"
RMainFrame.Parent = RLoading
RMainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
RMainFrame.BorderSizePixel = 0
RMainFrame.Size = UDim2.new(1, 0, 1, 0)

local RTitle = Instance.new("TextLabel")
RTitle.Name = "RTitle"
RTitle.Parent = RMainFrame
RTitle.AnchorPoint = Vector2.new(0.5, 0)
RTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RTitle.BackgroundTransparency = 1
RTitle.Position = UDim2.new(0.5, 0, 0.2, 0) -- Moved down the script name
RTitle.Size = UDim2.new(0, 400, 0, 60)
RTitle.Font = Enum.Font.FredokaOne
RTitle.Text = _G.ScriptName
RTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
RTitle.TextSize = 36

local Dots = Instance.new("Frame")
Dots.Name = "Dots"
Dots.Parent = RMainFrame
Dots.AnchorPoint = Vector2.new(0.5, 0.5)
Dots.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dots.BackgroundTransparency = 1
Dots.Position = UDim2.new(0.5, 0, 0.45, 0) -- Moved up the loading dots
Dots.Size = UDim2.new(0, 200, 0, 40)

local Dot1 = Instance.new("Frame")
Dot1.Name = "Dot1"
Dot1.Parent = Dots
Dot1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Dot1.Position = UDim2.new(0, 0, 0, 0)
Dot1.Size = UDim2.new(0, 20, 0, 20)

local InsideDot = Instance.new("Frame")
InsideDot.Name = "InsideDot"
InsideDot.Parent = Dot1
InsideDot.AnchorPoint = Vector2.new(0.5, 0.5)
InsideDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InsideDot.Position = UDim2.new(0.5, 0, 0.5, 0)
InsideDot.Size = UDim2.new(0, 14, 0, 14)

local Dot2 = Instance.new("Frame")
Dot2.Name = "Dot2"
Dot2.Parent = Dots
Dot2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Dot2.Position = UDim2.new(0.5, -10, 0, 0)
Dot2.Size = UDim2.new(0, 20, 0, 20)

local InsideDot2 = Instance.new("Frame")
InsideDot2.Name = "InsideDot"
InsideDot2.Parent = Dot2
InsideDot2.AnchorPoint = Vector2.new(0.5, 0.5)
InsideDot2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InsideDot2.Position = UDim2.new(0.5, 0, 0.5, 0)
InsideDot2.Size = UDim2.new(0, 14, 0, 14)

local Dot3 = Instance.new("Frame")
Dot3.Name = "Dot3"
Dot3.Parent = Dots
Dot3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Dot3.Position = UDim2.new(1, -20, 0, 0)
Dot3.Size = UDim2.new(0, 20, 0, 20)

local InsideDot3 = Instance.new("Frame")
InsideDot3.Name = "InsideDot"
InsideDot3.Parent = Dot3
InsideDot3.AnchorPoint = Vector2.new(0.5, 0.5)
InsideDot3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InsideDot3.Position = UDim2.new(0.5, 0, 0.5, 0)
InsideDot3.Size = UDim2.new(0, 14, 0, 14)

local Bar = Instance.new("Frame")
Bar.Name = "Bar"
Bar.Parent = RMainFrame
Bar.AnchorPoint = Vector2.new(0.5, 0)
Bar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.5, 0, 0.6, 0) -- Moved up the loading bar
Bar.Size = UDim2.new(0, 300, 0, 15)

local BarFill = Instance.new("Frame")
BarFill.Name = "BarFill"
BarFill.Parent = Bar
BarFill.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
BarFill.BorderSizePixel = 0
BarFill.Size = UDim2.new(0, 0, 1, 0)

local Percentage = Instance.new("TextLabel")
Percentage.Name = "Percentage"
Percentage.Parent = RMainFrame
Percentage.AnchorPoint = Vector2.new(0.5, 0)
Percentage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Percentage.BackgroundTransparency = 1
Percentage.Position = UDim2.new(0.5, 0, 0.68, 0) -- Moved up the percentage text
Percentage.Size = UDim2.new(0, 200, 0, 20)
Percentage.Font = Enum.Font.FredokaOne
Percentage.Text = "0%"
Percentage.TextColor3 = Color3.fromRGB(255, 255, 255)
Percentage.TextSize = 26

local Tip = Instance.new("TextLabel")
Tip.Name = "Tip"
Tip.Parent = RMainFrame
Tip.AnchorPoint = Vector2.new(0.5, 0)
Tip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tip.BackgroundTransparency = 1
Tip.Position = UDim2.new(0.5, 0, 0.5, 0) -- Centered the tip text
Tip.Size = UDim2.new(0, 300, 0, 20)
Tip.Font = Enum.Font.SourceSansItalic
Tip.Text = _G.FirstText
Tip.TextColor3 = Color3.fromRGB(138, 138, 138)
Tip.TextSize = 22 -- Increased text size for the tip text

-- Dot Animation Coroutine
local function animateDots()
    while true do
        wait(0.5)
        Dot1.InsideDot:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Sine", 0.5, true)
        wait(0.5)
        Dot2.InsideDot:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Sine", 0.5, true)
        wait(0.5)
        Dot3.InsideDot:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Sine", 0.5, true)
        wait(0.5)
        Dot1.InsideDot:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Sine", 0.5, true)
        wait(0.5)
        Dot2.InsideDot:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Sine", 0.5, true)
        wait(0.5)
        Dot3.InsideDot:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Sine", 0.5, true)
    end
end

-- Loading Bar Animation Coroutine
local function animateLoadingBar()
    wait(5)
    BarFill:TweenSize(UDim2.new(1, 0, 1, 0), "In", "Linear", _G.WaitingTime, true)
    wait(_G.WaitingTime)
end

-- Percentage Text Animation Coroutine
local function animatePercentageText()
    wait(5)
    local numberwaiting = _G.WaitingTime / 100
    for i = 1, 100 do
        Percentage.Text = i .. "%"
        wait(numberwaiting)
    end
    Percentage.Text = "Completed"
    wait(1)
    RLoading:Destroy()
end

-- Tip Text Animation Coroutine
local function animateTipText()
    local tip = Tip
    while true do
        wait(5)
        tip.Text = _G.FirstText
        wait(5)
        tip.Text = _G.SecondText
        wait(5)
        tip.Text = _G.ThirdText
    end
end

-- Start the coroutines
coroutine.wrap(animateDots)()
coroutine.wrap(animateLoadingBar)()
coroutine.wrap(animatePercentageText)()
coroutine.wrap(animateTipText)()
