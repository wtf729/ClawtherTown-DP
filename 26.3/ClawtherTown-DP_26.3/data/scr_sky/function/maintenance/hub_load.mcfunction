# A missing chunk waits; it does not mean an unsafe Hub or a dirty reference.
scoreboard players set #m_pin_index scr_sk 0
scoreboard players set #m_loaded scr_sk 1
function scr_sky:maintenance/pin_loop
execute store result storage scr_sky:maintenance job.checks.chunks_loaded byte 1 run scoreboard players get #m_loaded scr_sk
execute unless score #m_loaded scr_sk matches 1 run return 0
scoreboard players set #m_hub_safe scr_sk 0
execute in scr:sky store result score #m_hub_safe scr_sk run function scr_sky:hub/spawn_safe with storage scr_sky:config hub
execute store result storage scr_sky:maintenance job.checks.hub_safe byte 1 run scoreboard players get #m_hub_safe scr_sk
execute unless score #m_hub_safe scr_sk matches 1 run data modify storage scr_sky:maintenance job.error set value "hub_spawn_unsafe"
execute unless score #m_hub_safe scr_sk matches 1 run return run function scr_sky:maintenance/recovery
scoreboard players set #m_ref_safe scr_sk 0
execute in scr:sky store result score #m_ref_safe scr_sk run function scr_sky:maintenance/reference_check
execute store result storage scr_sky:maintenance job.checks.reference_air byte 1 run scoreboard players get #m_ref_safe scr_sk
execute unless score #m_ref_safe scr_sk matches 1 run data modify storage scr_sky:maintenance job.error set value "air_reference_not_empty"
execute unless score #m_ref_safe scr_sk matches 1 run return run function scr_sky:maintenance/recovery
data modify storage scr_sky:maintenance job.phase set value "start"
data modify storage scr_sky:maintenance job.wait set value 0
