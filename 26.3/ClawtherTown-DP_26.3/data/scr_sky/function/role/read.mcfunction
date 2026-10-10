scoreboard players set #role scr_sk 0
$execute if data storage scr_sky:runtime work.island.roles."$(key)" run execute store result score #role scr_sk run data get storage scr_sky:runtime work.island.roles."$(key)" 1
$execute if data storage scr_sky:runtime work.island{owner:"$(key)"} run scoreboard players set #role scr_sk 3
execute store result storage scr_sky:runtime result.role int 1 run scoreboard players get #role scr_sk
