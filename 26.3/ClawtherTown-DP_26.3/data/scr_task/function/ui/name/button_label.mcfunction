function scr_task:ui/name/read with storage scr_task:runtime work.ctx
function scr_task:ui/name/status
data modify storage scr_task:runtime work.label set value {text:"",extra:[]}
data modify storage scr_task:runtime work.label.extra append from storage scr_task:ui display_name
data modify storage scr_task:runtime work.label.extra[0].color set value "white"
execute if score #state scr_tk matches 0 run data modify storage scr_task:runtime work.label.extra[0].color set value "gray"
execute if score #state scr_tk matches 4 run data modify storage scr_task:runtime work.label.extra[0].color set value "gray"
data modify storage scr_task:runtime work.label.extra append value {text:" · ",color:"gray"}
data modify storage scr_task:runtime work.label.extra append from storage scr_task:runtime work.status_label
