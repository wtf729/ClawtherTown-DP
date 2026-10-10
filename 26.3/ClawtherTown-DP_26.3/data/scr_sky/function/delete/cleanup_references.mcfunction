function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime work.island{state:"deleting",delete_state:"reference_cleanup",cleanup:{world_verified:1b}} run return 0
$execute if data storage scr_sky:jobs active{id:$(id)} run return 0
$execute if data storage scr_sky:scan job{id:$(id)} run return 0
execute store result score #indexed_count scr_sk run data get storage scr_sky:players keys
execute store result score #player_count scr_sk run data get storage scr_sky:players players
execute unless score #indexed_count scr_sk = #player_count scr_sk run return 0
data modify storage scr_sky:runtime work.cleanup_ctx set from storage scr_sky:runtime work.ctx
data modify storage scr_sky:runtime work.cleanup_keys set from storage scr_sky:players keys
function scr_sky:delete/cleanup_loop
function scr_sky:delete/cleanup_shared with storage scr_sky:runtime work.ctx
function scr_sky:delete/reference_audit with storage scr_sky:runtime work.ctx
execute if data storage scr_sky:runtime result.references[0] run return 0
function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
data modify storage scr_sky:runtime work.island.delete_state set value "reference_check"
data modify storage scr_sky:runtime work.island.cleanup.references_verified set value 1b
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
return 1
