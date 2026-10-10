execute unless data storage scr_sky:jobs active{phase:"travel_recovery_search"} run return 0
execute unless score #recovery_budget scr_sk matches 1.. run return 0
scoreboard players remove #recovery_budget scr_sk 1
function scr_sky:jobs/travel_recovery/candidate with storage scr_sky:jobs active.search
execute if score #spawn_safe scr_sk matches 1 run return run function scr_sky:jobs/travel_recovery/found
execute store result score #recovery_y scr_sk run data get storage scr_sky:jobs active.search.y
execute store result score #recovery_bottom scr_sk run data get storage scr_sky:jobs active.search.bottom
scoreboard players remove #recovery_y scr_sk 1
execute store result storage scr_sky:jobs active.search.y int 1 run scoreboard players get #recovery_y scr_sk
execute if score #recovery_y scr_sk < #recovery_bottom scr_sk run function scr_sky:jobs/travel_recovery/next_column
execute unless data storage scr_sky:jobs active{phase:"travel_recovery_search"} run return 0
return run function scr_sky:jobs/travel_recovery/step
