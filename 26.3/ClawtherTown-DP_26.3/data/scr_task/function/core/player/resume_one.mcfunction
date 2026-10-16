execute if data storage scr_task:runtime work.record.delivery_lock run return 0
function scr_task:core/hook {hook:"refresh"}
return run function scr_task:core/lifecycle/ready_to_complete
