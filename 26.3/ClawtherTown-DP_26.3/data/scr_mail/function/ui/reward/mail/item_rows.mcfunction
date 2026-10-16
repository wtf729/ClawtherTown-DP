# Read saved payload only; never run loot or mutate permanent reward data.
function scr_mail:ui/item_name/ensure
data modify storage scr_mail:runtime work.preview_queue set from storage scr_mail:runtime work.entry.items
function scr_mail:ui/reward/mail/item_loop
