execute store result score #sy scr_sk run data get storage scr_sky:scan job.y 1
execute store result score #maxy_scan scr_sk run data get storage scr_sky:scan job.ymax 1
execute if score #sy scr_sk > #maxy_scan scr_sk run data modify storage scr_sky:scan job.phase set value "next_column"
