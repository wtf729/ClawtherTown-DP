data modify storage scr_task:runtime work.route set from storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.route.view set value "start"
data modify storage scr_task:runtime work.label set value {"translate":"gui.scr.task.start","fallback":"开始任务","color":"green"}
function scr_task:ui/push_button
