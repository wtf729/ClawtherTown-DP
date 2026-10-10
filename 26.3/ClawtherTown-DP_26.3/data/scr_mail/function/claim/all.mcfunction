# Queue IDs only. Each individual mail transaction completes synchronously.
$execute if data storage scr_mail:players players."$(key)".batch run return 0
$execute if data storage scr_mail:players players."$(key)".transaction run return 0
execute unless score @s scr_pf_init matches 1 run return 0
execute unless score @s scr_pf_lock matches 0 run return 0
function scr_mail:policy/resolve
execute unless score @s scr_pf_cur = #profile scr_ml_n run return 0
data modify storage scr_mail:runtime work.batch set value {ids:[],profile:0,claimed:0}
$data modify storage scr_mail:runtime work.batch.ids append from storage scr_mail:players players."$(key)".messages[{state:"pending"}].id
execute store result storage scr_mail:runtime work.batch.profile int 1 run scoreboard players get #profile scr_ml_n
$data modify storage scr_mail:players players."$(key)".batch set from storage scr_mail:runtime work.batch
scoreboard players set @s scr_ml_batch 1
tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"translate":"message.scr.mail.claim_all_started","fallback":"正在批量领取!","color":"yellow","bold":false}]
return 1
