$execute store result score #count scr_ml_n run data get storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards
scoreboard players set #reward scr_ml_n 0
execute store result score #prepared scr_ml_n run function scr_mail:prepare/loop
$execute if score #prepared scr_ml_n matches 1 run data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].state set value "pending"
$execute unless score #prepared scr_ml_n matches 1 run data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].state set value "error"
execute unless score #prepared scr_ml_n matches 1 run tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"translate":"message.scr.mail.prepare_failed","fallback":"邮件准备失败!","color":"yellow","bold":false}]
return run scoreboard players get #prepared scr_ml_n
