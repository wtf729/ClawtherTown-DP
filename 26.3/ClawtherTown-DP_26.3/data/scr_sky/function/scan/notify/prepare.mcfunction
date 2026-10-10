# Read the authoritative committed value/level and current roles; no player data initialization.
data modify storage scr_sky:level notice set value {}
$data modify storage scr_sky:level notice.island set from storage scr_sky:islands records.i$(id)
execute unless data storage scr_sky:level notice.island run return 0
data modify storage scr_sky:level notice.level set from storage scr_sky:level notice.island.level
function scr_sky:scan/notify/value_text with storage scr_sky:level notice.island.value
execute as @a run function scr_sky:scan/notify/recipient
data remove storage scr_sky:level notice
