$execute unless data storage scr_mail:players players."$(key)".messages[{id:$(id)}] run return 0
$data modify storage scr_mail:runtime work.mail set from storage scr_mail:players players."$(key)".messages[{id:$(id)}]
function scr_mail:ui/format/mail
data modify storage scr_mail:runtime work.line set value {type:"minecraft:plain_message",contents:{},width:350}
data modify storage scr_mail:runtime work.line.contents set from storage scr_mail:runtime work.title_label
data modify storage scr_mail:runtime work.dialog.body append from storage scr_mail:runtime work.line
$data modify storage scr_mail:runtime work.dialog.body append value {type:"minecraft:plain_message",contents:{"translate":"gui.scr.mail.id","fallback":"邮件 #%s","with":[{"text":"$(id)"}],"color":"white"},width:350}
data modify storage scr_mail:runtime work.line set value {"type":"minecraft:plain_message","contents":{"text":"","extra":[{"translate":"gui.scr.mail.reward_for","fallback":"奖励归属: ","color":"white"},{},{"text":" · ","color":"dark_gray"},{"translate":"gui.scr.mail.claim_status","fallback":"领取状态: ","color":"white"},{}]},"width":350}
data modify storage scr_mail:runtime work.line.contents.extra[1] set from storage scr_mail:runtime work.profile_label
data modify storage scr_mail:runtime work.line.contents.extra[4] set from storage scr_mail:runtime work.state_label
data modify storage scr_mail:runtime work.dialog.body append from storage scr_mail:runtime work.line
scoreboard players set #reward scr_ml_n 0
execute store result score #count scr_ml_n run data get storage scr_mail:runtime work.mail.rewards
function scr_mail:ui/reward/mail/loop
execute if data storage scr_mail:runtime work.ctx{view:"history"} run return run function scr_mail:ui/detail_footer
execute store result score #eligible scr_ml_n run function scr_mail:policy/claim
data modify storage scr_mail:runtime work.button set value {"label":{"translate":"gui.scr.mail.claim","fallback":"领取","color":"green"},"tooltip":{"translate":"gui.scr.mail.tooltip.claim","fallback":"领取时将检查背包空间是否充足"}}
data modify storage scr_mail:runtime work.op set value {kind:"claim"}
data modify storage scr_mail:runtime work.op.id set from storage scr_mail:runtime work.ctx.id
execute store result storage scr_mail:runtime work.op.page int 1 run scoreboard players get #page scr_ml_n
execute if score #eligible scr_ml_n matches 1 run function scr_mail:ui/button
execute unless score #eligible scr_ml_n matches 1 run function scr_mail:ui/unavailable
# Detail return follows the source list; the history list itself still returns to inbox.
function scr_mail:ui/detail_footer
