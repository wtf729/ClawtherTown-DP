function scr_mail:ui/format/title
data modify storage scr_mail:runtime work.label_profile set from storage scr_mail:runtime work.mail.claim_profile
function scr_mail:ui/format/profile
data modify storage scr_mail:runtime work.label_state set from storage scr_mail:runtime work.mail.state
function scr_mail:ui/format/state
data modify storage scr_mail:runtime work.row_label set value {"text":"","color":"white","bold":false,"extra":[{},{"text":" - ","color":"dark_gray"},{"text":"[","color":"aqua"},{},{"text":"]","color":"aqua"}]}
data modify storage scr_mail:runtime work.row_label.extra[0] set from storage scr_mail:runtime work.title_label
data modify storage scr_mail:runtime work.row_label.extra[3] set from storage scr_mail:runtime work.profile_label
# Gray only the list-row copy. Detail title/profile retain their semantic colors.
execute if data storage scr_mail:runtime work.mail{state:"claimed"} run data modify storage scr_mail:runtime work.row_label.extra[].color set value "gray"
