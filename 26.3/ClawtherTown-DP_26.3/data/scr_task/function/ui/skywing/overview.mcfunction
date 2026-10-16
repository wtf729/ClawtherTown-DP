data modify storage scr_task:runtime work.dialog set from storage scr_task:runtime journal_template
data modify storage scr_task:runtime work.dialog.columns set value 2
data modify storage scr_task:runtime work.dialog.title set from storage scr_task:runtime work.npc.title
function scr_task:ui/skywing/prologue
data modify storage scr_task:runtime work.chapter_ui_queue set from storage scr_task:runtime chapter_catalog
function scr_task:ui/skywing/chapter_loop
data modify storage scr_task:runtime work.route set value {view:"panel",group:"skywing",advanced:1,history:0}
data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.sky.advanced",fallback:"进阶挑战",color:"white"}
function scr_task:ui/actions/push_button
function scr_task:ui/skywing/separator
data modify storage scr_task:runtime work.route set value {view:"panel",group:"skywing",history:1}
data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.history",fallback:"历史任务",color:"white"}
function scr_task:ui/actions/push_button
data modify storage scr_task:runtime work.route set value {view:"home"}
data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.back_home",fallback:"返回任务主页",color:"white"}
function scr_task:ui/actions/push_button
function scr_task:ui/panel_portrait
