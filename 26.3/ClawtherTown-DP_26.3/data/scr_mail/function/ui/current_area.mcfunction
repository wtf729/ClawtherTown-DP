function scr_mail:policy/resolve
data modify storage scr_mail:runtime work.label_profile set from storage scr_mail:runtime work.profile
function scr_mail:ui/format/profile
data modify storage scr_mail:runtime work.line set value {"type":"minecraft:plain_message","contents":{"text":"","extra":[{"translate":"gui.scr.mail.current_area","fallback":"当前区域: ","color":"white"},{}]},"width":350}
data modify storage scr_mail:runtime work.line.contents.extra[1] set from storage scr_mail:runtime work.profile_label
data modify storage scr_mail:runtime work.dialog.body append from storage scr_mail:runtime work.line
