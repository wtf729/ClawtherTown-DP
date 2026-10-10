$execute unless data storage scr_sky:players players."$(target)" run return 0
$execute if data storage scr_sky:runtime work.island{owner:"$(target)"} run return 0
$execute if data storage scr_sky:runtime work.island.roles."$(target)" run return 0
$data remove storage scr_sky:invites pending[{island_id:$(id),target:"$(target)"}]
$data modify storage scr_sky:invites pending append value {island_id:$(id),inviter:"$(key)",target:"$(target)",state:"pending"}
data modify storage scr_sky:runtime result.ok set value 1b
