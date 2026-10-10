data modify storage scr_sky:ui work.route set value {"view":"operate","op":"claim","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.claim","fallback":"获取自己的空岛","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
data remove storage scr_sky:runtime work
data modify storage scr_sky:runtime work set value {}
data modify storage scr_sky:runtime work.clock_stamp set from storage scr_sky:ui work.snapshot.player.last_claim_started
function scr_sky:core/cooldown/read
function scr_sky:ui/cooldown_text
data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.claim_cd","fallback":"Claim 冷却剩余：%s","color":"white","with":[{"text":""}]}
data modify storage scr_sky:ui work.line.with[0] set from storage scr_sky:ui work.clock_text
data modify storage scr_sky:ui work.dialog.body append value {type:"minecraft:plain_message",contents:{text:""},width:380}
data modify storage scr_sky:ui work.dialog.body[-1].contents set from storage scr_sky:ui work.line
data remove storage scr_sky:runtime work
