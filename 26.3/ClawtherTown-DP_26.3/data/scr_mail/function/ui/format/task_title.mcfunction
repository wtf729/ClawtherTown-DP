# Match current Task reward sources against the authoritative Catalog; raw mail titles remain available.
data modify storage scr_mail:runtime work.task_title_queue set from storage scr_task:runtime catalog
scoreboard players set #task_title_found scr_ml_n 0
execute if data storage scr_mail:runtime work.task_title_queue[0] run function scr_mail:ui/format/task_title_loop
data remove storage scr_mail:runtime work.task_title_queue
data remove storage scr_mail:runtime work.task_title_entry
