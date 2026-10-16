# Unified objective view. Business ctx.field/amount and Mail request are never used.
data remove storage scr_task:runtime work.ctx.delivery_goal
data modify storage scr_task:runtime work.goal_ui set value {blocked:0b}
execute if data storage scr_task:runtime work.record.delivery_lock run data modify storage scr_task:runtime work.goal_ui.blocked set value 1b
execute store result score #ui_journal_status scr_tk run function scr_task:core/delivery/journal_status with storage scr_task:runtime work.ctx
execute if score #ui_journal_status scr_tk matches -1 run data modify storage scr_task:runtime work.goal_ui.blocked set value 1b
execute if data storage scr_task:runtime work.ctx.deliveries[0] if score #state scr_tk matches 3 unless score #ui_journal_status scr_tk matches 1 run data modify storage scr_task:runtime work.goal_ui.blocked set value 1b
execute if data storage scr_task:runtime work.ctx.deliveries[0] if score #state scr_tk matches 3 unless score #ui_journal_status scr_tk matches 1 run data modify storage scr_task:runtime work.goal_ui.blocked set value 1b
execute if data storage scr_task:runtime work.ctx.deliveries[0] if score #state scr_tk matches 3 unless score #ui_journal_status scr_tk matches 1 run data modify storage scr_task:runtime work.goal_ui.blocked set value 1b
execute if data storage scr_task:runtime work.ctx.deliveries[0] if score #state scr_tk matches 3 unless score #ui_journal_status scr_tk matches 1 run data modify storage scr_task:runtime work.goal_ui.blocked set value 1b

data modify storage scr_task:runtime work.dialog.body append value {type:"minecraft:plain_message",width:420,contents:{translate:"gui.scr.task.objectives",fallback:"任务目标",color:"gold"}}
function scr_mail:ui/item_name/ensure
data modify storage scr_task:runtime work.goal_ui.queue set from storage scr_task:runtime work.ctx.deliveries
execute if data storage scr_task:runtime work.goal_ui.queue[0] run function scr_task:ui/objectives/delivery/goal_loop
data modify storage scr_task:runtime work.goal_ui.regular_queue set from storage scr_task:runtime work.ctx.subtasks
execute if data storage scr_task:runtime work.goal_ui.regular_queue[0] run function scr_task:ui/objectives/regular_loop
data remove storage scr_task:runtime work.ctx.delivery_goal
data modify storage scr_task:runtime work.objectives_blocked set from storage scr_task:runtime work.goal_ui.blocked
data remove storage scr_task:runtime work.goal_ui
data remove storage scr_mail:preview work
