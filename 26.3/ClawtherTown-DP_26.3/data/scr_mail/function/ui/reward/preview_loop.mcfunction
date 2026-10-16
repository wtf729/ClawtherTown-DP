execute unless data storage scr_mail:preview work.queue[0] run return 1
data modify storage scr_mail:preview work.entry set from storage scr_mail:preview work.queue[0]
data modify storage scr_mail:preview work.line set value {type:"minecraft:plain_message",width:420,contents:{translate:"gui.scr.mail.reward.unavailable",fallback:"暂时无法查看此奖励的详细信息!",color:"gray"}}
execute if data storage scr_mail:preview work.entry{handler:"item"} run function scr_mail:ui/reward/item_preview
execute if data storage scr_mail:preview work.entry{handler:"soul"} run function scr_mail:ui/reward/currency_preview with storage scr_mail:preview work.entry
execute if data storage scr_mail:preview work.entry{handler:"clawther_coin"} run function scr_mail:ui/reward/currency_preview with storage scr_mail:preview work.entry
execute if data storage scr_mail:preview work.entry{handler:"clawther_gem"} run function scr_mail:ui/reward/currency_preview with storage scr_mail:preview work.entry
data modify storage scr_mail:preview work.rows append from storage scr_mail:preview work.line
data remove storage scr_mail:preview work.queue[0]
return run function scr_mail:ui/reward/preview_loop
