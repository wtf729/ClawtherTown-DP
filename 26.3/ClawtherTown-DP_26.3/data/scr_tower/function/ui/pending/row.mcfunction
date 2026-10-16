$data modify storage scr_tower:runtime display_entry set from storage scr_tower:runtime aggregate[$(index)]
execute if data storage scr_tower:runtime display_entry{kind:"gem"} run return run function scr_tower:ui/pending/gem
data modify storage scr_tower:runtime row set value {type:"minecraft:item",item:{id:"minecraft:stone",count:1},width:16,height:16,description:{contents:{text:""},width:120}}
data modify storage scr_tower:runtime row.item set from storage scr_tower:runtime display_entry.stack
data modify storage scr_tower:runtime quantity.count set from storage scr_tower:runtime display_entry.quantity
function scr_tower:ui/quantity with storage scr_tower:runtime quantity
data modify storage scr_tower:runtime dialog.body append from storage scr_tower:runtime row
