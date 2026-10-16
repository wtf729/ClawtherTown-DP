execute store result score #aggregate_qty scr_tw run data get storage scr_tower:runtime aggregate_existing.quantity
execute store result score #add_qty scr_tw run data get storage scr_tower:runtime aggregate_entry.quantity
scoreboard players operation #aggregate_qty scr_tw += #add_qty scr_tw
execute store result storage scr_tower:runtime aggregate_existing.quantity int 1 run scoreboard players get #aggregate_qty scr_tw
function scr_tower:ui/pending/write with storage scr_tower:runtime aggregate_index
return 1
