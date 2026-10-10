$execute unless data storage scr_sky:maintenance job{id:$(id),kind:"delete",phase:"delete_commit",world_verified:1b} run return 0
execute unless data storage scr_sky:runtime work.island{delete_state:"reference_check",cleanup:{references_verified:1b}} run return 0
$data remove storage scr_sky:islands records.i$(id)
function scr_sky:delete/reference_audit with storage scr_sky:runtime work.ctx
execute if data storage scr_sky:runtime result.references[0] run return run function scr_sky:maintenance/recovery
$execute if data storage scr_sky:islands records.i$(id) run return run function scr_sky:maintenance/recovery
# Final synchronous commit. No function yields or persistent consumer can see a reused ID earlier.
data modify storage scr_sky:maintenance job.release_id set from storage scr_sky:runtime work.ctx.id
data modify storage scr_sky:maintenance job.outcome set value "deleted"
# Last persistent island mutation: the world and every consumer reference have been checked.
$execute store success score #m_release scr_sk run data modify storage scr_sky:islands meta.free_ids append value $(id)
execute unless score #m_release scr_sk matches 1 run return run function scr_sky:maintenance/recovery
data modify storage scr_sky:maintenance job.released set value 1b
function scr_sky:maintenance/finish
return 1
