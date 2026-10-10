# Player/administrator diagnostic only. Reads UUID and prints the transient result; no Profile access.
function scr_uuid:resolve
execute unless data storage scr_uuid:runtime result.key run return 0
tellraw @s [{"text":"[UUID] 原始 UUID: ","color":"gray"},{"nbt":"UUID","entity":"@s","color":"white"}]
tellraw @s [{"text":"[UUID] key: ","color":"gold"},{"nbt":"result.key","storage":"scr_uuid:runtime","color":"aqua"}]
return 1
