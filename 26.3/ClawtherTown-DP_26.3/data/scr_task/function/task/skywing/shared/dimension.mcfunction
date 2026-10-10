data modify storage scr_task:runtime work.dimension_ctx set from storage scr_task:runtime work.ctx
data modify storage scr_task:runtime work.dimension_ctx.field set from storage scr_task:runtime work.objective.field
execute store result storage scr_task:runtime work.count int 1 run function scr_task:core/progress/read with storage scr_task:runtime work.dimension_ctx
$execute if predicate $(predicate) run data modify storage scr_task:runtime work.count set value 1
