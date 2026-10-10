$data remove storage scr_sky:invites pending[{island_id:$(id)}]
$execute if data storage scr_sky:jobs last{id:$(id)} run data remove storage scr_sky:jobs last
$execute if data storage scr_sky:scan last_job{id:$(id)} run data remove storage scr_sky:scan last_job
# Invalidate every outstanding button before this numeric ID can ever be reused.
data modify storage scr_sky:ui sessions set value {}
