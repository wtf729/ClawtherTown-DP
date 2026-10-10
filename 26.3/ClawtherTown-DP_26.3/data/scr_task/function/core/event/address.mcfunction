data modify storage scr_task:runtime work.ctx set value {}
data modify storage scr_task:runtime work.key set from storage scr_task:runtime work.address.key
execute store result score #selected scr_tk run function scr_task:core/select with storage scr_task:runtime work.address
execute unless score #selected scr_tk matches 1 run return 0
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
data modify storage scr_task:runtime work.ctx.unique set from storage scr_task:runtime work.address.unique
data modify storage scr_task:runtime work.ctx.field set from storage scr_task:runtime work.address.field
function scr_task:core/event/unique with storage scr_task:runtime work.ctx
scoreboard players set #address_online scr_tk 0
# Rare social callbacks: find only the addressed UUID; never poll players or tasks each tick.
execute as @a at @s run function scr_task:core/event/online with storage scr_task:runtime work.ctx
execute if score #address_online scr_tk matches 1 run return 1
execute store result score #social_complete scr_tk run function scr_task:core/hook {hook:"check_complete"}
execute unless score #social_complete scr_tk matches 1 run return 1
data modify storage scr_task:runtime work.state set value 3
function scr_task:core/state/write with storage scr_task:runtime work.ctx
function scr_task:core/progress/clear with storage scr_task:runtime work.ctx
function scr_task:core/event/deferred with storage scr_task:runtime work.ctx
return 1
