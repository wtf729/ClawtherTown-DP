# Project into temporary display data only. Unknown historical receipts stay unknown.
execute if data storage scr_task:runtime work.goal_ui.display{have:"?"} run return 1
execute store result score #ui_display_target scr_tk run data get storage scr_task:runtime work.goal_ui.display.count
execute unless score #ui_display_target scr_tk matches 1..2147483647 run return 0
execute store result score #ui_display_value scr_tk run data get storage scr_task:runtime work.goal_ui.display.have
execute unless score #ui_display_value scr_tk matches 0.. run scoreboard players set #ui_display_value scr_tk 0
execute if score #ui_display_value scr_tk > #ui_display_target scr_tk run scoreboard players operation #ui_display_value scr_tk = #ui_display_target scr_tk
execute store result storage scr_task:runtime work.goal_ui.display.have int 1 run scoreboard players get #ui_display_value scr_tk
return 1
