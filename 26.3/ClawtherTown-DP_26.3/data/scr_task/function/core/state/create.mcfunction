# Internal: called only after prerequisite checks.
$execute unless data storage scr_task:players players."$(key)".tasks.$(group).$(name) run data modify storage scr_task:players players."$(key)".tasks.$(group).$(name) set value {state:0}
return 1
