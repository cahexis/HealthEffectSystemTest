local Players = game:GetService("Players")
local client = Players.LocalPlayer
local healthGui = client.PlayerGui:WaitForChild("HealthGui")
local currenthpgui = healthGui.Frame.CurrentHealth
local rep = game:GetService("ReplicatedStorage")
local remote = rep.HpChange
local hp = client.Character.CurrentHp
local module = require(rep.EffectModule)
local oldhp = hp.Value
local dmgsound = script.Damage
local healsound = script.Heal
currenthpgui.Text = hp.Value

hp.Changed:Connect(function(newhp)
	local healthdiff = newhp - oldhp
	if newhp < oldhp then
		print("took"..healthdiff.." damage")
		dmgsound:Play()
	elseif newhp > oldhp then
		print("healed by "..healthdiff)
		healsound:Play()
	end
	oldhp = newhp
	currenthpgui.Text = newhp
end)
