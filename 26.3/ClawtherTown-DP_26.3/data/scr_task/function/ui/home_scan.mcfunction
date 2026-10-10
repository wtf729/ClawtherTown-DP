# One catalog pass. This function never runs from tick.
data modify storage scr_task:runtime work.home_candidate set from storage scr_task:runtime work.home_queue[0]
function scr_task:ui/home_candidate with storage scr_task:runtime work.home_candidate
data remove storage scr_task:runtime work.home_queue[0]
execute if data storage scr_task:runtime work.home_queue[0] run function scr_task:ui/home_scan
