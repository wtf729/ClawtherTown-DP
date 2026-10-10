$execute unless data storage scr_profile:players players."$(key)".meta.pending run return 0
$execute store result score @s scr_pf_target run data get storage scr_profile:players players."$(key)".meta.pending.from
execute unless score @s scr_pf_target matches 1..5 run return 0
execute store result storage scr_profile:runtime work.ctx.to int 1 run scoreboard players get @s scr_pf_target
execute store result score @s scr_pf_ok run function scr_profile:recovery/apply
execute unless score @s scr_pf_ok matches 1 run function scr_profile:switch/fault
