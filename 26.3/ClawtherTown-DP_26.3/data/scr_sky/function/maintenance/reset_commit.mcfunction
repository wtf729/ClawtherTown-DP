execute store result score #m_guard scr_sk run function scr_sky:maintenance/guard
execute unless score #m_guard scr_sk matches 1 run return run function scr_sky:maintenance/recovery
function scr_sky:island/spawn/build_default
execute in scr:sky store result score #m_safe scr_sk run function scr_sky:island/spawn/safe with storage scr_sky:runtime work.island.spawn
execute unless score #m_safe scr_sk matches 1 run return run function scr_sky:maintenance/recovery
data modify storage scr_sky:runtime work.island.value set value {millions:0,units:0}
data modify storage scr_sky:runtime work.island.level set value 0
data modify storage scr_sky:runtime work.island.last_scan_time set value -1
data remove storage scr_sky:runtime work.island.last_scan_started
data remove storage scr_sky:runtime work.island.reset_requested_by
data remove storage scr_sky:runtime work.island.maintenance_kind
data modify storage scr_sky:runtime work.island.state set value "active"
data modify storage scr_sky:runtime work.island.reset_state set value "idle"
data modify storage scr_sky:runtime work.island.last_operation set value "reset_completed"
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
function scr_sky:maintenance/clear_scan_history with storage scr_sky:maintenance job
data modify storage scr_sky:maintenance job.outcome set value "reset_completed"
function scr_sky:maintenance/finish
