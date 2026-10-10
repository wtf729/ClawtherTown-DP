data modify storage scr_mail:runtime work.item_label set value {"text":"","color":"white","italic":false}
data modify storage scr_mail:runtime work.item_label.text set from storage scr_mail:runtime work.preview_item.id
$execute if data storage scr_mail:ui item_names_26_3_v1."$(id)" run data modify storage scr_mail:runtime work.item_label set from storage scr_mail:ui item_names_26_3_v1."$(id)"
# Match actual item-name precedence, retaining arbitrary string/list/component names.
execute if data storage scr_mail:runtime work.preview_item.components."minecraft:item_name" run data modify storage scr_mail:runtime work.item_label set from storage scr_mail:runtime work.preview_item.components."minecraft:item_name"
execute if data storage scr_mail:runtime work.preview_item.components."minecraft:custom_name" run data modify storage scr_mail:runtime work.item_label set from storage scr_mail:runtime work.preview_item.components."minecraft:custom_name"
