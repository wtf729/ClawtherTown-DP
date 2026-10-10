$data modify storage scr_task:runtime work.delivery_row set value {type:"minecraft:plain_message",width:420,contents:{translate:"gui.scr.task.delivery.progress",fallback:"%1$s %2$s/%3$s",with:[{},"$(have)","$(count)"],color:"white"}}
data modify storage scr_task:runtime work.delivery_row.contents.with[0] set from storage scr_task:runtime work.ui_delivery_item.label
data modify storage scr_task:runtime work.dialog.body append from storage scr_task:runtime work.delivery_row
