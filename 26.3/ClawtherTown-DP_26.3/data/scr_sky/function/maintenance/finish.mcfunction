function scr_sky:maintenance/source_release
data modify storage scr_sky:runtime work.release_tickets set from storage scr_sky:maintenance job.hub_tickets
execute if data storage scr_sky:maintenance job.starter_tickets run data modify storage scr_sky:runtime work.release_tickets append from storage scr_sky:maintenance job.starter_tickets[]
function scr_sky:maintenance/release_loop
function scr_sky:maintenance/notify with storage scr_sky:maintenance job
data modify storage scr_sky:maintenance last set from storage scr_sky:maintenance job
# Diagnostic receipt contains no authoritative island pointer after Delete.
execute if data storage scr_sky:maintenance job{outcome:"deleted"} run data remove storage scr_sky:maintenance last
data remove storage scr_sky:maintenance job
