# Only our source_ticket is eligible. Borrowed/pre-existing tickets never enter the queue.
$execute if data storage scr_sky:scan job{source_ticket:1b} run function scr_sky:jobs/travel_tickets/queue {x:$(x),z:$(z),owner:"scanner"}
data modify storage scr_sky:scan job.source_ticket set value 0b
