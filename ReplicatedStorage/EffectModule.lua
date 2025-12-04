local module = {}

-- the module handles the damage, and has a half finished test on poison damage and healing.

module.Damage = function(hpstat, damage)
	local oldhp = hpstat.Value
	local damagetaken = damage
	local newhp = oldhp - damage
	hpstat.Value = newhp
end


module.Heal = function(hpstat, heal)
	local oldhp = hpstat.Value
	local healing = heal
	local newhp = healing + oldhp
	if newhp > 100 then
		newhp = 100
	end
	hpstat.Value = newhp
end
	
module.PoisonEffect = function(hpstat, duration)
	local timer = duration
	while timer > 0 do
		wait(1)
		print("test")
		module.Damage(hpstat, 1)
		timer = timer - 1
	end
end

return module



return module
