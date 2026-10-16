# Read-only public preview; output rows live in an isolated UI workspace.
data modify storage scr_mail:preview work set value {readonly:1b,rows:[]}
$data modify storage scr_mail:preview work.definition set from storage scr_mail:definitions task_rewards."$(id)"
execute unless data storage scr_mail:preview work.definition.rewards[0] run return 0
data modify storage scr_mail:preview work.queue set from storage scr_mail:preview work.definition.rewards
function scr_mail:ui/reward/preview_loop
data modify storage scr_mail:preview work.label_profile set from storage scr_mail:preview work.definition.claim_profile
function scr_mail:ui/format/profile_label
data modify storage scr_mail:preview work.line set value {type:"minecraft:plain_message",width:420,contents:{text:"",extra:[{translate:"gui.scr.mail.reward_for",fallback:"奖励归属: ",color:"white"},{}]}}
data modify storage scr_mail:preview work.line.contents.extra[1] set from storage scr_mail:preview work.profile_label
data modify storage scr_mail:preview work.rows append from storage scr_mail:preview work.line
data remove storage scr_mail:preview work.queue
return 1
