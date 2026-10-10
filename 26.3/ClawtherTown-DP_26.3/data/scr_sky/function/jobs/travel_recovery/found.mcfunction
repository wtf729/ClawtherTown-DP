data modify storage scr_sky:jobs active.spawn set from storage scr_sky:jobs active.candidate
data modify storage scr_sky:jobs active.spawn_mode set value "recovery"
function scr_sky:jobs/travel_complete
