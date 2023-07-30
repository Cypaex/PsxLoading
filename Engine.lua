local frame = script.Parent.MyFrame
local button = script.Parent.MyButton
 
local startPosition = UDim2.new(0, 0, 0, 0) -- Starting position of the frame
local endPosition = UDim2.new(-1, 0, 0, 0) -- Target position to slide off the screen
 
local slideTime = 1 -- Time (in seconds) it takes to slide off the screen
 
local isSliding = false -- Flag to prevent multiple sliding animations
 
local function slideFrame()
    if isSliding then return end -- Skip if already sliding
    
    isSliding = true -- Set the sliding flag to true
    
    frame:TweenPosition(endPosition, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, slideTime, true)
    
    wait(slideTime) -- Wait until the slide animation is complete
    
    frame.Visible = false -- Hide the frame
    frame.Position = startPosition -- Reset the frame's position
    isSliding = false -- Set the sliding flag back to false
end
 
button.MouseButton1Click:Connect(slideFrame)
 
