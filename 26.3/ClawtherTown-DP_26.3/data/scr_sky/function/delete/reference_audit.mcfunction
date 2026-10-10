# Diagnostic only; does not delete records, edit Profile or release an ID.
execute store result score #indexed_count scr_sk run data get storage scr_sky:players keys
execute store result score #player_count scr_sk run data get storage scr_sky:players players
data modify storage scr_sky:runtime work.audit_keys set from storage scr_sky:players keys
data modify storage scr_sky:runtime result.references set value []
execute unless score #indexed_count scr_sk = #player_count scr_sk run data modify storage scr_sky:runtime result.references append value "incomplete_player_index"
$execute if data storage scr_sky:jobs last{id:$(id)} run data modify storage scr_sky:runtime result.references append value "last_job"
$execute if data storage scr_sky:scan last_job{id:$(id)} run data modify storage scr_sky:runtime result.references append value "last_scan"
function scr_sky:delete/reference_loop
$execute if data storage scr_sky:scan job{id:$(id)} run data modify storage scr_sky:runtime result.references append value "scanner"
$execute if data storage scr_sky:jobs active{id:$(id)} run data modify storage scr_sky:runtime result.references append value "island_job"
$execute if data storage scr_sky:invites pending[{island_id:$(id)}] run data modify storage scr_sky:runtime result.references append value "invitation"
