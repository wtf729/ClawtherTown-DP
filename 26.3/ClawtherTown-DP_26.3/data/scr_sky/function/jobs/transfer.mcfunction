function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime work.island{state:"active",reset_state:"idle",delete_state:"idle"} run return run function scr_sky:jobs/recover
function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 3 run return run function scr_sky:jobs/recover
function scr_sky:jobs/target_member with storage scr_sky:runtime work.ctx
execute unless score #target_role scr_sk matches 1..2 run return run function scr_sky:jobs/recover
function scr_sky:jobs/transfer_commit with storage scr_sky:runtime work.ctx
data modify storage scr_sky:jobs active.outcome set value "transferred"
function scr_sky:jobs/finish
