data modify storage scr_task:runtime work.candidate set from storage scr_task:runtime work.queue[0]
function scr_task:ui/panel_candidate with storage scr_task:runtime work.nav
data remove storage scr_task:runtime work.queue[0]
execute if data storage scr_task:runtime work.queue[0] run return run function scr_task:ui/panel_loop
return 1
