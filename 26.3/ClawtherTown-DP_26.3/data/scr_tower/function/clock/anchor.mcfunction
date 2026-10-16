# Snapshot source epoch once; this is a migration anchor, not a timer.
execute if data storage scr_tower:clock production_anchor run return 1
execute store result score #clock scr_tw run function scr_tower:clock/read
execute unless score #clock scr_tw matches 1 run return 0
data modify storage scr_tower:clock production_anchor set value {source:"scr_runtime_day",day:0}
execute store result storage scr_tower:clock production_anchor.day int 1 run scoreboard players get #day scr_tw
return 1
