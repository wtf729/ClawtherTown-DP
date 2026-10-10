scoreboard players set #spawn_safe scr_sk 0
execute in scr:sky store result score #spawn_safe scr_sk run function scr_sky:hub/spawn_safe with storage scr_sky:jobs active.spawn
execute unless score #spawn_safe scr_sk matches 1 run return run function scr_sky:jobs/recover
scoreboard players set #arrived scr_sk 0
function scr_sky:jobs/travel_actor with storage scr_sky:jobs active
execute unless score #arrived scr_sk matches 1 run return run function scr_sky:jobs/recover
data modify storage scr_sky:jobs active.outcome set value "teleported"
function scr_sky:jobs/finish
