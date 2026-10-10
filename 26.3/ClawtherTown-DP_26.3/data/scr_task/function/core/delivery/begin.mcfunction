# Persistent write-ahead guard: no automatic replay after an interrupted clear.
$data modify storage scr_task:players players."$(key)".tasks.$(group).$(name).delivery_lock set value 1b
$data modify storage scr_task:players players."$(key)".tasks.$(group).$(name).deliveries.$(goal) set value {state:"executing",cursor:0,items:[]}
$data modify storage scr_task:players players."$(key)".tasks.$(group).$(name).deliveries.$(goal).items set from storage scr_task:runtime work.delivery.items
data modify storage scr_task:runtime work.delivery_items set from storage scr_task:runtime work.delivery.items
scoreboard players set #delivery_cursor scr_tk 0
scoreboard players set #delivery_clean scr_tk 1
execute if data storage scr_task:runtime work.delivery{consume:1b} run function scr_task:core/delivery/remove_loop
execute unless score #delivery_clean scr_tk matches 1 run return run function scr_task:core/delivery/recovery with storage scr_task:runtime work.ctx
return run function scr_task:core/delivery/commit with storage scr_task:runtime work.ctx
