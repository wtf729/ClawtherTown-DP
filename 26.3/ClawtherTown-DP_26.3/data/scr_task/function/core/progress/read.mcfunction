data modify storage scr_task:runtime work.value set value 0
$data modify storage scr_task:runtime work.value set from storage scr_task:players players."$(key)".tasks.$(group).$(name).progress.$(field)
return run data get storage scr_task:runtime work.value
