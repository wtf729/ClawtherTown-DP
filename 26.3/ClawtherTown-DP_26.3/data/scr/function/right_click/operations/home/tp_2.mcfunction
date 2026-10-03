# Snapshot the selected home before calling any other teleport module.
data remove storage scr:home_call target
data modify storage scr:home_call target set from storage homes:storage players[-1].homes[-1]
execute unless data storage scr:home_call target.dim run return run function scr:right_click/operations/home/missing_destination
execute unless data storage scr:home_call target.pos[2] run return run function scr:right_click/operations/home/missing_destination
execute unless data storage scr:home_call target.rot[1] run return run function scr:right_click/operations/home/missing_destination
execute as @e[type=minecraft:marker,tag=homes.dimension] run function scr:right_click/operations/home/tp_3 with storage scr:home_call
function scr:right_click/operations/home/dispatch with storage scr:home_call
