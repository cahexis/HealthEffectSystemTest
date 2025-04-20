local module = {}



module.Damage = function(player, damage)
	local oldhp = player.CurrentHp.Value
	local damagetaken = damage
	local newhp = oldhp - damage
	player.CurrentHp.Value = newhp
end


module.Heal = function(player, heal)
	local oldhp = player.CurrentHp.Value
	local healing = heal
	local newhp = healing + oldhp
	if newhp > 100 then
		newhp = 100
	end
	player.CurrentHp.Value = newhp
end
	
module.PoisonEffect = function(player, duration)
	local timer = duration
	while timer > 0 do
		wait(1)
		print("test")
		module.Damage(player, 1)
		timer = timer - 1
	end
end



return module
