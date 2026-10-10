# Validate four 16^3 reference slices read-only, one per tick. Never clear the Sky reference.
execute store result score #refy scr_sk run data get storage scr_sky:scan job.ref_y 1
scoreboard players operation #refend scr_sk = #refy scr_sk
scoreboard players add #refend scr_sk 15
execute store result storage scr_sky:scan job.ref_end int 1 run scoreboard players get #refend scr_sk
function scr_sky:scan/reference/copy with storage scr_sky:scan job
execute unless score #copied scr_sk matches 1 run return 0
execute in scr_sky:scanner run function scr_sky:scan/reference/count
execute if score #nonair scr_sk matches 1.. run data modify storage scr_sky:scan job.error set value "air_reference_not_empty"
execute if score #nonair scr_sk matches 1.. run return run function scr_sky:scan/abort
scoreboard players add #refy scr_sk 16
execute store result storage scr_sky:scan job.ref_y int 1 run scoreboard players get #refy scr_sk
execute if score #refy scr_sk matches 64 run data modify storage scr_sky:scan job.phase set value "load_column"
data modify storage scr_sky:scan job.wait set value 0
