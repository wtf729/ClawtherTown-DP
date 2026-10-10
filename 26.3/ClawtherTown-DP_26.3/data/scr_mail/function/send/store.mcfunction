$execute if data storage scr_mail:players players."$(key)".messages[$(event)] run return 1
scoreboard players set #id scr_ml_n 0
$execute store result score #id scr_ml_n run data get storage scr_mail:players players."$(key)".next_id
execute unless score #id scr_ml_n matches 1..2000000000 run return 0
data modify storage scr_mail:runtime work.new set value {state:"preparing",revision:1,rewards:[]}
data modify storage scr_mail:runtime work.new.title set from storage scr_mail:runtime work.mail.title
data modify storage scr_mail:runtime work.new.source set from storage scr_mail:runtime work.mail.source
data modify storage scr_mail:runtime work.new.event_id set from storage scr_mail:runtime work.mail.event_id
data modify storage scr_mail:runtime work.new.claim_profile set from storage scr_mail:runtime work.mail.claim_profile
data modify storage scr_mail:runtime work.new.rewards set from storage scr_mail:runtime work.mail.rewards
execute store result storage scr_mail:runtime work.new.id int 1 run scoreboard players get #id scr_ml_n
scoreboard players add #id scr_ml_n 1
$execute store result storage scr_mail:players players."$(key)".next_id int 1 run scoreboard players get #id scr_ml_n
$execute store success score #ok scr_ml_ok run data modify storage scr_mail:players players."$(key)".messages append from storage scr_mail:runtime work.new
execute unless score #ok scr_ml_ok matches 1 run return 0
scoreboard players set @s scr_ml_work 1
tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"translate":"message.scr.mail.received","fallback":"你收到了新的邮件!","color":"yellow","bold":false}]
return 1
