execute store result score #travel_guard scr_sk run function scr_sky:jobs/travel_recovery/guard
execute unless score #travel_guard scr_sk matches 1 run return run function scr_sky:jobs/recover
# Shared destination adapter for Stored Spawn, Recovery Spawn and Emergency Drop.
scoreboard players set #spawn_safe scr_sk 0
execute if data storage scr_sky:jobs active{spawn_mode:"emergency"} in scr:sky store result score #spawn_safe scr_sk run function scr_sky:island/spawn/space with storage scr_sky:jobs active.spawn
execute unless data storage scr_sky:jobs active{spawn_mode:"emergency"} in scr:sky store result score #spawn_safe scr_sk run function scr_sky:island/spawn/safe with storage scr_sky:jobs active.spawn
execute unless score #spawn_safe scr_sk matches 1 run return run function scr_sky:jobs/recover
execute store result storage scr_sky:jobs active.travel_role int 1 run scoreboard players get #role scr_sk
scoreboard players set #arrived scr_sk 0
function scr_sky:jobs/travel_actor with storage scr_sky:jobs active
execute unless score #arrived scr_sk matches 1 run return run function scr_sky:jobs/recover
function scr_sky:jobs/travel_recovery/notice with storage scr_sky:jobs active
function scr_task:event/sky/visited
data modify storage scr_sky:jobs active.outcome set value "teleported"
function scr_sky:jobs/finish
