function scr_uuid:resolve
$execute unless data storage scr_uuid:runtime result{key:"$(key)"} run return 0
scoreboard players set #address_online scr_tk 1
function scr_task:core/subtask/check with storage scr_task:runtime work.ctx
return run function scr_task:core/lifecycle/ready_to_complete
