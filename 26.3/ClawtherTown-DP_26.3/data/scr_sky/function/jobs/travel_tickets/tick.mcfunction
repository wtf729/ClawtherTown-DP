execute unless data storage scr_sky:travel_tickets pending[0] run return 0
data modify storage scr_sky:travel_tickets work.queue set from storage scr_sky:travel_tickets pending
# Remove an entry only after successfully releasing its original ticket.
function scr_sky:jobs/travel_tickets/loop
data remove storage scr_sky:travel_tickets work
