execute store result score #ui_valid scr_sk run function scr_sky:ui/read_island
execute unless score #ui_valid scr_sk matches 1 run return run function scr_sky:ui/unavailable
execute unless score #ui_role scr_sk matches 2..3 run return run function scr_sky:ui/unavailable
data modify storage scr_sky:ui work.dialog.title set value {"translate":"gui.scr.sky.invite","fallback":"邀请普通成员","color":"white"}
data modify storage scr_sky:ui work.candidates set value []
execute as @a run function scr_sky:ui/invite/collect
function scr_sky:ui/invite/loop
execute unless data storage scr_sky:ui work.dialog.actions[0] run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.no_invite_targets","fallback":"当前没有可邀请的在线玩家。","color":"white"},"width":400}
data modify storage scr_sky:ui work.route set value {"view":"members","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.back","fallback":"返回","color":"white"}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
