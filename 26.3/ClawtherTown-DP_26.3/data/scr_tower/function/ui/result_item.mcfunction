data modify storage scr_tower:runtime dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.tower.result_item"},"width":380}
data modify storage scr_tower:runtime preview set value []
data modify storage scr_tower:runtime preview append from storage scr_tower:runtime result_reward
function scr_tower:ui/item
