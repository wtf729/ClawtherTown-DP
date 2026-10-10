# Real-time broad check shared with Scanner; no Scanner job/cache is consulted.
execute unless dimension scr:sky run return 0
execute unless score #m_bounds scr_sk matches 1 run return 0
$execute unless data storage scr_sky:maintenance job{locked:1b,x:$(x),y:$(y),z:$(z),phase:"clear",slab_height:64} run return 0
$execute unless loaded $(x) $(y) $(z) run return 0
$execute unless loaded $(xe) $(ye) $(ze) run return 0
execute unless loaded -1048576 0 -1048576 run return 0
function scr_sky:scan/chunk/compare with storage scr_sky:runtime work.section
execute if score #empty scr_sk matches 1 run return 1
return run function scr_sky:maintenance/slab_fill with storage scr_sky:runtime work.section
