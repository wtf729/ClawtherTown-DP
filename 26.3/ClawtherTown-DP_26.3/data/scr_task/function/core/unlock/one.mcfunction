function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 0 run return 0
data modify storage scr_task:runtime work.prereqs set from storage scr_task:runtime work.ctx.requires
scoreboard players set #prereqs scr_tk 1
execute if data storage scr_task:runtime work.prereqs[0] store result score #prereqs scr_tk run function scr_task:core/unlock/prerequisites
execute unless score #prereqs scr_tk matches 1 run return 0
execute store result score #hook scr_tk run function scr_task:core/hook {hook:"unlock"}
execute unless score #hook scr_tk matches 1 run return 0
function scr_task:core/state/create with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.state set value 1
function scr_task:core/state/write with storage scr_task:runtime work.ctx
return 1
