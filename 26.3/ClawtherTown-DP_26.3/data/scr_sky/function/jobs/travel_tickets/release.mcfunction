# Queue contains only tickets added by the recorded original owner, in scr:sky.
scoreboard players set #fl_exists scr_sk 0
scoreboard players set #fl_removed scr_sk 0
$execute in scr:sky store success score #fl_exists scr_sk run forceload query $(x) $(z)
$execute if score #fl_exists scr_sk matches 1 in scr:sky store success score #fl_removed scr_sk run forceload remove $(x) $(z)
$execute if score #fl_exists scr_sk matches 0 run data remove storage scr_sky:travel_tickets pending[{x:$(x),z:$(z),owner:"$(owner)"}]
$execute if score #fl_removed scr_sk matches 1 run data remove storage scr_sky:travel_tickets pending[{x:$(x),z:$(z),owner:"$(owner)"}]
