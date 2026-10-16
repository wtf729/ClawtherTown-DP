execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_task:runtime {busy:1b} run return 0
execute store result score #resume_open scr_tk run function scr_task:core/context/open
execute if score #resume_open scr_tk matches 1 run data modify storage scr_task:runtime work.resume_queue set from storage scr_task:runtime catalog
execute if score #resume_open scr_tk matches 1 if data storage scr_task:runtime work.resume_queue[0] run function scr_task:core/player/resume_loop
function scr_task:core/context/close
return run scoreboard players get #resume_open scr_tk
