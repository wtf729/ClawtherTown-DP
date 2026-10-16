data modify storage scr_task:runtime work.record set value {state:0}
scoreboard players set #state scr_tk -1
$execute if data storage scr_task:players players."$(key)".tasks.$(group).$(name) run data modify storage scr_task:runtime work.record set from storage scr_task:players players."$(key)".tasks.$(group).$(name)
execute unless data storage scr_task:runtime work.record.state run return -1
execute store result score #state scr_tk run data get storage scr_task:runtime work.record.state
execute unless score #state scr_tk matches 0..4 run return -1
data modify storage scr_task:runtime result set from storage scr_task:runtime work.record
return run scoreboard players get #state scr_tk
