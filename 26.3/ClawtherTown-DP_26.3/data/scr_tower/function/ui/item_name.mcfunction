function scr_mail:ui/item_name/ensure
# Existing Mail's read-only vanilla-name registry, no Mail work context modified.
$execute if data storage scr_mail:ui vanilla_item_names."$(id)" run data modify storage scr_tower:runtime row.description.contents.with[0] set from storage scr_mail:ui vanilla_item_names."$(id)"
$execute unless data storage scr_mail:ui vanilla_item_names."$(id)" run data modify storage scr_tower:runtime row.description.contents.with[0] set value {text:"$(id)"}

# Prefer an actual stack-specific name when a retained historical reward has one.
execute if data storage scr_tower:runtime row.item.components."minecraft:item_name" run data modify storage scr_tower:runtime row.description.contents.with[0] set from storage scr_tower:runtime row.item.components."minecraft:item_name"
execute if data storage scr_tower:runtime row.item.components."minecraft:custom_name" run data modify storage scr_tower:runtime row.description.contents.with[0] set from storage scr_tower:runtime row.item.components."minecraft:custom_name"
