data modify storage scr_task:runtime work.profession_ctx set from storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.profession_ctx.field set from storage scr_task:runtime work.profession_queue[0]
execute store result score #profession_count scr_tk run function scr_task:core/progress/read with storage scr_task:runtime work.profession_ctx
execute if score #profession_count scr_tk matches 10.. run scoreboard players add #professions scr_tk 1
data remove storage scr_task:runtime work.profession_queue[0]
execute if data storage scr_task:runtime work.profession_queue[0] run return run function scr_task:event/sky/profession_loop
return 1
