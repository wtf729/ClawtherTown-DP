function scr_task:core/select {id:"skywing/sky_00"}
function scr_task:ui/state_read with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.chapter_ui set value {completed_count:0,total:1}
data modify storage scr_task:runtime work.chapter_status set value {unlocked:0b}
execute if score #state scr_tk matches 1..4 run data modify storage scr_task:runtime work.chapter_status.unlocked set value 1b
execute if score #state scr_tk matches 4 run data modify storage scr_task:runtime work.chapter_ui.completed_count set value 1
data modify storage scr_task:runtime work.label set value {text:"",extra:[{translate:"gui.scr.task.sky.prologue",fallback:"序章 · 云端来客",color:"white"}]}
function scr_task:ui/skywing/prologue_count with storage scr_task:runtime work.chapter_ui
function scr_task:ui/skywing/chapter_status
data modify storage scr_task:runtime work.route set value {view:"panel",group:"skywing",chapter:0,history:0}
function scr_task:ui/actions/push_button
