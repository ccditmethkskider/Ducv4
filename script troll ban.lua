-- Tạo GUI thông báo
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel1 = Instance.new("TextLabel")
local TextLabel2 = Instance.new("TextLabel")
local Button = Instance.new("TextButton")

-- Cài đặt ScreenGui
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Cài đặt Frame
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.3, 0, 0.3, 0)
Frame.Size = UDim2.new(0, 400, 0, 200)

-- Cài đặt TextLabel1
TextLabel1.Parent = Frame
TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.BackgroundTransparency = 1
TextLabel1.Size = UDim2.new(1, 0, 0.3, 0)
TextLabel1.Font = Enum.Font.SourceSansBold
TextLabel1.Text = "Mất kết nối"
TextLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.TextScaled = true

-- Cài đặt TextLabel2
TextLabel2.Parent = Frame
TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Position = UDim2.new(0, 0, 0.3, 0)
TextLabel2.Size = UDim2.new(1, 0, 0.5, 0)
TextLabel2.Font = Enum.Font.SourceSans
TextLabel2.Text = "Bạn đã bị mời ra khỏi trải nghiệm này. Tin nhắn kiểm duyệt:\n\nYou have been removed for cheating, please remove any cheats to play! | CODE LK-4 (Mã Lỗi: 267)"
TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.TextScaled = true
TextLabel2.TextWrapped = true

-- Cài đặt Button
Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Button.Position = UDim2.new(0.3, 0, 0.85, 0)
Button.Size = UDim2.new(0.4, 0, 0.1, 0)
Button.Font = Enum.Font.SourceSansBold
Button.Text = "Rời Khỏi"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextScaled = true

-- Kick người chơi
game.Players.LocalPlayer:Kick("You have been removed for cheating. Please remove any cheats to play! | CODE LK-4")

-- Button để rời khỏi game
Button.MouseButton1Click:Connect(function()
    game:Shutdown()
end)
