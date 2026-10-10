execute store result score #id scr_sk run data get storage scr_sky:runtime work.ctx.id 1
function scr_sky:island/coordinates
data modify storage scr_sky:runtime work.island.spawn set value {configured:1b,custom:0b}
data modify storage scr_sky:runtime work.island.spawn.y set from storage scr_sky:config starter.spawn_y
data modify storage scr_sky:runtime work.island.spawn.yaw set from storage scr_sky:config starter.yaw
data modify storage scr_sky:runtime work.island.spawn.pitch set from storage scr_sky:config starter.pitch
execute store result score #offset_x2 scr_sk run data get storage scr_sky:config starter.spawn_offset_x 2
execute store result score #offset_z2 scr_sk run data get storage scr_sky:config starter.spawn_offset_z 2
execute store result score #sx2 scr_sk run data get storage scr_sky:runtime result.center.x 1
execute store result score #sz2 scr_sk run data get storage scr_sky:runtime result.center.z 1
scoreboard players set #two_spawn scr_sk 2
scoreboard players operation #sx2 scr_sk *= #two_spawn scr_sk
scoreboard players operation #sz2 scr_sk *= #two_spawn scr_sk
scoreboard players operation #sx2 scr_sk += #offset_x2 scr_sk
scoreboard players operation #sz2 scr_sk += #offset_z2 scr_sk
execute store result storage scr_sky:runtime work.island.spawn.x double 0.5 run scoreboard players get #sx2 scr_sk
execute store result storage scr_sky:runtime work.island.spawn.z double 0.5 run scoreboard players get #sz2 scr_sk
