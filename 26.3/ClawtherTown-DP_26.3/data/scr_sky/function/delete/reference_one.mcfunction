$execute if data storage scr_sky:players players."$(target)"{owned_island_id:$(id)} run data modify storage scr_sky:runtime result.references append value {kind:"owned",key:"$(target)"}
$execute if data storage scr_sky:players players."$(target)"{primary_island_id:$(id)} run data modify storage scr_sky:runtime result.references append value {kind:"primary",key:"$(target)"}
$data modify storage scr_sky:runtime work.ref_memberships set from storage scr_sky:players players."$(target)".memberships
$execute if data storage scr_sky:players players."$(target)".last_operation{id:$(id)} run data modify storage scr_sky:runtime result.references append value {kind:"last_operation",key:"$(target)"}
function scr_sky:delete/reference_memberships
