$execute unless data storage scr_mail:players players."$(key)".messages[{id:$(id),state:"error"}] run return 0
$execute if data storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards[{state:"executing"}] run return 0
$execute if data storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards[{state:"generating"}] run return 0
$execute if data storage scr_mail:players players."$(key)".messages[{id:$(id)}].rewards[{prepared:0b}] run return 0
$execute unless data storage scr_mail:players players."$(key)".transaction{mail_id:$(id)} run return 0
$data modify storage scr_mail:players players."$(key)".messages[{id:$(id)}].state set value "pending"
$data remove storage scr_mail:players players."$(key)".transaction
tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"translate":"message.scr.mail.recovery_resumed","fallback":"剩余邮件已允许继续领取","color":"yellow","bold":false}]
return 1
