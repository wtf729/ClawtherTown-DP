scoreboard players set #lv_role scr_sk 0
$execute if data storage scr_sky:level notice.island.roles."$(key)" run execute store result score #lv_role scr_sk run data get storage scr_sky:level notice.island.roles."$(key)" 1
$execute if data storage scr_sky:level notice.island{owner:"$(key)"} run scoreboard players set #lv_role scr_sk 3
execute if score #lv_role scr_sk matches 1..3 run function scr_sky:scan/notify/message with storage scr_sky:level notice
