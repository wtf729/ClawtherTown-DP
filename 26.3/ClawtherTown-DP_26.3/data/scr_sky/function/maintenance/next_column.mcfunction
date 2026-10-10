function scr_sky:maintenance/source_release
execute store result score #m_x scr_sk run data get storage scr_sky:maintenance job.x
execute store result score #m_z scr_sk run data get storage scr_sky:maintenance job.z
execute store result score #m_minx scr_sk run data get storage scr_sky:maintenance job.region.min_x
execute store result score #m_maxx scr_sk run data get storage scr_sky:maintenance job.region.max_x
execute store result score #m_maxz scr_sk run data get storage scr_sky:maintenance job.region.max_z
scoreboard players add #m_x scr_sk 16
execute if score #m_x scr_sk > #m_maxx scr_sk run scoreboard players add #m_z scr_sk 16
execute if score #m_x scr_sk > #m_maxx scr_sk run scoreboard players operation #m_x scr_sk = #m_minx scr_sk
execute store result storage scr_sky:maintenance job.x int 1 run scoreboard players get #m_x scr_sk
execute store result storage scr_sky:maintenance job.z int 1 run scoreboard players get #m_z scr_sk
data modify storage scr_sky:maintenance job.y set value -64
execute if score #m_z scr_sk > #m_maxz scr_sk run return run function scr_sky:maintenance/pass_finished
data modify storage scr_sky:maintenance job.phase set value "column_load"
data modify storage scr_sky:maintenance job.wait set value 0
