execute unless data storage scr_sky:runtime work.island{reset_state:"awaiting_confirmation",delete_state:"idle"} run return 0
data remove storage scr_sky:runtime work.clock_stamp
data modify storage scr_sky:runtime work.clock_stamp set from storage scr_sky:runtime work.island.last_reset_started
function scr_sky:core/cooldown/read
execute if score #cd_remaining scr_sk matches 1.. run return 0
data modify storage scr_sky:runtime work.island.state set value "resetting"
data modify storage scr_sky:runtime work.island.reset_state set value "running"
execute store result storage scr_sky:runtime work.island.last_reset_started int 1 run time query gametime
data modify storage scr_sky:maintenance job.locked set value 1b
