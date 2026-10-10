$data modify storage scr_sky:runtime work.ticket set from storage scr_sky:jobs active.tickets[$(index)]
$data modify storage scr_sky:runtime work.ticket.index set value $(index)
function scr_sky:jobs/ticket_pin with storage scr_sky:runtime work.ticket
