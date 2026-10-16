# {} matches compound tags only; nonempty lists and string shorthand retain their text.
execute if data storage scr_task:runtime work.goal_ui.style_node[0] run return run function scr_task:ui/objectives/text_style_list
execute if data storage scr_task:runtime work.goal_ui.style_node{} run return run function scr_task:ui/objectives/text_style_object
data modify storage scr_task:runtime work.goal_ui.style_literal set from storage scr_task:runtime work.goal_ui.style_node
data modify storage scr_task:runtime work.goal_ui.style_node set value {text:"",italic:0b}
data modify storage scr_task:runtime work.goal_ui.style_node.text set from storage scr_task:runtime work.goal_ui.style_literal
data remove storage scr_task:runtime work.goal_ui.style_literal
return 1
