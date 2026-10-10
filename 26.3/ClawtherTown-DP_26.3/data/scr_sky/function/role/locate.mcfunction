execute store result score #ox scr_sk run data get storage scr_sky:islands geometry.origin_x 1
execute store result score #oz scr_sk run data get storage scr_sky:islands geometry.origin_z 1
scoreboard players operation #rx scr_sk = #px scr_sk
scoreboard players operation #rz scr_sk = #pz scr_sk
scoreboard players operation #rx scr_sk -= #ox scr_sk
scoreboard players operation #rz scr_sk -= #oz scr_sk
execute unless score #rx scr_sk matches 0.. run return 0
execute if score #rx scr_sk >= #span_x scr_sk run return 0
execute unless score #rz scr_sk matches 0.. run return 0
execute if score #rz scr_sk >= #span_z scr_sk run return 0
scoreboard players operation #col scr_sk = #rx scr_sk
scoreboard players operation #row scr_sk = #rz scr_sk
scoreboard players operation #rx scr_sk %= #g_spacing scr_sk
scoreboard players operation #rz scr_sk %= #g_spacing scr_sk
execute if score #rx scr_sk >= #g_size_x scr_sk run return 0
execute if score #rz scr_sk >= #g_size_z scr_sk run return 0
scoreboard players operation #col scr_sk /= #g_spacing scr_sk
scoreboard players operation #row scr_sk /= #g_spacing scr_sk
scoreboard players operation #id scr_sk = #row scr_sk
scoreboard players operation #id scr_sk *= #g_columns scr_sk
scoreboard players operation #id scr_sk += #col scr_sk
scoreboard players add #id scr_sk 1
execute store result storage scr_sky:runtime work.ctx.id int 1 run scoreboard players get #id scr_sk
function scr_sky:core/island/read with storage scr_sky:runtime work.ctx
execute unless data storage scr_sky:runtime work.island run return 0
execute unless data storage scr_sky:runtime work.island{state:"active"} run return 0
execute if data storage scr_sky:runtime work.island{reset_state:"running"} run return 0
execute if data storage scr_sky:runtime work.island{delete_state:"deleting"} run return 0
function scr_sky:role/read with storage scr_sky:runtime work.ctx
scoreboard players operation @s scr_sk_id = #id scr_sk
scoreboard players operation @s scr_sk_role = #role scr_sk
