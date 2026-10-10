function scr_uuid:resolve
execute unless data storage scr_uuid:runtime result.key run return 0
data modify storage scr_sky:runtime work.online_entry set value {}
data modify storage scr_sky:runtime work.online_entry.key set from storage scr_uuid:runtime result.key
data modify storage scr_sky:runtime work.online append from storage scr_sky:runtime work.online_entry
