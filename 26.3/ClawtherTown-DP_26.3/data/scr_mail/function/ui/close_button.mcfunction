data modify storage scr_mail:runtime work.button set value {"label":{"translate":"gui.scr.mail.close","fallback":"关闭邮箱","color":"gray"},"width":170}
data modify storage scr_mail:runtime work.op set value {kind:"close"}
function scr_mail:ui/button
