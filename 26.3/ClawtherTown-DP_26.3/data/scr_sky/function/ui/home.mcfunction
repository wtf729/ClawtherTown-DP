execute if data storage scr_sky:ui work.snapshot.primary run function scr_sky:ui/home_primary
execute unless data storage scr_sky:ui work.snapshot.primary run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.primary","fallback":"主岛：%s","color":"white","with":[{"translate":"gui.scr.sky.unselected","fallback":"尚未选择","color":"white"}]},"width":400}
data modify storage scr_sky:ui work.number.n set from storage scr_sky:ui work.snapshot.max_level
function scr_sky:ui/string_number with storage scr_sky:ui work.number
data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.highest","fallback":"参与岛屿的最高等级：Lv.%s","color":"white","with":[{"text":""}]}
data modify storage scr_sky:ui work.line.with[0].text set from storage scr_sky:ui work.number_text
function scr_sky:ui/append_line
execute if data storage scr_sky:ui work.snapshot.primary run function scr_sky:ui/home_return_primary
execute unless data storage scr_sky:ui work.snapshot.player{owned_island_id:0} run function scr_sky:ui/home_return_owned
data modify storage scr_sky:ui request.id set from storage scr_sky:ui work.snapshot.player.primary_island_id
execute if data storage scr_sky:ui work.snapshot.primary run function scr_sky:ui/home_actions
data modify storage scr_sky:ui work.route set value {"view":"list","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.list","fallback":"空岛列表","color":"white"}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
data modify storage scr_sky:ui work.route set value {"view":"select","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.select","fallback":"更改主岛","color":"white"}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
data modify storage scr_sky:ui work.route set value {"view":"operate","op":"hub","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.hub","fallback":"空岛主城","color":"white"}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
execute if data storage scr_sky:ui work.snapshot.player{owned_island_id:0} run function scr_sky:ui/home_claim
execute unless data storage scr_sky:ui work.snapshot{invitation_count:0} run function scr_sky:ui/home_invitations
