$execute if data storage scr_task:players players."$(key)".tasks.$(group).$(name).progress.$(field)_ids."$(unique)" run return 0
$data modify storage scr_task:players players."$(key)".tasks.$(group).$(name).progress.$(field)_ids."$(unique)" set value 1b
$execute store result storage scr_task:players players."$(key)".tasks.$(group).$(name).progress.$(field) int 1 run data get storage scr_task:players players."$(key)".tasks.$(group).$(name).progress.$(field)_ids
return 1
