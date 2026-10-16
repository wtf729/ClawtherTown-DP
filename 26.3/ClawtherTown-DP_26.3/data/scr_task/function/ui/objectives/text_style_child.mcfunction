$data modify storage scr_task:runtime work.goal_ui.style_node set from storage scr_task:runtime work.goal_ui.style_stack[-1].node.$(field)
$function $(fn)
$data modify storage scr_task:runtime work.goal_ui.style_stack[-1].node.$(field) set from storage scr_task:runtime work.goal_ui.style_node
