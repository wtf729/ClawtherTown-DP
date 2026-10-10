execute unless data storage scr_sky:travel_tickets work.queue[0] run return 1
data modify storage scr_sky:travel_tickets work.entry set from storage scr_sky:travel_tickets work.queue[0]
data remove storage scr_sky:travel_tickets work.queue[0]
execute store result score #fl_x scr_sk run data get storage scr_sky:travel_tickets work.entry.x
execute store result score #fl_z scr_sk run data get storage scr_sky:travel_tickets work.entry.z
scoreboard players set #fl_held scr_sk 0
scoreboard players set #fl_size scr_sk 16
execute if data storage scr_sky:scan job.x run function scr_sky:jobs/travel_tickets/scanner_holds
data modify storage scr_sky:travel_tickets work.tickets set value []
execute if data storage scr_sky:jobs active.tickets run data modify storage scr_sky:travel_tickets work.tickets set from storage scr_sky:jobs active.tickets
function scr_sky:jobs/travel_tickets/job_holds
execute if data storage scr_sky:maintenance job run function scr_sky:maintenance/holds_tickets
execute if score #fl_held scr_sk matches 0 run function scr_sky:jobs/travel_tickets/release with storage scr_sky:travel_tickets work.entry
return run function scr_sky:jobs/travel_tickets/loop
