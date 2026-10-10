execute store result score #m_guard scr_sk run function scr_sky:maintenance/guard
execute unless score #m_guard scr_sk matches 1 run return run function scr_sky:maintenance/recovery
scoreboard players set #m_loaded scr_sk 1
scoreboard players set #m_starter_index scr_sk 0
function scr_sky:maintenance/starter_pin_loop
execute unless score #m_loaded scr_sk matches 1 run return 0
execute in scr:sky store result score #m_empty scr_sk run function scr_sky:starter/check_empty with storage scr_sky:maintenance job.place
execute unless score #m_empty scr_sk matches 1 run return run function scr_sky:maintenance/recovery
data modify storage scr_sky:maintenance job.placement_attempted set value 1b
execute in scr:sky store result score #m_placed scr_sk run function scr_sky:starter/place with storage scr_sky:maintenance job.place
execute unless score #m_placed scr_sk matches 1 run return run function scr_sky:maintenance/recovery
data modify storage scr_sky:maintenance job.phase set value "reset_commit"
data modify storage scr_sky:maintenance job.wait set value 0
