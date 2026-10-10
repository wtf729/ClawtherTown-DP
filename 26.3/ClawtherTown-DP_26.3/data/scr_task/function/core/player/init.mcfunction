$execute if data storage scr_task:players players."$(key)".meta unless data storage scr_task:players players."$(key)".meta{version:1} run return 0
$execute if data storage scr_task:players players."$(key)".meta{version:1} run return run function scr_task:core/player/refresh_catalog with storage scr_task:runtime work.ctx
$execute if data storage scr_task:players players."$(key)" run return 0
$data modify storage scr_task:players players."$(key)" set value {meta:{version:1},tasks:{}}
return run function scr_task:core/player/refresh_catalog with storage scr_task:runtime work.ctx
