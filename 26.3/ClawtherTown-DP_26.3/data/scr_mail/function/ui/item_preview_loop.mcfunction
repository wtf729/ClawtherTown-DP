data modify storage scr_mail:runtime work.preview_item set from storage scr_mail:runtime work.preview_queue[0].item
execute unless data storage scr_mail:runtime work.preview_item.count run data modify storage scr_mail:runtime work.preview_item.count set value 1
function scr_mail:ui/preview/item_name with storage scr_mail:runtime work.preview_item
function scr_mail:ui/preview/item_row with storage scr_mail:runtime work.preview_item
data remove storage scr_mail:runtime work.preview_queue[0]
execute if data storage scr_mail:runtime work.preview_queue[0] run function scr_mail:ui/item_preview_loop
