data modify storage scr_task:runtime work.chapter_ui set from storage scr_task:runtime work.chapter_ui_queue[0]
data modify storage scr_task:runtime work.chapter_ui.key set from storage scr_task:runtime work.key
function scr_task:core/chapter/read with storage scr_task:runtime work.chapter_ui
data modify storage scr_task:runtime work.chapter_ui.submitted set from storage scr_task:runtime work.chapter_status.submitted
data modify storage scr_task:runtime work.label set value {text:"",extra:[]}
data modify storage scr_task:runtime work.label.extra append from storage scr_task:runtime work.chapter_ui.label
function scr_task:ui/skywing/chapter_summary with storage scr_task:runtime work.chapter_ui
data modify storage scr_task:runtime work.route set value {view:"panel",group:"skywing",history:0}
# Use explicit numeric indices stored by the trusted chapter catalog.
data modify storage scr_task:runtime work.route.chapter set from storage scr_task:runtime work.chapter_ui.index
function scr_task:ui/push_button
data remove storage scr_task:runtime work.chapter_ui_queue[0]
execute if data storage scr_task:runtime work.chapter_ui_queue[0] run return run function scr_task:ui/skywing/chapter_loop
return 1
