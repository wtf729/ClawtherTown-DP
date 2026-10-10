execute if data storage scr_sky:jobs active{phase:"hub_prepare"} run return run function scr_sky:hub/prepare
execute if data storage scr_sky:jobs active{phase:"hub_travel"} run return run function scr_sky:hub/travel
execute if data storage scr_sky:jobs active{phase:"audit_owner"} run return run function scr_sky:jobs/audit_batch
execute if data storage scr_sky:jobs active{phase:"allocate"} run return run function scr_sky:jobs/allocate
execute if data storage scr_sky:jobs active{phase:"transfer"} run return run function scr_sky:jobs/transfer
execute if data storage scr_sky:jobs active{phase:"prepare"} run return run function scr_sky:jobs/prepare
execute if data storage scr_sky:jobs active{phase:"load"} run return run function scr_sky:jobs/load
execute if data storage scr_sky:jobs active{phase:"place"} run return run function scr_sky:jobs/place
execute if data storage scr_sky:jobs active{phase:"validate"} run return run function scr_sky:jobs/validate
execute if data storage scr_sky:jobs active{phase:"travel_prepare"} run return run function scr_sky:jobs/travel_prepare
execute if data storage scr_sky:jobs active{phase:"travel_recovery_search"} run return run function scr_sky:jobs/travel_recovery/tick
execute if data storage scr_sky:jobs active{phase:"travel"} run return run function scr_sky:jobs/travel
execute if data storage scr_sky:jobs active{phase:"recover"} run return run function scr_sky:jobs/recover
data modify storage scr_sky:jobs active.phase set value "recover"
data modify storage scr_sky:jobs active.wait set value 0
