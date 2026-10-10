# OP debug entry: delete only this player's Task record, then run normal initialization.
execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_task:runtime {busy:1b} run return 0
data modify storage scr_task:runtime busy set value 1b
data modify storage scr_task:runtime work set value {ctx:{}}
data remove storage scr_task:runtime result
# Resolve without context/open: it initializes before deletion and would hide the missing-record case.
function scr_uuid:resolve
execute if data storage scr_uuid:runtime result.key run data modify storage scr_task:runtime work.ctx.key set from storage scr_uuid:runtime result.key
data modify storage scr_task:runtime work.key set from storage scr_task:runtime work.ctx.key
scoreboard players set #reset_all_result scr_tk 0
execute if data storage scr_task:runtime work.ctx.key store result score #reset_all_result scr_tk run function scr_task:debug/reset_all_task_bound with storage scr_task:runtime work.ctx
function scr_task:core/context/close
return run scoreboard players get #reset_all_result scr_tk
