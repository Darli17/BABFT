local Players = game:GetService("Players")

local player = Players.LocalPlayer
local playergui = player.PlayerGui
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local shopgui = playergui.ShopGui
local sideframe = shopgui.SideFrame
local mainframe = shopgui.MainFrame
local tabframe = mainframe.TabFrame
local shopframe = tabframe.ShopFrame

local opened = false

local example = sideframe.MenuButton:Clone()
example.Parent = sideframe
example.Name = "AdminButton"
example.TextLabel.Text = "Admin Panel"
example.TextLabel.TextColor3 = Color3.new(1,0,0)
example.Position = UDim2.new(1,0,0.7,0)

example.Image = "http://www.roblox.com/asset/?id=592783030"
example.ScaleType = Enum.ScaleType.Fit

local admin_positionclosed = UDim2.new(1.11000001, 25, 0.0799999982, 50)
local admin_positionopened = UDim2.new(0.109999999, 25, 0.0799999982, 50)

local admin = mainframe:Clone()
admin.Parent = shopgui
admin.Name = "AdminPanelFrame"
admin.Visible = true

local adminbar = admin.TopBar
local admintab = admin.TabFrame

adminbar.SettingsButton:Destroy()
adminbar.QuestsButton:Destroy()
adminbar.ChallengeButton:Destroy()
adminbar.SlotButton:Destroy()

local extrabutton = adminbar.TeamButton
extrabutton.Name = "ExtraButton"
extrabutton.Image = "rbxassetid://99576099296908"
extrabutton.TabName.Text = "Extra"

adminbar.ShopButton.ImageColor3 = Color3.new(1,0,0)
adminbar.ShopButton.TabName.Text = "Custom Shop"
adminbar.ShopButton.TabName.TextScaled = false
adminbar.ShopButton.TabName.TextSize = 31

admintab.ChallengeFrame:Destroy()
admintab.QuestFrame:Destroy()
admintab.SettingsFrame:Destroy()
admintab.SlotsFrame:Destroy()

admintab.TeamsFrame.Name = "ExtraFrame"
admintab.ShopFrame.Visible = true

local shopframe = admintab.ShopFrame
local shopscrollingframe = shopframe.ScrollingFrameChests

shopscrollingframe["Frame_002"]:Destroy()
shopscrollingframe["Frame_003"]:Destroy()
shopscrollingframe["Line_002"]:Destroy()
shopscrollingframe["Line_003"]:Destroy()

local boatmotors = shopscrollingframe["Frame_004"]["+3 Ultra Boat Motors"]
local hugewheels = shopscrollingframe["Frame_004"]["+4 Huge Wheels"]
local portals = shopscrollingframe["Frame_005"]["+4 Portals"]
local goldenharpoons = shopscrollingframe["Frame_005"]["+5 Golden Harpoons"]
local sonicjets = shopscrollingframe["Frame_006"]["+3 Sonic Jet Turbines"]
local ultrajetpacks = shopscrollingframe["Frame_006"]["+3 Ultra Jetpacks"]
local ultrathrusters = shopscrollingframe["Frame_009"]["+5 Ultra Thrusters"]

boatmotors.Name = "+4 Cookie Wheels"
boatmotors.Image = "http://www.roblox.com/asset/?id=8135145252"
boatmotors.Desc.Value = "This set of blocks will allow you to build a car! Cookie wheels included!"

portals.Name = "+5 Dragon Harpoons"
portals.Image = "http://www.roblox.com/asset/?id=5740994229"
portals.Desc.Value = "A dragon harpoon! Projectiles track their targets!"
portals.Quantity.Text = "x5"
portals.MouseButton1Click:Connect(function()

task.wait(0.)
shopframe.SelectedFrame.Cost.Text = "300 robux"

end)

goldenharpoons.Name = "+5 Duel Harpoons"
goldenharpoons.Image = "rbxassetid://2690396999"
goldenharpoons.Desc.Value = "A candy cane harpoon! Fire up to 2 projectiles!"

ultrajetpacks.Name = "PineTree"
ultrajetpacks.TextLabel:Destroy()
local goldamountclone = shopscrollingframe["Frame_006"].Balloons.TextLabel:Clone()
goldamountclone.Parent = ultrajetpacks
goldamountclone.Text = "80"
ultrajetpacks.Quantity.Text = "x1"
ultrajetpacks.Quantity.Visible = false
ultrajetpacks.TextLabel.TextColor3 = Color3.fromRGB(230, 196, 0)
ultrajetpacks.Image = "http://www.roblox.com/asset/?id=4210890467"
ultrajetpacks.Desc.Value = "just pinetree idk"
shopscrollingframe["Frame_006"]["PineTree"].MouseButton1Click:Connect(function()

task.wait(0.)
shopframe.SelectedFrame.BuyFrame.BuyButton.QuantityFrame.Visible = true
shopframe.SelectedFrame.Cost.TextColor3 = Color3.fromRGB(255, 217, 0)
shopframe.SelectedFrame.Cost.Text = "80 Gold"
shopframe.SelectedFrame.BuyFrame.ToggleGiftButton.Visible = false

end)

sonicjets:Destroy()
hugewheels:Destroy()

ultrathrusters.Name = "+3 Egg Cannons"
ultrathrusters.Image = "http://www.roblox.com/asset/?id=6568169777"
ultrathrusters.Quantity.Text = "Max x3"
ultrathrusters.Desc.Value = "An egg cannon! Never buy this, you dont get you cannons product is bugged, to get this cannons you need to go easter boss fight 2021. Place Id to bossfight: 1930863474"
ultrathrusters.TextLabel.Text = "Free"
ultrathrusters.TextLabel.GoldImage.Visible = false

local TweenService = game:GetService("TweenService")
local tweenclose = TweenService:Create(admin, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
  Position = admin_positionclosed,
})
local tweenopen = TweenService:Create(admin, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
  Position = admin_positionopened,
})
example.MouseButton1Click:Connect(function()

if opened == false then
    opened = true
    tweenopen:Play()
  else
    opened = false
    tweenclose:Play()
end

end)
adminbar.ExitButton.MouseButton1Click:Connect(function()

if opened == false then
    opened = true
    tweenopen:Play()
  else
    opened = false
    tweenclose:Play()
end

end)

local admin_topbarenter = UDim2.new(3, 0, 0.600000024, 0)
local admin_topbarleave = UDim2.new(0, 0, 0.600000024, 0)

local admin_shoptopbarenter = UDim2.new(0.190000042, 0, 0.5, 0)
local admin_shoptopbarleave = UDim2.new(0.300000012, 0, 0.5, 0)

local tweentopbarenter = TweenService:Create(adminbar.ExtraButton.TabName, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
  Size = admin_topbarenter,
})
local tweentopbarleave = TweenService:Create(adminbar.ExtraButton.TabName, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
  Size = admin_topbarleave,
})
local tweenshoptopbarenter = TweenService:Create(adminbar.ShopButton, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
  Position = admin_shoptopbarenter,
})
local tweenshoptopbarleave = TweenService:Create(adminbar.ShopButton, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
  Position = admin_shoptopbarleave,
})

adminbar.ExtraButton.MouseEnter:Connect(function()

tweentopbarenter:Play()
tweenshoptopbarenter:Play()

end)

adminbar.ExtraButton.MouseLeave:Connect(function()

tweentopbarleave:Play()
tweenshoptopbarleave:Play()

end)
