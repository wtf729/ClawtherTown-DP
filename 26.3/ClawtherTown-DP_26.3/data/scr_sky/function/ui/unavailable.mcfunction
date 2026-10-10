data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.no_island","fallback":"你尚未设置可用的主岛，或目标岛暂不可用。","color":"white"},"width":380}
data modify storage scr_sky:ui work.route set value {"view":"home","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.back","fallback":"返回","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
