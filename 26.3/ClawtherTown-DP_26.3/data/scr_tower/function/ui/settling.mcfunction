data modify storage scr_tower:runtime dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.tower.settling"},"width":360}
data modify storage scr_tower:runtime button set value {"label":{"translate":"gui.scr.tower.retry"},"width":170}
data modify storage scr_tower:runtime route set value {"op":"retry","index":-1}
function scr_tower:ui/button
function scr_tower:ui/view_pending
execute if data storage scr_tower:runtime p.run.outbox[{state:"pending",error:"mail_rejected"}] run data modify storage scr_tower:runtime dialog.body append value {type:"minecraft:plain_message",contents:{translate:"gui.scr.tower.mail_rejected",color:"red"},width:360}
