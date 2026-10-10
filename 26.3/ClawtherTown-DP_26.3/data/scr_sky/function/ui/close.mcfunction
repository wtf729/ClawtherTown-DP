# Close consumes only transient UI tickets; no Island/Profile data is changed.
scoreboard players set @s sky_action 0
scoreboard players set @s sky 0
scoreboard players enable @s sky_action
scoreboard players enable @s sky
function scr_uuid:resolve
data modify storage scr_sky:ui lookup set from storage scr_uuid:runtime result
function scr_sky:ui/session_reset with storage scr_sky:ui lookup
dialog clear @s
