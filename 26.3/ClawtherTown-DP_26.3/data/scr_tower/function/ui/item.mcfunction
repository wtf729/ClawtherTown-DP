data modify storage scr_tower:runtime row set value {type:"minecraft:item",item:{id:"minecraft:stone",count:1},width:16,height:16,description:{contents:{translate:"gui.scr.tower.quantity",with:[{text:""}]},width:120}}
data modify storage scr_tower:runtime row.item set from storage scr_tower:runtime preview[0].parameters.stack
execute store result score #quantity scr_tw run data get storage scr_tower:runtime row.item.count
execute store result storage scr_tower:runtime quantity.count int 1 run scoreboard players get #quantity scr_tw
function scr_tower:ui/quantity with storage scr_tower:runtime quantity
data modify storage scr_tower:runtime dialog.body append from storage scr_tower:runtime row
