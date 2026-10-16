data modify storage scr_task:runtime work.goal_ui.row.have set value "?"
$execute if data storage scr_task:runtime work.record.progress.$(field) store result storage scr_task:runtime work.goal_ui.row.have int 1 run function scr_task:core/progress/read with storage scr_task:runtime work.goal_ui.progress
