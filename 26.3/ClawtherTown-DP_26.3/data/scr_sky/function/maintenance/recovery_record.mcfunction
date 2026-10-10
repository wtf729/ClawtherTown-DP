$execute unless data storage scr_sky:islands records.i$(id) if data storage scr_sky:maintenance job.tombstone run data modify storage scr_sky:islands records.i$(id) set from storage scr_sky:maintenance job.tombstone
$execute if data storage scr_sky:islands records.i$(id) run data modify storage scr_sky:islands records.i$(id).state set value "recovery"
$execute if data storage scr_sky:islands records.i$(id) run data modify storage scr_sky:islands records.i$(id).maintenance_recovery set from storage scr_sky:maintenance job
