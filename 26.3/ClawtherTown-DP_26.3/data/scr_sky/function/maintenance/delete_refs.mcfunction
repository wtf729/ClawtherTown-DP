execute store result score #m_guard scr_sk run function scr_sky:maintenance/guard
execute unless score #m_guard scr_sk matches 1 run return run function scr_sky:maintenance/recovery
execute unless data storage scr_sky:maintenance job{world_verified:1b} run return run function scr_sky:maintenance/recovery
data modify storage scr_sky:runtime work.island.delete_state set value "reference_cleanup"
data modify storage scr_sky:runtime work.island.cleanup set value {world_verified:1b}
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
execute store result score #m_refs scr_sk run function scr_sky:delete/cleanup_references with storage scr_sky:runtime work.ctx
execute unless score #m_refs scr_sk matches 1 run return run function scr_sky:maintenance/recovery
data modify storage scr_sky:maintenance job.phase set value "delete_commit"
data modify storage scr_sky:maintenance job.wait set value 0
