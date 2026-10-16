execute unless data storage scr_tower:runtime p.run{phase:"cleared"} run return 0
execute store result score #floor scr_tw run data get storage scr_tower:runtime p.run.floor
execute unless score #floor scr_tw matches 1..59 run return 0
execute store result storage scr_tower:runtime p.run.floor int 1 run scoreboard players add #floor scr_tw 1
execute store result score #next_generated scr_tw run function scr_tower:generate
execute if score #next_generated scr_tw matches 1 run execute at @s run playsound scr:ambient.elevator_ding ambient @s ~ ~ ~ 1 1
return run scoreboard players get #next_generated scr_tw
