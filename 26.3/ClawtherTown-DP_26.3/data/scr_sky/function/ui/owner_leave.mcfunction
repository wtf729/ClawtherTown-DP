data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.owner_leave","fallback":"你是岛主，无法直接退出。请先将拥有者身份转让给现有成员；转让后你会成为管理员，再可退出。","color":"white"},"width":380}
data modify storage scr_sky:ui work.route set value {"view":"members","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.members","fallback":"成员管理","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
data modify storage scr_sky:ui work.route set value {"view":"detail","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.back","fallback":"返回","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
