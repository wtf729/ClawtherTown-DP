data modify storage scr_task:runtime work.chapter_queue set from storage scr_task:runtime chapter_catalog
execute if data storage scr_task:runtime work.chapter_queue[0] run function scr_task:core/chapter/loop
