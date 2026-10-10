execute in scr:sky store success score #forced scr_sk run forceload query -1048576 -1048576
execute if score #forced scr_sk matches 1 run return 1
execute in scr:sky store success storage scr_sky:scan job.ref_ticket byte 1 run forceload add -1048576 -1048576
execute unless data storage scr_sky:scan job{ref_ticket:1b} run data modify storage scr_sky:scan job.phase set value "abort"
