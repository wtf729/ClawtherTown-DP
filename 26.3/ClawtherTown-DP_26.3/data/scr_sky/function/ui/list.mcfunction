data modify storage scr_sky:ui work.dialog.title set value {"translate":"gui.scr.sky.list","fallback":"空岛列表","color":"white"}
data modify storage scr_sky:ui work.queue set from storage scr_sky:ui work.snapshot.islands
execute unless data storage scr_sky:ui work.queue[0] run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.empty","fallback":"暂无可用空岛。","color":"white"},"width":380}
function scr_sky:ui/list_loop
data modify storage scr_sky:ui work.route set value {"view":"home","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.back","fallback":"返回","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
