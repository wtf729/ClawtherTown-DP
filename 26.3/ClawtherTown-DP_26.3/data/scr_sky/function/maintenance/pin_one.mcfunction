$data modify storage scr_sky:runtime work.pin set from storage scr_sky:maintenance job.hub_tickets[$(index)]
$data modify storage scr_sky:runtime work.pin.index set value $(index)
function scr_sky:maintenance/pin with storage scr_sky:runtime work.pin
