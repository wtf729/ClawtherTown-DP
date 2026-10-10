execute if data storage scr_sky:scan job{phase:"acquire"} run return run function scr_sky:scan/acquire
execute if data storage scr_sky:scan job{phase:"verify_ref"} run return run function scr_sky:scan/reference/step
execute if data storage scr_sky:scan job{phase:"load_column"} run return run function scr_sky:scan/chunk/acquire
execute if data storage scr_sky:scan job{phase:"broad"} run return run function scr_sky:scan/chunk/broad
execute if data storage scr_sky:scan job{phase:"detail"} run return run function scr_sky:scan/section/step
execute if data storage scr_sky:scan job{phase:"next_column"} run return run function scr_sky:scan/chunk/next
execute if data storage scr_sky:scan job{phase:"commit"} run return run function scr_sky:scan/commit
execute if data storage scr_sky:scan job{phase:"abort"} run return run function scr_sky:scan/abort
data modify storage scr_sky:scan job.error set value "unknown_phase"
data modify storage scr_sky:scan job.phase set value "abort"
