# Read-only player bounding-box samples; air remains the conservative feet/head clearance rule.
execute unless dimension scr:sky run return 0
data modify storage scr_sky:runtime work.safety_height.floor set from storage scr_sky:islands geometry.min_y
execute store result score #safety_ceiling scr_sk run data get storage scr_sky:islands geometry.max_y
scoreboard players add #safety_ceiling scr_sk 1
execute store result storage scr_sky:runtime work.safety_height.ceiling int 1 run scoreboard players get #safety_ceiling scr_sk
$execute positioned $(x) $(y) $(z) positioned ~-0.3 ~ ~-0.3 unless loaded ~ ~ ~ run return 0
scoreboard players set #sample_clear scr_sk 0
$execute positioned $(x) $(y) $(z) positioned ~-0.3 ~ ~-0.3 positioned ~ ~0 ~ store result score #sample_clear scr_sk run function scr_sky:island/spawn/clearance with storage scr_sky:runtime work.safety_height
execute unless score #sample_clear scr_sk matches 1 run return 0
scoreboard players set #sample_clear scr_sk 0
$execute positioned $(x) $(y) $(z) positioned ~-0.3 ~ ~-0.3 positioned ~ ~0.9 ~ store result score #sample_clear scr_sk run function scr_sky:island/spawn/clearance with storage scr_sky:runtime work.safety_height
execute unless score #sample_clear scr_sk matches 1 run return 0
scoreboard players set #sample_clear scr_sk 0
$execute positioned $(x) $(y) $(z) positioned ~-0.3 ~ ~-0.3 positioned ~ ~1.79 ~ store result score #sample_clear scr_sk run function scr_sky:island/spawn/clearance with storage scr_sky:runtime work.safety_height
execute unless score #sample_clear scr_sk matches 1 run return 0
$execute positioned $(x) $(y) $(z) positioned ~-0.3 ~ ~0.3 unless loaded ~ ~ ~ run return 0
scoreboard players set #sample_clear scr_sk 0
$execute positioned $(x) $(y) $(z) positioned ~-0.3 ~ ~0.3 positioned ~ ~0 ~ store result score #sample_clear scr_sk run function scr_sky:island/spawn/clearance with storage scr_sky:runtime work.safety_height
execute unless score #sample_clear scr_sk matches 1 run return 0
scoreboard players set #sample_clear scr_sk 0
$execute positioned $(x) $(y) $(z) positioned ~-0.3 ~ ~0.3 positioned ~ ~0.9 ~ store result score #sample_clear scr_sk run function scr_sky:island/spawn/clearance with storage scr_sky:runtime work.safety_height
execute unless score #sample_clear scr_sk matches 1 run return 0
scoreboard players set #sample_clear scr_sk 0
$execute positioned $(x) $(y) $(z) positioned ~-0.3 ~ ~0.3 positioned ~ ~1.79 ~ store result score #sample_clear scr_sk run function scr_sky:island/spawn/clearance with storage scr_sky:runtime work.safety_height
execute unless score #sample_clear scr_sk matches 1 run return 0
$execute positioned $(x) $(y) $(z) positioned ~0.3 ~ ~-0.3 unless loaded ~ ~ ~ run return 0
scoreboard players set #sample_clear scr_sk 0
$execute positioned $(x) $(y) $(z) positioned ~0.3 ~ ~-0.3 positioned ~ ~0 ~ store result score #sample_clear scr_sk run function scr_sky:island/spawn/clearance with storage scr_sky:runtime work.safety_height
execute unless score #sample_clear scr_sk matches 1 run return 0
scoreboard players set #sample_clear scr_sk 0
$execute positioned $(x) $(y) $(z) positioned ~0.3 ~ ~-0.3 positioned ~ ~0.9 ~ store result score #sample_clear scr_sk run function scr_sky:island/spawn/clearance with storage scr_sky:runtime work.safety_height
execute unless score #sample_clear scr_sk matches 1 run return 0
scoreboard players set #sample_clear scr_sk 0
$execute positioned $(x) $(y) $(z) positioned ~0.3 ~ ~-0.3 positioned ~ ~1.79 ~ store result score #sample_clear scr_sk run function scr_sky:island/spawn/clearance with storage scr_sky:runtime work.safety_height
execute unless score #sample_clear scr_sk matches 1 run return 0
$execute positioned $(x) $(y) $(z) positioned ~0.3 ~ ~0.3 unless loaded ~ ~ ~ run return 0
scoreboard players set #sample_clear scr_sk 0
$execute positioned $(x) $(y) $(z) positioned ~0.3 ~ ~0.3 positioned ~ ~0 ~ store result score #sample_clear scr_sk run function scr_sky:island/spawn/clearance with storage scr_sky:runtime work.safety_height
execute unless score #sample_clear scr_sk matches 1 run return 0
scoreboard players set #sample_clear scr_sk 0
$execute positioned $(x) $(y) $(z) positioned ~0.3 ~ ~0.3 positioned ~ ~0.9 ~ store result score #sample_clear scr_sk run function scr_sky:island/spawn/clearance with storage scr_sky:runtime work.safety_height
execute unless score #sample_clear scr_sk matches 1 run return 0
scoreboard players set #sample_clear scr_sk 0
$execute positioned $(x) $(y) $(z) positioned ~0.3 ~ ~0.3 positioned ~ ~1.79 ~ store result score #sample_clear scr_sk run function scr_sky:island/spawn/clearance with storage scr_sky:runtime work.safety_height
execute unless score #sample_clear scr_sk matches 1 run return 0
return 1
