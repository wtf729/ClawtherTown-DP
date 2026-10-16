data modify storage scr_task:runtime work.dialog set from storage scr_task:runtime journal_template
data modify storage scr_task:runtime work.dialog.columns set value 2
data modify storage scr_task:runtime work.dialog.title set value {translate:"gui.scr.task.sky.advanced",fallback:"进阶挑战",color:"white"}
data modify storage scr_task:runtime work.advanced_queue set from storage scr_task:runtime catalog
function scr_task:ui/skywing/advanced_loop
# 25 fixed-order tasks: a separate blank cell completes the final two-column row.
data modify storage scr_task:runtime work.dialog.actions append value {label:{text:""},width:200}
function scr_task:ui/skywing/separator
data modify storage scr_task:runtime work.route set value {view:"panel",group:"skywing",advanced:1,history:1}
data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.history",fallback:"历史任务",color:"white"}
function scr_task:ui/actions/push_button
data modify storage scr_task:runtime work.route set value {view:"panel",group:"skywing",history:0}
data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.sky.back",fallback:"返回云翎鹰任务",color:"white"}
function scr_task:ui/actions/push_button
function scr_task:ui/panel_portrait
