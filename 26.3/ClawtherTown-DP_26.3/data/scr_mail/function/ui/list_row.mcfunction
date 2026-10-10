$data modify storage scr_mail:runtime work.mail set from storage scr_mail:runtime work.view[$(index)]
function scr_mail:ui/format/mail
data modify storage scr_mail:runtime work.button set value {label:{},width:170}
data modify storage scr_mail:runtime work.button.label set from storage scr_mail:runtime work.row_label
data modify storage scr_mail:runtime work.op set value {kind:"detail"}
data modify storage scr_mail:runtime work.op.id set from storage scr_mail:runtime work.mail.id
execute store result storage scr_mail:runtime work.op.page int 1 run scoreboard players get #page scr_ml_n
function scr_mail:ui/button
