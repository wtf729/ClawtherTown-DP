data modify storage scr_tower:runtime dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.tower.result_item"},"width":380}
data modify storage scr_tower:runtime gem_amount set from storage scr_tower:runtime result_reward.parameters.amount
data modify storage scr_tower:runtime gem_width set value 120
return run function scr_tower:ui/gem/row
