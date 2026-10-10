scoreboard players enable @s sky_action
function scr_uuid:resolve
data modify storage scr_sky:ui lookup set from storage scr_uuid:runtime result
execute store result storage scr_sky:ui lookup.token int 1 run scoreboard players get @s sky_action
scoreboard players set @s sky_action 0
data remove storage scr_sky:ui request
function scr_sky:ui/lookup with storage scr_sky:ui lookup
execute unless data storage scr_sky:ui request run return run function scr_sky:ui/open
# Consume all page tickets before any operation.
function scr_sky:ui/session_reset with storage scr_sky:ui lookup
execute if data storage scr_sky:ui request{view:"operate"} run function scr_sky:ui/operate with storage scr_sky:ui request
execute if data storage scr_sky:ui request{view:"close"} run return run function scr_sky:ui/close
function scr_sky:ui/render
