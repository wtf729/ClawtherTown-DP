data modify storage scr_sky:maintenance job.pass set value "verify"
data modify storage scr_sky:maintenance job.x set from storage scr_sky:maintenance job.region.min_x
data modify storage scr_sky:maintenance job.z set from storage scr_sky:maintenance job.region.min_z
data modify storage scr_sky:maintenance job.y set value -64
data modify storage scr_sky:maintenance job.phase set value "column_load"
data modify storage scr_sky:maintenance job.wait set value 0
