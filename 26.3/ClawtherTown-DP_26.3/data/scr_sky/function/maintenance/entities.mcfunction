execute unless dimension scr:sky run return 0
execute unless score #m_bounds scr_sk matches 1 run return 0
execute unless data storage scr_sky:maintenance job{locked:1b} run return 0
$execute unless data storage scr_sky:maintenance job{x:$(x),z:$(z)} run return 0
$kill @e[type=!minecraft:player,x=$(x),y=-64,z=$(z),dx=15,dy=383,dz=15]
