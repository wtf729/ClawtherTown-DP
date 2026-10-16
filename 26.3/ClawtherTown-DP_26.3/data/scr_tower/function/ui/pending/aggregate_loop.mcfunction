execute unless data storage scr_tower:runtime aggregate_source[0] run return 1
data modify storage scr_tower:runtime aggregate_reward set from storage scr_tower:runtime aggregate_source[0]
execute if data storage scr_tower:runtime aggregate_reward{handler:"item"} run function scr_tower:ui/pending/aggregate_item
execute unless data storage scr_tower:runtime aggregate_reward{handler:"item"} unless data storage scr_tower:runtime aggregate_reward{handler:"clawther_gem"} run scoreboard players add #view_unknown scr_tw 1
data remove storage scr_tower:runtime aggregate_source[0]
return run function scr_tower:ui/pending/aggregate_loop
