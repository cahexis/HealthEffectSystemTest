local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(plr) -- adds hp value to player when they join
	local Hp = Instance.new("IntValue")
	Hp.Name = "HpStat"
	Hp.Value = 100
	Hp.Parent = plr
end)
