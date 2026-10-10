$execute unless data storage scr_sky:players players."$(key)" run data modify storage scr_sky:players players."$(key)" set value {version:1,owned_island_id:0,primary_island_id:0,memberships:[]}
function scr_sky:player/index with storage scr_sky:runtime work.ctx
$data modify storage scr_sky:runtime work.player set from storage scr_sky:players players."$(key)"
