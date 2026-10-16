execute as @a[scores={tower=1..}] at @s run function scr_tower:open
execute as @a[scores={tower_action=1..}] at @s run function scr_tower:ui/dispatch
scoreboard players set @a tower 0
scoreboard players set @a tower_action 0
scoreboard players enable @a tower
scoreboard players enable @a tower_action
