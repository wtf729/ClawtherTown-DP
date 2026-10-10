scoreboard players set #hub scr_sk 1
execute store result score #hminx scr_sk run data get storage scr_sky:islands geometry.hub_min_x 1
execute store result score #hmaxx scr_sk run data get storage scr_sky:islands geometry.hub_max_x 1
execute store result score #hminz scr_sk run data get storage scr_sky:islands geometry.hub_min_z 1
execute store result score #hmaxz scr_sk run data get storage scr_sky:islands geometry.hub_max_z 1
execute if score #px scr_sk < #hminx scr_sk run scoreboard players set #hub scr_sk 0
execute if score #px scr_sk > #hmaxx scr_sk run scoreboard players set #hub scr_sk 0
execute if score #pz scr_sk < #hminz scr_sk run scoreboard players set #hub scr_sk 0
execute if score #pz scr_sk > #hmaxz scr_sk run scoreboard players set #hub scr_sk 0
