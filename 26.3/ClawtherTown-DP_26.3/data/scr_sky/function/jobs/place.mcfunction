function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime work.island{state:"placing_starter",reset_state:"idle",delete_state:"idle"} run return run function scr_sky:jobs/recover
scoreboard players set #empty_template scr_sk 0
execute in scr:sky store result score #empty_template scr_sk run function scr_sky:starter/check_empty with storage scr_sky:jobs active.place
execute unless score #empty_template scr_sk matches 1 run data modify storage scr_sky:jobs active.error set value "starter_volume_not_empty_or_occupied"
execute unless score #empty_template scr_sk matches 1 run return run function scr_sky:jobs/recover
# The phase is journaled before placement. Reload never automatically repeats placement.
data modify storage scr_sky:jobs active.placement_attempted set value 1b
scoreboard players set #placed scr_sk 0
execute in scr:sky store success score #placed scr_sk run function scr_sky:starter/place with storage scr_sky:jobs active.place
execute unless score #placed scr_sk matches 1 run data modify storage scr_sky:jobs active.error set value "placement_failed"
execute unless score #placed scr_sk matches 1 run return run function scr_sky:jobs/recover
data modify storage scr_sky:runtime work.island.state set value "validating"
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
data modify storage scr_sky:jobs active.phase set value "validate"
data modify storage scr_sky:jobs active.wait set value 0
