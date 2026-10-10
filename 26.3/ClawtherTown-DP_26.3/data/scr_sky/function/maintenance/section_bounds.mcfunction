# The historic function/context names remain; bounds now describe one 16x16x64 slab.
scoreboard players set #m_bounds scr_sk 0
execute unless data storage scr_sky:maintenance job{slab_height:64} run return 0
execute store result score #m_x scr_sk run data get storage scr_sky:maintenance job.x
execute store result score #m_y scr_sk run data get storage scr_sky:maintenance job.y
execute store result score #m_z scr_sk run data get storage scr_sky:maintenance job.z
execute store result score #m_minx scr_sk run data get storage scr_sky:maintenance job.region.min_x
execute store result score #m_maxx scr_sk run data get storage scr_sky:maintenance job.region.max_x
execute store result score #m_minz scr_sk run data get storage scr_sky:maintenance job.region.min_z
execute store result score #m_maxz scr_sk run data get storage scr_sky:maintenance job.region.max_z
execute if score #m_x scr_sk < #m_minx scr_sk run return 0
execute if score #m_z scr_sk < #m_minz scr_sk run return 0
execute unless score #m_y scr_sk matches -64..256 run return 0
# X/Z and Y cursors must remain aligned; refuse malformed or legacy section cursors.
scoreboard players set #m_align scr_sk 16
scoreboard players operation #m_remainder scr_sk = #m_x scr_sk
scoreboard players operation #m_remainder scr_sk %= #m_align scr_sk
execute unless score #m_remainder scr_sk matches 0 run return 0
scoreboard players operation #m_remainder scr_sk = #m_z scr_sk
scoreboard players operation #m_remainder scr_sk %= #m_align scr_sk
execute unless score #m_remainder scr_sk matches 0 run return 0
scoreboard players set #m_align scr_sk 64
scoreboard players operation #m_remainder scr_sk = #m_y scr_sk
scoreboard players operation #m_remainder scr_sk %= #m_align scr_sk
execute unless score #m_remainder scr_sk matches 0 run return 0
data modify storage scr_sky:runtime work.section set value {}
execute store result storage scr_sky:runtime work.section.x int 1 run scoreboard players get #m_x scr_sk
execute store result storage scr_sky:runtime work.section.y int 1 run scoreboard players get #m_y scr_sk
execute store result storage scr_sky:runtime work.section.z int 1 run scoreboard players get #m_z scr_sk
scoreboard players add #m_x scr_sk 15
scoreboard players add #m_y scr_sk 63
scoreboard players add #m_z scr_sk 15
execute if score #m_x scr_sk > #m_maxx scr_sk run return 0
execute if score #m_z scr_sk > #m_maxz scr_sk run return 0
execute store result storage scr_sky:runtime work.section.xe int 1 run scoreboard players get #m_x scr_sk
execute store result storage scr_sky:runtime work.section.ye int 1 run scoreboard players get #m_y scr_sk
execute store result storage scr_sky:runtime work.section.ze int 1 run scoreboard players get #m_z scr_sk
scoreboard players set #m_bounds scr_sk 1
