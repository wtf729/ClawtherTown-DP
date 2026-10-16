data modify storage scr_task:runtime work.dialog set from storage scr_task:runtime journal_template
data modify storage scr_task:runtime work.dialog.columns set value 2
# Current prologue and mainline chapter lists use one column; history stays unchanged.
execute if data storage scr_task:runtime work.nav.chapter unless data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.dialog.columns set value 1
data modify storage scr_task:runtime work.dialog.title set from storage scr_task:runtime work.npc.title
execute if data storage scr_task:runtime work.nav.chapter run function scr_task:ui/skywing/heading with storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.available set value []
data modify storage scr_task:runtime work.active set value []
data modify storage scr_task:runtime work.ready_to_complete set value []
data modify storage scr_task:runtime work.history set value []
data modify storage scr_task:runtime work.locked set value []
data modify storage scr_task:runtime work.sky_ui_queue set from storage scr_task:runtime catalog
function scr_task:ui/skywing/list_loop
execute if data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.dialog.actions append from storage scr_task:runtime work.history[]
execute unless data storage scr_task:runtime work.nav{history:1} run function scr_task:ui/panel_sections
execute unless data storage scr_task:runtime work.nav{history:1} if data storage scr_task:runtime work.nav.chapter run data modify storage scr_task:runtime work.dialog.actions append from storage scr_task:runtime work.history[]
execute unless data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.dialog.actions append from storage scr_task:runtime work.locked[]
# Empty status is a passive gray native button, never a clickable text message.
data remove storage scr_task:runtime work.empty_list
execute unless data storage scr_task:runtime work.dialog.actions[0] run data modify storage scr_task:runtime work.empty_list set value 1b
execute if data storage scr_task:runtime work.empty_list if data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.dialog.actions append value {label:{translate:"gui.scr.task.history_empty",fallback:"暂无历史任务!",color:"gray"},width:200}
execute if data storage scr_task:runtime work.empty_list unless data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.dialog.actions append value {label:{translate:"gui.scr.task.empty",fallback:"目前没有可处理的任务!",color:"gray"},width:200}
execute if data storage scr_task:runtime work.empty_list unless data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.dialog.actions append value {label:{text:""},width:200}
data remove storage scr_task:runtime work.empty_list
function scr_task:ui/panel_portrait
function scr_task:ui/skywing/navigation
