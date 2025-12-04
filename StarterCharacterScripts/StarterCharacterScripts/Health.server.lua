local max = 100
local char = script.Parent
local plr = game.Players
local pfc = game.Players:GetPlayerFromCharacter(char)
local currenthp = pfc:WaitForChild("HpStat")

currenthp.Changed:Connect(function(newhp) -- watches for any change on the HpStat, its a bit finnicky
	local healthdiff = newhp - currenthp
	if newhp == 0 then
		print("DEAD")
	end
	if newhp > 100 then
		newhp = 100
	end
	currenthp = newhp
	
end)
