data modify storage scr_task:runtime work.goal_ui.style_node.italic set value 0b
data modify storage scr_task:runtime work.goal_ui.style_stack append value {node:{}}
data modify storage scr_task:runtime work.goal_ui.style_stack[-1].node set from storage scr_task:runtime work.goal_ui.style_node
execute if data storage scr_task:runtime work.goal_ui.style_stack[-1].node.extra run function scr_task:ui/objectives/text_style_child {field:"extra",fn:"scr_task:ui/objectives/text_style_list"}
execute if data storage scr_task:runtime work.goal_ui.style_stack[-1].node.with run function scr_task:ui/objectives/text_style_child {field:"with",fn:"scr_task:ui/objectives/text_style_list"}
execute if data storage scr_task:runtime work.goal_ui.style_stack[-1].node.separator run function scr_task:ui/objectives/text_style_child {field:"separator",fn:"scr_task:ui/objectives/text_style"}
data modify storage scr_task:runtime work.goal_ui.style_node set from storage scr_task:runtime work.goal_ui.style_stack[-1].node
data remove storage scr_task:runtime work.goal_ui.style_stack[-1]
return 1
