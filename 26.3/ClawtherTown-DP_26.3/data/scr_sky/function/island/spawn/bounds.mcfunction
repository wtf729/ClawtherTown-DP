scoreboard players set #inside scr_sk 1
execute store result score #minx scr_sk run data get storage scr_sky:runtime work.island.region.min_x 1
execute store result score #maxx scr_sk run data get storage scr_sky:runtime work.island.region.max_x 1
execute store result score #minz scr_sk run data get storage scr_sky:runtime work.island.region.min_z 1
execute store result score #maxz scr_sk run data get storage scr_sky:runtime work.island.region.max_z 1
execute store result score #miny scr_sk run data get storage scr_sky:islands geometry.min_y 1
execute store result score #maxy scr_sk run data get storage scr_sky:islands geometry.max_y 1
# A floor at the top legal block supports feet at max_y + 1; clearance handles the empty sky above.
scoreboard players add #maxy scr_sk 1
execute if score #px scr_sk < #minx scr_sk run scoreboard players set #inside scr_sk 0
execute if score #px scr_sk > #maxx scr_sk run scoreboard players set #inside scr_sk 0
execute if score #pz scr_sk < #minz scr_sk run scoreboard players set #inside scr_sk 0
execute if score #pz scr_sk > #maxz scr_sk run scoreboard players set #inside scr_sk 0
execute if score #py scr_sk <= #miny scr_sk run scoreboard players set #inside scr_sk 0
execute if score #py scr_sk > #maxy scr_sk run scoreboard players set #inside scr_sk 0
