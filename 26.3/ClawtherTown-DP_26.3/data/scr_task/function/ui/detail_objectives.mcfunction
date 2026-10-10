data modify storage scr_task:runtime work.dialog.body append value {"type":"minecraft:plain_message","width":420,"contents":{"translate":"gui.scr.task.objectives","fallback":"目标","color":"aqua"}}
data modify storage scr_task:runtime work.section set value {type:"minecraft:plain_message",width:420,contents:{"translate":"gui.scr.task.objectives_empty","fallback":"请按照任务说明完成目标!",color:"white"}}
execute if data storage scr_task:runtime work.ctx.ui.objectives run data modify storage scr_task:runtime work.section.contents set from storage scr_task:runtime work.ctx.ui.objectives
data modify storage scr_task:runtime work.dialog.body append from storage scr_task:runtime work.section
execute if score #state scr_tk matches 2 if data storage scr_task:runtime work.ctx.goal run function scr_task:ui/detail_progress
execute if score #state scr_tk matches 2 if data storage scr_task:runtime work.ctx.subtasks[0] run function scr_task:ui/subtasks
