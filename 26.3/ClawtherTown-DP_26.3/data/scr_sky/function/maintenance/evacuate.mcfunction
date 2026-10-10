execute unless dimension scr:sky run return 0
scoreboard players set #m_evacuated scr_sk 1
$execute as @a[x=$(min_x),y=-30000000,z=$(min_z),dx=255,dy=60000000,dz=255] run teleport @s 0 100 0
$execute if entity @a[x=$(min_x),y=-30000000,z=$(min_z),dx=255,dy=60000000,dz=255] run scoreboard players set #m_evacuated scr_sk 0
