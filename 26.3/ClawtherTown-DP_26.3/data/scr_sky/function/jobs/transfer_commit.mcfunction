$data modify storage scr_sky:runtime work.island.roles."$(key)" set value 2
$data remove storage scr_sky:runtime work.island.roles."$(target)"
$data modify storage scr_sky:runtime work.island.owner set value "$(target)"
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
$data modify storage scr_sky:players players."$(key)".owned_island_id set value 0
$data modify storage scr_sky:players players."$(target)".owned_island_id set value $(id)
# Both membership indexes already contain this island. Neither Claim nor Reset cooldown is modified.
$execute if data storage scr_sky:ui sessions."$(key)".page{id:$(id)} run data modify storage scr_sky:ui sessions."$(key)".refresh_transfer set value 1b
$execute if data storage scr_sky:ui sessions."$(key)" run data modify storage scr_sky:ui sessions."$(key)".buttons set value []
$execute if data storage scr_sky:ui sessions."$(target)".page{id:$(id)} run data modify storage scr_sky:ui sessions."$(target)".refresh_transfer set value 1b
$execute if data storage scr_sky:ui sessions."$(target)" run data modify storage scr_sky:ui sessions."$(target)".buttons set value []
