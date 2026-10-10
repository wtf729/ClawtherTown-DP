data modify storage scr_task:runtime work.ui_delivery_queue set from storage scr_task:runtime work.ctx.deliveries
execute if data storage scr_task:runtime work.ui_delivery_queue[0] run function scr_task:ui/delivery/loop
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute if data storage scr_task:runtime work.record.delivery_lock run data modify storage scr_task:runtime work.dialog.body append value {type:"minecraft:plain_message",width:420,contents:{translate:"message.scr.task.delivery.recovery",fallback:"这次交付需要管理员核查，请勿重复交付。",color:"red"}}
