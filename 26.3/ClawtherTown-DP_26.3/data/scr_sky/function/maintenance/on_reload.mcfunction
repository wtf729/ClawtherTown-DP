# Do not repeat a destructive/commit phase blindly after interruption.
data modify storage scr_sky:maintenance job.error set value "reload_or_restart"
data modify storage scr_sky:maintenance job.phase set value "recovery"
data modify storage scr_sky:maintenance job.wait set value 0
