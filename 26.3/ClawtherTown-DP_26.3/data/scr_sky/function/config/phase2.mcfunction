# structure_origin_y is the only Starter world-height authority; all offsets remain template-relative.
data modify storage scr_sky:config starter set value {ready:1b,template:"scr_sky:starter",sha256:"7908cbfb96e482cd2064fcd881570c2421c6ee09f08d78b36a12ed9581cec580",size:{x:9,y:12,z:9},anchor_local_x:4,anchor_local_z:4,structure_origin_y:128,spawn_local_y:5,spawn_offset_x:-2.5d,spawn_offset_z:0.5d,yaw:-90.0f,pitch:0.0f,chest:{x:3,y:5,z:4}}
# Derived compatibility cache used by build_default; never configure an independent absolute spawn Y.
execute store result score #starter_origin_y scr_sk run data get storage scr_sky:config starter.structure_origin_y
execute store result score #starter_spawn_dy scr_sk run data get storage scr_sky:config starter.spawn_local_y
scoreboard players operation #starter_spawn_dy scr_sk += #starter_origin_y scr_sk
execute store result storage scr_sky:config starter.spawn_y double 1 run scoreboard players get #starter_spawn_dy scr_sk
execute unless data storage scr_sky:config claim run data modify storage scr_sky:config claim set value {cooldown_ticks:12000}
execute unless data storage scr_sky:config reset run data modify storage scr_sky:config reset set value {cooldown_ticks:12000,executor_enabled:0b}
# Phase 3: owner-confirmed maintenance validates safe Hub and region before any mutation.
data modify storage scr_sky:config reset.executor_enabled set value 1b
data modify storage scr_sky:config delete set value {executor_enabled:1b}
execute unless data storage scr_sky:islands meta.free_ids run data modify storage scr_sky:islands meta.free_ids set value []
execute unless data storage scr_sky:players keys run data modify storage scr_sky:players keys set value []
execute unless data storage scr_sky:players indexed run data modify storage scr_sky:players indexed set value {}
execute unless data storage scr_sky:invites pending run data modify storage scr_sky:invites pending set value []
function scr_sky:migration/seed_keys
