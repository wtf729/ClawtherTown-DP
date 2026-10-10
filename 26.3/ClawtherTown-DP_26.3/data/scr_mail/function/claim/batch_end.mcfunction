$data remove storage scr_mail:players players."$(key)".batch
scoreboard players set @s scr_ml_batch 0
tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"translate":"message.scr.mail.claim_all_finished","fallback":"批量领取结束!","color":"yellow","bold":false}]
