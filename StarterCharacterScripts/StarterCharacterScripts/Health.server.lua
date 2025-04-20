local hp = script.Parent.CurrentHp
local currenthp = hp.Value
local max = 100
local char = script.Parent
local hum = char.Humanoid
local player = game.Players:GetPlayerFromCharacter(char)


hp.Changed:Connect(function(newhp)
	local healthdiff = newhp - currenthp
	if newhp == 0 then
		print("DEAD")
	end
	if newhp > 100 then
		newhp = 100
	end
	currenthp = newhp
	
end)
