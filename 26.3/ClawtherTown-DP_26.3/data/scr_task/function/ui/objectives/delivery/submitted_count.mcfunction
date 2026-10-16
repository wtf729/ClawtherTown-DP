# Called only after the existing Submitted/Journal check. Never read inventory here.
# Missing historical quantity stays unknown; terminal state alone is not a quantity receipt.
data modify storage scr_task:runtime work.goal_ui.item.have set value "?"
data remove storage scr_task:runtime work.goal_ui.receipt
$execute if data storage scr_task:runtime work.record.deliveries.$(delivery_goal){state:"done"} run data modify storage scr_task:runtime work.goal_ui.receipt set from storage scr_task:runtime work.record.deliveries.$(delivery_goal).items[0]
scoreboard players set #goal_receipt_count scr_tk 0
scoreboard players set #goal_receipt_removed scr_tk -1
execute if data storage scr_task:runtime work.goal_ui.receipt.count store result score #goal_receipt_count scr_tk run data get storage scr_task:runtime work.goal_ui.receipt.count
execute if data storage scr_task:runtime work.goal_ui.receipt.removed store result score #goal_receipt_removed scr_tk run data get storage scr_task:runtime work.goal_ui.receipt.removed
execute if score #goal_receipt_count scr_tk matches 1..2147483647 if score #goal_receipt_removed scr_tk = #goal_receipt_count scr_tk run data modify storage scr_task:runtime work.goal_ui.item.have set from storage scr_task:runtime work.goal_ui.receipt.removed
execute if score #goal_receipt_count scr_tk matches 1..2147483647 if score #goal_receipt_removed scr_tk = #goal_receipt_count scr_tk run data modify storage scr_task:runtime work.goal_ui.item.count set from storage scr_task:runtime work.goal_ui.receipt.count
data remove storage scr_task:runtime work.goal_ui.receipt
