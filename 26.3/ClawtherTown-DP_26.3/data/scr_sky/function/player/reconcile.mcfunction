data modify storage scr_sky:runtime work.ctx.id set from storage scr_sky:runtime work.player.owned_island_id
function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
scoreboard players set #role scr_sk 0
execute if data storage scr_sky:runtime work.island run function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 3 run data modify storage scr_sky:runtime work.player.owned_island_id set value 0
function scr_sky:primary/resolve
function scr_sky:player/save with storage scr_sky:runtime work.ctx
