data modify storage scr_task:runtime work.dialog set from storage scr_task:runtime journal_template
data modify storage scr_task:runtime work.dialog.title set from storage scr_task:runtime work.npc.title
execute if data storage scr_task:runtime work.nav.chapter run function scr_task:ui/skywing/heading with storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.available set value []
data modify storage scr_task:runtime work.active set value []
data modify storage scr_task:runtime work.completed set value []
data modify storage scr_task:runtime work.history set value []
data modify storage scr_task:runtime work.locked set value []
data modify storage scr_task:runtime work.sky_ui_queue set from storage scr_task:runtime catalog
function scr_task:ui/skywing/list_loop
execute if data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.dialog.body append from storage scr_task:runtime work.history[]
execute unless data storage scr_task:runtime work.nav{history:1} run function scr_task:ui/panel_sections
execute unless data storage scr_task:runtime work.nav{history:1} if data storage scr_task:runtime work.nav.chapter run data modify storage scr_task:runtime work.dialog.body append from storage scr_task:runtime work.history[]
execute unless data storage scr_task:runtime work.nav{history:1} run data modify storage scr_task:runtime work.dialog.body append from storage scr_task:runtime work.locked[]
execute if data storage scr_task:runtime work.nav{history:1} unless data storage scr_task:runtime work.history[0] run data modify storage scr_task:runtime work.dialog.body append value {type:"minecraft:plain_message",width:420,contents:{translate:"gui.scr.task.history_empty",fallback:"暂无历史任务!",color:"gray"}}
execute unless data storage scr_task:runtime work.nav{history:1} unless data storage scr_task:runtime work.dialog.body[0] run data modify storage scr_task:runtime work.dialog.body append value {type:"minecraft:plain_message",width:420,contents:{translate:"gui.scr.task.empty",fallback:"目前没有可处理的任务!",color:"gray"}}
function scr_task:ui/panel_portrait
function scr_task:ui/skywing/navigation
