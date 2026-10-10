execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_task:runtime {busy:1b} run return 0
execute store result score #open scr_tk run function scr_task:core/context/open
$execute if score #open scr_tk matches 1 run function scr_task:event/sky/dispatch {event:"$(event)"}
function scr_task:core/context/close
return 1
