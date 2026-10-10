execute if data storage scr_sky:runtime busy run return 0
function scr_sky:core/context/open
data modify storage scr_sky:runtime work.ctx.uuid set from entity @s UUID
execute summon minecraft:text_display run function scr_sky:player/name_adapter
function scr_sky:player/save with storage scr_sky:runtime work.ctx
function scr_sky:core/context/close
scoreboard players operation @s scr_sk_seen = @s scr_sk_leave
function scr_task:event/sky_updated
