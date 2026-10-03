# Reset only this invocation. Never remove/recreate an objective.
$scoreboard players reset @e[scores={scr_home_group=$(call)}] scr_home_group
$kill @e[type=minecraft:marker,tag=scr.home_destination,nbt={data:{call:$(call)}}]
scoreboard players reset @s scr_home_call
scoreboard players reset @s scr_home_radius
data remove storage scr:home_call target
data remove storage scr:home_call dimension_check
