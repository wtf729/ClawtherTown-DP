data remove storage scr_task:runtime work.ctx.island_id
$data modify storage scr_task:runtime work.ctx.island_id set from storage scr_sky:players players."$(key)".owned_island_id
execute if data storage scr_task:runtime work.ctx.island_id run function scr_task:task/skywing/sky_00/island with storage scr_task:runtime work.ctx
