$execute unless data storage scr_sky:invites pending[{island_id:$(id),target:"$(key)"}] run return 0
$data remove storage scr_sky:invites pending[{island_id:$(id),target:"$(key)"}]
data modify storage scr_sky:runtime result.ok set value 1b
