# Validate the canonical full region before saving any destructive request.
execute store result score #id scr_sk run data get storage scr_sky:runtime work.ctx.id
execute unless score #id scr_sk matches 1.. run data modify storage scr_sky:runtime result.reason set value "invalid_id"
execute unless score #id scr_sk matches 1.. run return 0
execute if score #id scr_sk > #g_max_id scr_sk run data modify storage scr_sky:runtime result.reason set value "invalid_id"
execute if score #id scr_sk > #g_max_id scr_sk run return 0
function scr_sky:island/coordinates
execute store success score #m_changed scr_sk run data modify storage scr_sky:runtime work.region set from storage scr_sky:runtime work.island.region
execute if score #m_changed scr_sk matches 1 run data modify storage scr_sky:runtime result.reason set value "region_mismatch"
execute if score #m_changed scr_sk matches 1 run return 0
execute unless data storage scr_sky:config hub{ready:1b} run data modify storage scr_sky:runtime result.reason set value "hub_required"
execute unless data storage scr_sky:config hub{ready:1b} run return 0
execute unless data storage scr_sky:runtime work.island.region{min_y:-64,max_y:319} run data modify storage scr_sky:runtime result.reason set value "region_mismatch"
execute unless data storage scr_sky:runtime work.island.region{min_y:-64,max_y:319} run return 0
data modify storage scr_sky:maintenance job set value {phase:"hub_load",wait:0,cleared:0,verified:0,slab_height:64,slab_retries:0,retry_attempts:0,hub_tickets:[{x:-1,z:-1},{x:0,z:-1},{x:-1,z:0},{x:0,z:0},{x:-1048576,z:-1048576}]}
data modify storage scr_sky:maintenance job.uuid set from entity @s UUID
data modify storage scr_sky:maintenance job.kind set from storage scr_sky:runtime work.maintenance_kind
data modify storage scr_sky:maintenance job.id set from storage scr_sky:runtime work.ctx.id
data modify storage scr_sky:maintenance job.key set from storage scr_sky:runtime work.ctx.key
data modify storage scr_sky:maintenance job.region set from storage scr_sky:runtime work.island.region
data modify storage scr_sky:maintenance job.original set from storage scr_sky:runtime work.island
data modify storage scr_sky:runtime result.ok set value 1b
data modify storage scr_sky:runtime result.pending set value 1b
