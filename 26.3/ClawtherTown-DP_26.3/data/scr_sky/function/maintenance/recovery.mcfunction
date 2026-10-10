execute if data storage scr_sky:maintenance job{kind:"delete",outcome:"deleted"} run function scr_sky:maintenance/release_recovery
execute unless data storage scr_sky:maintenance job run return 1
execute if data storage scr_sky:maintenance job{locked:1b} run function scr_sky:maintenance/recovery_record with storage scr_sky:maintenance job
data modify storage scr_sky:maintenance job.outcome set value "recovery"
function scr_sky:maintenance/finish
