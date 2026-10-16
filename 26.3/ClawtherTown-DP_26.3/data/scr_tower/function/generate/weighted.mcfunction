execute unless data storage scr_tower:runtime pool.entries[0] run return 0
execute store result score #max scr_tw run data get storage scr_tower:runtime pool.entries[0].max
execute if score #roll scr_tw <= #max scr_tw run return run data modify storage scr_tower:runtime card.reward set from storage scr_tower:runtime pool.entries[0].reward
data remove storage scr_tower:runtime pool.entries[0]
return run function scr_tower:generate/weighted
