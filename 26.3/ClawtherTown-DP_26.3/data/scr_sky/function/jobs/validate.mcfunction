function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime work.island{state:"validating"} run return run function scr_sky:jobs/recover
function scr_sky:island/spawn/build_default
scoreboard players set #spawn_safe scr_sk 0
execute in scr:sky store result score #spawn_safe scr_sk run function scr_sky:island/spawn/safe with storage scr_sky:runtime work.island.spawn
execute unless score #spawn_safe scr_sk matches 1 run data modify storage scr_sky:jobs active.error set value "starter_spawn_unsafe"
execute unless score #spawn_safe scr_sk matches 1 run return run function scr_sky:jobs/recover
data modify storage scr_sky:runtime work.island.state set value "active"
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
function scr_sky:jobs/assign_owner with storage scr_sky:runtime work.ctx
# Refresh player from authority to preserve a valid cooperative Primary selected during creation.
function scr_sky:player/init with storage scr_sky:runtime work.ctx
function scr_sky:primary/resolve
execute if data storage scr_sky:runtime work.player{primary_island_id:0} run data modify storage scr_sky:runtime work.player.primary_island_id set from storage scr_sky:jobs active.id
function scr_sky:player/save with storage scr_sky:runtime work.ctx
data modify storage scr_sky:jobs active.outcome set value "claimed"
function scr_sky:jobs/finish
