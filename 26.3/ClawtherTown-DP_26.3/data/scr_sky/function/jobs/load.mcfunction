scoreboard players set #ticket_index scr_sk 0
scoreboard players set #all_loaded scr_sk 1
function scr_sky:jobs/ticket_loop
execute unless score #all_loaded scr_sk matches 1 run return 0
data modify storage scr_sky:jobs active.phase set from storage scr_sky:jobs active.after_load
data modify storage scr_sky:jobs active.wait set value 0
