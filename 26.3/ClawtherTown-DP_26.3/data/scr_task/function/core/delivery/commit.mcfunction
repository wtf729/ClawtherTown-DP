$data modify storage scr_task:players players."$(key)".tasks.$(group).$(name).deliveries.$(goal).state set value "done"
$data remove storage scr_task:players players."$(key)".tasks.$(group).$(name).delivery_lock
data modify storage scr_task:runtime work.ctx.field set from storage scr_task:runtime work.delivery.field
data modify storage scr_task:runtime work.ctx.amount set value 1
function scr_task:core/progress/set with storage scr_task:runtime work.ctx
function scr_task:core/lifecycle/complete
data modify storage scr_task:runtime work.delivery_result set value {ok:1b,reason:"success"}
return 1
