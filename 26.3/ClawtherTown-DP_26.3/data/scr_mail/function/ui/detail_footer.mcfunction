# Return to the source list. Do not reuse the history-list footer, which always opens inbox.
data modify storage scr_mail:runtime work.button set value {label:{translate:"gui.scr.mail.back",fallback:"返回邮箱",color:"aqua"},width:170}
data modify storage scr_mail:runtime work.op set value {kind:"list",view:"inbox",page:0}
execute if data storage scr_mail:runtime work.ctx{view:"history"} run data modify storage scr_mail:runtime work.button.label set value {translate:"gui.scr.mail.back_history",fallback:"返回历史邮件",color:"aqua"}
execute if data storage scr_mail:runtime work.ctx{view:"history"} run data modify storage scr_mail:runtime work.op.view set value "history"
execute store result storage scr_mail:runtime work.op.page int 1 run scoreboard players get #page scr_ml_n
function scr_mail:ui/button
return 1
