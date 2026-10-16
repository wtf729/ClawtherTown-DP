# Task renders public definition rows only; never touches Mail request/runtime/players.
data modify storage scr_task:runtime work.dialog.body append value {type:"minecraft:plain_message",width:420,contents:{translate:"gui.scr.task.rewards",fallback:"奖励",color:"gold"}}
function scr_mail:ui/item_name/ensure
execute store result score #preview_ok scr_tk run function scr_mail:ui/reward/task_preview with storage scr_task:runtime work.ctx
execute if score #preview_ok scr_tk matches 1 run data modify storage scr_task:runtime work.dialog.body append from storage scr_mail:preview work.rows[]
execute unless score #preview_ok scr_tk matches 1 run data modify storage scr_task:runtime work.dialog.body append value {type:"minecraft:plain_message",width:420,contents:{translate:"gui.scr.mail.reward.unavailable",fallback:"暂时无法查看此奖励的详细信息!",color:"gray"}}
data remove storage scr_mail:preview work
