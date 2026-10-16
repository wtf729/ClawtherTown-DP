data modify storage scr_mail:preview work.item_label set value {"text":"","color":"white","italic":false}
data modify storage scr_mail:preview work.item_label.text set from storage scr_mail:preview work.preview_item.id
$execute if data storage scr_mail:ui vanilla_item_names."$(id)" run data modify storage scr_mail:preview work.item_label set from storage scr_mail:ui vanilla_item_names."$(id)"
# Match actual item-name precedence, retaining arbitrary string/list/component names.
execute if data storage scr_mail:preview work.preview_item.components."minecraft:item_name" run data modify storage scr_mail:preview work.item_label set from storage scr_mail:preview work.preview_item.components."minecraft:item_name"
execute if data storage scr_mail:preview work.preview_item.components."minecraft:custom_name" run data modify storage scr_mail:preview work.item_label set from storage scr_mail:preview work.preview_item.components."minecraft:custom_name"
