$data modify storage scr_task:players players."$(key)".tasks.$(group).$(name).deliveries.$(goal).state set value "recovery"
data modify storage scr_task:runtime work.delivery_result.reason set value "recovery"
return 0
