execute if data storage scr_sky:maintenance job{phase:"hub_load"} run return run function scr_sky:maintenance/hub_load
execute if data storage scr_sky:maintenance job{phase:"start"} run return run function scr_sky:maintenance/start with storage scr_sky:maintenance job
execute if data storage scr_sky:maintenance job{phase:"column_load"} run return run function scr_sky:maintenance/column_load
execute if data storage scr_sky:maintenance job{phase:"clear"} run return run function scr_sky:maintenance/batch
execute if data storage scr_sky:maintenance job{phase:"verify"} run return run function scr_sky:maintenance/batch
execute if data storage scr_sky:maintenance job{phase:"next_column"} run return run function scr_sky:maintenance/next_column
execute if data storage scr_sky:maintenance job{phase:"reset_prepare"} run return run function scr_sky:maintenance/reset_prepare
execute if data storage scr_sky:maintenance job{phase:"reset_place"} run return run function scr_sky:maintenance/reset_place
execute if data storage scr_sky:maintenance job{phase:"reset_commit"} run return run function scr_sky:maintenance/reset_commit
execute if data storage scr_sky:maintenance job{phase:"delete_refs"} run return run function scr_sky:maintenance/delete_refs
execute if data storage scr_sky:maintenance job{phase:"delete_commit"} run return run function scr_sky:maintenance/delete_commit
execute if data storage scr_sky:maintenance job{phase:"recovery"} run return run function scr_sky:maintenance/recovery
data modify storage scr_sky:maintenance job.phase set value "recovery"
