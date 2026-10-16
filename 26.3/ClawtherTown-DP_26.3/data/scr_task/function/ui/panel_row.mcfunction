# A task detail entry is a native Dialog action, never a clickable message.
function scr_task:ui/name/button_label
data modify storage scr_task:runtime work.route set from storage scr_task:runtime work.nav
data modify storage scr_task:runtime work.route.view set value "detail"
data modify storage scr_task:runtime work.route.id set from storage scr_task:runtime work.ctx.id
function scr_task:ui/actions/button
execute if score #state scr_tk matches 1 run data modify storage scr_task:runtime work.available append from storage scr_task:runtime work.button
execute if score #state scr_tk matches 2 run data modify storage scr_task:runtime work.active append from storage scr_task:runtime work.button
execute if score #state scr_tk matches 3 run data modify storage scr_task:runtime work.ready_to_complete append from storage scr_task:runtime work.button
execute if score #state scr_tk matches 4 run data modify storage scr_task:runtime work.history append from storage scr_task:runtime work.button
