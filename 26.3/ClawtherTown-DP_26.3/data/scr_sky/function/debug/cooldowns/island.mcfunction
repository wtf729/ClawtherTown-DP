$execute unless data storage scr_sky:islands records.i$(id) run return 0
scoreboard players add #cd_islands scr_sk 1
$execute if data storage scr_sky:islands records.i$(id).last_scan_started run scoreboard players add #cd_fields scr_sk 1
$execute if data storage scr_sky:islands records.i$(id).last_reset_started run scoreboard players add #cd_fields scr_sk 1
$data remove storage scr_sky:islands records.i$(id).last_scan_started
$data remove storage scr_sky:islands records.i$(id).last_reset_started
