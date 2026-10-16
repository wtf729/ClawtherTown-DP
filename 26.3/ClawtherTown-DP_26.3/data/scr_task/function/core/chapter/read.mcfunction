data modify storage scr_task:runtime work.chapter_status set value {completed_count:0}
$execute if data storage scr_task:players players."$(key)".chapters.$(line).$(name) run data modify storage scr_task:runtime work.chapter_status set from storage scr_task:players players."$(key)".chapters.$(line).$(name)
