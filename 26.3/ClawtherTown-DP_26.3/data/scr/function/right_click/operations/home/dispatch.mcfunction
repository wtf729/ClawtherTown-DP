$execute unless entity @e[type=minecraft:marker,tag=scr.home_destination,nbt={data:{call:$(call)}},limit=1] run return run function scr:right_click/operations/home/missing_destination
# Mark only this call's nearby entities, after its destination has been resolved.
execute if score @s scr_home_radius matches 10 at @s run scoreboard players operation @e[distance=..1,type=!#scr:tp_home_banned] scr_home_group = @s scr_home_call
execute if score @s scr_home_radius matches 15 at @s run scoreboard players operation @e[distance=..1.5,type=!#scr:tp_home_banned] scr_home_group = @s scr_home_call
function scr:advancements/technical/teleport_used
$execute as @e[type=minecraft:marker,tag=scr.home_destination,nbt={data:{call:$(call)}},limit=1] run function scr:right_click/operations/home/tp_4 with storage scr:home_call
