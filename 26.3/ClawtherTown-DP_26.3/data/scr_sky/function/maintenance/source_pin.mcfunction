execute unless data storage scr_sky:maintenance job.source run data modify storage scr_sky:maintenance job.source set value {}
$data modify storage scr_sky:maintenance job.source.x set value $(x)
$data modify storage scr_sky:maintenance job.source.z set value $(z)
scoreboard players set #m_forced scr_sk 0
scoreboard players set #m_loaded scr_sk 1
$execute in scr:sky store success score #m_forced scr_sk run forceload query $(x) $(z)
$execute if score #m_forced scr_sk matches 0 in scr:sky store success storage scr_sky:maintenance job.source.owned byte 1 run forceload add $(x) $(z)
$execute in scr:sky unless loaded $(x) 0 $(z) run scoreboard players set #m_loaded scr_sk 0
