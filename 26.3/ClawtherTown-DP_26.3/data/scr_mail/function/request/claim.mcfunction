execute store result score #claimed scr_ml_n run function scr_mail:claim/start with storage scr_mail:runtime work.ctx
execute unless score #claimed scr_ml_n matches 1 run tellraw @s [{"text":"[","color":"gold","bold":true},{"color":"yellow","bold":true,"translate":"character.scr.postman","fallback":"驿差鹰"},{"text":"] ","color":"gold","bold":true},{"translate":"message.scr.mail.claim_incomplete","fallback":"邮件奖励领取失败, 请检查背包空间与领取条件!","color":"yellow","bold":false}]
function scr_mail:ui/detail
