execute unless data storage scr_sky:runtime work.pool[0] run return 1
execute store result score #candidate scr_sk run data get storage scr_sky:runtime work.pool[0] 1
execute if score #candidate scr_sk < #chosen_id scr_sk run scoreboard players operation #pool_index scr_sk = #pool_cursor scr_sk
execute if score #candidate scr_sk < #chosen_id scr_sk run scoreboard players operation #chosen_id scr_sk = #candidate scr_sk
scoreboard players add #pool_cursor scr_sk 1
data remove storage scr_sky:runtime work.pool[0]
return run function scr_sky:jobs/pool_min
