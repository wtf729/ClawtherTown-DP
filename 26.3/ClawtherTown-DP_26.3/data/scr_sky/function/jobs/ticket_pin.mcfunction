scoreboard players set #ticket_forced scr_sk 0
$execute in scr:sky store success score #ticket_forced scr_sk run forceload query $(x) $(z)
$execute if score #ticket_forced scr_sk matches 0 in scr:sky store success storage scr_sky:jobs active.tickets[$(index)].owned byte 1 run forceload add $(x) $(z)
$execute in scr:sky unless loaded $(x) 64 $(z) run scoreboard players set #all_loaded scr_sk 0
