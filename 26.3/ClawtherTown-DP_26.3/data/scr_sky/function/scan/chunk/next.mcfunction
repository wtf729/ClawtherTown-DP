function scr_sky:scan/chunk/release with storage scr_sky:scan job
execute store result score #sx scr_sk run data get storage scr_sky:scan job.x 1
execute store result score #sz scr_sk run data get storage scr_sky:scan job.z 1
execute store result score #xmax_scan scr_sk run data get storage scr_sky:scan job.xmax 1
execute store result score #zmax_scan scr_sk run data get storage scr_sky:scan job.zmax 1
scoreboard players add #sx scr_sk 16
execute if score #sx scr_sk > #xmax_scan scr_sk run scoreboard players add #sz scr_sk 16
execute if score #sx scr_sk > #xmax_scan scr_sk run execute store result score #sx scr_sk run data get storage scr_sky:scan job.xmin 1
execute store result storage scr_sky:scan job.x int 1 run scoreboard players get #sx scr_sk
execute store result storage scr_sky:scan job.z int 1 run scoreboard players get #sz scr_sk
data modify storage scr_sky:scan job.y set from storage scr_sky:scan job.ymin
data modify storage scr_sky:scan job.phase set value "load_column"
execute if score #sz scr_sk > #zmax_scan scr_sk run data modify storage scr_sky:scan job.phase set value "commit"
data modify storage scr_sky:scan job.wait set value 0
