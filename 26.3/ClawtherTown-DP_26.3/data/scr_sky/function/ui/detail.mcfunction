execute store result score #ui_probe scr_sk run function scr_sky:api/inspect with storage scr_sky:ui request
execute if score #ui_probe scr_sk matches 1 unless data storage scr_sky:runtime result.island{state:"active"} run return run function scr_sky:ui/locked_detail
execute store result score #ui_valid scr_sk run function scr_sky:ui/read_island
execute unless score #ui_valid scr_sk matches 1 run return run function scr_sky:ui/unavailable
function scr_sky:ui/island_summary
data modify storage scr_sky:ui work.route set value {"view":"operate","op":"teleport","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.teleport","fallback":"传送到此岛","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
data modify storage scr_sky:ui work.route set value {"view":"operate","op":"set_primary","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.set_primary","fallback":"设为主岛","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
data modify storage scr_sky:ui work.route set value {"view":"operate","op":"scan","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.scan","fallback":"重新计算空岛等级","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
execute if score #ui_role scr_sk matches 2..3 run function scr_sky:ui/detail_admin
data modify storage scr_sky:ui work.route set value {"view":"confirm","op":"leave","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.leave","fallback":"退出空岛","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
execute if score #ui_role scr_sk matches 3 run function scr_sky:ui/detail_owner
data modify storage scr_sky:ui work.route set value {"view":"list","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.back","fallback":"返回","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
