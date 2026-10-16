function scr_task:ui/navigation/source
data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.back_panel",fallback:"返回任务面板",color:"white"}
execute if data storage scr_task:runtime work.route{group:"skywing"} run data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.sky.back",fallback:"返回云翎鹰任务",color:"white"}
execute if data storage scr_task:runtime work.route{chapter:0} run data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.sky.back_prologue",fallback:"返回序章",color:"white"}
execute if data storage scr_task:runtime work.route.chapter unless data storage scr_task:runtime work.route{chapter:0} run function scr_task:ui/navigation/chapter_label with storage scr_task:runtime work.route
execute if data storage scr_task:runtime work.route{advanced:1} run data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.sky.back_advanced",fallback:"返回进阶挑战",color:"white"}
execute if data storage scr_task:runtime work.route{history:1} run data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.back_history",fallback:"返回历史任务",color:"white"}
# Native Escape still closes the Dialog; no close/refresh button is added.
function scr_task:ui/actions/push_button
