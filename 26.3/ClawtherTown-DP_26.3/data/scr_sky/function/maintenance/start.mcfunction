function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime work.island{state:"active",scan_state:"idle"} run return run function scr_sky:maintenance/recovery
function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 3 run return run function scr_sky:maintenance/recovery
$execute if data storage scr_sky:jobs active{id:$(id)} run return 0
$execute if data storage scr_sky:scan job{id:$(id)} run return 0
execute if data storage scr_sky:maintenance job{kind:"reset"} run function scr_sky:maintenance/start_reset
execute if data storage scr_sky:maintenance job{kind:"delete"} run function scr_sky:maintenance/start_delete
execute unless data storage scr_sky:maintenance job{locked:1b} run return run function scr_sky:maintenance/recovery
data modify storage scr_sky:runtime work.island.maintenance_kind set from storage scr_sky:maintenance job.kind
function scr_sky:core/island/save with storage scr_sky:runtime work.ctx
data modify storage scr_sky:maintenance job.x set from storage scr_sky:maintenance job.region.min_x
data modify storage scr_sky:maintenance job.z set from storage scr_sky:maintenance job.region.min_z
data modify storage scr_sky:maintenance job.y set from storage scr_sky:maintenance job.region.min_y
data modify storage scr_sky:maintenance job.pass set value "clear"
data modify storage scr_sky:ui sessions set value {}
data modify storage scr_sky:maintenance job.phase set value "column_load"
data modify storage scr_sky:maintenance job.wait set value 0
