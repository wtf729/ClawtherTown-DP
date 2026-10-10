scoreboard players set #ui_target_role scr_sk 0
$execute if data storage scr_sky:ui work.island.roles."$(target)" run execute store result score #ui_target_role scr_sk run data get storage scr_sky:ui work.island.roles."$(target)"
