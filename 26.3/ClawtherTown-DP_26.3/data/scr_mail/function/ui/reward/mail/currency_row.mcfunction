# Mail adapter keeps the persisted Loot icon; whole-mail status is shown by detail_data.
data modify storage scr_mail:preview work set value {}
data modify storage scr_mail:preview work.entry set from storage scr_mail:runtime work.entry
data modify storage scr_mail:preview work.business_label set from storage scr_mail:runtime work.business_label
function scr_mail:ui/reward/currency_row with storage scr_mail:preview work.entry.parameters
data modify storage scr_mail:runtime work.business_label set from storage scr_mail:preview work.business_label
data modify storage scr_mail:runtime work.line set from storage scr_mail:preview work.line
data modify storage scr_mail:runtime work.dialog.body append from storage scr_mail:runtime work.line
data remove storage scr_mail:preview work
return 1
