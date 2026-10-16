data modify storage scr_tower:runtime dialog.body append value {type:"minecraft:plain_message",contents:{translate:"gui.scr.tower.abandon",color:"white"},width:380}
data modify storage scr_tower:runtime dialog.body append value {type:"minecraft:plain_message",contents:{translate:"gui.scr.tower.abandon_warning",color:"red"},width:380}
data modify storage scr_tower:runtime button set value {label:{translate:"gui.scr.tower.confirm_abandon",color:"red"},width:170}
data modify storage scr_tower:runtime route set value {op:"abandon_confirm",index:-1}
function scr_tower:ui/button
data modify storage scr_tower:runtime button set value {label:{translate:"gui.scr.tower.return_challenge"},width:170}
data modify storage scr_tower:runtime route set value {op:"abandon_cancel",index:-1}
function scr_tower:ui/button
