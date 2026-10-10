data modify storage scr_task:runtime work.route set from storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.route.view set value "detail"
data modify storage scr_task:runtime work.label set value {"translate":"gui.scr.task.refresh_detail","fallback":"刷新详情",color:"white"}
function scr_task:ui/push_button
data modify storage scr_task:runtime work.route set from storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.route.view set value "panel"
data modify storage scr_task:runtime work.label set value {"translate":"gui.scr.task.back_panel","fallback":"返回任务面板",color:"white"}
execute if data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.label set value {"translate":"gui.scr.task.back_history","fallback":"返回历史任务",color:"white"}
execute if data storage scr_task:runtime work.nav{group:"skywing",advanced:1,history:0} run data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.sky.back_advanced",fallback:"返回进阶挑战",color:"white"}
# Return is a normal action; Escape and the footer use the close-only route.
function scr_task:ui/push_button
function scr_task:ui/close_button
