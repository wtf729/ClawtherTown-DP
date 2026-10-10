execute unless data storage scr_sky:runtime work.island{state:"active"} run return 0
function scr_sky:role/read with storage scr_sky:runtime work.ctx
execute unless score #role scr_sk matches 1..3 run return 0
data modify storage scr_sky:runtime work.entry set value {}
data modify storage scr_sky:runtime work.entry.id set from storage scr_sky:runtime work.ctx.id
execute store result storage scr_sky:runtime work.entry.role int 1 run scoreboard players get #role scr_sk
data modify storage scr_sky:runtime work.entry.level set from storage scr_sky:runtime work.island.level
data modify storage scr_sky:runtime result.islands append from storage scr_sky:runtime work.entry
execute store result score #level scr_sk run data get storage scr_sky:runtime work.island.level 1
execute store result score #maxlevel scr_sk run data get storage scr_sky:runtime result.max_level 1
execute if score #level scr_sk > #maxlevel scr_sk run data modify storage scr_sky:runtime result.max_level set from storage scr_sky:runtime work.island.level
