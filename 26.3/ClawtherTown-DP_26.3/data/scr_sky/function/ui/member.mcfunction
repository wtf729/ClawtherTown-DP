execute store result score #ui_valid scr_sk run function scr_sky:ui/read_island
execute unless score #ui_valid scr_sk matches 1 run return run function scr_sky:ui/unavailable
execute unless score #ui_role scr_sk matches 2..3 run return run function scr_sky:ui/unavailable
function scr_sky:ui/member_target_role with storage scr_sky:ui request
execute unless score #ui_target_role scr_sk matches 1..3 run return run function scr_sky:ui/navigation/member_fallback
data modify storage scr_sky:ui work.ctx.target set from storage scr_sky:ui request.target
function scr_sky:ui/name with storage scr_sky:ui work.ctx
data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.member","fallback":"成员：%s","color":"white","with":[{"text":""}]}
data modify storage scr_sky:ui work.line.with[0] set from storage scr_sky:ui work.name
function scr_sky:ui/append_line
execute if score #ui_role scr_sk matches 3 if score #ui_target_role scr_sk matches 1..2 run function scr_sky:ui/kick_button
execute if score #ui_role scr_sk matches 2 if score #ui_target_role scr_sk matches 1 run function scr_sky:ui/kick_button
execute if score #ui_role scr_sk matches 3 run function scr_sky:ui/member_owner
data modify storage scr_sky:ui work.route set value {"view":"members","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.back","fallback":"返回","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
