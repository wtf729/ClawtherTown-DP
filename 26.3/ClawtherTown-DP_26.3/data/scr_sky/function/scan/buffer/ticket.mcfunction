execute in scr_sky:scanner store success score #forced scr_sk run forceload query 0 0
execute if score #forced scr_sk matches 1 run return 1
execute in scr_sky:scanner store success storage scr_sky:scan job.buffer_ticket byte 1 run forceload add 0 0
execute unless data storage scr_sky:scan job{buffer_ticket:1b} run data modify storage scr_sky:scan job.phase set value "abort"
