execute unless data storage scr_sky:runtime work.release_queue[0] run return 1
data modify storage scr_sky:runtime work.ticket set from storage scr_sky:runtime work.release_queue[0]
execute if data storage scr_sky:runtime work.ticket{owned:1b} run function scr_sky:jobs/release_one with storage scr_sky:runtime work.ticket
data remove storage scr_sky:runtime work.release_queue[0]
return run function scr_sky:jobs/release_loop
