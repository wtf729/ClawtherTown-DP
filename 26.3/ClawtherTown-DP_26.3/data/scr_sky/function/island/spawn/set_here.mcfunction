execute unless predicate scr:location/in_sky run data modify storage scr_sky:runtime result.reason set value "wrong_dimension"
execute unless predicate scr:location/in_sky run return 0



function scr_sky:core/island/read with storage scr_sky:runtime work.ctx

execute unless data storage scr_sky:runtime work.island run data modify storage scr_sky:runtime result.reason set value "island_state"
execute unless data storage scr_sky:runtime work.island run return 0

function scr_sky:role/read with storage scr_sky:runtime work.ctx

execute unless score #role scr_sk matches 2..3 run data modify storage scr_sky:runtime result.reason set value "permission"
execute unless score #role scr_sk matches 2..3 run return 0

execute unless data storage scr_sky:runtime work.island{state:"active",reset_state:"idle",delete_state:"idle"} run data modify storage scr_sky:runtime result.reason set value "island_state"
execute unless data storage scr_sky:runtime work.island{state:"active",reset_state:"idle",delete_state:"idle"} run return 0

execute store result score #px scr_sk run data get entity @s Pos[0] 1

execute store result score #py scr_sk run data get entity @s Pos[1] 1

execute store result score #pz scr_sk run data get entity @s Pos[2] 1

function scr_sky:island/spawn/bounds

execute unless score #inside scr_sk matches 1 run data modify storage scr_sky:runtime result.reason set value "outside_island"
execute unless score #inside scr_sk matches 1 run return 0

data modify storage scr_sky:runtime work.island.spawn set value {configured:1b,custom:1b}

data modify storage scr_sky:runtime work.island.spawn.x set from entity @s Pos[0]

data modify storage scr_sky:runtime work.island.spawn.y set from entity @s Pos[1]

data modify storage scr_sky:runtime work.island.spawn.z set from entity @s Pos[2]

data modify storage scr_sky:runtime work.island.spawn.yaw set from entity @s Rotation[0]

data modify storage scr_sky:runtime work.island.spawn.pitch set from entity @s Rotation[1]

execute in scr:sky store result score #spawn_safe scr_sk run function scr_sky:island/spawn/safe with storage scr_sky:runtime work.island.spawn
execute unless score #spawn_safe scr_sk matches 1 run data modify storage scr_sky:runtime result.reason set value "unsafe_spawn"
execute unless score #spawn_safe scr_sk matches 1 run return 0
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx

data modify storage scr_sky:runtime result.ok set value 1b
