# Ordinary goals only. Held/Submit rows never enter this builder.
data modify storage scr_task:runtime work.goal_ui.style_stack set value []
data modify storage scr_task:runtime work.goal_ui.style_node set from storage scr_mail:preview work.line.description.contents.extra[0]
function scr_task:ui/objectives/text_style
execute unless data storage scr_mail:preview work.line.item.components run data modify storage scr_mail:preview work.line.item.components set value {}
data modify storage scr_mail:preview work.line.item.components."minecraft:custom_name" set from storage scr_task:runtime work.goal_ui.style_node
data modify storage scr_mail:preview work.line.item.components."minecraft:lore" set value []
execute if data storage scr_task:runtime work.goal_ui.tooltip_ui.tooltip_description run data modify storage scr_task:runtime work.goal_ui.style_node set from storage scr_task:runtime work.goal_ui.tooltip_ui.tooltip_description
execute if data storage scr_task:runtime work.goal_ui.tooltip_ui.tooltip_description run function scr_task:ui/objectives/text_style
execute if data storage scr_task:runtime work.goal_ui.tooltip_ui.tooltip_description run data modify storage scr_mail:preview work.line.item.components."minecraft:lore" append from storage scr_task:runtime work.goal_ui.style_node
function scr_task:ui/objectives/tooltip_progress with storage scr_task:runtime work.goal_ui.display
data remove storage scr_task:runtime work.goal_ui.tooltip_ui
data remove storage scr_task:runtime work.goal_ui.style_node
data remove storage scr_task:runtime work.goal_ui.style_stack
