function scr_sky:scan/chunk/loaded with storage scr_sky:scan job
execute unless score #loaded scr_sk matches 1 run return 0
execute in scr_sky:scanner unless loaded 0 0 0 run return 0
execute store result score #sy scr_sk run data get storage scr_sky:scan job.y 1
scoreboard players add #sy scr_sk 15
execute store result storage scr_sky:scan job.ye int 1 run scoreboard players get #sy scr_sk
function scr_sky:scan/section/copy with storage scr_sky:scan job
execute unless score #copied scr_sk matches 1 run return 0
# Clone -> destructive count -> clear all happen in this single synchronous chain.
execute in scr_sky:scanner run function scr_sky:scan/value/count
execute unless score #counted scr_sk matches 1 run return run function scr_sky:scan/abort
function scr_sky:scan/value/add
execute store result score #sy scr_sk run data get storage scr_sky:scan job.y 1
scoreboard players add #sy scr_sk 16
execute store result storage scr_sky:scan job.y int 1 run scoreboard players get #sy scr_sk
execute store result score #remaining scr_sk run data get storage scr_sky:scan job.remaining 1
scoreboard players remove #remaining scr_sk 1
execute store result storage scr_sky:scan job.remaining int 1 run scoreboard players get #remaining scr_sk
execute store result score #processed scr_sk run data get storage scr_sky:scan job.processed_sections 1
scoreboard players add #processed scr_sk 1
execute store result storage scr_sky:scan job.processed_sections int 1 run scoreboard players get #processed scr_sk
execute store result score #detailed scr_sk run data get storage scr_sky:scan job.detailed_sections 1
scoreboard players add #detailed scr_sk 1
execute store result storage scr_sky:scan job.detailed_sections int 1 run scoreboard players get #detailed scr_sk
execute if score #remaining scr_sk matches 0 run data modify storage scr_sky:scan job.phase set value "broad"
function scr_sky:scan/chunk/end_height
data modify storage scr_sky:scan job.wait set value 0
