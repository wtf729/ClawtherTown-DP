tag @s add scr_sky.name_adapter
tag @s add scr.clean_protected
data merge entity @s {view_range:0.0f}
function scr_sky:player/name_resolve with storage scr_sky:runtime work.ctx
data modify storage scr_sky:runtime work.player.last_known_name set from entity @s text
# Only the exact newly summoned, tagged adapter is removed.
kill @s[type=minecraft:text_display,tag=scr_sky.name_adapter]
