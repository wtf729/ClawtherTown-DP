scoreboard players set #target_role scr_sk 0
$execute if data storage scr_sky:runtime work.island.roles."$(target)" run execute store result score #target_role scr_sk run data get storage scr_sky:runtime work.island.roles."$(target)" 1
