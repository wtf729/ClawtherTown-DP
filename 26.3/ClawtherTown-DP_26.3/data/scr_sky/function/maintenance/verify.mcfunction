# A failed slab keeps its cursor and is rechecked on the next tick; no full-pass restart.
execute store result score #m_guard scr_sk run function scr_sky:maintenance/guard
execute unless score #m_guard scr_sk matches 1 run return run function scr_sky:maintenance/recovery
function scr_sky:maintenance/section_bounds
execute unless score #m_bounds scr_sk matches 1 run return run function scr_sky:maintenance/recovery
scoreboard players set #m_section_ok scr_sk 0
execute in scr:sky store result score #m_section_ok scr_sk run function scr_sky:maintenance/section_verify with storage scr_sky:runtime work.section
execute if score #m_section_ok scr_sk matches 2 run return run function scr_sky:maintenance/retry_slab
execute unless score #m_section_ok scr_sk matches 1 run return run function scr_sky:maintenance/recovery
data modify storage scr_sky:maintenance job.slab_retries set value 0
execute store result score #m_count scr_sk run data get storage scr_sky:maintenance job.verified
scoreboard players add #m_count scr_sk 4
execute store result storage scr_sky:maintenance job.verified int 1 run scoreboard players get #m_count scr_sk
execute store result score #m_y scr_sk run data get storage scr_sky:maintenance job.y
scoreboard players add #m_y scr_sk 64
execute store result storage scr_sky:maintenance job.y int 1 run scoreboard players get #m_y scr_sk
data modify storage scr_sky:maintenance job.wait set value 0
execute if score #m_y scr_sk matches 320.. run data modify storage scr_sky:maintenance job.phase set value "next_column"

execute if data storage scr_sky:maintenance job{phase:"verify"} run function scr_sky:maintenance/batch
