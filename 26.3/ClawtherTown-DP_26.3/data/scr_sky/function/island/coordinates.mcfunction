# Input #id; deterministic row-major grid. Center derived, never a second authority.
execute store result score #ox scr_sk run data get storage scr_sky:islands geometry.origin_x 1
execute store result score #oz scr_sk run data get storage scr_sky:islands geometry.origin_z 1
execute store result score #spacing scr_sk run data get storage scr_sky:islands geometry.spacing 1
execute store result score #columns scr_sk run data get storage scr_sky:islands geometry.columns 1
scoreboard players operation #index scr_sk = #id scr_sk
scoreboard players remove #index scr_sk 1
scoreboard players operation #gx scr_sk = #index scr_sk
scoreboard players operation #gz scr_sk = #index scr_sk
scoreboard players operation #gx scr_sk %= #columns scr_sk
scoreboard players operation #gz scr_sk /= #columns scr_sk
scoreboard players operation #gx scr_sk *= #spacing scr_sk
scoreboard players operation #gz scr_sk *= #spacing scr_sk
scoreboard players operation #gx scr_sk += #ox scr_sk
scoreboard players operation #gz scr_sk += #oz scr_sk
data modify storage scr_sky:runtime work.region set value {}
execute store result storage scr_sky:runtime work.region.min_x int 1 run scoreboard players get #gx scr_sk
execute store result storage scr_sky:runtime work.region.min_z int 1 run scoreboard players get #gz scr_sk
scoreboard players operation #gx scr_sk += #half_x scr_sk
scoreboard players operation #gz scr_sk += #half_z scr_sk
data modify storage scr_sky:runtime result.center set value {}
execute store result storage scr_sky:runtime result.center.x int 1 run scoreboard players get #gx scr_sk
execute store result storage scr_sky:runtime result.center.z int 1 run scoreboard players get #gz scr_sk
scoreboard players operation #gx scr_sk += #half_x scr_sk
scoreboard players remove #gx scr_sk 1
scoreboard players operation #gz scr_sk += #half_z scr_sk
scoreboard players remove #gz scr_sk 1
execute store result storage scr_sky:runtime work.region.max_x int 1 run scoreboard players get #gx scr_sk
execute store result storage scr_sky:runtime work.region.max_z int 1 run scoreboard players get #gz scr_sk
data modify storage scr_sky:runtime work.region.min_y set from storage scr_sky:islands geometry.min_y
data modify storage scr_sky:runtime work.region.max_y set from storage scr_sky:islands geometry.max_y
