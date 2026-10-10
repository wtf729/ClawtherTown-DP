execute unless data storage scr_sky:scan job run return 0
data modify storage scr_sky:scan job.error set value "manual_abort"
data modify storage scr_sky:scan job.phase set value "abort"
