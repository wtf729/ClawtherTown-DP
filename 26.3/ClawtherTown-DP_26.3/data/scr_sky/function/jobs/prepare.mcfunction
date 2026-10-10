function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime work.island run return run function scr_sky:jobs/recover
execute store result score #id scr_sk run data get storage scr_sky:runtime work.ctx.id 1
function scr_sky:island/coordinates
data modify storage scr_sky:jobs active.place set value {}
data modify storage scr_sky:jobs active.place.y set from storage scr_sky:config starter.structure_origin_y
execute store result score #place_x scr_sk run data get storage scr_sky:runtime result.center.x 1
execute store result score #place_z scr_sk run data get storage scr_sky:runtime result.center.z 1
execute store result score #ax scr_sk run data get storage scr_sky:config starter.anchor_local_x 1
execute store result score #az scr_sk run data get storage scr_sky:config starter.anchor_local_z 1
scoreboard players operation #place_x scr_sk -= #ax scr_sk
scoreboard players operation #place_z scr_sk -= #az scr_sk
execute store result storage scr_sky:jobs active.place.x int 1 run scoreboard players get #place_x scr_sk
execute store result storage scr_sky:jobs active.place.z int 1 run scoreboard players get #place_z scr_sk
data modify storage scr_sky:runtime work.island.state set value "placing_starter"
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
# Bounds must contain the entire original 9x12x9 template.
execute store result score #minx scr_sk run data get storage scr_sky:runtime work.island.region.min_x 1
execute store result score #maxx scr_sk run data get storage scr_sky:runtime work.island.region.max_x 1
execute store result score #minz scr_sk run data get storage scr_sky:runtime work.island.region.min_z 1
execute store result score #maxz scr_sk run data get storage scr_sky:runtime work.island.region.max_z 1
execute if score #place_x scr_sk < #minx scr_sk run return run function scr_sky:jobs/recover
execute if score #place_z scr_sk < #minz scr_sk run return run function scr_sky:jobs/recover
scoreboard players operation #endx scr_sk = #place_x scr_sk
scoreboard players operation #endz scr_sk = #place_z scr_sk
scoreboard players add #endx scr_sk 8
scoreboard players add #endz scr_sk 8
execute if score #endx scr_sk > #maxx scr_sk run return run function scr_sky:jobs/recover
execute if score #endz scr_sk > #maxz scr_sk run return run function scr_sky:jobs/recover
function scr_sky:jobs/make_tickets
data modify storage scr_sky:jobs active.after_load set value "place"
data modify storage scr_sky:jobs active.phase set value "load"
data modify storage scr_sky:jobs active.wait set value 0
