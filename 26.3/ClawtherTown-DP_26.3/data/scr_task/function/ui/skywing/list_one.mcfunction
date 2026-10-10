execute store result score #ui_filter scr_tk run function scr_task:ui/skywing/filter with storage scr_task:runtime work.nav
execute unless score #ui_filter scr_tk matches 1 run return 0
function scr_task:core/select with storage scr_task:runtime work.sky_ui_task
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute if data storage scr_task:runtime work.nav{history:1} unless score #state scr_tk matches 4 run return 0
execute if score #state scr_tk matches 1..4 run return run function scr_task:ui/panel_row
data modify storage scr_task:runtime work.locked_row set value {type:"minecraft:plain_message",width:420,contents:{text:"",extra:[],color:"gray"}}
data modify storage scr_task:runtime work.locked_row.contents.extra append from storage scr_task:runtime work.ctx.ui.title
data modify storage scr_task:runtime work.locked_row.contents.extra[0].color set value "gray"
data modify storage scr_task:runtime work.locked_row.contents.extra append value {"translate":"gui.scr.task.sky.task_locked","fallback":" · 未解锁","color":"gray"}
execute if data storage scr_task:runtime work.ctx.ui.unlock_hint run data modify storage scr_task:runtime work.locked_row.contents.extra append value {text:" · ",color:"gray"}
execute if data storage scr_task:runtime work.ctx.ui.unlock_hint run data modify storage scr_task:runtime work.locked_row.contents.extra append from storage scr_task:runtime work.ctx.ui.unlock_hint
data modify storage scr_task:runtime work.locked append from storage scr_task:runtime work.locked_row
return 1
