execute store result score #travel_guard scr_sk run function scr_sky:jobs/travel_recovery/guard
execute unless score #travel_guard scr_sk matches 1 run return run function scr_sky:jobs/recover
# Lost chunks wait under the existing timeout; successful batches reset only the inactivity timer.
scoreboard players set #ticket_index scr_sk 0
scoreboard players set #all_loaded scr_sk 1
function scr_sky:jobs/ticket_loop
execute unless score #all_loaded scr_sk matches 1 run return 0
data modify storage scr_sky:jobs active.wait set value 0
execute store result score #recovery_budget scr_sk run data get storage scr_sky:config spawn_recovery.checks_per_tick
function scr_sky:jobs/travel_recovery/step
