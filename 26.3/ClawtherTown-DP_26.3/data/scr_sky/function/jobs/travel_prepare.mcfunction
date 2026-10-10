execute store result score #travel_guard scr_sk run function scr_sky:jobs/travel_recovery/guard
execute unless score #travel_guard scr_sk matches 1 run return run function scr_sky:jobs/recover
# Transfer only owned tickets to the existing deferred-release queue before replacing the footprint.
data modify storage scr_sky:runtime work.release_queue set from storage scr_sky:jobs active.tickets
function scr_sky:jobs/release_loop
data modify storage scr_sky:jobs active.tickets set value []
execute unless data storage scr_sky:runtime work.island.spawn{configured:1b} run return run function scr_sky:jobs/travel_recovery/prepare
execute unless data storage scr_sky:runtime work.island.spawn.x run return run function scr_sky:jobs/travel_recovery/prepare
execute unless data storage scr_sky:runtime work.island.spawn.y run return run function scr_sky:jobs/travel_recovery/prepare
execute unless data storage scr_sky:runtime work.island.spawn.z run return run function scr_sky:jobs/travel_recovery/prepare
execute unless data storage scr_sky:runtime work.island.spawn.yaw run return run function scr_sky:jobs/travel_recovery/prepare
execute unless data storage scr_sky:runtime work.island.spawn.pitch run return run function scr_sky:jobs/travel_recovery/prepare
data modify storage scr_sky:jobs active.spawn set from storage scr_sky:runtime work.island.spawn
execute store result score #px scr_sk run data get storage scr_sky:runtime work.island.spawn.x 1
execute store result score #py scr_sk run data get storage scr_sky:runtime work.island.spawn.y 1
execute store result score #pz scr_sk run data get storage scr_sky:runtime work.island.spawn.z 1
function scr_sky:island/spawn/bounds
execute unless score #inside scr_sk matches 1 run return run function scr_sky:jobs/travel_recovery/prepare
scoreboard players operation #place_x scr_sk = #px scr_sk
scoreboard players operation #place_z scr_sk = #pz scr_sk
scoreboard players operation #endx scr_sk = #px scr_sk
scoreboard players operation #endz scr_sk = #pz scr_sk
scoreboard players remove #place_x scr_sk 1
scoreboard players remove #place_z scr_sk 1
scoreboard players add #endx scr_sk 1
scoreboard players add #endz scr_sk 1
function scr_sky:jobs/make_tickets
data modify storage scr_sky:jobs active.spawn_mode set value "stored"
data modify storage scr_sky:jobs active.after_load set value "travel"
data modify storage scr_sky:jobs active.phase set value "load"
data modify storage scr_sky:jobs active.wait set value 0
