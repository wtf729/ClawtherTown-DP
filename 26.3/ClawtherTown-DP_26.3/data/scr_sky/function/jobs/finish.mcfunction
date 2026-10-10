data modify storage scr_sky:runtime work.release_queue set from storage scr_sky:jobs active.tickets
function scr_sky:jobs/release_loop
function scr_sky:jobs/receipt with storage scr_sky:jobs active
data modify storage scr_sky:jobs last set from storage scr_sky:jobs active
data remove storage scr_sky:jobs active
