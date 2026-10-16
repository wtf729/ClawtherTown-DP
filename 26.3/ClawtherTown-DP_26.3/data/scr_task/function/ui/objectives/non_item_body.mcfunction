# Preserve the configured icon/components; the common Tooltip owns name and Lore.
data modify storage scr_task:runtime work.goal_ui.stack set value {id:"minecraft:name_tag",count:1,components:{}}
execute if data storage scr_task:runtime work.goal_ui.subtask.ui.stack run data modify storage scr_task:runtime work.goal_ui.stack set from storage scr_task:runtime work.goal_ui.subtask.ui.stack
data modify storage scr_task:runtime work.goal_ui.stack.count set value 1
return run function scr_task:ui/objectives/item_body
