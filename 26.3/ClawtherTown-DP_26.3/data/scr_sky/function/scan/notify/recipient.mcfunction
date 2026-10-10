function scr_uuid:resolve
execute unless data storage scr_uuid:runtime result.key run return 0
data modify storage scr_sky:level notice.player.key set from storage scr_uuid:runtime result.key
function scr_sky:scan/notify/member with storage scr_sky:level notice.player
