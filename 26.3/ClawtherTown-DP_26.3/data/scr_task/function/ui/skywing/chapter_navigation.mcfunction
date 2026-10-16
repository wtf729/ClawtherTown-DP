# Current mainline chapters: one passive separator, then return to Skywing overview.
data modify storage scr_task:runtime work.dialog.actions append value {label:{text:"----------",color:"dark_gray"},width:200}
data modify storage scr_task:runtime work.route set value {view:"panel",group:"skywing",history:0}
data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.sky.back",fallback:"返回云翎鹰任务",color:"white"}
function scr_task:ui/actions/push_button
