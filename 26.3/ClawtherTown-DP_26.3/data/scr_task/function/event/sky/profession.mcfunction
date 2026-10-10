data modify storage scr_task:runtime work.ctx.field set from storage scr_task:runtime work.event_task.profession
data modify storage scr_task:runtime work.ctx.amount set value 1
function scr_task:core/progress/add with storage scr_task:runtime work.ctx
scoreboard players set #professions scr_tk 0
data modify storage scr_task:runtime work.profession_queue set from storage scr_task:runtime work.ctx.objectives[0].professions
function scr_task:event/sky/profession_loop
execute store result storage scr_task:runtime work.ctx.amount int 1 run scoreboard players get #professions scr_tk
data modify storage scr_task:runtime work.ctx.field set value "professions"
function scr_task:core/progress/set with storage scr_task:runtime work.ctx
