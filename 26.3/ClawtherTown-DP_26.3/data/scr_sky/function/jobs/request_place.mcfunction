execute unless data storage scr_sky:runtime work.island{state:"reserved",reset_state:"idle",scan_state:"idle",delete_state:"idle"} run return 0
function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 3 run return 0
function scr_sky:jobs/start
data modify storage scr_sky:jobs active.allocated set value 1b
data modify storage scr_sky:runtime work.island.state set value "placing_starter"
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
data modify storage scr_sky:jobs active.phase set value "prepare"
data modify storage scr_sky:jobs active.wait set value 0
