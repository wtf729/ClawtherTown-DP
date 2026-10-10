# Commit durable ownership only after verified load (or untouched first Main capture).
$data modify storage scr_profile:players players."$(key)".meta set value {initialized:1b,current:$(to)}
$execute unless data storage scr_profile:players players."$(key)".meta{initialized:1b,current:$(to)} run return 0
scoreboard players operation @s scr_pf_cur = @s scr_pf_target
scoreboard players set @s scr_pf_init 1
scoreboard players set @s scr_pf_lock 0
# Phase 5 means a target was actually loaded and verified; first Main capture stays silent.
execute if score @s scr_pf_phase matches 5 run function scr_profile:feedback/loaded
scoreboard players set @s scr_pf_phase 0
return 1
