# Called once per marked player from the separate Task tick execution context.
# Keep the mark if Task is busy, or execution is interrupted before completion.
execute if data storage scr_task:runtime {busy:1b} run return 0
execute store result score #inventory_event scr_tk run function scr_task:event/sky/open {event:"inventory"}
execute if score #inventory_event scr_tk matches 1 run tag @s remove scr_task.inventory_pending
