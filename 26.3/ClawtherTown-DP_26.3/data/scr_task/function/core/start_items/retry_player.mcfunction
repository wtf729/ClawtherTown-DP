execute if data storage scr_task:runtime {busy:1b} run return 0
function scr_uuid:resolve
execute unless data storage scr_uuid:runtime result.key run return 0
return run function scr_task:core/start_items/retry_bound with storage scr_uuid:runtime result
