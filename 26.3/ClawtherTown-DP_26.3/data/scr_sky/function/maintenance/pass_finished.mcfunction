execute if data storage scr_sky:maintenance job{pass:"clear"} run return run function scr_sky:maintenance/begin_verify
execute unless data storage scr_sky:maintenance job{cleared:6144,verified:6144} run return run function scr_sky:maintenance/recovery
data modify storage scr_sky:maintenance job.world_verified set value 1b
execute if data storage scr_sky:maintenance job{kind:"reset"} run data modify storage scr_sky:maintenance job.phase set value "reset_prepare"
execute if data storage scr_sky:maintenance job{kind:"delete"} run data modify storage scr_sky:maintenance job.phase set value "delete_refs"
data modify storage scr_sky:maintenance job.wait set value 0
