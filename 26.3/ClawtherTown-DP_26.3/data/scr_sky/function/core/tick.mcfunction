# Remove the teleport-only fall guard once vanilla has cleared the accumulated distance.
execute as @a[tag=scr_sky.arrival_fall_guard] run function scr_sky:travel/finish_arrival
execute if data storage scr_sky:scan job run function scr_sky:scan/tick
execute if data storage scr_sky:maintenance job run function scr_sky:maintenance/tick
execute if data storage scr_sky:jobs active run function scr_sky:jobs/tick
# After both workers, release only original tickets with no active borrower.
function scr_sky:jobs/travel_tickets/tick
scoreboard players add @a scr_sk_leave 0
execute as @a at @s unless score @s scr_sk_seen = @s scr_sk_leave run function scr_sky:player/join
function scr_sky:ui/tick
function scr_sky:hub/tick
execute if data storage scr_sky:cooldown_debug work run function scr_sky:debug/cooldowns/tick
scoreboard players enable @a sky
execute as @a[scores={scr_pf_init=1,scr_pf_cur=5,scr_pf_lock=0}] at @s if predicate scr:location/in_sky run function scr_sky:role/update
execute as @a[scores={scr_sk_mode=1,scr_pf_init=1,scr_pf_cur=5,scr_pf_lock=0}] at @s unless predicate scr:location/in_sky if predicate scr_profile:profile/sky run function scr_sky:role/leave_main
execute as @a[scores={scr_sk_mode=1,scr_pf_init=1,scr_pf_lock=0}] at @s unless predicate scr_profile:profile/sky run function scr_sky:role/leave_group
