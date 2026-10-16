execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_task:runtime {busy:1b} run return 0
execute store result score #open scr_tk run function scr_task:ui/context_open
scoreboard players set #result scr_tk 0
execute if score #open scr_tk matches 1 run data modify storage scr_task:runtime work.nav set from storage scr_task:runtime ui_request
execute if score #open scr_tk matches 1 store result score #result scr_tk run function scr_task:ui/render
function scr_task:core/context/close
data remove storage scr_task:runtime ui_request
return run scoreboard players get #result scr_tk
