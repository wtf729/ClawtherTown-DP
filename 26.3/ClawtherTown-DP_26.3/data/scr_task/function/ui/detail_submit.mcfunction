data modify storage scr_task:runtime work.route set from storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.route.view set value "submit"
data modify storage scr_task:runtime work.label set value {"translate":"gui.scr.task.submit","fallback":"提交任务","color":"green"}
function scr_task:ui/push_button
