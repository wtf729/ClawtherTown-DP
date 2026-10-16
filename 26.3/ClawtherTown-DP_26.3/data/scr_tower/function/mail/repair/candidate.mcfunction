execute store result score #repair_min scr_tw run data get storage scr_tower:runtime repair_categories[0].min
execute store result score #repair_max scr_tw run data get storage scr_tower:runtime repair_categories[0].max_amount
execute unless score #repair_min scr_tw = #repair_max scr_tw run return 0
execute unless score #repair_min scr_tw matches 1..1000 run return 0
scoreboard players add #repair_candidates scr_tw 1
scoreboard players operation #repair_amount scr_tw = #repair_min scr_tw
return 1
