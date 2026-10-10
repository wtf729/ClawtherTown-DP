data modify storage scr_sky:runtime work.repair_primary set value 0b
$execute if data storage scr_sky:runtime work.player{primary_island_id:$(id)} run data modify storage scr_sky:runtime work.repair_primary set value 1b
$data remove storage scr_sky:runtime work.island.roles."$(key)"
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
data modify storage scr_sky:runtime work.member_queue set from storage scr_sky:runtime work.player.memberships
data modify storage scr_sky:runtime work.member_new set value []
function scr_sky:membership/filter_index
data modify storage scr_sky:runtime work.player.memberships set from storage scr_sky:runtime work.member_new
function scr_sky:player/save with storage scr_sky:runtime work.ctx
execute if data storage scr_sky:runtime work{repair_primary:1b} run function scr_sky:primary/resolve
$data remove storage scr_sky:ui sessions."$(key)"
data modify storage scr_sky:runtime result.ok set value 1b
