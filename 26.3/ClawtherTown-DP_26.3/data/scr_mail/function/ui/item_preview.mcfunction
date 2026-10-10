# Read saved payload only; never run loot or mutate permanent reward data.
execute unless data storage scr_mail:ui item_names_26_3_v1 run function scr_mail:ui/preview/item_names
data modify storage scr_mail:runtime work.preview_queue set from storage scr_mail:runtime work.entry.items
function scr_mail:ui/item_preview_loop
