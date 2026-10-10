data modify storage scr_sky:runtime work.repair_primary set value 0b
$execute if data storage scr_sky:players players."$(target)"{primary_island_id:$(id)} run data modify storage scr_sky:runtime work.repair_primary set value 1b
$execute if data storage scr_sky:players players."$(target)"{owned_island_id:$(id)} run data modify storage scr_sky:players players."$(target)".owned_island_id set value 0
$execute if data storage scr_sky:players players."$(target)"{primary_island_id:$(id)} run data modify storage scr_sky:players players."$(target)".primary_island_id set value 0
$execute if data storage scr_sky:players players."$(target)".last_operation{id:$(id)} run data remove storage scr_sky:players players."$(target)".last_operation
$data modify storage scr_sky:runtime work.member_queue set from storage scr_sky:players players."$(target)".memberships
data modify storage scr_sky:runtime work.member_new set value []
function scr_sky:membership/filter_index
$data modify storage scr_sky:players players."$(target)".memberships set from storage scr_sky:runtime work.member_new
$data modify storage scr_sky:runtime work.ctx.key set value "$(target)"
function scr_sky:player/init with storage scr_sky:runtime work.ctx
execute if data storage scr_sky:runtime work{repair_primary:1b} run function scr_sky:primary/resolve
