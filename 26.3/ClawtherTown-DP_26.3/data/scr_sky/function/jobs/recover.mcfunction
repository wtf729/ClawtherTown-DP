execute if data storage scr_sky:jobs active{allocated:1b} run function scr_sky:jobs/recovery_record with storage scr_sky:jobs active
data modify storage scr_sky:jobs active.outcome set value "recovery"
function scr_sky:jobs/finish
