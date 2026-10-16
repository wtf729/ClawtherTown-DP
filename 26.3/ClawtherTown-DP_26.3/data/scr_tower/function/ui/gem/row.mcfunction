execute store result score #ui_icon scr_tw run function scr_tower:ui/gem/icon
execute unless score #ui_icon scr_tw matches 1 run return run function scr_tower:ui/gem/fallback
data modify storage scr_tower:runtime row set value {type:"minecraft:item",item:{},width:16,height:16,show_tooltip:true,show_decorations:false,description:{contents:{text:""},width:120}}
data modify storage scr_tower:runtime row.item set from storage scr_tower:ui gem_icon
data modify storage scr_tower:runtime row.description.width set from storage scr_tower:runtime gem_width
data modify storage scr_tower:runtime quantity.count set from storage scr_tower:runtime gem_amount
function scr_tower:ui/quantity with storage scr_tower:runtime quantity
data modify storage scr_tower:runtime dialog.body append from storage scr_tower:runtime row
return 1
