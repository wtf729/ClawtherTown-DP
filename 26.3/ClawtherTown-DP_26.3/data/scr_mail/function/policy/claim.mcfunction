data modify storage scr_mail:runtime work.reason set value {"translate":"gui.scr.mail.reason.unavailable","fallback":"该邮件当前不可领取!"}
execute unless data storage scr_mail:runtime work.mail{state:"pending"} run return 0
execute store result score #policy scr_ml_n run function scr_mail:policy/unlocked with storage scr_mail:runtime work.ctx
execute unless score #policy scr_ml_n matches 1 run return 0
data modify storage scr_mail:runtime work.reason set value {"translate":"gui.scr.mail.reason.profile_locked","fallback":"当前区域暂时无法领取奖励, 请稍后再试!"}
execute unless score @s scr_pf_init matches 1 run return 0
execute unless score @s scr_pf_lock matches 0 run return 0
execute unless score @s scr_pf_phase matches 0 run return 0
execute if score #busy scr_pf_lock matches 1 run return 0
function scr_mail:policy/resolve
data modify storage scr_mail:runtime work.reason set value {"translate":"gui.scr.mail.reason.profile_switching","fallback":"区域状态正在更新, 请稍后再试!"}
execute unless score @s scr_pf_cur = #profile scr_ml_n run return 0
execute if entity @s[nbt={Health:0.0f}] run return 0
data modify storage scr_mail:runtime work.reason set value {"translate":"gui.scr.mail.reason.unknown_profile","fallback":"无法确认该奖励的领取区域!"}
execute if data storage scr_mail:runtime work.mail{claim_profile:"main"} run data modify storage scr_mail:runtime work.reason set value {"translate":"gui.scr.mail.reason.wrong_profile","fallback":"该奖励仅可在 %s 领取!","with":[{"translate":"profile.scr.main","fallback":"鹰翎镇","color":"aqua"}]}
execute if data storage scr_mail:runtime work.mail{claim_profile:"sky"} run data modify storage scr_mail:runtime work.reason set value {"translate":"gui.scr.mail.reason.wrong_profile","fallback":"该奖励仅可在 %s 领取!","with":[{"translate":"profile.scr.sky","fallback":"鹰翎云境","color":"aqua"}]}
execute if data storage scr_mail:runtime work.mail{claim_profile:"building"} run data modify storage scr_mail:runtime work.reason set value {"translate":"gui.scr.mail.reason.wrong_profile","fallback":"该奖励仅可在 %s 领取!","with":[{"translate":"profile.scr.building","fallback":"建筑区域","color":"aqua"}]}
execute if data storage scr_mail:runtime work.mail{claim_profile:"memory"} run data modify storage scr_mail:runtime work.reason set value {"translate":"gui.scr.mail.reason.wrong_profile","fallback":"该奖励仅可在 %s 领取!","with":[{"translate":"profile.scr.memory","fallback":"记忆之地","color":"aqua"}]}
execute if data storage scr_mail:runtime work.mail{claim_profile:"star"} run data modify storage scr_mail:runtime work.reason set value {"translate":"gui.scr.mail.reason.wrong_profile","fallback":"该奖励仅可在 %s 领取!","with":[{"translate":"profile.scr.star","fallback":"星辰之地","color":"aqua"}]}
execute if data storage scr_mail:runtime work.mail{claim_profile:"any"} run return 1
data modify storage scr_mail:runtime work.check set from storage scr_mail:runtime work.profile
execute store success score #tmp scr_ml_n run data modify storage scr_mail:runtime work.check set from storage scr_mail:runtime work.mail.claim_profile
execute if score #tmp scr_ml_n matches 1 run return 0
return 1
