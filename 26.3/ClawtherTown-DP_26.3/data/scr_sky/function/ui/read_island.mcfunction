execute store result score #ui_read_ok scr_sk run function scr_sky:api/inspect with storage scr_sky:ui request
execute unless score #ui_read_ok scr_sk matches 1 run return 0
execute unless data storage scr_sky:runtime result{ok:1b} run return 0
execute unless data storage scr_sky:runtime result.island{state:"active"} run return 0
execute store result score #ui_role scr_sk run data get storage scr_sky:runtime result.role
execute unless score #ui_role scr_sk matches 1..3 run return 0
data modify storage scr_sky:ui work.island set from storage scr_sky:runtime result.island
data modify storage scr_sky:ui work.role set from storage scr_sky:runtime result.role
return 1
