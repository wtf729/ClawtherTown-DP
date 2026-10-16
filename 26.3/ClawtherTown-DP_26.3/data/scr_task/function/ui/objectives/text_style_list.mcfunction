data modify storage scr_task:runtime work.goal_ui.style_stack append value {queue:[],result:[]}
data modify storage scr_task:runtime work.goal_ui.style_stack[-1].queue set from storage scr_task:runtime work.goal_ui.style_node
execute if data storage scr_task:runtime work.goal_ui.style_stack[-1].queue[0] run function scr_task:ui/objectives/text_style_list_loop
data modify storage scr_task:runtime work.goal_ui.style_node set from storage scr_task:runtime work.goal_ui.style_stack[-1].result
data remove storage scr_task:runtime work.goal_ui.style_stack[-1]
return 1
