execute unless data storage scr_sky:ui work.queue[0] run return 1
data modify storage scr_sky:ui work.row set from storage scr_sky:ui work.queue[0]
data remove storage scr_sky:ui work.queue[0]
function scr_sky:ui/list_row with storage scr_sky:ui work.row
return run function scr_sky:ui/list_loop
