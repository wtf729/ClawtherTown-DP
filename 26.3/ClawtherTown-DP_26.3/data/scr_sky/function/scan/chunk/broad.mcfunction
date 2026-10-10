function scr_sky:scan/chunk/loaded with storage scr_sky:scan job
execute unless score #loaded scr_sk matches 1 run return 0
execute in scr:sky unless loaded -1048576 0 -1048576 run return 0
execute store result score #sx scr_sk run data get storage scr_sky:scan job.x 1
execute store result score #sz scr_sk run data get storage scr_sky:scan job.z 1
execute store result score #sy scr_sk run data get storage scr_sky:scan job.y 1
scoreboard players add #sx scr_sk 15
scoreboard players add #sz scr_sk 15
scoreboard players add #sy scr_sk 63
execute store result storage scr_sky:scan job.xe int 1 run scoreboard players get #sx scr_sk
execute store result storage scr_sky:scan job.ze int 1 run scoreboard players get #sz scr_sk
execute store result storage scr_sky:scan job.ye int 1 run scoreboard players get #sy scr_sk
function scr_sky:scan/chunk/compare with storage scr_sky:scan job
execute if score #empty scr_sk matches 1 run return run function scr_sky:scan/chunk/skip
data modify storage scr_sky:scan job.remaining set value 4
data modify storage scr_sky:scan job.phase set value "detail"
data modify storage scr_sky:scan job.wait set value 0
