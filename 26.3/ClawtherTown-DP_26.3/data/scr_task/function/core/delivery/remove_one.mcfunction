$execute store result storage scr_task:players players."$(key)".tasks.$(group).$(name).deliveries.$(delivery_goal).cursor int 1 run scoreboard players get #delivery_cursor scr_tk
scoreboard players set #removed scr_tk 0
$execute if data storage scr_task:runtime work.delivery{consume:1b} store result score #removed scr_tk run clear @s $(item) $(count)
$execute store result storage scr_task:players players."$(key)".tasks.$(group).$(name).deliveries.$(delivery_goal).items[$(cursor)].removed int 1 run scoreboard players get #removed scr_tk
$execute unless score #removed scr_tk matches $(count) run return 0
return 1
