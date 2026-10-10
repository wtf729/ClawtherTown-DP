execute if data storage scr_task:runtime work.objective{kind:"item"} unless function scr_task:task/skywing/shared/inventory_ready run return 0
execute if data storage scr_task:runtime work.objective{kind:"collection"} unless function scr_task:task/skywing/shared/inventory_ready run return 0
execute if data storage scr_task:runtime work.objective{kind:"item"} run function scr_task:core/inventory/count with storage scr_task:runtime work.objective
execute if data storage scr_task:runtime work.objective{kind:"collection"} run function scr_task:task/skywing/shared/collection
execute if data storage scr_task:runtime work.objective{kind:"level"} run function scr_task:task/skywing/shared/level
execute if data storage scr_task:runtime work.objective{kind:"dimension"} run function scr_task:task/skywing/shared/dimension with storage scr_task:runtime work.objective
execute if data storage scr_task:runtime work.objective{kind:"item"} run function scr_task:task/skywing/shared/write_count
execute if data storage scr_task:runtime work.objective{kind:"collection"} run function scr_task:task/skywing/shared/write_count
execute if data storage scr_task:runtime work.objective{kind:"level"} run function scr_task:task/skywing/shared/write_count
execute if data storage scr_task:runtime work.objective{kind:"dimension"} run function scr_task:task/skywing/shared/write_count
