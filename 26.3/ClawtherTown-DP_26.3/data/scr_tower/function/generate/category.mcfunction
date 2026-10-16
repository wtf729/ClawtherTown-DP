execute unless data storage scr_tower:runtime categories[0] run return 0
execute store result score #max scr_tw run data get storage scr_tower:runtime categories[0].max
execute if score #roll scr_tw <= #max scr_tw run return run data modify storage scr_tower:runtime category set from storage scr_tower:runtime categories[0]
data remove storage scr_tower:runtime categories[0]
return run function scr_tower:generate/category
