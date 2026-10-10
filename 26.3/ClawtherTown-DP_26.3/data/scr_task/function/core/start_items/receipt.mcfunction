# send/new leaves the assigned event_id in its request; copy immediately into Task-owned data.
execute unless data storage scr_mail:request mail.event_id run return 0
$execute store success score #starter_receipt scr_tk run data modify storage scr_task:players players."$(key)".tasks.$(group).$(name).start_items.event_id set from storage scr_mail:request mail.event_id
execute unless score #starter_receipt scr_tk matches 1 run return 0
$data modify storage scr_task:players players."$(key)".tasks.$(group).$(name).start_items.state set value "sent"
return 1
