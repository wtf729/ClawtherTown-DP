execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_task:runtime {busy:1b} run return 0
execute store result score #open scr_tk run function scr_task:core/context/open
scoreboard players set #delivery_result scr_tk 0
$execute if score #open scr_tk matches 1 store result score #delivery_result scr_tk run function scr_task:api/deliver_bound {id:"$(id)",goal:"$(goal)"}
function scr_task:core/context/close
return run scoreboard players get #delivery_result scr_tk
