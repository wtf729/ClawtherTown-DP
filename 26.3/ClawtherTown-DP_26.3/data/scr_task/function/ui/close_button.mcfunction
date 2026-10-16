data modify storage scr_task:runtime work.route set value {view:"close"}
data modify storage scr_task:runtime work.label set value {"translate":"gui.scr.task.close","fallback":"关闭任务日志",color:"white"}
function scr_task:ui/actions/button
data modify storage scr_task:runtime work.dialog.exit_action set from storage scr_task:runtime work.button
