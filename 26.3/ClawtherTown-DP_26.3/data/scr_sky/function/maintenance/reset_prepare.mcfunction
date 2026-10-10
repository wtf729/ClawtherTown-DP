execute store result score #m_guard scr_sk run function scr_sky:maintenance/guard
execute unless score #m_guard scr_sk matches 1 run return run function scr_sky:maintenance/recovery
execute store result score #id scr_sk run data get storage scr_sky:maintenance job.id
function scr_sky:island/coordinates
execute store result score #m_x scr_sk run data get storage scr_sky:runtime result.center.x
execute store result score #m_z scr_sk run data get storage scr_sky:runtime result.center.z
execute store result score #m_anchor_x scr_sk run data get storage scr_sky:config starter.anchor_local_x
execute store result score #m_anchor_z scr_sk run data get storage scr_sky:config starter.anchor_local_z
scoreboard players operation #m_x scr_sk -= #m_anchor_x scr_sk
scoreboard players operation #m_z scr_sk -= #m_anchor_z scr_sk
data modify storage scr_sky:maintenance job.place set value {}
data modify storage scr_sky:maintenance job.place.y set from storage scr_sky:config starter.structure_origin_y
execute store result storage scr_sky:maintenance job.place.x int 1 run scoreboard players get #m_x scr_sk
execute store result storage scr_sky:maintenance job.place.z int 1 run scoreboard players get #m_z scr_sk
data modify storage scr_sky:maintenance job.starter_tickets set value []
function scr_sky:maintenance/starter_tickets with storage scr_sky:maintenance job.place
data modify storage scr_sky:maintenance job.phase set value "reset_place"
data modify storage scr_sky:maintenance job.wait set value 0
