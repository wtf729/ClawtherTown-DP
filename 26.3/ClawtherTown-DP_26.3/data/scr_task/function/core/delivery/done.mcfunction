execute store result score #delivery_verified scr_tk run function scr_task:core/delivery/journal_status with storage scr_task:runtime work.ctx
execute if score #delivery_verified scr_tk matches -1 run return 0
$return run execute if data storage scr_task:players players."$(key)".tasks.$(group).$(name).deliveries.$(delivery_goal){state:"done"}
