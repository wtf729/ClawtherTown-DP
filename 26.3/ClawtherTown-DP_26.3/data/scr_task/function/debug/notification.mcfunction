# OP function preview: {id:"guardian/g_01",kind:"started"}. No Task/player data writes.
execute unless entity @s[type=minecraft:player] run return 0
execute if data storage scr_task:runtime {busy:1b} run return 0
data modify storage scr_task:runtime busy set value 1b
data modify storage scr_task:runtime work set value {ctx:{}}
function scr_uuid:resolve
data modify storage scr_task:runtime work.key set from storage scr_uuid:runtime result.key
scoreboard players set #notice_result scr_tk 0
$execute store result score #selected scr_tk run function scr_task:core/select {id:"$(id)"}
$execute if score #selected scr_tk matches 1 store result score #notice_result scr_tk run function scr_task:ui/notification/show {kind:"$(kind)"}
function scr_task:core/context/close
return run scoreboard players get #notice_result scr_tk
