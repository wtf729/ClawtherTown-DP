data modify storage scr_task:runtime work.goal_ui.style_node set from storage scr_task:runtime work.goal_ui.style_stack[-1].queue[0]
function scr_task:ui/objectives/text_style
data modify storage scr_task:runtime work.goal_ui.style_stack[-1].result append from storage scr_task:runtime work.goal_ui.style_node
data remove storage scr_task:runtime work.goal_ui.style_stack[-1].queue[0]
execute if data storage scr_task:runtime work.goal_ui.style_stack[-1].queue[0] run return run function scr_task:ui/objectives/text_style_list_loop
return 1
