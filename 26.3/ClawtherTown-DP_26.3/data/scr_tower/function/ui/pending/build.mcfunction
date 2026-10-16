data modify storage scr_tower:runtime aggregate set value []
data modify storage scr_tower:runtime aggregate_source set from storage scr_tower:runtime p.run.pending
scoreboard players set #view_unknown scr_tw 0
function scr_tower:ui/pending/aggregate_loop

execute store result score #pending_gems scr_tw run data get storage scr_tower:runtime p.run.gems
execute if score #pending_gems scr_tw matches 1.. run function scr_tower:ui/pending/add_gem
