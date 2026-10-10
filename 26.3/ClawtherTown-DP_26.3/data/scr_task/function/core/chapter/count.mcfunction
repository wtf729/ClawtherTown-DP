data modify storage scr_task:runtime work.chapter_task set from storage scr_task:runtime work.chapter_tasks[0]
data modify storage scr_task:runtime work.chapter_task.key set from storage scr_task:runtime work.key
execute store result score #chapter_check scr_tk run function scr_task:core/unlock/check with storage scr_task:runtime work.chapter_task
execute if score #chapter_check scr_tk matches 1 run scoreboard players add #chapter_count scr_tk 1
data remove storage scr_task:runtime work.chapter_tasks[0]
execute if data storage scr_task:runtime work.chapter_tasks[0] run return run function scr_task:core/chapter/count
return 1
