# Called only for this job's owned:1b ticket. Non-Travel behavior remains unchanged.
$execute unless data storage scr_sky:jobs active{kind:"travel"} in scr:sky run forceload remove $(x) $(z)
$execute if data storage scr_sky:jobs active{kind:"travel"} run function scr_sky:jobs/travel_tickets/queue {x:$(x),z:$(z),owner:"travel"}
