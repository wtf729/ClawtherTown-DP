# Recheck live state and membership every asynchronous phase; scanning remains allowed.
function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute store result score #travel_allowed scr_sk run function scr_sky:jobs/travel_allowed
execute unless score #travel_allowed scr_sk matches 1 run return 0
function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 1..3 run return 0
return 1
