data modify storage scr_task:runtime work.route set from storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.route.view set value "panel"
data modify storage scr_task:runtime work.route.history set value 1
data modify storage scr_task:runtime work.label set value {"translate":"gui.scr.task.history","fallback":"历史任务",color:"white"}
execute unless data storage scr_task:runtime work.nav{history:1} run function scr_task:ui/push_button
data modify storage scr_task:runtime work.route set from storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.route.view set value "panel"
data modify storage scr_task:runtime work.label set value {"translate":"gui.scr.task.refresh","fallback":"刷新",color:"white"}
function scr_task:ui/push_button
data modify storage scr_task:runtime work.route set value {view:"home"}
data modify storage scr_task:runtime work.label set value {"translate":"gui.scr.task.back_home","fallback":"返回任务主页",color:"white"}
execute if data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.route set from storage scr_task:runtime work.nav
execute if data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.route.history set value 0
execute if data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.label set value {"translate":"gui.scr.task.back_panel","fallback":"返回任务面板",color:"white"}
# Return is a normal action; Escape and the footer use the close-only route.
function scr_task:ui/push_button
function scr_task:ui/close_button
