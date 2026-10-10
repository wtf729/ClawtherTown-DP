scoreboard players set #m_forced scr_sk 0
$execute in scr:sky store success score #m_forced scr_sk run forceload query $(x) $(z)
$execute if score #m_forced scr_sk matches 0 in scr:sky store success storage scr_sky:maintenance job.starter_tickets[$(index)].owned byte 1 run forceload add $(x) $(z)
$execute in scr:sky unless loaded $(x) 100 $(z) run scoreboard players set #m_loaded scr_sk 0
