function scr_sky:scan/chunk/ticket with storage scr_sky:scan job
execute unless data storage scr_sky:scan job{phase:"load_column"} run return 0
function scr_sky:scan/chunk/loaded with storage scr_sky:scan job
execute unless score #loaded scr_sk matches 1 run return 0
data modify storage scr_sky:scan job.phase set value "broad"
data modify storage scr_sky:scan job.wait set value 0
