execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_task:runtime {busy:1b} run return 0
execute store result score #open scr_tk run function scr_task:core/context/open
scoreboard players set #route scr_tk 0
execute if score #open scr_tk matches 1 run execute store result storage scr_task:runtime work.ctx.token int 1 run scoreboard players get @s task_action
scoreboard players set @s task_action 0
scoreboard players enable @s task_action
execute if score #open scr_tk matches 1 store result score #route scr_tk run function scr_task:ui/action_lookup with storage scr_task:runtime work.ctx
data remove storage scr_task:runtime ui_request
execute if score #route scr_tk matches 1 run data modify storage scr_task:runtime ui_request set from storage scr_task:runtime work.action
execute if score #open scr_tk matches 1 run function scr_task:ui/session/reset with storage scr_task:runtime work.ctx
function scr_task:core/context/close
execute unless score #route scr_tk matches 1 run return run function scr_task:ui/open
execute if data storage scr_task:runtime ui_request{view:"close"} run return run function scr_task:ui/close
# Release the UI context before invoking the existing public lifecycle APIs.
execute if data storage scr_task:runtime ui_request{view:"start"} run function scr_task:ui/operate_start with storage scr_task:runtime ui_request
execute if data storage scr_task:runtime ui_request{view:"submit"} run function scr_task:ui/operate_submit with storage scr_task:runtime ui_request
execute if data storage scr_task:runtime ui_request{view:"deliver"} run function scr_task:ui/operate_deliver with storage scr_task:runtime ui_request
return run function scr_task:ui/open_request
