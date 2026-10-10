execute store result score #ui_valid scr_sk run function scr_sky:ui/read_island
execute unless score #ui_valid scr_sk matches 1 run return run function scr_sky:ui/unavailable
execute unless score #ui_role scr_sk matches 2..3 run return run function scr_sky:ui/unavailable
data modify storage scr_sky:ui work.dialog.title set value {"translate":"gui.scr.sky.members","fallback":"成员管理","color":"white"}
data modify storage scr_sky:ui work.member_queue set from storage scr_sky:players keys
scoreboard players set #shown_members scr_sk 0
function scr_sky:ui/member_loop
execute store result score #authoritative_members scr_sk run data get storage scr_sky:ui work.island.roles
execute unless score #shown_members scr_sk = #authoritative_members scr_sk run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.membership_incomplete","fallback":"成员索引与权威角色数量不一致；请联系管理员恢复索引。不会据此删除成员或释放 ID。","color":"white"},"width":380}
data modify storage scr_sky:ui work.route set value {"view":"invite","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.invite","fallback":"邀请普通成员","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
data modify storage scr_sky:ui work.route set value {"view":"detail","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.back","fallback":"返回","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
