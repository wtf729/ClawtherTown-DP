# Called only after Profile, journal/lock, repeat and quantity preflight have succeeded.
# Reuse the ordinary kind=item writer; verify persistence before beginning any deduction.
execute unless function scr_task:task/skywing/shared/inventory_ready run return 0
execute if data storage scr_task:runtime work.record.delivery_lock run return 0
data remove storage scr_task:runtime work.objective
data remove storage scr_task:runtime work.held_subtask
$data modify storage scr_task:runtime work.objective set from storage scr_task:runtime work.ctx.objectives[{field:"$(held_field)",kind:"item",delivery_goal:"$(id)"}]
$data modify storage scr_task:runtime work.held_subtask set from storage scr_task:runtime work.ctx.subtasks[{field:"$(held_field)"}]
execute store result score #delivery_hold_valid scr_tk run function scr_task:core/delivery/held_requirement with storage scr_task:runtime work.delivery.items[0]
execute unless score #delivery_hold_valid scr_tk matches 1 run return 0
execute store result storage scr_task:runtime work.count int 1 run scoreboard players get #delivery_have scr_tk
execute store result score #delivery_hold_written scr_tk run function scr_task:task/skywing/shared/write_count
execute unless score #delivery_hold_written scr_tk matches 1 run return 0
return run function scr_task:task/skywing/shared/item_locked with storage scr_task:runtime work.ctx
