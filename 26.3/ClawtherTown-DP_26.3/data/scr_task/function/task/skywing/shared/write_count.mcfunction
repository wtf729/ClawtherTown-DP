# Only ordinary item objectives latch; collection/level/dimension retain their semantics.
data modify storage scr_task:runtime work.ctx.field set from storage scr_task:runtime work.objective.field
execute if data storage scr_task:runtime work.objective{kind:"item"} store result score #held_locked scr_tk run function scr_task:task/skywing/shared/item_locked with storage scr_task:runtime work.ctx
execute if data storage scr_task:runtime work.objective{kind:"item"} if score #held_locked scr_tk matches -1 run return 0
execute if data storage scr_task:runtime work.objective{kind:"item"} if score #held_locked scr_tk matches 1 run return 1
data modify storage scr_task:runtime work.ctx.amount set from storage scr_task:runtime work.count
return run function scr_task:core/progress/set with storage scr_task:runtime work.ctx
