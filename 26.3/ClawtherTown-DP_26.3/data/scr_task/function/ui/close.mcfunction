# A harmless UI-only operation; no Task lifecycle or player data changes.
execute unless entity @s[type=minecraft:player] run return 0
scoreboard players set @s task 0
scoreboard players set @s task_action 0
scoreboard players enable @s task
scoreboard players enable @s task_action
data remove storage scr_task:runtime ui_request
dialog clear @s
return 1
