# Every issued route is bound to this UUID and the currently displayed page.
data modify storage scr_task:runtime work.button set value {label:{text:""},width:200}
data modify storage scr_task:runtime work.button.label set from storage scr_task:runtime work.label
# Fail closed if the int token pool is exhausted; do not reuse old routes.
execute if score #task_ui_seq scr_tk matches 2147483647 run return 0
execute store result storage scr_task:runtime work.route.token int 1 run scoreboard players add #task_ui_seq scr_tk 1
function scr_task:ui/session/add with storage scr_task:runtime work.ctx
function scr_task:ui/actions/button_command with storage scr_task:runtime work.route
return 1
