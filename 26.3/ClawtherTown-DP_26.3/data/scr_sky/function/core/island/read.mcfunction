data remove storage scr_sky:runtime work.island
$data modify storage scr_sky:runtime work.island set from storage scr_sky:islands records.i$(id)
execute unless data storage scr_sky:runtime work.island run return 0
execute unless data storage scr_sky:runtime work.island.delete_state run data modify storage scr_sky:runtime work.island.delete_state set value "idle"
execute unless data storage scr_sky:runtime work.island.members_index run data modify storage scr_sky:runtime work.island.members_index set value []
return 1
