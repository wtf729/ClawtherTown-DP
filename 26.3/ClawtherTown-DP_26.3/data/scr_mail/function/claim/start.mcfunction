$execute if data storage scr_mail:players players."$(key)".transaction run return 0
$execute unless data storage scr_mail:players players."$(key)".messages[{id:$(id),state:"pending"}] run return 0
$data modify storage scr_mail:runtime work.mail set from storage scr_mail:players players."$(key)".messages[{id:$(id)}]
execute store result score #ok scr_ml_ok run function scr_mail:policy/claim
execute unless score #ok scr_ml_ok matches 1 run return 0
execute unless entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] store result score #ok scr_ml_ok run function scr_mail:adapter/open
execute unless entity @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1,limit=1] run return 0
execute store result score #ok scr_ml_ok run function scr_mail:claim/preflight
execute unless score #ok scr_ml_ok matches 1 run return 0
# No side effects have occurred before this point. Journal every subsequent component.
$data modify storage scr_mail:players players."$(key)".transaction set value {mail_id:$(id),phase:"claiming",reward_index:0}
$data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].state set value "claiming"
scoreboard players set #reward scr_ml_n 0
execute store result score #claim_result scr_ml_n run function scr_mail:claim/loop
$execute unless score #claim_result scr_ml_n matches 1 run data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].state set value "error"
execute unless score #claim_result scr_ml_n matches 1 run return 0
$data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].state set value "claimed"
$data remove storage scr_mail:players players."$(key)".transaction
tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"translate":"message.scr.mail.claim_complete","fallback":"邮件奖励已全部领取!","color":"yellow","bold":false}]
function scr_task:event/mail_claimed
return 1
