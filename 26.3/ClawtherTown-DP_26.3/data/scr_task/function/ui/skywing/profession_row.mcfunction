data modify storage scr_task:runtime work.ui_profession set from storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.ui_profession.field set from storage scr_task:runtime work.ui_profession_queue[0]
execute store result storage scr_task:runtime work.ui_profession.have int 1 run function scr_task:core/progress/read with storage scr_task:runtime work.ui_profession
function scr_task:ui/skywing/profession_text with storage scr_task:runtime work.ui_profession
data remove storage scr_task:runtime work.ui_profession_queue[0]
execute if data storage scr_task:runtime work.ui_profession_queue[0] run return run function scr_task:ui/skywing/profession_row
return 1
