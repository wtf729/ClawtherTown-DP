execute unless data storage scr_tower:runtime nav{view:"pending"} run return 0
execute store result score #page scr_tw run data get storage scr_tower:runtime nav.page
execute store result score #delta scr_tw run data get storage scr_tower:runtime route.delta
scoreboard players operation #page scr_tw += #delta scr_tw
execute store result storage scr_tower:runtime nav.page int 1 run scoreboard players get #page scr_tw
return 1
