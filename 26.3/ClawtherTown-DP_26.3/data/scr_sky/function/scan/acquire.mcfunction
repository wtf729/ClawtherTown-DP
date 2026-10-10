# Query before add: pre-existing administrator tickets are borrowed, never removed.
execute in scr_sky:scanner unless loaded 0 0 0 run function scr_sky:scan/buffer/ticket
execute in scr_sky:scanner unless loaded 0 0 0 run return 0
execute in scr:sky unless loaded -1048576 0 -1048576 run function scr_sky:scan/reference/ticket
execute in scr:sky unless loaded -1048576 0 -1048576 run return 0
# Pin even if naturally loaded, because a player can leave during the job.
function scr_sky:scan/buffer/ticket
function scr_sky:scan/reference/ticket
execute unless data storage scr_sky:scan job{phase:"acquire"} run return 0
execute in scr_sky:scanner run function scr_sky:scan/buffer/clear
data modify storage scr_sky:scan job.phase set value "verify_ref"
data modify storage scr_sky:scan job.wait set value 0
