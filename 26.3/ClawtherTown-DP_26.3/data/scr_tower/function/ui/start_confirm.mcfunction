data modify storage scr_tower:runtime dialog.title set value {translate:"gui.scr.tower.title"}
data modify storage scr_tower:runtime dialog.body append value {type:"minecraft:plain_message",contents:{translate:"gui.scr.tower.start_question",with:[{translate:"gui.scr.tower.main",color:"aqua"}]},width:380}
execute if data storage scr_tower:runtime nav{selected_tower:"sky"} run data modify storage scr_tower:runtime dialog.body[-1].contents.with[0] set value {translate:"gui.scr.tower.sky",color:"aqua"}
data modify storage scr_tower:runtime dialog.body append value {type:"minecraft:plain_message",contents:{translate:"gui.scr.tower.start_mail_hint",with:[{translate:"profile.scr.main",color:"aqua"}]},width:380}
execute if data storage scr_tower:runtime nav{selected_tower:"sky"} run data modify storage scr_tower:runtime dialog.body[-1].contents.with[0] set value {translate:"profile.scr.sky",color:"aqua"}
data modify storage scr_tower:runtime button set value {label:{translate:"gui.scr.tower.challenge",color:"gold"},width:170}
data modify storage scr_tower:runtime route set value {op:"start_confirm",index:-1,tower:"main"}
data modify storage scr_tower:runtime route.tower set from storage scr_tower:runtime nav.selected_tower
function scr_tower:ui/button
data modify storage scr_tower:runtime button set value {label:{translate:"gui.scr.tower.back",color:"white"},width:170}
data modify storage scr_tower:runtime route set value {op:"home",index:-1}
function scr_tower:ui/button
