# Keep the tower title supplied by ui/render; display the confirmation in the body.
data modify storage scr_tower:runtime dialog.body append value {type:"minecraft:plain_message",contents:{translate:"gui.scr.tower.exit_heading",color:"white"},width:380}
data modify storage scr_tower:runtime dialog.body append value {type:"minecraft:plain_message",contents:{translate:"gui.scr.tower.exit_warning",color:"white"},width:380}
data modify storage scr_tower:runtime button set value {label:{translate:"gui.scr.tower.view_pending",color:"white"},width:170}
data modify storage scr_tower:runtime route set value {op:"pending",index:-1,return_view:"confirm_exit"}
function scr_tower:ui/button
data modify storage scr_tower:runtime button set value {label:{translate:"gui.scr.tower.return_challenge",color:"white"},width:170}
data modify storage scr_tower:runtime route set value {op:"exit_cancel",index:-1}
function scr_tower:ui/button
data modify storage scr_tower:runtime button set value {label:{translate:"gui.scr.tower.exit",color:"green"},width:170}
data modify storage scr_tower:runtime route set value {op:"exit_confirm",index:-1}
function scr_tower:ui/button
