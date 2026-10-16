data modify storage scr_task:runtime work.ctx.delivery_goal set from storage scr_task:runtime work.goal_ui.goal.id
data modify storage scr_task:runtime work.goal_ui.item set from storage scr_task:runtime work.goal_ui.goal.items[0]
data modify storage scr_task:runtime work.goal_ui.item.delivery_goal set from storage scr_task:runtime work.goal_ui.goal.id
data modify storage scr_task:runtime work.goal_ui.item.have set value 0
scoreboard players set #goal_submitted scr_tk 0
execute unless data storage scr_task:runtime work.goal_ui{blocked:1b} store result score #goal_submitted scr_tk run function scr_task:core/delivery/done with storage scr_task:runtime work.ctx
execute unless data storage scr_task:runtime work.goal_ui{blocked:1b} if score #state scr_tk matches 3..4 run scoreboard players set #goal_submitted scr_tk 1
execute if score #goal_submitted scr_tk matches 1 run function scr_task:ui/objectives/delivery/submitted_count with storage scr_task:runtime work.goal_ui.item
data remove storage scr_task:runtime work.goal_ui.label
execute if data storage scr_task:runtime work.goal_ui.item.ui.label run data modify storage scr_task:runtime work.goal_ui.label set from storage scr_task:runtime work.goal_ui.item.ui.label
execute if data storage scr_task:runtime work.goal_ui.item.ui.label run data modify storage scr_task:runtime work.goal_ui.label set from storage scr_task:runtime work.goal_ui.item.ui.label
execute if data storage scr_task:runtime work.goal_ui.item.ui.label run data modify storage scr_task:runtime work.goal_ui.label set from storage scr_task:runtime work.goal_ui.item.ui.label
execute if data storage scr_task:runtime work.goal_ui.item.ui.label run data modify storage scr_task:runtime work.goal_ui.label set from storage scr_task:runtime work.goal_ui.item.ui.label
data modify storage scr_task:runtime work.goal_ui.stack set value {count:1}
data modify storage scr_task:runtime work.goal_ui.stack.id set from storage scr_task:runtime work.goal_ui.item.item
execute if data storage scr_task:runtime work.goal_ui.item.ui.stack run data modify storage scr_task:runtime work.goal_ui.stack set from storage scr_task:runtime work.goal_ui.item.ui.stack
data modify storage scr_task:runtime work.goal_ui.stack.count set value 1
function scr_task:ui/objectives/item_body
function scr_task:ui/objectives/prefix_label {kind:"delivery"}
data modify storage scr_mail:preview work.line.description.contents.extra[1] set value {text:" "}
function scr_task:ui/objectives/progress with storage scr_task:runtime work.goal_ui.item
execute if score #goal_submitted scr_tk matches 1 run function scr_task:ui/objectives/completed_mark
execute if data storage scr_task:runtime work.goal_ui{blocked:1b} run data modify storage scr_mail:preview work.line.description.contents.extra append value {translate:"gui.scr.task.delivery.locked",fallback:"等待管理员核查",color:"red"}
execute if score #state scr_tk matches 2 unless score #goal_submitted scr_tk matches 1 unless data storage scr_task:runtime work.goal_ui{blocked:1b} run function scr_task:ui/objectives/delivery/action
data modify storage scr_task:runtime work.dialog.body append from storage scr_mail:preview work.line
data remove storage scr_mail:preview work
