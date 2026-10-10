function scr_task:core/select with storage scr_task:runtime work.advanced_task
function scr_task:core/state/read with storage scr_task:runtime work.ctx
function scr_task:ui/name/read with storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.label set value {text:"",extra:[]}
data modify storage scr_task:runtime work.label.extra append from storage scr_task:ui display_name
data modify storage scr_task:runtime work.label.extra[0].color set value "white"
execute if score #state scr_tk matches 0 run data modify storage scr_task:runtime work.label.extra[0].color set value "gray"
data modify storage scr_task:runtime work.label.extra append value {text:" · ",color:"gray"}
execute if score #state scr_tk matches 0 run data modify storage scr_task:runtime work.label.extra append value {translate:"gui.scr.task.sky.chapter_locked",fallback:"未解锁",color:"gray"}
execute if score #state scr_tk matches 1 run data modify storage scr_task:runtime work.label.extra append value {translate:"gui.scr.task.state.available",fallback:"可接受",color:"yellow"}
execute if score #state scr_tk matches 2 run data modify storage scr_task:runtime work.label.extra append value {translate:"gui.scr.task.state.active",fallback:"进行中",color:"green"}
execute if score #state scr_tk matches 3 run data modify storage scr_task:runtime work.label.extra append value {translate:"gui.scr.task.awaiting_submission",fallback:"等待提交",color:"green"}
execute if score #state scr_tk matches 4 run data modify storage scr_task:runtime work.label.extra append value {translate:"gui.scr.task.state.submitted",fallback:"已提交",color:"gold"}
data modify storage scr_task:runtime work.route set value {view:"detail",group:"skywing",advanced:1,history:0}
data modify storage scr_task:runtime work.route.id set from storage scr_task:runtime work.ctx.id
function scr_task:ui/push_button
