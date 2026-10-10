data modify storage scr_task:runtime work.chapter set from storage scr_task:runtime work.chapter_queue[0]
data modify storage scr_task:runtime work.chapter.key set from storage scr_task:runtime work.key
function scr_task:core/chapter/one with storage scr_task:runtime work.chapter
data remove storage scr_task:runtime work.chapter_queue[0]
execute if data storage scr_task:runtime work.chapter_queue[0] run return run function scr_task:core/chapter/loop
return 1
