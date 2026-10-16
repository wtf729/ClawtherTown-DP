$data modify storage scr_tower:runtime ui_card set from storage scr_tower:runtime p.run.cards[$(index)]
execute if data storage scr_tower:runtime ui_card{removed:1} run return run function scr_tower:ui/removed
$data modify storage scr_tower:runtime button set value {label:{translate:"gui.scr.tower.card",with:[{text:"$(number)"}]},width:170}
$data modify storage scr_tower:runtime route set value {op:"pick",index:$(index)}
return run function scr_tower:ui/button
