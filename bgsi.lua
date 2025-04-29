if _G.Key ~= "Obamatron" then return end

local RS = game:GetService("ReplicatedStorage")
local HS = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")

local Plr = game:GetService("Players").LocalPlayer
local HumRoot = Plr.Character.HumanoidRootPart

_G.Settings = {}

local function State(Setting)
    return _G.Settings[Setting]
end

local function Tween(Target)
    TweenService:Create(
        HumRoot,
        TweenInfo.new((HumRoot.Position - Target.Position).Magnitude / 300, Enum.EasingStyle.Linear),
        {CFrame = Target.CFrame}
    ):Play()
end

local function CodenameToRegularName(Name)
    Name = Name:split("-")
    local NewName = ""
    for i, v in pairs(Name) do
        NewName = NewName .. v:sub(1, 1):upper() .. v:sub(2) .. " "
    end
    return NewName:sub(1, NewName:len() - 1)
end

function SendMsg(webhook, pet)
    request(
        {
            Url = url,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode(
                {
                    content = "@everyone",
                    embeds = {
                        {
                            title = Plr.Name .. " hatched a rare pet!",
                            color = 5814783,
                            fields = {
                                {
                                    name = "Pet",
                                    value = pet,
                                    inline = true
                                },
                                {
                                    name = "Rarity",
                                    value = tostring(_G.Pets[pet].Rarity),
                                    inline = true
                                },
                                {
                                    name = "Chance",
                                    value = tostring(_G.Pets[pet].Chance),
                                    inline = true
                                },
                                {
                                    name = "Egg",
                                    value = tostring(_G.Pets[pet].Egg),
                                    inline = true
                                }
                            },
                            footer = {
                                text = "This Webhook Was Created By Obama (@definitely.obama)"
                            }
                        }
                    },
                    attachments = {}
                }
            )
        }
    )
end

local Network = _G.Network
local DataModule = _G.LocalData

local Converted = {
    ["_ScreenGui"] = Instance.new("ScreenGui"),
    ["_MainFrame"] = Instance.new("Frame"),
    ["_UICorner"] = Instance.new("UICorner"),
    ["_UIGradient"] = Instance.new("UIGradient"),
    ["_Top"] = Instance.new("Frame"),
    ["_UICorner1"] = Instance.new("UICorner"),
    ["_Title"] = Instance.new("TextLabel"),
    ["_Exit"] = Instance.new("TextButton"),
    ["_Filler"] = Instance.new("Frame"),
    ["_Tabs"] = Instance.new("ScrollingFrame"),
    ["_UIListLayout"] = Instance.new("UIListLayout"),
    ["_Filler1"] = Instance.new("Frame"),
    ["_Main"] = Instance.new("TextButton"),
    ["_UICorner2"] = Instance.new("UICorner"),
    ["_Eggs"] = Instance.new("TextButton"),
    ["_UICorner3"] = Instance.new("UICorner"),
    ["_Rifts"] = Instance.new("TextButton"),
    ["_UICorner4"] = Instance.new("UICorner"),
    ["_Rewards"] = Instance.new("TextButton"),
    ["_UICorner5"] = Instance.new("UICorner"),
    ["_Items"] = Instance.new("TextButton"),
    ["_UICorner6"] = Instance.new("UICorner"),
    ["_Enchants"] = Instance.new("TextButton"),
    ["_UICorner7"] = Instance.new("UICorner"),
    ["_Potions"] = Instance.new("TextButton"),
    ["_UICorner8"] = Instance.new("UICorner"),
    ["_Shops"] = Instance.new("TextButton"),
    ["_UICorner9"] = Instance.new("UICorner"),
    ["_Misc"] = Instance.new("TextButton"),
    ["_UICorner10"] = Instance.new("UICorner"),
    ["_Filler2"] = Instance.new("Frame"),
    ["_Frames"] = Instance.new("Frame"),
    ["_Main1"] = Instance.new("ScrollingFrame"),
    ["_Filler3"] = Instance.new("Frame"),
    ["_UIListLayout1"] = Instance.new("UIListLayout"),
    ["_Toggle"] = Instance.new("TextButton"),
    ["_UICorner11"] = Instance.new("UICorner"),
    ["_Title1"] = Instance.new("TextLabel"),
    ["_Frame"] = Instance.new("Frame"),
    ["_UICorner12"] = Instance.new("UICorner"),
    ["_Toggle1"] = Instance.new("TextButton"),
    ["_UICorner13"] = Instance.new("UICorner"),
    ["_Title2"] = Instance.new("TextLabel"),
    ["_Frame1"] = Instance.new("Frame"),
    ["_UICorner14"] = Instance.new("UICorner"),
    ["_Toggle2"] = Instance.new("TextButton"),
    ["_UICorner15"] = Instance.new("UICorner"),
    ["_Title3"] = Instance.new("TextLabel"),
    ["_Frame2"] = Instance.new("Frame"),
    ["_UICorner16"] = Instance.new("UICorner"),
    ["_Eggs1"] = Instance.new("ScrollingFrame"),
    ["_Filler4"] = Instance.new("Frame"),
    ["_UIListLayout2"] = Instance.new("UIListLayout"),
    ["_Toggle3"] = Instance.new("TextButton"),
    ["_UICorner17"] = Instance.new("UICorner"),
    ["_Title4"] = Instance.new("TextLabel"),
    ["_Frame3"] = Instance.new("Frame"),
    ["_UICorner18"] = Instance.new("UICorner"),
    ["_Dropdown"] = Instance.new("TextButton"),
    ["_UICorner19"] = Instance.new("UICorner"),
    ["_Title5"] = Instance.new("TextLabel"),
    ["_State"] = Instance.new("Frame"),
    ["_UICorner20"] = Instance.new("UICorner"),
    ["_Title6"] = Instance.new("TextLabel"),
    ["_DropdownMenu"] = Instance.new("ScrollingFrame"),
    ["_UICorner21"] = Instance.new("UICorner"),
    ["_UIListLayout3"] = Instance.new("UIListLayout"),
    ["_Button"] = Instance.new("TextButton"),
    ["_UICorner22"] = Instance.new("UICorner"),
    ["_Title7"] = Instance.new("TextLabel"),
    ["_Button1"] = Instance.new("TextButton"),
    ["_UICorner23"] = Instance.new("UICorner"),
    ["_Title8"] = Instance.new("TextLabel"),
    ["_Rifts1"] = Instance.new("ScrollingFrame"),
    ["_Filler5"] = Instance.new("Frame"),
    ["_UIListLayout4"] = Instance.new("UIListLayout"),
    ["_Dropdown1"] = Instance.new("TextButton"),
    ["_UICorner24"] = Instance.new("UICorner"),
    ["_Title9"] = Instance.new("TextLabel"),
    ["_State1"] = Instance.new("Frame"),
    ["_UICorner25"] = Instance.new("UICorner"),
    ["_Title10"] = Instance.new("TextLabel"),
    ["_DropdownMenu1"] = Instance.new("ScrollingFrame"),
    ["_UICorner26"] = Instance.new("UICorner"),
    ["_UIListLayout5"] = Instance.new("UIListLayout"),
    ["_Button2"] = Instance.new("TextButton"),
    ["_UICorner27"] = Instance.new("UICorner"),
    ["_Title11"] = Instance.new("TextLabel"),
    ["_Button3"] = Instance.new("TextButton"),
    ["_UICorner28"] = Instance.new("UICorner"),
    ["_Title12"] = Instance.new("TextLabel"),
    ["_Rewards1"] = Instance.new("ScrollingFrame"),
    ["_Filler6"] = Instance.new("Frame"),
    ["_UIListLayout6"] = Instance.new("UIListLayout"),
    ["_Toggle4"] = Instance.new("TextButton"),
    ["_UICorner29"] = Instance.new("UICorner"),
    ["_Title13"] = Instance.new("TextLabel"),
    ["_Frame4"] = Instance.new("Frame"),
    ["_UICorner30"] = Instance.new("UICorner"),
    ["_Toggle5"] = Instance.new("TextButton"),
    ["_UICorner31"] = Instance.new("UICorner"),
    ["_Title14"] = Instance.new("TextLabel"),
    ["_Frame5"] = Instance.new("Frame"),
    ["_UICorner32"] = Instance.new("UICorner"),
    ["_Toggle6"] = Instance.new("TextButton"),
    ["_UICorner33"] = Instance.new("UICorner"),
    ["_Title15"] = Instance.new("TextLabel"),
    ["_Frame6"] = Instance.new("Frame"),
    ["_UICorner34"] = Instance.new("UICorner"),
    ["_Toggle7"] = Instance.new("TextButton"),
    ["_UICorner35"] = Instance.new("UICorner"),
    ["_Title16"] = Instance.new("TextLabel"),
    ["_Frame7"] = Instance.new("Frame"),
    ["_UICorner36"] = Instance.new("UICorner"),
    ["_Toggle8"] = Instance.new("TextButton"),
    ["_UICorner37"] = Instance.new("UICorner"),
    ["_Title17"] = Instance.new("TextLabel"),
    ["_Frame8"] = Instance.new("Frame"),
    ["_UICorner38"] = Instance.new("UICorner"),
    ["_Items1"] = Instance.new("ScrollingFrame"),
    ["_Filler7"] = Instance.new("Frame"),
    ["_UIListLayout7"] = Instance.new("UIListLayout"),
    ["_Toggle9"] = Instance.new("TextButton"),
    ["_UICorner39"] = Instance.new("UICorner"),
    ["_Title18"] = Instance.new("TextLabel"),
    ["_Frame9"] = Instance.new("Frame"),
    ["_UICorner40"] = Instance.new("UICorner"),
    ["_Toggle10"] = Instance.new("TextButton"),
    ["_UICorner41"] = Instance.new("UICorner"),
    ["_Title19"] = Instance.new("TextLabel"),
    ["_Frame10"] = Instance.new("Frame"),
    ["_UICorner42"] = Instance.new("UICorner"),
    ["_Toggle11"] = Instance.new("TextButton"),
    ["_UICorner43"] = Instance.new("UICorner"),
    ["_Title20"] = Instance.new("TextLabel"),
    ["_Frame11"] = Instance.new("Frame"),
    ["_UICorner44"] = Instance.new("UICorner"),
    ["_Toggle12"] = Instance.new("TextButton"),
    ["_UICorner45"] = Instance.new("UICorner"),
    ["_Title21"] = Instance.new("TextLabel"),
    ["_Frame12"] = Instance.new("Frame"),
    ["_UICorner46"] = Instance.new("UICorner"),
    ["_Enchants1"] = Instance.new("ScrollingFrame"),
    ["_Filler8"] = Instance.new("Frame"),
    ["_UIListLayout8"] = Instance.new("UIListLayout"),
    ["_Toggle13"] = Instance.new("TextButton"),
    ["_UICorner47"] = Instance.new("UICorner"),
    ["_Title22"] = Instance.new("TextLabel"),
    ["_Frame13"] = Instance.new("Frame"),
    ["_UICorner48"] = Instance.new("UICorner"),
    ["_Dropdown2"] = Instance.new("TextButton"),
    ["_UICorner49"] = Instance.new("UICorner"),
    ["_Title23"] = Instance.new("TextLabel"),
    ["_State2"] = Instance.new("Frame"),
    ["_UICorner50"] = Instance.new("UICorner"),
    ["_Title24"] = Instance.new("TextLabel"),
    ["_DropdownMenu2"] = Instance.new("ScrollingFrame"),
    ["_UICorner51"] = Instance.new("UICorner"),
    ["_UIListLayout9"] = Instance.new("UIListLayout"),
    ["_Button4"] = Instance.new("TextButton"),
    ["_UICorner52"] = Instance.new("UICorner"),
    ["_Title25"] = Instance.new("TextLabel"),
    ["_Button5"] = Instance.new("TextButton"),
    ["_UICorner53"] = Instance.new("UICorner"),
    ["_Title26"] = Instance.new("TextLabel"),
    ["_Input"] = Instance.new("Frame"),
    ["_UICorner54"] = Instance.new("UICorner"),
    ["_Title27"] = Instance.new("TextLabel"),
    ["_Frame14"] = Instance.new("Frame"),
    ["_UICorner55"] = Instance.new("UICorner"),
    ["_TextBox"] = Instance.new("TextBox"),
    ["_Dropdown3"] = Instance.new("TextButton"),
    ["_UICorner56"] = Instance.new("UICorner"),
    ["_Title28"] = Instance.new("TextLabel"),
    ["_State3"] = Instance.new("Frame"),
    ["_UICorner57"] = Instance.new("UICorner"),
    ["_Title29"] = Instance.new("TextLabel"),
    ["_DropdownMenu3"] = Instance.new("ScrollingFrame"),
    ["_UICorner58"] = Instance.new("UICorner"),
    ["_UIListLayout10"] = Instance.new("UIListLayout"),
    ["_Button6"] = Instance.new("TextButton"),
    ["_UICorner59"] = Instance.new("UICorner"),
    ["_Title30"] = Instance.new("TextLabel"),
    ["_Potions1"] = Instance.new("ScrollingFrame"),
    ["_Filler9"] = Instance.new("Frame"),
    ["_UIListLayout11"] = Instance.new("UIListLayout"),
    ["_Toggle14"] = Instance.new("TextButton"),
    ["_UICorner60"] = Instance.new("UICorner"),
    ["_Title31"] = Instance.new("TextLabel"),
    ["_Frame15"] = Instance.new("Frame"),
    ["_UICorner61"] = Instance.new("UICorner"),
    ["_Shops1"] = Instance.new("ScrollingFrame"),
    ["_Filler10"] = Instance.new("Frame"),
    ["_UIListLayout12"] = Instance.new("UIListLayout"),
    ["_Toggle15"] = Instance.new("TextButton"),
    ["_UICorner62"] = Instance.new("UICorner"),
    ["_Title32"] = Instance.new("TextLabel"),
    ["_Frame16"] = Instance.new("Frame"),
    ["_UICorner63"] = Instance.new("UICorner"),
    ["_Toggle16"] = Instance.new("TextButton"),
    ["_UICorner64"] = Instance.new("UICorner"),
    ["_Title33"] = Instance.new("TextLabel"),
    ["_Frame17"] = Instance.new("Frame"),
    ["_UICorner65"] = Instance.new("UICorner"),
    ["_Misc1"] = Instance.new("ScrollingFrame"),
    ["_Filler11"] = Instance.new("Frame"),
    ["_UIListLayout13"] = Instance.new("UIListLayout"),
    ["_Toggle17"] = Instance.new("TextButton"),
    ["_UICorner66"] = Instance.new("UICorner"),
    ["_Title34"] = Instance.new("TextLabel"),
    ["_Frame18"] = Instance.new("Frame"),
    ["_UICorner67"] = Instance.new("UICorner"),
    ["_Button7"] = Instance.new("TextButton"),
    ["_UICorner68"] = Instance.new("UICorner"),
    ["_Title35"] = Instance.new("TextLabel"),
    ["_Toggle18"] = Instance.new("TextButton"),
    ["_UICorner69"] = Instance.new("UICorner"),
    ["_Title36"] = Instance.new("TextLabel"),
    ["_Frame19"] = Instance.new("Frame"),
    ["_UICorner70"] = Instance.new("UICorner"),
    ["_Toggle19"] = Instance.new("TextButton"),
    ["_UICorner71"] = Instance.new("UICorner"),
    ["_Title37"] = Instance.new("TextLabel"),
    ["_Frame20"] = Instance.new("Frame"),
    ["_UICorner72"] = Instance.new("UICorner"),
    ["_Button8"] = Instance.new("TextButton"),
    ["_UICorner73"] = Instance.new("UICorner"),
    ["_Title38"] = Instance.new("TextLabel"),
    ["_Button9"] = Instance.new("TextButton"),
    ["_UICorner74"] = Instance.new("UICorner"),
    ["_Title39"] = Instance.new("TextLabel")
}

local function ShowFrame(FrameName)
    for _, Frame in pairs(Converted["_Frames"]:GetChildren()) do
        Frame.Visible = false
    end
    Converted["_Frames"]:FindFirstChild(FrameName).Visible = true
end

-- Properties:

Converted["_ScreenGui"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_ScreenGui"].Parent = game:GetService("CoreGui")

Converted["_MainFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_MainFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_MainFrame"].BorderSizePixel = 0
Converted["_MainFrame"].Position = UDim2.new(0.265243888, 0, 0.144012973, 0)
Converted["_MainFrame"].Size = UDim2.new(0.469512194, 0, 0.711974084, 0)
Converted["_MainFrame"].Name = "MainFrame"
Converted["_MainFrame"].Parent = Converted["_ScreenGui"]

Converted["_UICorner"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner"].Parent = Converted["_MainFrame"]

Converted["_UIGradient"].Color =
    ColorSequence.new {
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(50.000000819563866, 50.000000819563866, 50.000000819563866))
}
Converted["_UIGradient"].Rotation = -90
Converted["_UIGradient"].Parent = Converted["_MainFrame"]

Converted["_Top"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Top"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Top"].BorderSizePixel = 0
Converted["_Top"].Position = UDim2.new(-3.02704711e-06, 0, -0.00144157419, 0)
Converted["_Top"].Size = UDim2.new(1.0000031, 0, 0.113724627, 0)
Converted["_Top"].Name = "Top"
Converted["_Top"].Parent = Converted["_MainFrame"]

Converted["_UICorner1"].CornerRadius = UDim.new(0, 15)
Converted["_UICorner1"].Parent = Converted["_Top"]

Converted["_Title"].Font = Enum.Font.SourceSansBold
Converted["_Title"].Text = "Project: Fire"
Converted["_Title"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title"].TextScaled = true
Converted["_Title"].TextSize = 14
Converted["_Title"].TextWrapped = true
Converted["_Title"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title"].BackgroundTransparency = 1
Converted["_Title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title"].BorderSizePixel = 0
Converted["_Title"].Position = UDim2.new(0.0283400547, 0, 0.127090171, 0)
Converted["_Title"].Size = UDim2.new(0.404857039, 0, 0.719441235, 0)
Converted["_Title"].Name = "Title"
Converted["_Title"].Parent = Converted["_Top"]

Converted["_Exit"].Font = Enum.Font.FredokaOne
Converted["_Exit"].Text = "X"
Converted["_Exit"].TextColor3 = Color3.fromRGB(75.00000312924385, 75.00000312924385, 75.00000312924385)
Converted["_Exit"].TextScaled = true
Converted["_Exit"].TextSize = 14
Converted["_Exit"].TextWrapped = true
Converted["_Exit"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Exit"].BackgroundTransparency = 1
Converted["_Exit"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Exit"].BorderSizePixel = 0
Converted["_Exit"].Position = UDim2.new(0.916187167, 0, 0.00834203791, 0)
Converted["_Exit"].Size = UDim2.new(0.0826709047, 0, 1.01998448, 0)
Converted["_Exit"].Name = "Exit"
Converted["_Exit"].Parent = Converted["_Top"]
Converted["_Exit"].MouseButton1Down:Connect(
    function()
        _G.Settings = {}
        Converted["_ScreenGui"].Parent = nil
    end
)

Converted["_Filler"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Filler"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filler"].BorderSizePixel = 0
Converted["_Filler"].Position = UDim2.new(-3.02704711e-06, 0, 0.0948298797, 0)
Converted["_Filler"].Size = UDim2.new(1.0000031, 0, 0.0174531769, 0)
Converted["_Filler"].Name = "Filler"
Converted["_Filler"].Parent = Converted["_MainFrame"]

Converted["_Tabs"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_Tabs"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Tabs"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Tabs"].ScrollBarThickness = 0
Converted["_Tabs"].Active = true
Converted["_Tabs"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Tabs"].BackgroundTransparency = 0.8999999761581421
Converted["_Tabs"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Tabs"].BorderSizePixel = 0
Converted["_Tabs"].Position = UDim2.new(-0.000874126621, 0, 0.115504451, 0)
Converted["_Tabs"].Size = UDim2.new(0.293700188, 0, 0.884732425, 0)
Converted["_Tabs"].Name = "Tabs"
Converted["_Tabs"].Parent = Converted["_MainFrame"]

Converted["_UIListLayout"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout"].Parent = Converted["_Tabs"]

Converted["_Filler1"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Filler1"].BackgroundTransparency = 1
Converted["_Filler1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filler1"].BorderSizePixel = 0
Converted["_Filler1"].Position = UDim2.new(-3.02704711e-06, 0, 0.0948298797, 0)
Converted["_Filler1"].Size = UDim2.new(1.0000031, 0, 0.0174531769, 0)
Converted["_Filler1"].Name = "Filler"
Converted["_Filler1"].Parent = Converted["_Tabs"]

Converted["_Main"].Font = Enum.Font.SourceSansBold
Converted["_Main"].Text = "Main"
Converted["_Main"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Main"].TextSize = 14
Converted["_Main"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Main"].BackgroundTransparency = 0.75
Converted["_Main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Main"].BorderSizePixel = 0
Converted["_Main"].LayoutOrder = 1
Converted["_Main"].Size = UDim2.new(0.899999976, 0, 0.174999997, 0)
Converted["_Main"].Name = "Main"
Converted["_Main"].Parent = Converted["_Tabs"]
Converted["_Main"].MouseButton1Up:Connect(
    function()
        ShowFrame("Main")
    end
)

Converted["_UICorner2"].Parent = Converted["_Main"]

Converted["_Eggs"].Font = Enum.Font.SourceSansBold
Converted["_Eggs"].Text = "Eggs"
Converted["_Eggs"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Eggs"].TextSize = 14
Converted["_Eggs"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Eggs"].BackgroundTransparency = 0.75
Converted["_Eggs"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Eggs"].BorderSizePixel = 0
Converted["_Eggs"].LayoutOrder = 2
Converted["_Eggs"].Size = UDim2.new(0.899999976, 0, 0.174999997, 0)
Converted["_Eggs"].Name = "Eggs"
Converted["_Eggs"].Parent = Converted["_Tabs"]
Converted["_Eggs"].MouseButton1Down:Connect(
    function()
        ShowFrame("Eggs")
    end
)

Converted["_UICorner3"].Parent = Converted["_Eggs"]

Converted["_Rifts"].Font = Enum.Font.SourceSansBold
Converted["_Rifts"].Text = "Rifts"
Converted["_Rifts"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Rifts"].TextSize = 14
Converted["_Rifts"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rifts"].BackgroundTransparency = 0.75
Converted["_Rifts"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rifts"].BorderSizePixel = 0
Converted["_Rifts"].LayoutOrder = 3
Converted["_Rifts"].Size = UDim2.new(0.899999976, 0, 0.174999997, 0)
Converted["_Rifts"].Name = "Rifts"
Converted["_Rifts"].Parent = Converted["_Tabs"]
Converted["_Rifts"].MouseButton1Down:Connect(
    function()
        ShowFrame("Rifts")
    end
)

Converted["_UICorner4"].Parent = Converted["_Rifts"]

Converted["_Rewards"].Font = Enum.Font.SourceSansBold
Converted["_Rewards"].Text = "Rewards"
Converted["_Rewards"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Rewards"].TextSize = 14
Converted["_Rewards"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rewards"].BackgroundTransparency = 0.75
Converted["_Rewards"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rewards"].BorderSizePixel = 0
Converted["_Rewards"].LayoutOrder = 4
Converted["_Rewards"].Size = UDim2.new(0.899999976, 0, 0.174999997, 0)
Converted["_Rewards"].Name = "Rewards"
Converted["_Rewards"].Parent = Converted["_Tabs"]
Converted["_Rewards"].MouseButton1Down:Connect(
    function()
        ShowFrame("Rewards")
    end
)

Converted["_UICorner5"].Parent = Converted["_Rewards"]

Converted["_Items"].Font = Enum.Font.SourceSansBold
Converted["_Items"].Text = "Items"
Converted["_Items"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Items"].TextSize = 14
Converted["_Items"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Items"].BackgroundTransparency = 0.75
Converted["_Items"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Items"].BorderSizePixel = 0
Converted["_Items"].LayoutOrder = 5
Converted["_Items"].Size = UDim2.new(0.899999976, 0, 0.174999997, 0)
Converted["_Items"].Name = "Items"
Converted["_Items"].Parent = Converted["_Tabs"]
Converted["_Items"].MouseButton1Down:Connect(
    function()
        ShowFrame("Items")
    end
)

Converted["_UICorner6"].Parent = Converted["_Items"]

Converted["_Enchants"].Font = Enum.Font.SourceSansBold
Converted["_Enchants"].Text = "Enchants"
Converted["_Enchants"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Enchants"].TextSize = 14
Converted["_Enchants"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Enchants"].BackgroundTransparency = 0.75
Converted["_Enchants"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Enchants"].BorderSizePixel = 0
Converted["_Enchants"].LayoutOrder = 6
Converted["_Enchants"].Size = UDim2.new(0.899999976, 0, 0.174999997, 0)
Converted["_Enchants"].Name = "Enchants"
Converted["_Enchants"].Parent = Converted["_Tabs"]
Converted["_Enchants"].MouseButton1Down:Connect(
    function()
        ShowFrame("Enchants")
    end
)

Converted["_UICorner7"].Parent = Converted["_Enchants"]

Converted["_Potions"].Font = Enum.Font.SourceSansBold
Converted["_Potions"].Text = "Potions"
Converted["_Potions"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Potions"].TextSize = 14
Converted["_Potions"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Potions"].BackgroundTransparency = 0.75
Converted["_Potions"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Potions"].BorderSizePixel = 0
Converted["_Potions"].LayoutOrder = 7
Converted["_Potions"].Size = UDim2.new(0.899999976, 0, 0.174999997, 0)
Converted["_Potions"].Name = "Potions"
Converted["_Potions"].Parent = Converted["_Tabs"]
Converted["_Potions"].MouseButton1Down:Connect(
    function()
        ShowFrame("Potions")
    end
)

Converted["_UICorner8"].Parent = Converted["_Potions"]

Converted["_Shops"].Font = Enum.Font.SourceSansBold
Converted["_Shops"].Text = "Shops"
Converted["_Shops"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Shops"].TextSize = 14
Converted["_Shops"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Shops"].BackgroundTransparency = 0.75
Converted["_Shops"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Shops"].BorderSizePixel = 0
Converted["_Shops"].LayoutOrder = 8
Converted["_Shops"].Size = UDim2.new(0.899999976, 0, 0.174999997, 0)
Converted["_Shops"].Name = "Shops"
Converted["_Shops"].Parent = Converted["_Tabs"]
Converted["_Shops"].MouseButton1Down:Connect(
    function()
        ShowFrame("Shops")
    end
)

Converted["_UICorner9"].Parent = Converted["_Shops"]

Converted["_Misc"].Font = Enum.Font.SourceSansBold
Converted["_Misc"].Text = "Misc"
Converted["_Misc"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Misc"].TextSize = 14
Converted["_Misc"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Misc"].BackgroundTransparency = 0.75
Converted["_Misc"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Misc"].BorderSizePixel = 0
Converted["_Misc"].LayoutOrder = 9
Converted["_Misc"].Size = UDim2.new(0.899999976, 0, 0.174999997, 0)
Converted["_Misc"].Name = "Misc"
Converted["_Misc"].Parent = Converted["_Tabs"]
Converted["_Misc"].MouseButton1Down:Connect(
    function()
        ShowFrame("Misc")
    end
)

Converted["_UICorner10"].Parent = Converted["_Misc"]

Converted["_Filler2"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Filler2"].BackgroundTransparency = 1
Converted["_Filler2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filler2"].BorderSizePixel = 0
Converted["_Filler2"].LayoutOrder = 10
Converted["_Filler2"].Position = UDim2.new(-3.02704711e-06, 0, 0.0948298797, 0)
Converted["_Filler2"].Size = UDim2.new(1.0000031, 0, 0.0174531769, 0)
Converted["_Filler2"].Name = "Filler"
Converted["_Filler2"].Parent = Converted["_Tabs"]

Converted["_Frames"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frames"].BackgroundTransparency = 1
Converted["_Frames"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frames"].BorderSizePixel = 0
Converted["_Frames"].Position = UDim2.new(0.291524619, 0, 0.112750255, 0)
Converted["_Frames"].Size = UDim2.new(0.707055986, 0, 0.885894477, 0)
Converted["_Frames"].Name = "Frames"
Converted["_Frames"].Parent = Converted["_MainFrame"]

Converted["_Main1"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_Main1"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Main1"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Main1"].ScrollBarThickness = 0
Converted["_Main1"].Active = true
Converted["_Main1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Main1"].BackgroundTransparency = 8.899999618530273
Converted["_Main1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Main1"].BorderSizePixel = 0
Converted["_Main1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Main1"].Name = "Main"
Converted["_Main1"].Parent = Converted["_Frames"]

Converted["_Filler3"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Filler3"].BackgroundTransparency = 1
Converted["_Filler3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filler3"].BorderSizePixel = 0
Converted["_Filler3"].LayoutOrder = -1
Converted["_Filler3"].Position = UDim2.new(-3.02704711e-06, 0, 0.0948298797, 0)
Converted["_Filler3"].Size = UDim2.new(1.0000031, 0, 0.0174531769, 0)
Converted["_Filler3"].Name = "Filler"
Converted["_Filler3"].Parent = Converted["_Main1"]

Converted["_UIListLayout1"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout1"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout1"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout1"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout1"].Parent = Converted["_Main1"]

Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame"].BorderSizePixel = 0
Converted["_Frame"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)

Converted["_Toggle"].Font = Enum.Font.SourceSans
Converted["_Toggle"].Text = ""
Converted["_Toggle"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle"].TextSize = 14
Converted["_Toggle"].AutoButtonColor = false
Converted["_Toggle"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle"].BackgroundTransparency = 0.75
Converted["_Toggle"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle"].BorderSizePixel = 0
Converted["_Toggle"].LayoutOrder = 3
Converted["_Toggle"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle"].Name = "Toggle"
Converted["_Toggle"].Parent = Converted["_Main1"]
Converted["_Toggle"].MouseButton1Down:Connect(
    function()
        _G.Settings["AutoBubble"] = not _G.Settings["AutoBubble"]
        if _G.Settings["AutoBubble"] then
            Converted["_Frame"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings["AutoBubble"] do
            Network:FireServer("BlowBubble")
            task.wait()
        end
    end
)

Converted["_UICorner11"].Parent = Converted["_Toggle"]

Converted["_Title1"].Font = Enum.Font.SourceSansBold
Converted["_Title1"].Text = "Auto Bubbles"
Converted["_Title1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title1"].TextSize = 14
Converted["_Title1"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title1"].BackgroundTransparency = 1
Converted["_Title1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title1"].BorderSizePixel = 0
Converted["_Title1"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title1"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title1"].Name = "Title"
Converted["_Title1"].Parent = Converted["_Toggle"]

Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame"].BorderSizePixel = 0
Converted["_Frame"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame"].Parent = Converted["_Toggle"]

Converted["_UICorner12"].Parent = Converted["_Frame"]

Converted["_Frame1"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame1"].BorderSizePixel = 0
Converted["_Frame1"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame1"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)

Converted["_Toggle1"].Font = Enum.Font.SourceSans
Converted["_Toggle1"].Text = ""
Converted["_Toggle1"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle1"].TextSize = 14
Converted["_Toggle1"].AutoButtonColor = false
Converted["_Toggle1"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle1"].BackgroundTransparency = 0.75
Converted["_Toggle1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle1"].BorderSizePixel = 0
Converted["_Toggle1"].LayoutOrder = 3
Converted["_Toggle1"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle1"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle1"].Name = "Toggle"
Converted["_Toggle1"].Parent = Converted["_Main1"]
Converted["_Toggle1"].MouseButton1Down:Connect(
    function()
        _G.Settings["AutoCollect"] = not _G.Settings["AutoCollect"]
        if _G.Settings["AutoCollect"] then
            Converted["_Frame1"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame1"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings["AutoCollect"] do
            for i, Folder in pairs(workspace.Rendered:GetChildren()) do
                if Folder.Name == "Chunker" then
                    for i, v in pairs(Folder:GetChildren()) do
                        if v:IsA("Model") and not v.Name:lower():find("egg") then
                            RS.Remotes.Pickups.CollectPickup:FireServer(v.Name)
                            v:Destroy()
                        end
                    end
                end
            end
            wait()
        end
    end
)

Converted["_UICorner13"].Parent = Converted["_Toggle1"]

Converted["_Title2"].Font = Enum.Font.SourceSansBold
Converted["_Title2"].Text = "Auto Collect"
Converted["_Title2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title2"].TextSize = 14
Converted["_Title2"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title2"].BackgroundTransparency = 1
Converted["_Title2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title2"].BorderSizePixel = 0
Converted["_Title2"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title2"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title2"].Name = "Title"
Converted["_Title2"].Parent = Converted["_Toggle1"]

Converted["_Frame1"].Parent = Converted["_Toggle1"]

Converted["_UICorner14"].Parent = Converted["_Frame1"]

Converted["_Toggle2"].Font = Enum.Font.SourceSans
Converted["_Toggle2"].Text = ""
Converted["_Toggle2"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle2"].TextSize = 14
Converted["_Toggle2"].AutoButtonColor = false
Converted["_Toggle2"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle2"].BackgroundTransparency = 0.75
Converted["_Toggle2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle2"].BorderSizePixel = 0
Converted["_Toggle2"].LayoutOrder = 3
Converted["_Toggle2"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle2"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle2"].Name = "Toggle"
Converted["_Toggle2"].Parent = Converted["_Main1"]
Converted["_Toggle2"].MouseButton1Down:Connect(
    function()
        _G.Settings["AutoGoldenOrb"] = not _G.Settings["AutoGoldenOrb"]
        if _G.Settings["AutoGoldenOrb"] then
            Converted["_Frame2"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame2"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings["AutoGoldenOrb"] do
            local GoldRushActive = false
            for i, v in pairs(DataModule:Get().ActiveBuffs) do
                if v.Name == "GoldRush" then
                    GoldRushActive = true
                end
            end
            if not GoldRushActive then
                Network:FireServer("UseGoldenOrb")
            end
            wait(10)
        end
    end
)

Converted["_UICorner15"].Parent = Converted["_Toggle2"]

Converted["_Title3"].Font = Enum.Font.SourceSansBold
Converted["_Title3"].Text = "Auto Golden Orb"
Converted["_Title3"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title3"].TextSize = 14
Converted["_Title3"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title3"].BackgroundTransparency = 1
Converted["_Title3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title3"].BorderSizePixel = 0
Converted["_Title3"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title3"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title3"].Name = "Title"
Converted["_Title3"].Parent = Converted["_Toggle2"]

Converted["_Frame2"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame2"].BorderSizePixel = 0
Converted["_Frame2"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame2"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame2"].Parent = Converted["_Toggle2"]

Converted["_UICorner16"].Parent = Converted["_Frame2"]

Converted["_Eggs1"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_Eggs1"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Eggs1"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Eggs1"].ScrollBarThickness = 0
Converted["_Eggs1"].Active = true
Converted["_Eggs1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Eggs1"].BackgroundTransparency = 8.899999618530273
Converted["_Eggs1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Eggs1"].BorderSizePixel = 0
Converted["_Eggs1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Eggs1"].Visible = false
Converted["_Eggs1"].Name = "Eggs"
Converted["_Eggs1"].Parent = Converted["_Frames"]

Converted["_Filler4"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Filler4"].BackgroundTransparency = 1
Converted["_Filler4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filler4"].BorderSizePixel = 0
Converted["_Filler4"].LayoutOrder = -1
Converted["_Filler4"].Position = UDim2.new(-3.02704711e-06, 0, 0.0948298797, 0)
Converted["_Filler4"].Size = UDim2.new(1.0000031, 0, 0.0174531769, 0)
Converted["_Filler4"].Name = "Filler"
Converted["_Filler4"].Parent = Converted["_Eggs1"]

Converted["_UIListLayout2"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout2"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout2"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout2"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout2"].Parent = Converted["_Eggs1"]

local EggsModule = _G.EggsModule
local AllEggs = {}
local SelectedEgg

for EggName, EggInfo in pairs(EggsModule) do
    table.insert(AllEggs, EggName)
end

local EggPositionMap = {
    ["Common Egg"] = CFrame.new(
        -83.9570618,
        10.1146965,
        1.46630895,
        -0.757433712,
        3.66119195e-07,
        -0.65291208,
        2.59595396e-07,
        1,
        2.59595282e-07,
        0.65291208,
        2.71332539e-08,
        -0.757433712
    ),
    ["Spotted Egg"] = CFrame.new(
        -94.0838013,
        10.1146984,
        7.65263462,
        -0.898797214,
        1.19526206e-07,
        -0.438364595,
        2.59595566e-07,
        1,
        -2.59595708e-07,
        0.438364595,
        -3.47121386e-07,
        -0.898797214
    ),
    ["Iceshard Egg"] = CFrame.new(
        -117.141449,
        10.1146965,
        8.26757526,
        -0.936669111,
        3.34069568e-07,
        0.350215614,
        2.59595566e-07,
        1,
        -2.59595595e-07,
        -0.350215614,
        -1.52240773e-07,
        -0.936669111
    ),
    ["Spikey Egg"] = CFrame.new(
        -125.794189,
        10.1146955,
        5.04188585,
        -0.870350599,
        -9.81058292e-08,
        0.492432564,
        -2.59595453e-07,
        1,
        -2.59595367e-07,
        -0.492432564,
        -3.53772236e-07,
        -0.870350599
    ),
    ["Magma Egg"] = CFrame.new(
        -132.805634,
        10.1146011,
        -0.880043149,
        -0.700912714,
        -3.2019829e-09,
        0.713247061,
        2.59595481e-07,
        1,
        2.59595566e-07,
        -0.713247061,
        3.6710955e-07,
        -0.700912714
    ),
    ["Crystal Egg"] = CFrame.new(
        -138.691528,
        10.1146965,
        -8.08726406,
        -0.49245429,
        -9.80970114e-08,
        0.870338321,
        2.59595623e-07,
        1,
        2.59595595e-07,
        -0.870338321,
        3.53774965e-07,
        -0.49245429
    ),
    ["Lunar Egg"] = CFrame.new(
        -142.498962,
        10.1146946,
        -16.874157,
        -0.267240137,
        -1.8077958e-07,
        0.963629961,
        2.59595367e-07,
        1,
        2.59595367e-07,
        -0.963629961,
        3.19528198e-07,
        -0.267240137
    ),
    ["Void Egg"] = CFrame.new(
        -143.677628,
        10.1146908,
        -26.006731,
        -6.58018362e-10,
        -2.59595168e-07,
        1,
        -2.59595481e-07,
        1,
        2.59595168e-07,
        -1,
        -2.59595481e-07,
        -6.58085753e-10
    ),
    ["Hell Egg"] = CFrame.new(
        -143.145706,
        10.1146965,
        -35.6861458,
        0.190810844,
        -2.05292082e-07,
        0.981626809,
        -2.5959551e-07,
        1,
        2.59595311e-07,
        -0.981626809,
        -3.04359503e-07,
        0.190810844
    ),
    ["Nightmare Egg"] = CFrame.new(
        -140.140411,
        10.1146965,
        -44.2904663,
        0.382679164,
        1.40493725e-07,
        0.923881292,
        2.5959568e-07,
        1,
        -2.5959568e-07,
        -0.923881292,
        3.39177461e-07,
        0.382679164
    ),
    ["Rainbow Egg"] = CFrame.new(
        -135.637314,
        10.1144619,
        -52.0507393,
        0.64945358,
        8.48179353e-16,
        0.760401249,
        2.11109396e-16,
        1,
        -1.29574367e-15,
        -0.760401249,
        1.00205321e-15,
        0.64945358
    ),
    ["Throwback Egg"] = CFrame.new(
        -128.119705,
        10.1146965,
        -58.0951195,
        0.803853273,
        1.32197272e-13,
        0.594827652,
        -4.76484391e-14,
        1,
        -1.57852315e-13,
        -0.594827652,
        9.85474926e-14,
        0.803853273
    )
}

Converted["_Toggle3"].Font = Enum.Font.SourceSans
Converted["_Toggle3"].Text = ""
Converted["_Toggle3"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle3"].TextSize = 14
Converted["_Toggle3"].AutoButtonColor = false
Converted["_Toggle3"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle3"].BackgroundTransparency = 0.75
Converted["_Toggle3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle3"].BorderSizePixel = 0
Converted["_Toggle3"].LayoutOrder = 2
Converted["_Toggle3"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle3"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle3"].Name = "Toggle"
Converted["_Toggle3"].Parent = Converted["_Eggs1"]
Converted["_Toggle3"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoHatch"
        _G.Settings[Setting] = not _G.Settings[Setting]
        local EggCost = EggsModule[SelectedEgg].Cost
        if _G.Settings[Setting] then
            Converted["_Frame3"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame3"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            if DataModule:Get()[EggCost.Currency] >= EggCost.Amount then
                Network:FireServer("HatchEgg", SelectedEgg, 10)
            end
            task.wait(0.25)
        end
    end
)

Converted["_UICorner17"].Parent = Converted["_Toggle3"]

Converted["_Title4"].Font = Enum.Font.SourceSansBold
Converted["_Title4"].Text = "Auto Hatch"
Converted["_Title4"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title4"].TextSize = 14
Converted["_Title4"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title4"].BackgroundTransparency = 1
Converted["_Title4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title4"].BorderSizePixel = 0
Converted["_Title4"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title4"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title4"].Name = "Title"
Converted["_Title4"].Parent = Converted["_Toggle3"]

Converted["_Frame3"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame3"].BorderSizePixel = 0
Converted["_Frame3"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame3"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame3"].Parent = Converted["_Toggle3"]

Converted["_UICorner18"].Parent = Converted["_Frame3"]

Converted["_Dropdown"].Font = Enum.Font.SourceSans
Converted["_Dropdown"].Text = ""
Converted["_Dropdown"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown"].TextSize = 14
Converted["_Dropdown"].AutoButtonColor = false
Converted["_Dropdown"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown"].BackgroundTransparency = 0.75
Converted["_Dropdown"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown"].BorderSizePixel = 0
Converted["_Dropdown"].LayoutOrder = 1
Converted["_Dropdown"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Dropdown"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Dropdown"].Name = "Dropdown"
Converted["_Dropdown"].Parent = Converted["_Eggs1"]
Converted["_Dropdown"].MouseButton1Down:Connect(
    function()
        Converted["_Title6"].Rotation = Converted["_Title6"].Rotation + 180
        for i, v in pairs(Converted["_DropdownMenu"]:GetChildren()) do
            if v:IsA("TextButton") then
                v:Destroy()
            end
        end
        for i, v in pairs(AllEggs) do
            local Option = Instance.new("TextButton", Converted["_DropdownMenu"])
            Option.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Option.BackgroundTransparency = 0.75
            Option.Size = UDim2.new(1, 0, 0.5, 0)
            Option.Text = ""
            Option.Name = "Button"

            local OptionText = Instance.new("TextLabel", Option)
            OptionText.Font = Enum.Font.SourceSansBold
            OptionText.Text = v
            OptionText.TextScaled = true
            OptionText.TextColor3 = Color3.fromRGB(255, 255, 255)
            OptionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            OptionText.TextXAlignment = Enum.TextXAlignment.Left
            OptionText.BackgroundTransparency = 1
            OptionText.Position = UDim2.new(0.0271166489, 0, 0, 0)
            OptionText.Size = UDim2.new(0.972883284, 0, 1, 0)
            OptionText.Name = "Title"

            Option.MouseButton1Down:Connect(
                function()
                    Converted["_Title5"].Text = "Select An Egg (" .. OptionText.Text .. ")"
                    SelectedEgg = OptionText.Text
                end
            )
        end
        Converted["_DropdownMenu"].Visible = not Converted["_DropdownMenu"].Visible
    end
)

Converted["_UICorner19"].Parent = Converted["_Dropdown"]

Converted["_Title5"].Font = Enum.Font.SourceSansBold
Converted["_Title5"].Text = "Select An Egg"
Converted["_Title5"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title5"].TextSize = 14
Converted["_Title5"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title5"].BackgroundTransparency = 1
Converted["_Title5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title5"].BorderSizePixel = 0
Converted["_Title5"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title5"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title5"].Name = "Title"
Converted["_Title5"].Parent = Converted["_Dropdown"]

Converted["_State"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_State"].BackgroundTransparency = 0.7400000095367432
Converted["_State"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_State"].BorderSizePixel = 0
Converted["_State"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_State"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_State"].Name = "State"
Converted["_State"].Parent = Converted["_Dropdown"]

Converted["_UICorner20"].Parent = Converted["_State"]

Converted["_Title6"].Font = Enum.Font.Unknown
Converted["_Title6"].Text = "V"
Converted["_Title6"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title6"].TextSize = 14
Converted["_Title6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title6"].BackgroundTransparency = 1
Converted["_Title6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title6"].BorderSizePixel = 0
Converted["_Title6"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Title6"].Name = "Title"
Converted["_Title6"].Parent = Converted["_State"]

Converted["_DropdownMenu"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_DropdownMenu"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_DropdownMenu"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropdownMenu"].ScrollBarThickness = 0
Converted["_DropdownMenu"].Active = true
Converted["_DropdownMenu"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropdownMenu"].BackgroundTransparency = 1
Converted["_DropdownMenu"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropdownMenu"].BorderSizePixel = 0
Converted["_DropdownMenu"].LayoutOrder = 1
Converted["_DropdownMenu"].Position = UDim2.new(0.0401233621, 0, 0.344189018, 0)
Converted["_DropdownMenu"].Size = UDim2.new(0, 301, 0, 100)
Converted["_DropdownMenu"].Visible = false
Converted["_DropdownMenu"].Name = "DropdownMenu"
Converted["_DropdownMenu"].Parent = Converted["_Eggs1"]

Converted["_UICorner21"].Parent = Converted["_DropdownMenu"]

Converted["_UIListLayout3"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout3"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout3"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout3"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout3"].Parent = Converted["_DropdownMenu"]

Converted["_Button"].Font = Enum.Font.SourceSans
Converted["_Button"].Text = ""
Converted["_Button"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button"].TextSize = 14
Converted["_Button"].AutoButtonColor = false
Converted["_Button"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button"].BackgroundTransparency = 0.75
Converted["_Button"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button"].BorderSizePixel = 0
Converted["_Button"].Position = UDim2.new(0.0398671106, 0, 0, 0)
Converted["_Button"].Size = UDim2.new(0, 279, 0, 50)
Converted["_Button"].Name = "Button"
Converted["_Button"].Parent = Converted["_DropdownMenu"]

Converted["_UICorner22"].Parent = Converted["_Button"]

Converted["_Title7"].Font = Enum.Font.SourceSansBold
Converted["_Title7"].Text = "Option"
Converted["_Title7"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title7"].TextSize = 14
Converted["_Title7"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title7"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title7"].BackgroundTransparency = 1
Converted["_Title7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title7"].BorderSizePixel = 0
Converted["_Title7"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title7"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title7"].Name = "Title"
Converted["_Title7"].Parent = Converted["_Button"]

Converted["_Button1"].Font = Enum.Font.SourceSans
Converted["_Button1"].Text = ""
Converted["_Button1"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button1"].TextSize = 14
Converted["_Button1"].AutoButtonColor = false
Converted["_Button1"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button1"].BackgroundTransparency = 0.75
Converted["_Button1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button1"].BorderSizePixel = 0
Converted["_Button1"].LayoutOrder = 3
Converted["_Button1"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Button1"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Button1"].Name = "Button"
Converted["_Button1"].Parent = Converted["_Eggs1"]
Converted["_Button1"].MouseButton1Down:Connect(
    function()
        for i, v in pairs(getgc(true)) do
            if typeof(v) == "table" and rawget(v, "Play") then
                v.Play = function()
                    return
                end
            end
        end
    end
)

Converted["_UICorner23"].Parent = Converted["_Button1"]

Converted["_Title8"].Font = Enum.Font.SourceSansBold
Converted["_Title8"].Text = "Remove Hatch Animation"
Converted["_Title8"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title8"].TextSize = 14
Converted["_Title8"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title8"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title8"].BackgroundTransparency = 1
Converted["_Title8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title8"].BorderSizePixel = 0
Converted["_Title8"].LayoutOrder = 3
Converted["_Title8"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title8"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title8"].Name = "Title"
Converted["_Title8"].Parent = Converted["_Button1"]

Converted["_Rifts1"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_Rifts1"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Rifts1"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rifts1"].ScrollBarThickness = 0
Converted["_Rifts1"].Active = true
Converted["_Rifts1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Rifts1"].BackgroundTransparency = 8.899999618530273
Converted["_Rifts1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rifts1"].BorderSizePixel = 0
Converted["_Rifts1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Rifts1"].Visible = false
Converted["_Rifts1"].Name = "Rifts"
Converted["_Rifts1"].Parent = Converted["_Frames"]

Converted["_Filler5"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Filler5"].BackgroundTransparency = 1
Converted["_Filler5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filler5"].BorderSizePixel = 0
Converted["_Filler5"].LayoutOrder = -1
Converted["_Filler5"].Position = UDim2.new(-3.02704711e-06, 0, 0.0948298797, 0)
Converted["_Filler5"].Size = UDim2.new(1.0000031, 0, 0.0174531769, 0)
Converted["_Filler5"].Name = "Filler"
Converted["_Filler5"].Parent = Converted["_Rifts1"]

Converted["_UIListLayout4"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout4"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout4"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout4"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout4"].Parent = Converted["_Rifts1"]

local RiftsFolder = workspace.Rendered.Rifts
local AllRifts = {}
local SelectedRift

local function ResetRifts()
    AllRifts = {}
    for i, Rift in pairs(RiftsFolder:GetChildren()) do
        table.insert(AllRifts, tostring(i) .. ". " .. CodenameToRegularName(Rift.Name))
    end
end
ResetRifts()

RiftsFolder.ChildAdded:Connect(
    function()
        ResetRifts()
    end
)

RiftsFolder.ChildRemoved:Connect(
    function()
        ResetRifts()
    end
)

Converted["_Dropdown1"].Font = Enum.Font.SourceSans
Converted["_Dropdown1"].Text = ""
Converted["_Dropdown1"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown1"].TextSize = 14
Converted["_Dropdown1"].AutoButtonColor = false
Converted["_Dropdown1"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown1"].BackgroundTransparency = 0.75
Converted["_Dropdown1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown1"].BorderSizePixel = 0
Converted["_Dropdown1"].LayoutOrder = 1
Converted["_Dropdown1"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Dropdown1"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Dropdown1"].Name = "Dropdown"
Converted["_Dropdown1"].Parent = Converted["_Rifts1"]
Converted["_Dropdown1"].MouseButton1Down:Connect(
    function()
        Converted["_Title10"].Rotation = Converted["_Title10"].Rotation + 180
        for i, v in pairs(Converted["_DropdownMenu1"]:GetChildren()) do
            if v:IsA("TextButton") then
                v:Destroy()
            end
        end
        for i, v in pairs(AllRifts) do
            local Option = Instance.new("TextButton", Converted["_DropdownMenu1"])
            Option.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Option.BackgroundTransparency = 0.75
            Option.Size = UDim2.new(1, 0, 0.5, 0)
            Option.Text = ""
            Option.Name = "Button"

            local OptionText = Instance.new("TextLabel", Option)
            OptionText.Font = Enum.Font.SourceSansBold
            OptionText.Text = v
            OptionText.TextScaled = true
            OptionText.TextColor3 = Color3.fromRGB(255, 255, 255)
            OptionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            OptionText.TextXAlignment = Enum.TextXAlignment.Left
            OptionText.BackgroundTransparency = 1
            OptionText.Position = UDim2.new(0.0271166489, 0, 0, 0)
            OptionText.Size = UDim2.new(0.972883284, 0, 1, 0)
            OptionText.Name = "Title"

            Option.MouseButton1Down:Connect(
                function()
                    Converted["_Title9"].Text = "Select A Rift (" .. OptionText.Text .. ")"
                    SelectedRift = tonumber(string.split(OptionText.Text, ".")[1])
                end
            )
        end
        Converted["_DropdownMenu1"].Visible = not Converted["_DropdownMenu1"].Visible
    end
)

Converted["_UICorner24"].Parent = Converted["_Dropdown1"]

Converted["_Title9"].Font = Enum.Font.SourceSansBold
Converted["_Title9"].Text = "Select A Rift"
Converted["_Title9"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title9"].TextSize = 14
Converted["_Title9"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title9"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title9"].BackgroundTransparency = 1
Converted["_Title9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title9"].BorderSizePixel = 0
Converted["_Title9"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title9"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title9"].Name = "Title"
Converted["_Title9"].Parent = Converted["_Dropdown1"]

Converted["_State1"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_State1"].BackgroundTransparency = 0.7400000095367432
Converted["_State1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_State1"].BorderSizePixel = 0
Converted["_State1"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_State1"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_State1"].Name = "State"
Converted["_State1"].Parent = Converted["_Dropdown1"]

Converted["_UICorner25"].Parent = Converted["_State1"]

Converted["_Title10"].Font = Enum.Font.Unknown
Converted["_Title10"].Text = "V"
Converted["_Title10"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title10"].TextSize = 14
Converted["_Title10"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title10"].BackgroundTransparency = 1
Converted["_Title10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title10"].BorderSizePixel = 0
Converted["_Title10"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Title10"].Name = "Title"
Converted["_Title10"].Parent = Converted["_State1"]

Converted["_DropdownMenu1"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_DropdownMenu1"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_DropdownMenu1"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropdownMenu1"].ScrollBarThickness = 0
Converted["_DropdownMenu1"].Active = true
Converted["_DropdownMenu1"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropdownMenu1"].BackgroundTransparency = 1
Converted["_DropdownMenu1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropdownMenu1"].BorderSizePixel = 0
Converted["_DropdownMenu1"].LayoutOrder = 2
Converted["_DropdownMenu1"].Position = UDim2.new(0.0401233621, 0, 0.344189018, 0)
Converted["_DropdownMenu1"].Size = UDim2.new(0, 301, 0, 100)
Converted["_DropdownMenu1"].Visible = false
Converted["_DropdownMenu1"].Name = "DropdownMenu"
Converted["_DropdownMenu1"].Parent = Converted["_Rifts1"]

Converted["_UICorner26"].Parent = Converted["_DropdownMenu1"]

Converted["_UIListLayout5"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout5"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout5"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout5"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout5"].Parent = Converted["_DropdownMenu1"]

Converted["_Button2"].Font = Enum.Font.SourceSans
Converted["_Button2"].Text = ""
Converted["_Button2"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button2"].TextSize = 14
Converted["_Button2"].AutoButtonColor = false
Converted["_Button2"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button2"].BackgroundTransparency = 0.75
Converted["_Button2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button2"].BorderSizePixel = 0
Converted["_Button2"].Position = UDim2.new(0.0398671106, 0, 0, 0)
Converted["_Button2"].Size = UDim2.new(0, 279, 0, 50)
Converted["_Button2"].Name = "Button"
Converted["_Button2"].Parent = Converted["_DropdownMenu1"]

Converted["_UICorner27"].Parent = Converted["_Button2"]

Converted["_Title11"].Font = Enum.Font.SourceSansBold
Converted["_Title11"].Text = "Option"
Converted["_Title11"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title11"].TextSize = 14
Converted["_Title11"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title11"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title11"].BackgroundTransparency = 1
Converted["_Title11"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title11"].BorderSizePixel = 0
Converted["_Title11"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title11"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title11"].Name = "Title"
Converted["_Title11"].Parent = Converted["_Button2"]

Converted["_Button3"].Font = Enum.Font.SourceSans
Converted["_Button3"].Text = ""
Converted["_Button3"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button3"].TextSize = 14
Converted["_Button3"].AutoButtonColor = false
Converted["_Button3"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button3"].BackgroundTransparency = 0.75
Converted["_Button3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button3"].BorderSizePixel = 0
Converted["_Button3"].LayoutOrder = 3
Converted["_Button3"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Button3"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Button3"].Name = "Button"
Converted["_Button3"].Parent = Converted["_Rifts1"]
Converted["_Button3"].MouseButton1Down:Connect(
    function()
        Tween(RiftsFolder:GetChildren()[SelectedRift].Display)
    end
)

Converted["_UICorner28"].Parent = Converted["_Button3"]

Converted["_Title12"].Font = Enum.Font.SourceSansBold
Converted["_Title12"].Text = "Teleport"
Converted["_Title12"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title12"].TextSize = 14
Converted["_Title12"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title12"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title12"].BackgroundTransparency = 1
Converted["_Title12"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title12"].BorderSizePixel = 0
Converted["_Title12"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title12"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title12"].Name = "Title"
Converted["_Title12"].Parent = Converted["_Button3"]

Converted["_Rewards1"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_Rewards1"].CanvasPosition = Vector2.new(0, 18.54962158203125)
Converted["_Rewards1"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Rewards1"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rewards1"].ScrollBarThickness = 0
Converted["_Rewards1"].Active = true
Converted["_Rewards1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Rewards1"].BackgroundTransparency = 8.899999618530273
Converted["_Rewards1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rewards1"].BorderSizePixel = 0
Converted["_Rewards1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Rewards1"].Visible = false
Converted["_Rewards1"].Name = "Rewards"
Converted["_Rewards1"].Parent = Converted["_Frames"]

Converted["_Filler6"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Filler6"].BackgroundTransparency = 1
Converted["_Filler6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filler6"].BorderSizePixel = 0
Converted["_Filler6"].LayoutOrder = -1
Converted["_Filler6"].Position = UDim2.new(-3.02704711e-06, 0, 0.0948298797, 0)
Converted["_Filler6"].Size = UDim2.new(1.0000031, 0, 0.0174531769, 0)
Converted["_Filler6"].Name = "Filler"
Converted["_Filler6"].Parent = Converted["_Rewards1"]

Converted["_UIListLayout6"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout6"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout6"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout6"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout6"].Parent = Converted["_Rewards1"]

Converted["_Toggle4"].Font = Enum.Font.SourceSans
Converted["_Toggle4"].Text = ""
Converted["_Toggle4"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle4"].TextSize = 14
Converted["_Toggle4"].AutoButtonColor = false
Converted["_Toggle4"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle4"].BackgroundTransparency = 0.75
Converted["_Toggle4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle4"].BorderSizePixel = 0
Converted["_Toggle4"].LayoutOrder = 1
Converted["_Toggle4"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle4"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle4"].Name = "Toggle"
Converted["_Toggle4"].Parent = Converted["_Rewards1"]
Converted["_Toggle4"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoClaimDaily"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame4"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame4"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            Network:FireServer("DailyRewardClaimStars")
            task.wait(300)
        end
    end
)

Converted["_UICorner29"].Parent = Converted["_Toggle4"]

Converted["_Title13"].Font = Enum.Font.SourceSansBold
Converted["_Title13"].Text = "Auto Claim Daily"
Converted["_Title13"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title13"].TextSize = 14
Converted["_Title13"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title13"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title13"].BackgroundTransparency = 1
Converted["_Title13"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title13"].BorderSizePixel = 0
Converted["_Title13"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title13"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title13"].Name = "Title"
Converted["_Title13"].Parent = Converted["_Toggle4"]

Converted["_Frame4"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame4"].BorderSizePixel = 0
Converted["_Frame4"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame4"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame4"].Parent = Converted["_Toggle4"]

Converted["_UICorner30"].Parent = Converted["_Frame4"]

Converted["_Toggle5"].Font = Enum.Font.SourceSans
Converted["_Toggle5"].Text = ""
Converted["_Toggle5"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle5"].TextSize = 14
Converted["_Toggle5"].AutoButtonColor = false
Converted["_Toggle5"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle5"].BackgroundTransparency = 0.75
Converted["_Toggle5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle5"].BorderSizePixel = 0
Converted["_Toggle5"].LayoutOrder = 2
Converted["_Toggle5"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle5"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle5"].Name = "Toggle"
Converted["_Toggle5"].Parent = Converted["_Rewards1"]
Converted["_Toggle5"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoClaimSpinTicket"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame5"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame5"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            Network:FireServer("ClaimFreeWheelSpin")
            task.wait(60)
        end
    end
)

Converted["_UICorner31"].Parent = Converted["_Toggle5"]

Converted["_Title14"].Font = Enum.Font.SourceSansBold
Converted["_Title14"].Text = "Auto Claim Spin Ticket"
Converted["_Title14"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title14"].TextSize = 14
Converted["_Title14"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title14"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title14"].BackgroundTransparency = 1
Converted["_Title14"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title14"].BorderSizePixel = 0
Converted["_Title14"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title14"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title14"].Name = "Title"
Converted["_Title14"].Parent = Converted["_Toggle5"]

Converted["_Frame5"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame5"].BorderSizePixel = 0
Converted["_Frame5"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame5"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame5"].Parent = Converted["_Toggle5"]

Converted["_UICorner32"].Parent = Converted["_Frame5"]

Converted["_Toggle6"].Font = Enum.Font.SourceSans
Converted["_Toggle6"].Text = ""
Converted["_Toggle6"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle6"].TextSize = 14
Converted["_Toggle6"].AutoButtonColor = false
Converted["_Toggle6"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle6"].BackgroundTransparency = 0.75
Converted["_Toggle6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle6"].BorderSizePixel = 0
Converted["_Toggle6"].LayoutOrder = 3
Converted["_Toggle6"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle6"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle6"].Name = "Toggle"
Converted["_Toggle6"].Parent = Converted["_Rewards1"]
Converted["_Toggle6"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoPlaytime"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame6"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame6"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            for i = 1, 9 do
                Network:InvokeServer("ClaimPlaytime", i)
                task.wait()
            end
            task.wait(10)
        end
    end
)

Converted["_UICorner33"].Parent = Converted["_Toggle6"]

Converted["_Title15"].Font = Enum.Font.SourceSansBold
Converted["_Title15"].Text = "Auto Playtime"
Converted["_Title15"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title15"].TextSize = 14
Converted["_Title15"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title15"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title15"].BackgroundTransparency = 1
Converted["_Title15"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title15"].BorderSizePixel = 0
Converted["_Title15"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title15"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title15"].Name = "Title"
Converted["_Title15"].Parent = Converted["_Toggle6"]

Converted["_Frame6"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame6"].BorderSizePixel = 0
Converted["_Frame6"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame6"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame6"].Parent = Converted["_Toggle6"]

Converted["_UICorner34"].Parent = Converted["_Frame6"]

Converted["_Toggle7"].Font = Enum.Font.SourceSans
Converted["_Toggle7"].Text = ""
Converted["_Toggle7"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle7"].TextSize = 14
Converted["_Toggle7"].AutoButtonColor = false
Converted["_Toggle7"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle7"].BackgroundTransparency = 0.75
Converted["_Toggle7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle7"].BorderSizePixel = 0
Converted["_Toggle7"].LayoutOrder = 4
Converted["_Toggle7"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle7"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle7"].Name = "Toggle"
Converted["_Toggle7"].Parent = Converted["_Rewards1"]
Converted["_Toggle7"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoClaimQuests"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame7"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame7"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            for i = 1, 30 do
                Network:InvokeServer("ClaimPrize", i)
                task.wait()
            end
            task.wait(10)
        end
    end
)

Converted["_UICorner35"].Parent = Converted["_Toggle7"]

Converted["_Title16"].Font = Enum.Font.SourceSansBold
Converted["_Title16"].Text = "Auto Claim Quests"
Converted["_Title16"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title16"].TextSize = 14
Converted["_Title16"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title16"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title16"].BackgroundTransparency = 1
Converted["_Title16"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title16"].BorderSizePixel = 0
Converted["_Title16"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title16"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title16"].Name = "Title"
Converted["_Title16"].Parent = Converted["_Toggle7"]

Converted["_Frame7"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame7"].BorderSizePixel = 0
Converted["_Frame7"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame7"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame7"].Parent = Converted["_Toggle7"]

Converted["_UICorner36"].Parent = Converted["_Frame7"]

Converted["_Toggle8"].Font = Enum.Font.SourceSans
Converted["_Toggle8"].Text = ""
Converted["_Toggle8"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle8"].TextSize = 14
Converted["_Toggle8"].AutoButtonColor = false
Converted["_Toggle8"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle8"].BackgroundTransparency = 0.75
Converted["_Toggle8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle8"].BorderSizePixel = 0
Converted["_Toggle8"].LayoutOrder = 5
Converted["_Toggle8"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle8"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle8"].Name = "Toggle"
Converted["_Toggle8"].Parent = Converted["_Rewards1"]
Converted["_Toggle8"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoClaimChests"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame8"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame8"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            for i, Chest in pairs(_G.Chests) do
                Network:FireServer("ClaimChest", i, true)
                task.wait(0.25)
            end
            task.wait(60)
        end
    end
)

Converted["_UICorner37"].Parent = Converted["_Toggle8"]

Converted["_Title17"].Font = Enum.Font.SourceSansBold
Converted["_Title17"].Text = "Auto Claim Chests (LVL 15 MASTERY REQUIRED)"
Converted["_Title17"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title17"].TextSize = 14
Converted["_Title17"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title17"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title17"].BackgroundTransparency = 1
Converted["_Title17"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title17"].BorderSizePixel = 0
Converted["_Title17"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title17"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title17"].Name = "Title"
Converted["_Title17"].Parent = Converted["_Toggle8"]

Converted["_Frame8"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame8"].BorderSizePixel = 0
Converted["_Frame8"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame8"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame8"].Parent = Converted["_Toggle8"]

Converted["_UICorner38"].Parent = Converted["_Frame8"]

Converted["_Items1"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_Items1"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Items1"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Items1"].ScrollBarThickness = 0
Converted["_Items1"].Active = true
Converted["_Items1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Items1"].BackgroundTransparency = 8.899999618530273
Converted["_Items1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Items1"].BorderSizePixel = 0
Converted["_Items1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Items1"].Visible = false
Converted["_Items1"].Name = "Items"
Converted["_Items1"].Parent = Converted["_Frames"]

Converted["_Filler7"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Filler7"].BackgroundTransparency = 1
Converted["_Filler7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filler7"].BorderSizePixel = 0
Converted["_Filler7"].LayoutOrder = -1
Converted["_Filler7"].Position = UDim2.new(-3.02704711e-06, 0, 0.0948298797, 0)
Converted["_Filler7"].Size = UDim2.new(1.0000031, 0, 0.0174531769, 0)
Converted["_Filler7"].Name = "Filler"
Converted["_Filler7"].Parent = Converted["_Items1"]

Converted["_UIListLayout7"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout7"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout7"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout7"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout7"].Parent = Converted["_Items1"]

local Connection

Converted["_Toggle9"].Font = Enum.Font.SourceSans
Converted["_Toggle9"].Text = ""
Converted["_Toggle9"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle9"].TextSize = 14
Converted["_Toggle9"].AutoButtonColor = false
Converted["_Toggle9"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle9"].BackgroundTransparency = 0.75
Converted["_Toggle9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle9"].BorderSizePixel = 0
Converted["_Toggle9"].LayoutOrder = 1
Converted["_Toggle9"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle9"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle9"].Name = "Toggle"
Converted["_Toggle9"].Parent = Converted["_Items1"]
Converted["_Toggle9"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoMysteryGift"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Connection =
                workspace.Rendered.Gifts.ChildAdded:Connect(
                function(Gift)
                    Network:FireServer("ClaimGift", Gift.Name)
                end
            )
            Converted["_Frame9"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Connection:Disconnect()
            Converted["_Frame9"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            Network:FireServer("UseGift", "Mystery Box", 1)
            task.wait()
        end
    end
)

Converted["_UICorner39"].Parent = Converted["_Toggle9"]

Converted["_Title18"].Font = Enum.Font.SourceSansBold
Converted["_Title18"].Text = "Auto Mystery Gift"
Converted["_Title18"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title18"].TextSize = 14
Converted["_Title18"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title18"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title18"].BackgroundTransparency = 1
Converted["_Title18"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title18"].BorderSizePixel = 0
Converted["_Title18"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title18"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title18"].Name = "Title"
Converted["_Title18"].Parent = Converted["_Toggle9"]

Converted["_Frame9"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame9"].BorderSizePixel = 0
Converted["_Frame9"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame9"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame9"].Parent = Converted["_Toggle9"]

Converted["_UICorner40"].Parent = Converted["_Frame9"]

Converted["_Toggle10"].Font = Enum.Font.SourceSans
Converted["_Toggle10"].Text = ""
Converted["_Toggle10"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle10"].TextSize = 14
Converted["_Toggle10"].AutoButtonColor = false
Converted["_Toggle10"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle10"].BackgroundTransparency = 0.75
Converted["_Toggle10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle10"].BorderSizePixel = 0
Converted["_Toggle10"].LayoutOrder = 2
Converted["_Toggle10"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle10"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle10"].Name = "Toggle"
Converted["_Toggle10"].Parent = Converted["_Items1"]
Converted["_Toggle10"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoGoldenChest"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame10"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame10"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            Network:FireServer("UnlockRiftChest", "golden-chest", false)
            task.wait(1)
        end
    end
)

Converted["_UICorner41"].Parent = Converted["_Toggle10"]

Converted["_Title19"].Font = Enum.Font.SourceSansBold
Converted["_Title19"].Text = "Auto Golden Chest (Within Range)"
Converted["_Title19"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title19"].TextSize = 14
Converted["_Title19"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title19"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title19"].BackgroundTransparency = 1
Converted["_Title19"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title19"].BorderSizePixel = 0
Converted["_Title19"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title19"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title19"].Name = "Title"
Converted["_Title19"].Parent = Converted["_Toggle10"]

Converted["_Frame10"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame10"].BorderSizePixel = 0
Converted["_Frame10"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame10"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame10"].Parent = Converted["_Toggle10"]

Converted["_UICorner42"].Parent = Converted["_Frame10"]

Converted["_Toggle11"].Font = Enum.Font.SourceSans
Converted["_Toggle11"].Text = ""
Converted["_Toggle11"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle11"].TextSize = 14
Converted["_Toggle11"].AutoButtonColor = false
Converted["_Toggle11"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle11"].BackgroundTransparency = 0.75
Converted["_Toggle11"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle11"].BorderSizePixel = 0
Converted["_Toggle11"].LayoutOrder = 3
Converted["_Toggle11"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle11"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle11"].Name = "Toggle"
Converted["_Toggle11"].Parent = Converted["_Items1"]
Converted["_Toggle11"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoRiftChest"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame11"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame11"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            Network:FireServer("UnlockRiftChest", "rift-chest", false)
            task.wait(1)
        end
    end
)

Converted["_UICorner43"].Parent = Converted["_Toggle11"]

Converted["_Title20"].Font = Enum.Font.SourceSansBold
Converted["_Title20"].Text = "Auto Rift Chest (Within Range)"
Converted["_Title20"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title20"].TextSize = 14
Converted["_Title20"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title20"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title20"].BackgroundTransparency = 1
Converted["_Title20"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title20"].BorderSizePixel = 0
Converted["_Title20"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title20"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title20"].Name = "Title"
Converted["_Title20"].Parent = Converted["_Toggle11"]

Converted["_Frame11"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame11"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame11"].BorderSizePixel = 0
Converted["_Frame11"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame11"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame11"].Parent = Converted["_Toggle11"]

Converted["_UICorner44"].Parent = Converted["_Frame11"]

Converted["_Toggle12"].Font = Enum.Font.SourceSans
Converted["_Toggle12"].Text = ""
Converted["_Toggle12"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle12"].TextSize = 14
Converted["_Toggle12"].AutoButtonColor = false
Converted["_Toggle12"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle12"].BackgroundTransparency = 0.75
Converted["_Toggle12"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle12"].BorderSizePixel = 0
Converted["_Toggle12"].LayoutOrder = 4
Converted["_Toggle12"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle12"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle12"].Name = "Toggle"
Converted["_Toggle12"].Parent = Converted["_Items1"]
Converted["_Toggle12"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoSpinWheel"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame12"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame12"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            Network:InvokeServer("WheelSpin")
        end
    end
)

Converted["_UICorner45"].Parent = Converted["_Toggle12"]

Converted["_Title21"].Font = Enum.Font.SourceSansBold
Converted["_Title21"].Text = "Auto Spin Wheel"
Converted["_Title21"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title21"].TextSize = 14
Converted["_Title21"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title21"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title21"].BackgroundTransparency = 1
Converted["_Title21"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title21"].BorderSizePixel = 0
Converted["_Title21"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title21"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title21"].Name = "Title"
Converted["_Title21"].Parent = Converted["_Toggle12"]

Converted["_Frame12"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame12"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame12"].BorderSizePixel = 0
Converted["_Frame12"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame12"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame12"].Parent = Converted["_Toggle12"]

Converted["_UICorner46"].Parent = Converted["_Frame12"]

local AllPets = {}
local AllEnchants = {
    "team-up",
    "bubbler",
    "looter",
    "gleaming",
    "magnetism",
    "high-roller",
    "infinity"
}
local SelectedPet = "None"
local SelectedEnch = "team-up"
local SelectedLvl = 5

local function RefreshPets()
    AllPets = {}
    for i, v in pairs(DataModule:Get().Pets) do
        table.insert(AllPets, tostring(v.Name .. " - " .. v.Id))
    end
end
RefreshPets()

Converted["_Enchants1"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_Enchants1"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Enchants1"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Enchants1"].ScrollBarThickness = 0
Converted["_Enchants1"].Active = true
Converted["_Enchants1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Enchants1"].BackgroundTransparency = 8.899999618530273
Converted["_Enchants1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Enchants1"].BorderSizePixel = 0
Converted["_Enchants1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Enchants1"].Visible = false
Converted["_Enchants1"].Name = "Enchants"
Converted["_Enchants1"].Parent = Converted["_Frames"]

Converted["_Filler8"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Filler8"].BackgroundTransparency = 1
Converted["_Filler8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filler8"].BorderSizePixel = 0
Converted["_Filler8"].LayoutOrder = -1
Converted["_Filler8"].Position = UDim2.new(-3.02704711e-06, 0, 0.0948298797, 0)
Converted["_Filler8"].Size = UDim2.new(1.0000031, 0, 0.0174531769, 0)
Converted["_Filler8"].Name = "Filler"
Converted["_Filler8"].Parent = Converted["_Enchants1"]

Converted["_UIListLayout8"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout8"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout8"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout8"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout8"].Parent = Converted["_Enchants1"]

Converted["_Toggle13"].Font = Enum.Font.SourceSans
Converted["_Toggle13"].Text = ""
Converted["_Toggle13"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle13"].TextSize = 14
Converted["_Toggle13"].AutoButtonColor = false
Converted["_Toggle13"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle13"].BackgroundTransparency = 0.75
Converted["_Toggle13"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle13"].BorderSizePixel = 0
Converted["_Toggle13"].LayoutOrder = 5
Converted["_Toggle13"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle13"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle13"].Name = "Toggle"
Converted["_Toggle13"].Parent = Converted["_Enchants1"]
Converted["_Toggle13"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoEnchant"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame13"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame13"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            local Id = SelectedPet:split(" - ")[2]
            for i, Pet in pairs(DataModule:Get().Pets) do
                if Pet.Id == Id then
                    if #Pet.Enchants == 0 then
                        Network:InvokeServer("RerollEnchants", Pet.Id)
                    end
                    local hasEnchant = false
                    for i, Enchant in pairs(Pet.Enchants) do
                        if Enchant.Id == SelectedEnch and Enchant.Level == SelectedLvl then
                            hasEnchant = true
                        end
                    end
                    if not hasEnchant then
                        Network:InvokeServer("RerollEnchants", Pet.Id)
                    end
                end
            end
            task.wait()
        end
    end
)

Converted["_UICorner47"].Parent = Converted["_Toggle13"]

Converted["_Title22"].Font = Enum.Font.SourceSansBold
Converted["_Title22"].Text = "Auto Enchant"
Converted["_Title22"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title22"].TextSize = 14
Converted["_Title22"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title22"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title22"].BackgroundTransparency = 1
Converted["_Title22"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title22"].BorderSizePixel = 0
Converted["_Title22"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title22"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title22"].Name = "Title"
Converted["_Title22"].Parent = Converted["_Toggle13"]

Converted["_Frame13"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame13"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame13"].BorderSizePixel = 0
Converted["_Frame13"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame13"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame13"].Parent = Converted["_Toggle13"]

Converted["_UICorner48"].Parent = Converted["_Frame13"]

Converted["_Dropdown2"].Font = Enum.Font.SourceSans
Converted["_Dropdown2"].Text = ""
Converted["_Dropdown2"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown2"].TextSize = 14
Converted["_Dropdown2"].AutoButtonColor = false
Converted["_Dropdown2"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown2"].BackgroundTransparency = 0.75
Converted["_Dropdown2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown2"].BorderSizePixel = 0
Converted["_Dropdown2"].LayoutOrder = 1
Converted["_Dropdown2"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Dropdown2"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Dropdown2"].Name = "Dropdown"
Converted["_Dropdown2"].Parent = Converted["_Enchants1"]
Converted["_Dropdown2"].MouseButton1Down:Connect(
    function()
        Converted["_Title24"].Rotation = Converted["_Title24"].Rotation + 180
        for i, v in pairs(Converted["_DropdownMenu2"]:GetChildren()) do
            if v:IsA("TextButton") then
                v:Destroy()
            end
        end
        for i, v in pairs(AllPets) do
            local Option = Instance.new("TextButton", Converted["_DropdownMenu2"])
            Option.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Option.BackgroundTransparency = 0.75
            Option.Size = UDim2.new(1, 0, 0.5, 0)
            Option.Text = ""
            Option.Name = "Button"

            local OptionText = Instance.new("TextLabel", Option)
            OptionText.Font = Enum.Font.SourceSansBold
            OptionText.Text = v
            OptionText.TextScaled = true
            OptionText.TextColor3 = Color3.fromRGB(255, 255, 255)
            OptionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            OptionText.TextXAlignment = Enum.TextXAlignment.Left
            OptionText.BackgroundTransparency = 1
            OptionText.Position = UDim2.new(0.0271166489, 0, 0, 0)
            OptionText.Size = UDim2.new(0.972883284, 0, 1, 0)
            OptionText.Name = "Title"

            Option.MouseButton1Down:Connect(
                function()
                    Converted["_Title23"].Text = "Select Pet (" .. OptionText.Text .. ")"
                    SelectedPet = OptionText.Text
                end
            )
        end
        Converted["_DropdownMenu2"].Visible = not Converted["_DropdownMenu2"].Visible
    end
)

Converted["_UICorner49"].Parent = Converted["_Dropdown2"]

Converted["_Title23"].Font = Enum.Font.SourceSansBold
Converted["_Title23"].Text = "Select Pet"
Converted["_Title23"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title23"].TextSize = 14
Converted["_Title23"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title23"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title23"].BackgroundTransparency = 1
Converted["_Title23"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title23"].BorderSizePixel = 0
Converted["_Title23"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title23"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title23"].Name = "Title"
Converted["_Title23"].Parent = Converted["_Dropdown2"]

Converted["_State2"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_State2"].BackgroundTransparency = 0.7400000095367432
Converted["_State2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_State2"].BorderSizePixel = 0
Converted["_State2"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_State2"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_State2"].Name = "State"
Converted["_State2"].Parent = Converted["_Dropdown2"]

Converted["_UICorner50"].Parent = Converted["_State2"]

Converted["_Title24"].Font = Enum.Font.Unknown
Converted["_Title24"].Text = "V"
Converted["_Title24"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title24"].TextSize = 14
Converted["_Title24"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title24"].BackgroundTransparency = 1
Converted["_Title24"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title24"].BorderSizePixel = 0
Converted["_Title24"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Title24"].Name = "Title"
Converted["_Title24"].Parent = Converted["_State2"]

Converted["_DropdownMenu2"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_DropdownMenu2"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_DropdownMenu2"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropdownMenu2"].ScrollBarThickness = 0
Converted["_DropdownMenu2"].Active = true
Converted["_DropdownMenu2"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropdownMenu2"].BackgroundTransparency = 1
Converted["_DropdownMenu2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropdownMenu2"].BorderSizePixel = 0
Converted["_DropdownMenu2"].LayoutOrder = 1
Converted["_DropdownMenu2"].Position = UDim2.new(0.0401233621, 0, 0.344189018, 0)
Converted["_DropdownMenu2"].Size = UDim2.new(0, 301, 0, 100)
Converted["_DropdownMenu2"].Visible = false
Converted["_DropdownMenu2"].Name = "DropdownMenu"
Converted["_DropdownMenu2"].Parent = Converted["_Enchants1"]

Converted["_UICorner51"].Parent = Converted["_DropdownMenu2"]

Converted["_UIListLayout9"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout9"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout9"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout9"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout9"].Parent = Converted["_DropdownMenu2"]

Converted["_Button4"].Font = Enum.Font.SourceSans
Converted["_Button4"].Text = ""
Converted["_Button4"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button4"].TextSize = 14
Converted["_Button4"].AutoButtonColor = false
Converted["_Button4"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button4"].BackgroundTransparency = 0.75
Converted["_Button4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button4"].BorderSizePixel = 0
Converted["_Button4"].Position = UDim2.new(0.0398671106, 0, 0, 0)
Converted["_Button4"].Size = UDim2.new(0, 279, 0, 50)
Converted["_Button4"].Name = "Button"
Converted["_Button4"].Parent = Converted["_DropdownMenu2"]

Converted["_UICorner52"].Parent = Converted["_Button4"]

Converted["_Title25"].Font = Enum.Font.SourceSansBold
Converted["_Title25"].Text = "Option"
Converted["_Title25"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title25"].TextSize = 14
Converted["_Title25"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title25"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title25"].BackgroundTransparency = 1
Converted["_Title25"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title25"].BorderSizePixel = 0
Converted["_Title25"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title25"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title25"].Name = "Title"
Converted["_Title25"].Parent = Converted["_Button4"]

Converted["_Button5"].Font = Enum.Font.SourceSans
Converted["_Button5"].Text = ""
Converted["_Button5"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button5"].TextSize = 14
Converted["_Button5"].AutoButtonColor = false
Converted["_Button5"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button5"].BackgroundTransparency = 0.75
Converted["_Button5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button5"].BorderSizePixel = 0
Converted["_Button5"].LayoutOrder = 2
Converted["_Button5"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Button5"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Button5"].Name = "Button"
Converted["_Button5"].Parent = Converted["_Enchants1"]

Converted["_UICorner53"].Parent = Converted["_Button5"]

Converted["_Title26"].Font = Enum.Font.SourceSansBold
Converted["_Title26"].Text = "Reset Pets Dropdown"
Converted["_Title26"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title26"].TextSize = 14
Converted["_Title26"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title26"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title26"].BackgroundTransparency = 1
Converted["_Title26"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title26"].BorderSizePixel = 0
Converted["_Title26"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title26"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title26"].Name = "Title"
Converted["_Title26"].Parent = Converted["_Button5"]

Converted["_Input"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input"].BackgroundTransparency = 0.75
Converted["_Input"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input"].BorderSizePixel = 0
Converted["_Input"].LayoutOrder = 4
Converted["_Input"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Input"].Name = "Input"
Converted["_Input"].Parent = Converted["_Enchants1"]

Converted["_UICorner54"].Parent = Converted["_Input"]

Converted["_Title27"].Font = Enum.Font.SourceSansBold
Converted["_Title27"].Text = "Enchant Level"
Converted["_Title27"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title27"].TextSize = 14
Converted["_Title27"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title27"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title27"].BackgroundTransparency = 1
Converted["_Title27"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title27"].BorderSizePixel = 0
Converted["_Title27"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title27"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title27"].Name = "Title"
Converted["_Title27"].Parent = Converted["_Input"]

Converted["_Frame14"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame14"].BackgroundTransparency = 0.75
Converted["_Frame14"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame14"].BorderSizePixel = 0
Converted["_Frame14"].Position = UDim2.new(0.699324012, 0, 0.219999999, 0)
Converted["_Frame14"].Size = UDim2.new(0.262295067, 0, 0.519999981, 0)
Converted["_Frame14"].Parent = Converted["_Input"]

Converted["_UICorner55"].Parent = Converted["_Frame14"]

Converted["_TextBox"].Font = Enum.Font.SourceSansBold
Converted["_TextBox"].PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextBox"].PlaceholderText = "Input"
Converted["_TextBox"].Text = ""
Converted["_TextBox"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextBox"].TextSize = 14
Converted["_TextBox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextBox"].BackgroundTransparency = 1
Converted["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextBox"].BorderSizePixel = 0
Converted["_TextBox"].Size = UDim2.new(1, 0, 1, 0)
Converted["_TextBox"].Parent = Converted["_Frame14"]
Converted["_TextBox"].FocusLost:Connect(
    function()
        SelectedLvl = tonumber(Converted["_TextBox"].Text)
    end
)

Converted["_Dropdown3"].Font = Enum.Font.SourceSans
Converted["_Dropdown3"].Text = ""
Converted["_Dropdown3"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown3"].TextSize = 14
Converted["_Dropdown3"].AutoButtonColor = false
Converted["_Dropdown3"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown3"].BackgroundTransparency = 0.75
Converted["_Dropdown3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown3"].BorderSizePixel = 0
Converted["_Dropdown3"].LayoutOrder = 3
Converted["_Dropdown3"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Dropdown3"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Dropdown3"].Name = "Dropdown"
Converted["_Dropdown3"].Parent = Converted["_Enchants1"]
Converted["_Dropdown3"].MouseButton1Down:Connect(
    function()
        Converted["_Title29"].Rotation = Converted["_Title29"].Rotation + 180
        for i, v in pairs(Converted["_DropdownMenu3"]:GetChildren()) do
            if v:IsA("TextButton") then
                v:Destroy()
            end
        end
        for i, v in pairs(AllEnchants) do
            local Option = Instance.new("TextButton", Converted["_DropdownMenu3"])
            Option.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Option.BackgroundTransparency = 0.75
            Option.Size = UDim2.new(1, 0, 0.5, 0)
            Option.Text = ""
            Option.Name = "Button"

            local OptionText = Instance.new("TextLabel", Option)
            OptionText.Font = Enum.Font.SourceSansBold
            OptionText.Text = v
            OptionText.TextScaled = true
            OptionText.TextColor3 = Color3.fromRGB(255, 255, 255)
            OptionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            OptionText.TextXAlignment = Enum.TextXAlignment.Left
            OptionText.BackgroundTransparency = 1
            OptionText.Position = UDim2.new(0.0271166489, 0, 0, 0)
            OptionText.Size = UDim2.new(0.972883284, 0, 1, 0)
            OptionText.Name = "Title"

            Option.MouseButton1Down:Connect(
                function()
                    Converted["_Title28"].Text = "Select Pet (" .. OptionText.Text .. ")"
                    SelectedEnch = OptionText.Text
                end
            )
        end
        Converted["_DropdownMenu3"].Visible = not Converted["_DropdownMenu3"].Visible
    end
)

Converted["_UICorner56"].Parent = Converted["_Dropdown3"]

Converted["_Title28"].Font = Enum.Font.SourceSansBold
Converted["_Title28"].Text = "Select Pet"
Converted["_Title28"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title28"].TextSize = 14
Converted["_Title28"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title28"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title28"].BackgroundTransparency = 1
Converted["_Title28"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title28"].BorderSizePixel = 0
Converted["_Title28"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title28"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title28"].Name = "Title"
Converted["_Title28"].Parent = Converted["_Dropdown3"]

Converted["_State3"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_State3"].BackgroundTransparency = 0.7400000095367432
Converted["_State3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_State3"].BorderSizePixel = 0
Converted["_State3"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_State3"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_State3"].Name = "State"
Converted["_State3"].Parent = Converted["_Dropdown3"]

Converted["_UICorner57"].Parent = Converted["_State3"]

Converted["_Title29"].Font = Enum.Font.Unknown
Converted["_Title29"].Text = "V"
Converted["_Title29"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title29"].TextSize = 14
Converted["_Title29"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title29"].BackgroundTransparency = 1
Converted["_Title29"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title29"].BorderSizePixel = 0
Converted["_Title29"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Title29"].Name = "Title"
Converted["_Title29"].Parent = Converted["_State3"]

Converted["_DropdownMenu3"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_DropdownMenu3"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_DropdownMenu3"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropdownMenu3"].ScrollBarThickness = 0
Converted["_DropdownMenu3"].Active = true
Converted["_DropdownMenu3"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropdownMenu3"].BackgroundTransparency = 1
Converted["_DropdownMenu3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropdownMenu3"].BorderSizePixel = 0
Converted["_DropdownMenu3"].LayoutOrder = 1
Converted["_DropdownMenu3"].Position = UDim2.new(0.0401233621, 0, 0.344189018, 0)
Converted["_DropdownMenu3"].Size = UDim2.new(0, 301, 0, 100)
Converted["_DropdownMenu3"].Visible = false
Converted["_DropdownMenu3"].Name = "DropdownMenu"
Converted["_DropdownMenu3"].Parent = Converted["_Enchants1"]

Converted["_UICorner58"].Parent = Converted["_DropdownMenu3"]

Converted["_UIListLayout10"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout10"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout10"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout10"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout10"].Parent = Converted["_DropdownMenu3"]

Converted["_Button6"].Font = Enum.Font.SourceSans
Converted["_Button6"].Text = ""
Converted["_Button6"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button6"].TextSize = 14
Converted["_Button6"].AutoButtonColor = false
Converted["_Button6"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button6"].BackgroundTransparency = 0.75
Converted["_Button6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button6"].BorderSizePixel = 0
Converted["_Button6"].Position = UDim2.new(0.0398671106, 0, 0, 0)
Converted["_Button6"].Size = UDim2.new(0, 279, 0, 50)
Converted["_Button6"].Name = "Button"
Converted["_Button6"].Parent = Converted["_DropdownMenu3"]

Converted["_UICorner59"].Parent = Converted["_Button6"]

Converted["_Title30"].Font = Enum.Font.SourceSansBold
Converted["_Title30"].Text = "Option"
Converted["_Title30"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title30"].TextSize = 14
Converted["_Title30"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title30"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title30"].BackgroundTransparency = 1
Converted["_Title30"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title30"].BorderSizePixel = 0
Converted["_Title30"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title30"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title30"].Name = "Title"
Converted["_Title30"].Parent = Converted["_Button6"]

Converted["_Potions1"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_Potions1"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Potions1"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Potions1"].ScrollBarThickness = 0
Converted["_Potions1"].Active = true
Converted["_Potions1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Potions1"].BackgroundTransparency = 8.899999618530273
Converted["_Potions1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Potions1"].BorderSizePixel = 0
Converted["_Potions1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Potions1"].Visible = false
Converted["_Potions1"].Name = "Potions"
Converted["_Potions1"].Parent = Converted["_Frames"]

Converted["_Filler9"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Filler9"].BackgroundTransparency = 1
Converted["_Filler9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filler9"].BorderSizePixel = 0
Converted["_Filler9"].LayoutOrder = -1
Converted["_Filler9"].Position = UDim2.new(-3.02704711e-06, 0, 0.0948298797, 0)
Converted["_Filler9"].Size = UDim2.new(1.0000031, 0, 0.0174531769, 0)
Converted["_Filler9"].Name = "Filler"
Converted["_Filler9"].Parent = Converted["_Potions1"]

Converted["_UIListLayout11"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout11"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout11"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout11"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout11"].Parent = Converted["_Potions1"]

Converted["_Toggle14"].Font = Enum.Font.SourceSans
Converted["_Toggle14"].Text = ""
Converted["_Toggle14"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle14"].TextSize = 14
Converted["_Toggle14"].AutoButtonColor = false
Converted["_Toggle14"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle14"].BackgroundTransparency = 0.75
Converted["_Toggle14"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle14"].BorderSizePixel = 0
Converted["_Toggle14"].LayoutOrder = 3
Converted["_Toggle14"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle14"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle14"].Name = "Toggle"
Converted["_Toggle14"].Parent = Converted["_Potions1"]
Converted["_Toggle14"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoCraftPotions"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame15"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame15"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            for i = 1, 4 do
                Network:FireServer("CraftPotion", "Coins", i + 1, true)
                task.wait()
                Network:FireServer("CraftPotion", "Speed", i + 1, true)
                task.wait()
                Network:FireServer("CraftPotion", "Lucky", i + 1, true)
                task.wait()
                Network:FireServer("CraftPotion", "Mythic", i + 1, true)
                task.wait()
            end
            task.wait()
        end
    end
)

Converted["_UICorner60"].Parent = Converted["_Toggle14"]

Converted["_Title31"].Font = Enum.Font.SourceSansBold
Converted["_Title31"].Text = "Auto Craft Potions"
Converted["_Title31"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title31"].TextSize = 14
Converted["_Title31"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title31"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title31"].BackgroundTransparency = 1
Converted["_Title31"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title31"].BorderSizePixel = 0
Converted["_Title31"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title31"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title31"].Name = "Title"
Converted["_Title31"].Parent = Converted["_Toggle14"]

Converted["_Frame15"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame15"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame15"].BorderSizePixel = 0
Converted["_Frame15"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame15"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame15"].Parent = Converted["_Toggle14"]

Converted["_UICorner61"].Parent = Converted["_Frame15"]

Converted["_Shops1"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_Shops1"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Shops1"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Shops1"].ScrollBarThickness = 0
Converted["_Shops1"].Active = true
Converted["_Shops1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Shops1"].BackgroundTransparency = 8.899999618530273
Converted["_Shops1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Shops1"].BorderSizePixel = 0
Converted["_Shops1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Shops1"].Visible = false
Converted["_Shops1"].Name = "Shops"
Converted["_Shops1"].Parent = Converted["_Frames"]

Converted["_Filler10"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Filler10"].BackgroundTransparency = 1
Converted["_Filler10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filler10"].BorderSizePixel = 0
Converted["_Filler10"].LayoutOrder = -1
Converted["_Filler10"].Position = UDim2.new(-3.02704711e-06, 0, 0.0948298797, 0)
Converted["_Filler10"].Size = UDim2.new(1.0000031, 0, 0.0174531769, 0)
Converted["_Filler10"].Name = "Filler"
Converted["_Filler10"].Parent = Converted["_Shops1"]

Converted["_UIListLayout12"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout12"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout12"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout12"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout12"].Parent = Converted["_Shops1"]

Converted["_Toggle15"].Font = Enum.Font.SourceSans
Converted["_Toggle15"].Text = ""
Converted["_Toggle15"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle15"].TextSize = 14
Converted["_Toggle15"].AutoButtonColor = false
Converted["_Toggle15"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle15"].BackgroundTransparency = 0.75
Converted["_Toggle15"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle15"].BorderSizePixel = 0
Converted["_Toggle15"].LayoutOrder = 1
Converted["_Toggle15"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle15"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle15"].Name = "Toggle"
Converted["_Toggle15"].Parent = Converted["_Shops1"]
Converted["_Toggle15"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoAlienShop"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame16"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame16"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            for i = 1, 3 do
                for _ = 1, 15 do
                    Network:FireServer("BuyShopItem", "alien-shop", i)
                    task.wait(1)
                end
            end
            task.wait(60)
        end
    end
)

Converted["_UICorner62"].Parent = Converted["_Toggle15"]

Converted["_Title32"].Font = Enum.Font.SourceSansBold
Converted["_Title32"].Text = "Auto Buy Alien Shop"
Converted["_Title32"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title32"].TextSize = 14
Converted["_Title32"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title32"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title32"].BackgroundTransparency = 1
Converted["_Title32"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title32"].BorderSizePixel = 0
Converted["_Title32"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title32"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title32"].Name = "Title"
Converted["_Title32"].Parent = Converted["_Toggle15"]

Converted["_Frame16"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame16"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame16"].BorderSizePixel = 0
Converted["_Frame16"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame16"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame16"].Parent = Converted["_Toggle15"]

Converted["_UICorner63"].Parent = Converted["_Frame16"]

Converted["_Toggle16"].Font = Enum.Font.SourceSans
Converted["_Toggle16"].Text = ""
Converted["_Toggle16"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle16"].TextSize = 14
Converted["_Toggle16"].AutoButtonColor = false
Converted["_Toggle16"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle16"].BackgroundTransparency = 0.75
Converted["_Toggle16"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle16"].BorderSizePixel = 0
Converted["_Toggle16"].LayoutOrder = 2
Converted["_Toggle16"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle16"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle16"].Name = "Toggle"
Converted["_Toggle16"].Parent = Converted["_Shops1"]
Converted["_Toggle16"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoBlackmarket"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame17"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame17"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            for i = 1, 3 do
                for _ = 1, 15 do
                    Network:FireServer("BuyShopItem", "shard-shop", i)
                    task.wait(1)
                end
            end
            task.wait(60)
        end
    end
)

Converted["_UICorner64"].Parent = Converted["_Toggle16"]

Converted["_Title33"].Font = Enum.Font.SourceSansBold
Converted["_Title33"].Text = "Auto Buy Black Market"
Converted["_Title33"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title33"].TextSize = 14
Converted["_Title33"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title33"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title33"].BackgroundTransparency = 1
Converted["_Title33"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title33"].BorderSizePixel = 0
Converted["_Title33"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title33"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title33"].Name = "Title"
Converted["_Title33"].Parent = Converted["_Toggle16"]

Converted["_Frame17"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame17"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame17"].BorderSizePixel = 0
Converted["_Frame17"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame17"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame17"].Parent = Converted["_Toggle16"]

Converted["_UICorner65"].Parent = Converted["_Frame17"]

Converted["_Misc1"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_Misc1"].CanvasPosition = Vector2.new(0, 76.29962158203125)
Converted["_Misc1"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Misc1"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Misc1"].ScrollBarThickness = 0
Converted["_Misc1"].Active = true
Converted["_Misc1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Misc1"].BackgroundTransparency = 8.899999618530273
Converted["_Misc1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Misc1"].BorderSizePixel = 0
Converted["_Misc1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Misc1"].Visible = false
Converted["_Misc1"].Name = "Misc"
Converted["_Misc1"].Parent = Converted["_Frames"]

Converted["_Filler11"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Filler11"].BackgroundTransparency = 1
Converted["_Filler11"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filler11"].BorderSizePixel = 0
Converted["_Filler11"].LayoutOrder = -1
Converted["_Filler11"].Position = UDim2.new(-3.02704711e-06, 0, 0.0948298797, 0)
Converted["_Filler11"].Size = UDim2.new(1.0000031, 0, 0.0174531769, 0)
Converted["_Filler11"].Name = "Filler"
Converted["_Filler11"].Parent = Converted["_Misc1"]

Converted["_UIListLayout13"].ItemLineAlignment = Enum.ItemLineAlignment.Center
Converted["_UIListLayout13"].Padding = UDim.new(0.00999999978, 0)
Converted["_UIListLayout13"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout13"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout13"].Parent = Converted["_Misc1"]

Converted["_Toggle17"].Font = Enum.Font.SourceSans
Converted["_Toggle17"].Text = ""
Converted["_Toggle17"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle17"].TextSize = 14
Converted["_Toggle17"].AutoButtonColor = false
Converted["_Toggle17"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle17"].BackgroundTransparency = 0.75
Converted["_Toggle17"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle17"].BorderSizePixel = 0
Converted["_Toggle17"].LayoutOrder = 4
Converted["_Toggle17"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle17"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle17"].Name = "Toggle"
Converted["_Toggle17"].Parent = Converted["_Misc1"]
Converted["_Toggle17"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoEquipBest"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame18"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame18"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            Network:FireServer("EquipBestPets")
            task.wait(1)
        end
    end
)

Converted["_UICorner66"].Parent = Converted["_Toggle17"]

Converted["_Title34"].Font = Enum.Font.SourceSansBold
Converted["_Title34"].Text = "Auto Equip Best Pets"
Converted["_Title34"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title34"].TextSize = 14
Converted["_Title34"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title34"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title34"].BackgroundTransparency = 1
Converted["_Title34"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title34"].BorderSizePixel = 0
Converted["_Title34"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title34"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title34"].Name = "Title"
Converted["_Title34"].Parent = Converted["_Toggle17"]

Converted["_Frame18"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame18"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame18"].BorderSizePixel = 0
Converted["_Frame18"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame18"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame18"].Parent = Converted["_Toggle17"]

Converted["_UICorner67"].Parent = Converted["_Frame18"]

Converted["_Button7"].Font = Enum.Font.SourceSans
Converted["_Button7"].Text = ""
Converted["_Button7"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button7"].TextSize = 14
Converted["_Button7"].AutoButtonColor = false
Converted["_Button7"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button7"].BackgroundTransparency = 0.75
Converted["_Button7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button7"].BorderSizePixel = 0
Converted["_Button7"].LayoutOrder = 1
Converted["_Button7"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Button7"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Button7"].Name = "Button"
Converted["_Button7"].Parent = Converted["_Misc1"]
Converted["_Button7"].MouseButton1Down:Connect(
    function()
        for i, v in pairs(_G.AllCodes) do
            Network:InvokeServer("RedeemCode", i)
        end
    end
)

Converted["_UICorner68"].Parent = Converted["_Button7"]

Converted["_Title35"].Font = Enum.Font.SourceSansBold
Converted["_Title35"].Text = "Redeem All Codes"
Converted["_Title35"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title35"].TextSize = 14
Converted["_Title35"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title35"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title35"].BackgroundTransparency = 1
Converted["_Title35"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title35"].BorderSizePixel = 0
Converted["_Title35"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title35"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title35"].Name = "Title"
Converted["_Title35"].Parent = Converted["_Button7"]

Converted["_Toggle18"].Font = Enum.Font.SourceSans
Converted["_Toggle18"].Text = ""
Converted["_Toggle18"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle18"].TextSize = 14
Converted["_Toggle18"].AutoButtonColor = false
Converted["_Toggle18"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle18"].BackgroundTransparency = 0.75
Converted["_Toggle18"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle18"].BorderSizePixel = 0
Converted["_Toggle18"].LayoutOrder = 5
Converted["_Toggle18"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle18"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle18"].Name = "Toggle"
Converted["_Toggle18"].Parent = Converted["_Misc1"]
Converted["_Toggle18"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoGemGenie"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame19"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame19"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            Network:FireServer("StartGenieQuest", math.random(1, 3))
            task.wait(60)
        end
    end
)

Converted["_UICorner69"].Parent = Converted["_Toggle18"]

Converted["_Title36"].Font = Enum.Font.SourceSansBold
Converted["_Title36"].Text = "Auto Gem Genie"
Converted["_Title36"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title36"].TextSize = 14
Converted["_Title36"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title36"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title36"].BackgroundTransparency = 1
Converted["_Title36"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title36"].BorderSizePixel = 0
Converted["_Title36"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title36"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title36"].Name = "Title"
Converted["_Title36"].Parent = Converted["_Toggle18"]

Converted["_Frame19"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame19"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame19"].BorderSizePixel = 0
Converted["_Frame19"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame19"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame19"].Parent = Converted["_Toggle18"]

Converted["_UICorner70"].Parent = Converted["_Frame19"]

Converted["_Toggle19"].Font = Enum.Font.SourceSans
Converted["_Toggle19"].Text = ""
Converted["_Toggle19"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle19"].TextSize = 14
Converted["_Toggle19"].AutoButtonColor = false
Converted["_Toggle19"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle19"].BackgroundTransparency = 0.75
Converted["_Toggle19"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toggle19"].BorderSizePixel = 0
Converted["_Toggle19"].LayoutOrder = 6
Converted["_Toggle19"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Toggle19"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Toggle19"].Name = "Toggle"
Converted["_Toggle19"].Parent = Converted["_Misc1"]
Converted["_Toggle19"].MouseButton1Down:Connect(
    function()
        local Setting = "AutoMastery"
        _G.Settings[Setting] = not _G.Settings[Setting]
        if _G.Settings[Setting] then
            Converted["_Frame20"].BackgroundColor3 = Color3.new(0, 255, 0)
        else
            Converted["_Frame20"].BackgroundColor3 = Color3.new(255, 0, 0)
        end
        while _G.Settings[Setting] do
            for i, UpgradeType in pairs(_G.MasteryModule.Upgrades) do
                Network:FireServer("UpgradeMastery", i)
            end
            task.wait(15)
        end
    end
)

Converted["_UICorner71"].Parent = Converted["_Toggle19"]

Converted["_Title37"].Font = Enum.Font.SourceSansBold
Converted["_Title37"].Text = "Auto Mastery"
Converted["_Title37"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title37"].TextSize = 14
Converted["_Title37"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title37"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title37"].BackgroundTransparency = 1
Converted["_Title37"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title37"].BorderSizePixel = 0
Converted["_Title37"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title37"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title37"].Name = "Title"
Converted["_Title37"].Parent = Converted["_Toggle19"]

Converted["_Frame20"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Frame20"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame20"].BorderSizePixel = 0
Converted["_Frame20"].Position = UDim2.new(0.876373172, 0, 0.220000312, 0)
Converted["_Frame20"].Size = UDim2.new(0.0852458999, 0, 0.519999981, 0)
Converted["_Frame20"].Parent = Converted["_Toggle19"]

Converted["_UICorner72"].Parent = Converted["_Frame20"]

Converted["_Button8"].Font = Enum.Font.SourceSans
Converted["_Button8"].Text = ""
Converted["_Button8"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button8"].TextSize = 14
Converted["_Button8"].AutoButtonColor = false
Converted["_Button8"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button8"].BackgroundTransparency = 0.75
Converted["_Button8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button8"].BorderSizePixel = 0
Converted["_Button8"].LayoutOrder = 2
Converted["_Button8"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Button8"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Button8"].Name = "Button"
Converted["_Button8"].Parent = Converted["_Misc1"]
Converted["_Button8"].MouseButton1Down:Connect(
    function()
        local Worlds = _G.Worlds
        local CurrentWorld = Worlds[Plr:GetAttribute("World")]
        local LastWorld =
            workspace.Worlds:FindFirstChild(Plr:GetAttribute("World")).Islands:FindFirstChild(
            CurrentWorld.Islands[#CurrentWorld.Islands].Name
        ).Island.UnlockHitbox

        Tween(LastWorld)
    end
)

Converted["_UICorner73"].Parent = Converted["_Button8"]

Converted["_Title38"].Font = Enum.Font.SourceSansBold
Converted["_Title38"].Text = "Unlock All Worlds"
Converted["_Title38"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title38"].TextSize = 14
Converted["_Title38"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title38"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title38"].BackgroundTransparency = 1
Converted["_Title38"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title38"].BorderSizePixel = 0
Converted["_Title38"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title38"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title38"].Name = "Title"
Converted["_Title38"].Parent = Converted["_Button8"]

Converted["_Button9"].Font = Enum.Font.SourceSans
Converted["_Button9"].Text = ""
Converted["_Button9"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button9"].TextSize = 14
Converted["_Button9"].AutoButtonColor = false
Converted["_Button9"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button9"].BackgroundTransparency = 0.75
Converted["_Button9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button9"].BorderSizePixel = 0
Converted["_Button9"].LayoutOrder = 3
Converted["_Button9"].Position = UDim2.new(0.231481478, 0, 0, 0)
Converted["_Button9"].Size = UDim2.new(0.920000017, 0, 0.200000003, 0)
Converted["_Button9"].Name = "Button"
Converted["_Button9"].Parent = Converted["_Misc1"]
Converted["_Button9"].MouseButton1Down:Connect(function()
    assert(firesignal, "Your exploit does not support firesignal.")
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    UserInputService.WindowFocusReleased:Connect(function()
        RunService.Stepped:Wait()
        pcall(firesignal, UserInputService.WindowFocused)
    end)    
end)

Converted["_UICorner74"].Parent = Converted["_Button9"]

Converted["_Title39"].Font = Enum.Font.SourceSansBold
Converted["_Title39"].Text = "Anti AFK"
Converted["_Title39"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title39"].TextSize = 14
Converted["_Title39"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title39"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title39"].BackgroundTransparency = 1
Converted["_Title39"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title39"].BorderSizePixel = 0
Converted["_Title39"].Position = UDim2.new(0.0271166489, 0, 0, 0)
Converted["_Title39"].Size = UDim2.new(0.972883284, 0, 1, 0)
Converted["_Title39"].Name = "Title"
Converted["_Title39"].Parent = Converted["_Button9"]

local UserInputService = game:GetService("UserInputService")

local gui = Converted["_MainFrame"]

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    gui.Position =
        UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui:FindFirstChild("Top").InputBegan:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(
                function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end
            )
        end
    end
)

gui:FindFirstChild("Top").InputChanged:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end
)

UserInputService.InputChanged:Connect(
    function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end
)
