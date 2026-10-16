# Mail adapter for the shared pure name formatter.
data modify storage scr_mail:preview work set value {}
data modify storage scr_mail:preview work.preview_item set from storage scr_mail:runtime work.preview_item
function scr_mail:ui/item_name/format with storage scr_mail:preview work.preview_item
data modify storage scr_mail:runtime work.item_label set from storage scr_mail:preview work.item_label
data remove storage scr_mail:preview work
