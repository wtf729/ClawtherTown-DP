# Do not initialize a player who has never entered the Task lifecycle.
$execute unless data storage scr_task:players players."$(key)".meta{version:1} run return 0
execute store result score #open scr_tk run function scr_task:core/context/open
execute if score #open scr_tk matches 1 run data modify storage scr_task:runtime work.start_items_queue set value []
execute if score #open scr_tk matches 1 run data modify storage scr_task:runtime work.start_items_queue append from storage scr_task:runtime catalog[{start_items:{}}]
execute if score #open scr_tk matches 1 run function scr_task:core/start_items/retry_loop
function scr_task:core/context/close
return 1
