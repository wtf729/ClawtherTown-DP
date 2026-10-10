$data modify storage scr_sky:runtime work.pin set from storage scr_sky:maintenance job.starter_tickets[$(index)]
$data modify storage scr_sky:runtime work.pin.index set value $(index)
function scr_sky:maintenance/starter_pin with storage scr_sky:runtime work.pin
