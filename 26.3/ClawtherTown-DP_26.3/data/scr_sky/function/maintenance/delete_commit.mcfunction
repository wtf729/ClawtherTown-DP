function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:maintenance job{world_verified:1b,cleared:6144,verified:6144} run return run function scr_sky:maintenance/recovery
execute unless data storage scr_sky:runtime work.island{state:"deleting",delete_state:"reference_check",cleanup:{world_verified:1b,references_verified:1b}} run return run function scr_sky:maintenance/recovery
function scr_sky:delete/reference_audit with storage scr_sky:runtime work.ctx
execute if data storage scr_sky:runtime result.references[0] run return run function scr_sky:maintenance/recovery
function scr_sky:maintenance/pool_check
execute if score #m_in_pool scr_sk matches 1 run return run function scr_sky:maintenance/recovery
# Save tombstone before removing the record; recovery can restore occupation if final audit fails.
data modify storage scr_sky:maintenance job.tombstone set from storage scr_sky:runtime work.island
function scr_sky:delete/release with storage scr_sky:runtime work.ctx
