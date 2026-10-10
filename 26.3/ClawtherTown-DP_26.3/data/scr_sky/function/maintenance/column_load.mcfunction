execute store result score #m_guard scr_sk run function scr_sky:maintenance/guard
execute unless score #m_guard scr_sk matches 1 run return run function scr_sky:maintenance/recovery
function scr_sky:maintenance/section_bounds
execute unless score #m_bounds scr_sk matches 1 run return run function scr_sky:maintenance/recovery
function scr_sky:maintenance/source_pin with storage scr_sky:maintenance job
execute unless score #m_loaded scr_sk matches 1 run return 0
execute in scr:sky run function scr_sky:maintenance/entities with storage scr_sky:maintenance job
data modify storage scr_sky:maintenance job.phase set from storage scr_sky:maintenance job.pass
data modify storage scr_sky:maintenance job.wait set value 0
