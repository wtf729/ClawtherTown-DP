data remove storage scr_sky:ui work.invitation
$data modify storage scr_sky:ui work.invitation set from storage scr_sky:invites pending[{island_id:$(id),target:"$(key)",state:"pending"}]
