# Internal lifecycle primitive. work.state must be 0..4; external callers use lifecycle APIs.
execute store result score #state scr_tk run data get storage scr_task:runtime work.state
execute unless score #state scr_tk matches 0..4 run return 0
$data modify storage scr_task:players players."$(key)".tasks.$(group).$(name).state set from storage scr_task:runtime work.state
return 1
