execute store result score #ui_filter scr_tk run function scr_task:ui/skywing/filter with storage scr_task:runtime work.nav
execute unless score #ui_filter scr_tk matches 1 run return 0
function scr_task:core/select with storage scr_task:runtime work.sky_ui_task
function scr_task:ui/state_read with storage scr_task:runtime work.ctx
execute if data storage scr_task:runtime work.nav{history:1} unless score #state scr_tk matches 4 run return 0
execute if score #state scr_tk matches 1..4 run return run function scr_task:ui/panel_row
# Locked mainline tasks remain non-actionable; advanced locked inspection keeps its own route.
function scr_task:ui/name/button_label
execute if data storage scr_task:runtime work.ctx.ui.unlock_hint run data modify storage scr_task:runtime work.label.hover_event set value {action:"show_text",value:{}}
execute if data storage scr_task:runtime work.ctx.ui.unlock_hint run data modify storage scr_task:runtime work.label.hover_event.value set from storage scr_task:runtime work.ctx.ui.unlock_hint
data modify storage scr_task:runtime work.button set value {label:{text:""},width:200}
data modify storage scr_task:runtime work.button.label set from storage scr_task:runtime work.label
data modify storage scr_task:runtime work.locked append from storage scr_task:runtime work.button
return 1
