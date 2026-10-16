execute if data storage scr_task:runtime work.dialog{columns:1} run return run function scr_task:ui/skywing/chapter_navigation
execute if data storage scr_task:runtime work.nav{history:1} run function scr_task:ui/skywing/history_separator
data modify storage scr_task:runtime work.route set from storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.route.view set value "panel"
data modify storage scr_task:runtime work.route.history set value 1
data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.history",fallback:"历史任务",color:"white"}
execute unless data storage scr_task:runtime work.nav{history:1} run function scr_task:ui/actions/push_button
data modify storage scr_task:runtime work.route set value {view:"panel",group:"skywing",history:0}
data modify storage scr_task:runtime work.label set value {"translate":"gui.scr.task.sky.back","fallback":"返回云翎鹰任务","color":"white"}
execute if data storage scr_task:runtime work.nav{advanced:1,history:1} run data modify storage scr_task:runtime work.route set value {view:"panel",group:"skywing",advanced:1,history:0}
execute if data storage scr_task:runtime work.nav{advanced:1,history:1} run data modify storage scr_task:runtime work.label set value {translate:"gui.scr.task.sky.back_advanced",fallback:"返回进阶挑战",color:"white"}
function scr_task:ui/actions/push_button
