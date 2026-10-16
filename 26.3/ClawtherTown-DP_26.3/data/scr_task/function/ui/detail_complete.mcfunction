data modify storage scr_task:runtime work.route set from storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.route.view set value "complete"
data modify storage scr_task:runtime work.label set value {"translate":"gui.scr.task.action.complete","fallback":"完成任务","color":"green"}
function scr_task:ui/actions/push_button
