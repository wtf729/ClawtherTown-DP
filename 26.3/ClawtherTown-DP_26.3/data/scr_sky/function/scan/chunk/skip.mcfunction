execute store result score #sy scr_sk run data get storage scr_sky:scan job.y 1
scoreboard players add #sy scr_sk 64
execute store result storage scr_sky:scan job.y int 1 run scoreboard players get #sy scr_sk
execute store result score #processed scr_sk run data get storage scr_sky:scan job.processed_sections 1
scoreboard players add #processed scr_sk 4
execute store result storage scr_sky:scan job.processed_sections int 1 run scoreboard players get #processed scr_sk
execute store result score #skipped scr_sk run data get storage scr_sky:scan job.skipped_sections 1
scoreboard players add #skipped scr_sk 4
execute store result storage scr_sky:scan job.skipped_sections int 1 run scoreboard players get #skipped scr_sk
function scr_sky:scan/chunk/end_height
data modify storage scr_sky:scan job.wait set value 0
