data modify storage scr_sky:runtime work.ctx.id set from storage scr_sky:runtime work.player.primary_island_id
function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
scoreboard players set #role scr_sk 0
execute if data storage scr_sky:runtime work.island{state:"active"} run function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute if data storage scr_sky:runtime work.island{state:"resetting"} run function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute if data storage scr_sky:runtime work.island{state:"recovery",maintenance_kind:"reset"} run function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute if score #role scr_sk matches 1..3 run return 1
data modify storage scr_sky:runtime work.player.primary_island_id set value 0
data modify storage scr_sky:runtime work.ctx.id set from storage scr_sky:runtime work.player.owned_island_id
function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
scoreboard players set #role scr_sk 0
execute if data storage scr_sky:runtime work.island{state:"active"} run function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute if data storage scr_sky:runtime work.island{state:"resetting"} run function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute if data storage scr_sky:runtime work.island{state:"recovery",maintenance_kind:"reset"} run function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute if score #role scr_sk matches 3 run data modify storage scr_sky:runtime work.player.primary_island_id set from storage scr_sky:runtime work.ctx.id
function scr_sky:player/save with storage scr_sky:runtime work.ctx
execute if score #role scr_sk matches 3 run return 1
return 0
