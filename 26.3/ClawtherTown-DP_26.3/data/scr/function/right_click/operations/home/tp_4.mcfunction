$execute unless score #cooldown homes.config matches 0 run scoreboard players operation @a[scores={scr_home_call=$(call)},limit=1] homes.cooldown = #cooldown homes.config
$execute as @a[scores={scr_home_group=$(call)}] at @s run function back:set_back
data modify entity @s Pos set from storage scr:home_call target.pos
data modify entity @s Rotation set from storage scr:home_call target.rot
$tp @e[scores={scr_home_group=$(call)}] @s
kill @s
