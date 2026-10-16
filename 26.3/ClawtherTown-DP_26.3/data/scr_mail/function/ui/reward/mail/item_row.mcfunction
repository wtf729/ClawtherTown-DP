# Mail adapter retains saved-item status hover and decorations.
data modify storage scr_mail:preview work set value {}
data modify storage scr_mail:preview work.preview_item set from storage scr_mail:runtime work.preview_item
data modify storage scr_mail:preview work.item_label set from storage scr_mail:runtime work.item_label
data modify storage scr_mail:preview work.state_label set from storage scr_mail:runtime work.state_label
function scr_mail:ui/reward/item_row with storage scr_mail:preview work.preview_item
data modify storage scr_mail:runtime work.line set from storage scr_mail:preview work.line
data modify storage scr_mail:runtime work.dialog.body append from storage scr_mail:runtime work.line
data remove storage scr_mail:preview work
