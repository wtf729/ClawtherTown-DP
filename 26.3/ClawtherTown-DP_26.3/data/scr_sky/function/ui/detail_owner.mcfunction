function scr_sky:ui/reset_clock
data modify storage scr_sky:ui work.route set value {"view":"confirm","op":"reset","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.reset","fallback":"重置空岛","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
data modify storage scr_sky:ui work.route set value {"view":"confirm","op":"delete","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.delete","fallback":"删除空岛","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
execute if data storage scr_sky:ui work.island{reset_state:"awaiting_confirmation"} run function scr_sky:ui/cancel_reset_button
execute if data storage scr_sky:ui work.island{delete_state:"awaiting_confirmation"} run function scr_sky:ui/cancel_delete_button
