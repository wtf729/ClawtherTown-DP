# Only READY_TO_COMPLETE may complete. The public API owns the synchronous context/busy guard.
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 3 run return 0
# Current delivery receipts must be complete and clean before any final reward.
execute if data storage scr_task:runtime work.ctx.deliveries[0] store result score #complete_deliveries scr_tk run function scr_task:core/delivery/journal_status with storage scr_task:runtime work.ctx
execute if data storage scr_task:runtime work.ctx.deliveries[0] unless score #complete_deliveries scr_tk matches 1 run return run function scr_task:core/lifecycle/complete_blocked
# A previous reward attempt may have partially succeeded; never replay it automatically.
execute if data storage scr_task:runtime work.record.reward_pending run return run function scr_task:core/lifecycle/complete_blocked
data modify storage scr_task:runtime work.phase set value "complete"
scoreboard players set #reward scr_tk 1
execute if data storage scr_task:runtime work.ctx.hooks.reward store result score #reward scr_tk run function scr_task:core/lifecycle/reward
execute unless score #reward scr_tk matches 1 run return run function scr_task:core/lifecycle/complete_blocked
# Keep the pending marker until the terminal state has been committed and read back.
data modify storage scr_task:runtime work.state set value 4
function scr_task:core/state/write with storage scr_task:runtime work.ctx
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 4 run return run function scr_task:core/lifecycle/complete_blocked
execute if data storage scr_task:runtime work.record.reward_pending run function scr_task:core/lifecycle/reward_done with storage scr_task:runtime work.ctx
function scr_task:ui/notification/show {kind:"completed"}
function scr_task:core/unlock/refresh
return 1
