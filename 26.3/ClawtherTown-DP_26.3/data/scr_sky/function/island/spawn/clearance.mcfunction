# execute if block rejects out-of-build-height positions in 26.3. Above the ceiling is intrinsically empty.
execute unless loaded ~ ~ ~ run return 0
$execute unless predicate {type:"minecraft:location_check",predicate:{position:{y:{min:$(floor)}}}} run return 0
$execute if predicate {type:"minecraft:location_check",predicate:{position:{y:{min:$(ceiling)}}}} run return 1
scoreboard players set #clearance_air scr_sk 0
execute store success score #clearance_air scr_sk run execute if block ~ ~ ~ #scr_sky:air
return run scoreboard players get #clearance_air scr_sk
