data modify storage scr_sky:ui work.route set value {"view":"detail","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.actions","fallback":"主岛操作","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
