data remove storage scr_mail:preview work.preview_item
data modify storage scr_mail:preview work.preview_item set from storage scr_mail:preview work.entry.parameters.stack
execute unless data storage scr_mail:preview work.preview_item.id run return 0
execute unless data storage scr_mail:preview work.preview_item.count run data modify storage scr_mail:preview work.preview_item.count set value 1
function scr_mail:ui/item_name/format with storage scr_mail:preview work.preview_item
function scr_mail:ui/reward/item_row with storage scr_mail:preview work.preview_item
return 1
