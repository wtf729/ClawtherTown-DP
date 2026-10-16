data modify storage scr_mail:runtime work.task_title_entry set from storage scr_mail:runtime work.task_title_queue[0]
function scr_mail:ui/format/task_title_match with storage scr_mail:runtime work.task_title_entry
execute if score #task_title_found scr_ml_n matches 1 run return 1
data remove storage scr_mail:runtime work.task_title_queue[0]
execute if data storage scr_mail:runtime work.task_title_queue[0] run return run function scr_mail:ui/format/task_title_loop
return 0
