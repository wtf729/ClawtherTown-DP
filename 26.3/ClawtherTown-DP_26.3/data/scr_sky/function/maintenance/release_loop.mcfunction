execute unless data storage scr_sky:runtime work.release_tickets[0] run return 1
data modify storage scr_sky:runtime work.release_entry set from storage scr_sky:runtime work.release_tickets[0]
execute if data storage scr_sky:runtime work.release_entry{owned:1b} run function scr_sky:maintenance/ticket_release with storage scr_sky:runtime work.release_tickets[0]
data remove storage scr_sky:runtime work.release_tickets[0]
return run function scr_sky:maintenance/release_loop
