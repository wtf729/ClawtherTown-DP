data modify storage scr_mail:preview work.line.description.contents.extra[1] set from storage scr_task:runtime work.goal_ui.quantity
data remove storage scr_task:runtime work.goal_ui.tooltip_ui
execute unless data storage scr_task:runtime work.goal_ui.objective{kind:"item"} run data modify storage scr_task:runtime work.goal_ui.tooltip_ui set from storage scr_task:runtime work.goal_ui.subtask.ui
execute unless data storage scr_task:runtime work.goal_ui.objective{kind:"item"} run function scr_task:ui/objectives/tooltip
execute if data storage scr_task:runtime work.goal_ui.objective{kind:"item"} if score #ui_held_locked scr_tk matches 1 run function scr_task:ui/objectives/completed_mark
# Other goal rows reuse the current Clamp result; unknown rows must not reuse stale scores.
execute unless data storage scr_task:runtime work.goal_ui.objective{kind:"item"} unless data storage scr_task:runtime work.goal_ui.display{have:"?"} if score #state scr_tk matches 2..4 if score #ui_display_target scr_tk matches 1..2147483647 if score #ui_display_value scr_tk >= #ui_display_target scr_tk run function scr_task:ui/objectives/completed_mark
data modify storage scr_task:runtime work.dialog.body append from storage scr_mail:preview work.line
data remove storage scr_mail:preview work
return 1
