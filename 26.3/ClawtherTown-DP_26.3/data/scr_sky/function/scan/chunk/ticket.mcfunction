$execute in scr:sky store success score #forced scr_sk run forceload query $(x) $(z)
execute if score #forced scr_sk matches 1 run return 1
$execute in scr:sky store success storage scr_sky:scan job.source_ticket byte 1 run forceload add $(x) $(z)
execute unless data storage scr_sky:scan job{source_ticket:1b} run data modify storage scr_sky:scan job.phase set value "abort"
