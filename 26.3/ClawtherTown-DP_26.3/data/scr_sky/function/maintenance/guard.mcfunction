execute unless score #config_ok scr_sk matches 1 run return 0
function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:maintenance job{locked:1b} run return 0
execute if data storage scr_sky:maintenance job{kind:"reset"} unless data storage scr_sky:runtime work.island{state:"resetting",reset_state:"running"} run return 0
execute if data storage scr_sky:maintenance job{kind:"delete"} unless data storage scr_sky:runtime work.island{state:"deleting"} run return 0
data modify storage scr_sky:runtime work.region_guard set from storage scr_sky:maintenance job.region
execute store success score #m_changed scr_sk run data modify storage scr_sky:runtime work.region_guard set from storage scr_sky:runtime work.island.region
execute if score #m_changed scr_sk matches 1 run return 0
scoreboard players set #m_hub_safe scr_sk 0
execute in scr:sky store result score #m_hub_safe scr_sk run function scr_sky:hub/spawn_safe with storage scr_sky:config hub
execute unless score #m_hub_safe scr_sk matches 1 run data modify storage scr_sky:maintenance job.error set value "hub_spawn_unsafe"
execute unless score #m_hub_safe scr_sk matches 1 run return 0
execute in scr:sky run function scr_sky:maintenance/evacuate with storage scr_sky:maintenance job.region
execute unless score #m_evacuated scr_sk matches 1 run return 0
return 1
