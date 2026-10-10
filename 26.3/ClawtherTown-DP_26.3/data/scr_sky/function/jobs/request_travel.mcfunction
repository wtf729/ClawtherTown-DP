execute store result score #travel_allowed scr_sk run function scr_sky:jobs/travel_allowed
execute unless score #travel_allowed scr_sk matches 1 run data modify storage scr_sky:runtime result.reason set value "no_island"
execute unless score #travel_allowed scr_sk matches 1 run return 0
function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 1..3 run data modify storage scr_sky:runtime result.reason set value "permission"
execute unless score #role scr_sk matches 1..3 run return 0
function scr_sky:jobs/start
data modify storage scr_sky:jobs active.spawn set from storage scr_sky:runtime work.island.spawn
data modify storage scr_sky:jobs active.phase set value "travel_prepare"
data modify storage scr_sky:jobs active.wait set value 0
