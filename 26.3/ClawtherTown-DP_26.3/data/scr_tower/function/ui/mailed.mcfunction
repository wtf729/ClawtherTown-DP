execute if data storage scr_tower:runtime p.run{debug:1} run return run function scr_tower:ui/debug_notice
data modify storage scr_tower:runtime dialog.body append value {type:"minecraft:plain_message",contents:{translate:"gui.scr.tower.mailed",with:[{text:""}]},width:360}
execute if data storage scr_tower:runtime p.run{tower:"main"} run data modify storage scr_tower:runtime dialog.body[-1].contents.with[0] set value {translate:"profile.scr.main",color:"aqua"}
execute if data storage scr_tower:runtime p.run{tower:"sky"} run data modify storage scr_tower:runtime dialog.body[-1].contents.with[0] set value {translate:"profile.scr.sky",color:"aqua"}
