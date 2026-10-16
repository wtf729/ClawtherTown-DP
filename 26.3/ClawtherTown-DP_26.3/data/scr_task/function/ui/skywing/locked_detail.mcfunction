data modify storage scr_task:runtime work.section set value {type:"minecraft:plain_message",width:420,contents:{translate:"gui.scr.task.sky.chapter_locked",fallback:"未解锁",color:"gray"}}
execute if data storage scr_task:runtime work.ctx.ui.unlock_hint run data modify storage scr_task:runtime work.section.contents set from storage scr_task:runtime work.ctx.ui.unlock_hint
data modify storage scr_task:runtime work.dialog.body append from storage scr_task:runtime work.section
function scr_task:ui/objectives/show
function scr_task:ui/rewards/show
