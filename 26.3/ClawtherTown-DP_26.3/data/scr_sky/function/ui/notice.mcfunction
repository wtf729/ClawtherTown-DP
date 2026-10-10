data modify storage scr_sky:ui work.dialog.title set value {"translate":"gui.scr.sky.notice","fallback":"操作提示","color":"white"}
execute unless data storage scr_sky:ui response{ok:1b} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.failure","fallback":"请求未执行。请检查当前岛屿、权限、状态或冷却。","color":"white"},"width":380}
execute if data storage scr_sky:ui response{reason:"busy"} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.busy","fallback":"当前有空岛操作正在进行，请稍后重试。","color":"white"},"width":380}
execute if data storage scr_sky:ui response{reason:"no_island"} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.no_island","fallback":"你尚未设置可用的主岛，或目标岛暂不可用。","color":"white"},"width":380}
execute if data storage scr_sky:ui response{reason:"hub_required"} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.hub_required","fallback":"主城落点暂时无法安全使用，请检查 scr:sky 的 (0, 100, 0)。","color":"white"},"width":380}
execute if data storage scr_sky:ui response{reason:"owner_exists_or_inconsistent"} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.owner_exists_or_inconsistent","fallback":"权威记录显示目标玩家已经拥有岛屿，或所有权缓存不一致；操作已拒绝。","color":"white"},"width":380}
execute if data storage scr_sky:ui response{reason:"owner_leave"} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.owner_leave","fallback":"你是岛主，无法直接退出。请先将拥有者身份转让给现有成员；转让后你会成为管理员，再可退出。","color":"white"},"width":380}
execute if data storage scr_sky:ui response{reason:"members_remain"} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.members_remain","fallback":"你必须移除所有成员才能删除空岛！","color":"white"},"width":380}
data modify storage scr_sky:ui work.route set value {"view":"home","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.back","fallback":"返回","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
data modify storage scr_sky:ui work.route set value {"view":"list","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.list","fallback":"空岛列表","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
