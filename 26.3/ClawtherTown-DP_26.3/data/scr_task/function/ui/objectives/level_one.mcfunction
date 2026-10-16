data remove storage scr_task:runtime work.goal_ui.island
$data modify storage scr_task:runtime work.goal_ui.island set from storage scr_sky:islands records.i$(id)
execute unless data storage scr_task:runtime work.goal_ui.island{state:"active"} run return 0
scoreboard players set #ui_role scr_tk 0
$execute if data storage scr_task:runtime work.goal_ui.island.roles."$(key)" store result score #ui_role scr_tk run data get storage scr_task:runtime work.goal_ui.island.roles."$(key)"
$execute if data storage scr_task:runtime work.goal_ui.island{owner:"$(key)"} run scoreboard players set #ui_role scr_tk 3
execute unless score #ui_role scr_tk matches 1..3 run return 0
execute store result score #ui_island_level scr_tk run data get storage scr_task:runtime work.goal_ui.island.level
execute if score #ui_island_level scr_tk > #ui_level scr_tk run execute store result storage scr_task:runtime work.goal_ui.level_value int 1 run scoreboard players get #ui_island_level scr_tk
execute if score #ui_island_level scr_tk > #ui_level scr_tk run scoreboard players operation #ui_level scr_tk = #ui_island_level scr_tk
return 1
