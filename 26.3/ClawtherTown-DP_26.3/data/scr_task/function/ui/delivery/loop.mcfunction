data modify storage scr_task:runtime work.delivery set from storage scr_task:runtime work.ui_delivery_queue[0]
data modify storage scr_task:runtime work.ctx.goal set from storage scr_task:runtime work.delivery.id
scoreboard players set #ui_done scr_tk 0
execute store result score #ui_done scr_tk run function scr_task:core/delivery/done with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.dialog.body append value {type:"minecraft:plain_message",width:420,contents:{text:""}}
data modify storage scr_task:runtime work.dialog.body[-1].contents set from storage scr_task:runtime work.delivery.label
data modify storage scr_task:runtime work.ui_delivery_items set from storage scr_task:runtime work.delivery.items
function scr_task:ui/delivery/items
data modify storage scr_task:runtime work.button set value {label:{text:""},width:200}
execute if score #ui_done scr_tk matches 1 run data modify storage scr_task:runtime work.button.label set value {"translate":"gui.scr.task.delivery.done","fallback":"已交付","color":"green"}
execute if score #ui_done scr_tk matches 1 run data modify storage scr_task:runtime work.dialog.actions append from storage scr_task:runtime work.button
execute unless score #ui_done scr_tk matches 1 run function scr_task:ui/delivery/button
data remove storage scr_task:runtime work.ui_delivery_queue[0]
execute if data storage scr_task:runtime work.ui_delivery_queue[0] run return run function scr_task:ui/delivery/loop
return 1
