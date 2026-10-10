data modify storage scr_sky:ui work.route set value {"view":"operate","op":"return_owned","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.return_owned","fallback":"返回自己的岛","color":"white"}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
