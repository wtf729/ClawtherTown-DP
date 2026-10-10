scoreboard objectives add scr_sk dummy

scoreboard objectives add scr_sk_id dummy

scoreboard objectives add scr_sk_role dummy

scoreboard objectives add scr_sk_mode dummy

scoreboard objectives add sky trigger
scoreboard objectives add is trigger
scoreboard objectives add sky_action trigger
scoreboard objectives add scr_sk_leave minecraft.custom:minecraft.leave_game
scoreboard objectives add scr_sk_seen dummy
scoreboard players reset @a scr_sk_seen
scoreboard players add #sky_ui_seq scr_sk 0

data remove storage scr_sky:runtime busy

data remove storage scr_sky:runtime work

execute unless data storage scr_sky:islands meta run data modify storage scr_sky:islands meta set value {version:1,next_id:1}

execute unless data storage scr_sky:islands records run data modify storage scr_sky:islands records set value {}

execute unless data storage scr_sky:players players run data modify storage scr_sky:players players set value {}

function scr_sky:config/defaults
function scr_sky:config/phase2
function scr_sky:config/phase3
function scr_sky:config/spawn_recovery
execute if data storage scr_sky:maintenance job run function scr_sky:maintenance/on_reload
function scr_sky:ui/load
# Any interrupted operation is parked, not replayed across /reload.
execute if data storage scr_sky:jobs active run function scr_sky:jobs/reload

scoreboard players set #modtime scr_sk 2147483647

# Never resume a partial sum across reload/restart.

execute if data storage scr_sky:scan job run data modify storage scr_sky:scan job.phase set value "abort"

execute if data storage scr_sky:scan job run data modify storage scr_sky:scan job.error set value "reload_or_restart"

scoreboard players enable @a sky
