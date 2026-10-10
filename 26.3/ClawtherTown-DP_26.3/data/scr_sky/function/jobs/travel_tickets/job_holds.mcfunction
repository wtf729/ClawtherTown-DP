execute unless data storage scr_sky:travel_tickets work.tickets[0] run return 1
execute store result score #fl_other_x scr_sk run data get storage scr_sky:travel_tickets work.tickets[0].x
execute store result score #fl_other_z scr_sk run data get storage scr_sky:travel_tickets work.tickets[0].z
function scr_sky:jobs/travel_tickets/compare
data remove storage scr_sky:travel_tickets work.tickets[0]
return run function scr_sky:jobs/travel_tickets/job_holds
