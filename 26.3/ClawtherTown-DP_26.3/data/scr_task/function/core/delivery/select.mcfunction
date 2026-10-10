data remove storage scr_task:runtime work.delivery
$data modify storage scr_task:runtime work.delivery set from storage scr_task:runtime work.ctx.deliveries[{id:"$(goal)"}]
execute unless data storage scr_task:runtime work.delivery.id run return 0
data modify storage scr_task:runtime work.ctx.goal set from storage scr_task:runtime work.delivery.id
function scr_task:core/state/read with storage scr_task:runtime work.ctx
execute unless score #state scr_tk matches 2 run return 0
data modify storage scr_task:runtime work.delivery_result.reason set value "region"
execute store result score #delivery_profile scr_tk run function scr_task:core/delivery/profile_ready with storage scr_task:runtime work.ctx.delivery_policy
execute unless score #delivery_profile scr_tk matches 1 run return 0
data modify storage scr_task:runtime work.delivery_result.reason set value "recovery"
execute if data storage scr_task:runtime work.record.delivery_lock run return 0
data modify storage scr_task:runtime work.delivery_result.reason set value "done"
execute store result score #delivery_done scr_tk run function scr_task:core/delivery/done with storage scr_task:runtime work.ctx
execute if score #delivery_done scr_tk matches 1 run return 0
data modify storage scr_task:runtime work.delivery_result.reason set value "insufficient"
execute unless function scr_task:core/delivery/preflight run return 0
return run function scr_task:core/delivery/begin with storage scr_task:runtime work.ctx
