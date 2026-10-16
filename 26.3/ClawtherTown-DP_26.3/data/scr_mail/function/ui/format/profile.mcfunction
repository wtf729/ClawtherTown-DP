# Mail adapter for the shared pure profile formatter.
data modify storage scr_mail:preview work set value {}
data modify storage scr_mail:preview work.label_profile set from storage scr_mail:runtime work.label_profile
function scr_mail:ui/format/profile_label
data modify storage scr_mail:runtime work.profile_label set from storage scr_mail:preview work.profile_label
data remove storage scr_mail:preview work
