$execute unless data storage scr_mail:players players."$(key)".batch run scoreboard players set @s scr_ml_batch 0
$execute unless data storage scr_mail:players players."$(key)".batch run return 0
function scr_mail:policy/resolve
$execute store result score #batch_profile scr_ml_n run data get storage scr_mail:players players."$(key)".batch.profile
execute unless score #batch_profile scr_ml_n = #profile scr_ml_n run return run function scr_mail:claim/batch_end with storage scr_mail:runtime work.ctx
execute unless score @s scr_pf_lock matches 0 run return run function scr_mail:claim/batch_end with storage scr_mail:runtime work.ctx
$execute if data storage scr_mail:players players."$(key)".transaction run return run function scr_mail:claim/batch_end with storage scr_mail:runtime work.ctx
$execute unless data storage scr_mail:players players."$(key)".batch.ids[0] run return run function scr_mail:claim/batch_end with storage scr_mail:runtime work.ctx
$data modify storage scr_mail:runtime work.ctx.id set from storage scr_mail:players players."$(key)".batch.ids[0]
execute store result score #one scr_ml_n run function scr_mail:claim/start with storage scr_mail:runtime work.ctx
$execute store result score #batch_ok scr_ml_n run data get storage scr_mail:players players."$(key)".batch.claimed
execute if score #one scr_ml_n matches 1 run scoreboard players add #batch_ok scr_ml_n 1
$execute store result storage scr_mail:players players."$(key)".batch.claimed int 1 run scoreboard players get #batch_ok scr_ml_n
$data remove storage scr_mail:players players."$(key)".batch.ids[0]
$execute unless data storage scr_mail:players players."$(key)".batch.ids[0] run function scr_mail:claim/batch_end with storage scr_mail:runtime work.ctx
