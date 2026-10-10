execute store result score #travel_guard scr_sk run function scr_sky:jobs/travel_recovery/guard
execute unless score #travel_guard scr_sk matches 1 run return run function scr_sky:jobs/recover
# A changed Stored Spawn restarts its own bounds/chunk preparation.
data modify storage scr_sky:runtime work.spawn_compare set from storage scr_sky:jobs active.spawn
execute store success score #spawn_changed scr_sk run data modify storage scr_sky:runtime work.spawn_compare set from storage scr_sky:runtime work.island.spawn
execute if score #spawn_changed scr_sk matches 1 run return run function scr_sky:jobs/travel_prepare
execute unless data storage scr_sky:runtime work.island.spawn{configured:1b} run return run function scr_sky:jobs/travel_recovery/prepare
scoreboard players set #spawn_safe scr_sk 0
execute in scr:sky store result score #spawn_safe scr_sk run function scr_sky:island/spawn/safe with storage scr_sky:jobs active.spawn
execute unless score #spawn_safe scr_sk matches 1 run return run function scr_sky:jobs/travel_recovery/prepare
function scr_sky:jobs/travel_complete
