data modify storage scr_task:runtime work.dialog set from storage scr_task:runtime journal_template
data modify storage scr_task:runtime work.dialog.columns set value 1
data modify storage scr_task:runtime work.dialog.title set value {text:"",extra:[]}
data modify storage scr_task:runtime work.dialog.title.extra append from storage scr_task:runtime work.npc.title
execute if data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.dialog.title set value {"translate":"gui.scr.task.history_title","fallback":"%s · 历史任务","with":[{}],"color":"white"}
execute if data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.dialog.title.with[0] set from storage scr_task:runtime work.npc.title
data modify storage scr_task:runtime work.available set value []
data modify storage scr_task:runtime work.active set value []
data modify storage scr_task:runtime work.ready_to_complete set value []
data modify storage scr_task:runtime work.history set value []
data modify storage scr_task:runtime work.queue set from storage scr_task:runtime catalog
execute if data storage scr_task:runtime work.queue[0] run function scr_task:ui/panel_loop
execute if data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.dialog.actions append from storage scr_task:runtime work.history[]
execute unless data storage scr_task:runtime work.nav{history:1} run function scr_task:ui/panel_sections
execute unless data storage scr_task:runtime work.dialog.actions[0] unless data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.dialog.actions append value {label:{translate:"gui.scr.task.empty",fallback:"目前没有可处理的任务!",color:"gray"},width:200}
execute unless data storage scr_task:runtime work.dialog.actions[0] if data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.dialog.actions append value {label:{translate:"gui.scr.task.history_empty",fallback:"暂无历史任务!",color:"gray"},width:200}
function scr_task:ui/panel_portrait
function scr_task:ui/panel_navigation
