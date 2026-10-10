data modify storage scr_task:runtime work.dialog.body append value {"type":"minecraft:plain_message","width":420,"contents":{"translate":"gui.scr.task.rewards","fallback":"奖励","color":"gold"}}
data modify storage scr_task:runtime work.section set value {type:"minecraft:plain_message",width:420,contents:{"translate":"gui.scr.task.rewards_empty","fallback":"暂无奖励说明!",color:"gray"}}
execute if data storage scr_task:runtime work.ctx.ui.rewards run data modify storage scr_task:runtime work.section.contents set from storage scr_task:runtime work.ctx.ui.rewards
data modify storage scr_task:runtime work.dialog.body append from storage scr_task:runtime work.section
