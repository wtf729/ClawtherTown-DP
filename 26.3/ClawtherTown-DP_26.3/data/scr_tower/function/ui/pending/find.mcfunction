execute store result storage scr_tower:runtime aggregate_index.index int 1 run scoreboard players get #aggregate_index scr_tw
data remove storage scr_tower:runtime aggregate_existing
function scr_tower:ui/pending/read with storage scr_tower:runtime aggregate_index
execute unless data storage scr_tower:runtime aggregate_existing run return 0
data modify storage scr_tower:runtime check set from storage scr_tower:runtime aggregate_existing.signature
execute store success score #different scr_tw run data modify storage scr_tower:runtime check set from storage scr_tower:runtime aggregate_entry.signature
execute unless score #different scr_tw matches 1 run return run function scr_tower:ui/pending/merge
scoreboard players add #aggregate_index scr_tw 1
return run function scr_tower:ui/pending/find
