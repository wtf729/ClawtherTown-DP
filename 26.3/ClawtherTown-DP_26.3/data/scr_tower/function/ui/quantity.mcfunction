$data modify storage scr_tower:runtime row.description.contents set value {translate:"gui.scr.tower.item_count",with:[{text:""},{text:"$(count)"}]}
data modify storage scr_tower:runtime name_input.id set from storage scr_tower:runtime row.item.id
function scr_tower:ui/item_name with storage scr_tower:runtime name_input
