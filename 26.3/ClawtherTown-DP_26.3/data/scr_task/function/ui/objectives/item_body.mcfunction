# Pure common body: goal_ui.stack + optional goal_ui.label; count stays 1.
data modify storage scr_mail:preview work set value {readonly:1b}
data modify storage scr_mail:preview work.preview_item set from storage scr_task:runtime work.goal_ui.stack
function scr_mail:ui/item_name/format with storage scr_mail:preview work.preview_item
execute if data storage scr_task:runtime work.goal_ui.label run data modify storage scr_mail:preview work.item_label set from storage scr_task:runtime work.goal_ui.label
function scr_mail:ui/reward/item_row with storage scr_mail:preview work.preview_item
data modify storage scr_mail:preview work.line.show_decorations set value 0b
