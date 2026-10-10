execute if data storage scr_sky:jobs active run data modify storage scr_sky:runtime result.reason set value "busy"

execute if data storage scr_sky:jobs active run return 0

execute unless data storage scr_sky:runtime work{kind:"travel"} if data storage scr_sky:scan job run data modify storage scr_sky:runtime result.reason set value "busy"

execute unless data storage scr_sky:runtime work{kind:"travel"} if data storage scr_sky:scan job run return 0

execute if data storage scr_sky:runtime work{kind:"claim"} unless data storage scr_sky:config starter{ready:1b} run data modify storage scr_sky:runtime result.reason set value "starter_not_ready"
execute if data storage scr_sky:runtime work{kind:"claim"} unless data storage scr_sky:config starter{ready:1b} run return 0

execute unless data storage scr_sky:runtime work{kind:"claim"} unless data storage scr_sky:runtime work{kind:"reserve"} run function scr_sky:core/island/read with storage scr_sky:runtime work.ctx

execute if data storage scr_sky:runtime work{kind:"travel"} run return run function scr_sky:jobs/request_travel

execute if data storage scr_sky:runtime work{kind:"debug_place"} run return run function scr_sky:jobs/request_place

execute if data storage scr_sky:runtime work{kind:"transfer"} run return run function scr_sky:jobs/request_transfer

data remove storage scr_sky:runtime work.clock_stamp

data modify storage scr_sky:runtime work.clock_stamp set from storage scr_sky:runtime work.player.last_claim_started

function scr_sky:core/cooldown/read

execute if score #cd_remaining scr_sk matches 1.. run data modify storage scr_sky:runtime result.reason set value "claim_cooldown"

execute if score #cd_remaining scr_sk matches 1.. run return 0

data modify storage scr_sky:runtime work.ctx.target set from storage scr_sky:runtime work.ctx.key

function scr_sky:jobs/start
