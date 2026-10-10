execute store result score #recovery_column scr_sk run data get storage scr_sky:jobs active.search.column
scoreboard players add #recovery_column scr_sk 1
execute if score #recovery_column scr_sk matches 49.. run return run function scr_sky:jobs/travel_recovery/emergency
execute store result storage scr_sky:jobs active.search.column int 1 run scoreboard players get #recovery_column scr_sk
execute store result score #recovery_y scr_sk run data get storage scr_sky:islands geometry.max_y
scoreboard players add #recovery_y scr_sk 1
execute store result storage scr_sky:jobs active.search.y int 1 run scoreboard players get #recovery_y scr_sk
