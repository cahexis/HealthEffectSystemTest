local part = workspace.DamagePart
local db = false
local damage = part.dmg
local module = require(game.ReplicatedStorage:WaitForChild("EffectModule"))

wait(5)
local player = game.Workspace.cahexis -- replace with ur own user
wait(2)
module.Damage(player, 10)
