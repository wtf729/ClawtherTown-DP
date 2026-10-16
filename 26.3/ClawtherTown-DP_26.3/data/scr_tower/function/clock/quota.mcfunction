execute store result score #clock scr_tw run function scr_tower:clock/read
execute unless score #clock scr_tw matches 1 run return 0
execute unless data storage scr_tower:runtime p{cycle_source:"scr_runtime_day"} run function scr_tower:clock/migrate
execute unless data storage scr_tower:runtime p{cycle_source:"scr_runtime_day"} run return 0
execute store result score #pday scr_tw run data get storage scr_tower:runtime p.day
execute if score #pday scr_tw > #day scr_tw run return 0
return 1
