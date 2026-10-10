execute store result score #fl_other_x scr_sk run data get storage scr_sky:scan job.x
execute store result score #fl_other_z scr_sk run data get storage scr_sky:scan job.z
function scr_sky:jobs/travel_tickets/compare
execute if score #fl_x scr_sk matches -1048576 if score #fl_z scr_sk matches -1048576 run scoreboard players set #fl_held scr_sk 1
