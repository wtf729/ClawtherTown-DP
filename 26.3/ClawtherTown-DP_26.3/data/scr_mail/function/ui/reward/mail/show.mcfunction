$data modify storage scr_mail:runtime work.entry set from storage scr_mail:runtime work.mail.rewards[$(reward)]
data modify storage scr_mail:runtime work.label_state set from storage scr_mail:runtime work.entry.state
function scr_mail:ui/format/state
execute if data storage scr_mail:runtime work.entry{handler:"clawther_coin"} run return run function scr_mail:ui/reward/mail/clawther_coin
execute if data storage scr_mail:runtime work.entry{handler:"clawther_gem"} run return run function scr_mail:ui/reward/mail/clawther_gem
execute if data storage scr_mail:runtime work.entry{handler:"soul"} run return run function scr_mail:ui/reward/mail/soul
# One visual row per saved item stack or non-item reward; no separate handler/ID lines.
execute if data storage scr_mail:runtime work.entry.items[0] run return run function scr_mail:ui/reward/mail/item_rows
data modify storage scr_mail:runtime work.reward_label set value {"translate":"gui.scr.mail.reward.generic","fallback":"奖励","color":"gold","italic":false}
data modify storage scr_mail:runtime work.reward_info set value {"translate":"gui.scr.mail.reward.unavailable","fallback":"暂时无法查看此奖励的详细信息!","color":"gray","italic":false}
execute if data storage scr_mail:runtime work.entry{handler:"loot"} run function scr_mail:ui/reward/mail/unprepared
execute if data storage scr_mail:runtime work.entry{handler:"item"} run function scr_mail:ui/reward/mail/unprepared
execute if data storage scr_mail:runtime work.entry{handler:"scoreboard"} run function scr_mail:ui/reward/mail/scoreboard with storage scr_mail:runtime work.entry.parameters
execute if data storage scr_mail:runtime work.entry{handler:"function"} run function scr_mail:ui/reward/mail/id
execute if data storage scr_mail:runtime work.entry{handler:"advancement"} run function scr_mail:ui/reward/mail/id
execute if data storage scr_mail:runtime work.entry{handler:"tag"} run function scr_mail:ui/reward/mail/tag
function scr_mail:ui/reward/mail/badge_row
