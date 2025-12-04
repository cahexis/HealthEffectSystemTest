local dmgpart = script.Parent
local db = false
local damage = dmgpart.dmg
local module = require(game.ReplicatedStorage:WaitForChild("EffectModule"))

dmgpart.Touched:Connect(function(hit) -- test on damage, if player steps on it then it takes away 10 HP.
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)
	if player then
		local hpstat = player:WaitForChild("HpStat")
		if db == false then
			module.Damage(hpstat, 10)
			db = true
		end
		task.wait(3)
		db = false
	end
end)
