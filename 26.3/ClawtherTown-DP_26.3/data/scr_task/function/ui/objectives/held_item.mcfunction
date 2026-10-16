data modify storage scr_task:runtime work.goal_ui.stack set value {count:1}
data modify storage scr_task:runtime work.goal_ui.stack.id set from storage scr_task:runtime work.goal_ui.objective.item
execute if data storage scr_task:runtime work.goal_ui.subtask.ui.stack run data modify storage scr_task:runtime work.goal_ui.stack set from storage scr_task:runtime work.goal_ui.subtask.ui.stack
data modify storage scr_task:runtime work.goal_ui.stack.count set value 1
data remove storage scr_task:runtime work.goal_ui.label
execute if data storage scr_task:runtime work.goal_ui.subtask.ui.label run data modify storage scr_task:runtime work.goal_ui.label set from storage scr_task:runtime work.goal_ui.subtask.ui.label
# ACTIVE saved attainment wins over current inventory, including across Profiles.
scoreboard players set #ui_held_locked scr_tk 0
execute store result score #ui_held_saved scr_tk run data get storage scr_task:runtime work.goal_ui.row.have
execute store result score #ui_held_target scr_tk run data get storage scr_task:runtime work.goal_ui.row.count
execute if score #state scr_tk matches 2 if score #ui_held_saved scr_tk >= #ui_held_target scr_tk run scoreboard players set #ui_held_locked scr_tk 1
# Reliable terminal Task history proves held attainment; no inventory-based completion mark.
execute if score #state scr_tk matches 3..4 run scoreboard players set #ui_held_locked scr_tk 1
execute if score #state scr_tk matches 0..1 run data modify storage scr_task:runtime work.goal_ui.row.have set value 0
execute if score #state scr_tk matches 1..2 unless score #ui_held_locked scr_tk matches 1 if function scr_task:task/skywing/shared/inventory_ready store result storage scr_task:runtime work.goal_ui.row.have int 1 run function scr_task:core/inventory/count with storage scr_task:runtime work.goal_ui.objective
function scr_task:ui/objectives/quantity with storage scr_task:runtime work.goal_ui.row
function scr_task:ui/objectives/item_body
# All item goals mean Hold, including ordinary goals without a Delivery.
function scr_task:ui/objectives/prefix_label {kind:"held"}
return run function scr_task:ui/objectives/append_regular
