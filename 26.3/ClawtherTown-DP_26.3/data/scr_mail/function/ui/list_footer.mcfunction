execute if data storage scr_mail:runtime work.ctx{view:"history"} run return run function scr_mail:ui/history_footer
# Inbox: history / refresh, then centered claim-all; close stays in the fixed footer.

data modify storage scr_mail:runtime work.button set value {label:{translate:"gui.scr.mail.history",fallback:"历史邮件",color:"white"},width:170}
data modify storage scr_mail:runtime work.op set value {kind:"list",page:0,view:"history"}
function scr_mail:ui/button
data modify storage scr_mail:runtime work.button set value {label:{translate:"gui.scr.mail.refresh",fallback:"刷新邮箱",color:"aqua"},width:170}
data modify storage scr_mail:runtime work.op set value {kind:"list"}
execute store result storage scr_mail:runtime work.op.page int 1 run scoreboard players get #page scr_ml_n
function scr_mail:ui/button
data modify storage scr_mail:runtime work.button set value {label:{translate:"gui.scr.mail.claim_all",fallback:"领取全部",color:"green"},tooltip:{"translate":"gui.scr.mail.tooltip.claim_all","fallback":"领取所有可领取邮件"},width:170}
data modify storage scr_mail:runtime work.op set value {kind:"all",page:0,view:"inbox"}
function scr_mail:ui/button
function scr_mail:ui/close_button
data modify storage scr_mail:runtime work.dialog.exit_action set from storage scr_mail:runtime work.button
data remove storage scr_mail:runtime work.dialog.actions[-1]
