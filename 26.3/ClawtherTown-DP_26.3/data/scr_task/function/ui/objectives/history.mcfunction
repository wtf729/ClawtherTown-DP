execute store result score #ui_history_value scr_tk run data get storage scr_task:runtime work.goal_ui.row.have
$execute if score #ui_history_value scr_tk matches $(count).. run return 1
data modify storage scr_task:runtime work.goal_ui.row.have set from storage scr_task:runtime work.goal_ui.row.count
return 1
