function scr_task:core/select with storage scr_task:runtime work.advanced_task
function scr_task:ui/state_read with storage scr_task:runtime work.ctx
function scr_task:ui/name/button_label
data modify storage scr_task:runtime work.route set value {view:"detail",group:"skywing",advanced:1,history:0}
data modify storage scr_task:runtime work.route.id set from storage scr_task:runtime work.ctx.id
function scr_task:ui/actions/push_button
