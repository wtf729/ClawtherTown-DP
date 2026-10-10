execute store result score #ui_valid scr_sk run function scr_sky:ui/read_island
execute unless score #ui_valid scr_sk matches 1 run return run function scr_sky:ui/unavailable
execute if data storage scr_sky:ui request{op:"leave"} if score #ui_role scr_sk matches 3 run return run function scr_sky:ui/owner_leave
execute if data storage scr_sky:ui request{op:"reset"} run function scr_sky:api/preview_reset with storage scr_sky:ui request
execute if data storage scr_sky:ui request{op:"delete"} run function scr_sky:api/preview_delete with storage scr_sky:ui request
execute if data storage scr_sky:ui request{op:"delete"} unless data storage scr_sky:runtime result{ok:1b} run return run function scr_sky:ui/delete_blocked
execute if data storage scr_sky:ui request{op:"reset"} unless data storage scr_sky:runtime result{ok:1b} run return run function scr_sky:ui/reset_blocked
execute if data storage scr_sky:ui request{op:"reset",confirmed:1} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.last_warning","fallback":"最后警告：此操作无法撤销！","color":"red"},"width":380}
execute if data storage scr_sky:ui request{op:"delete",confirmed:1} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.last_warning","fallback":"最后警告：此操作无法撤销！","color":"red"},"width":380}
execute unless data storage scr_sky:ui request{op:"delete"} run function scr_sky:ui/confirmation_identity
execute if data storage scr_sky:ui request{op:"leave"} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.leave_warning","fallback":"确认退出此岛？你将失去正式成员身份和建造权限。若它是你的主岛，将回退到有效的自己的岛，否则清空主岛。不会传送你，也不会删除 Sky Profile。","color":"white"},"width":380}
execute if data storage scr_sky:ui request{op:"kick"} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.kick_warning","fallback":"确认移除此成员？对方将失去此岛身份；若人在岛上，不会被传送，但会成为访客并切换冒险模式。此岛若是其主岛会失效。Sky Profile 和物品不会删除。","color":"white"},"width":380}
execute if data storage scr_sky:ui request{op:"transfer"} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.transfer_warning","fallback":"确认转让？目标必须是现有成员或管理员，且不能已拥有其他岛。转让后你会成为管理员。Claim 和 Reset 冷却均保留。","color":"white"},"width":380}
execute if data storage scr_sky:ui request{op:"reset"} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.reset_warning","fallback":"重置将永久清空此岛完整计分区域内的建筑、容器物品和实体，并恢复 Starter 与默认出生点。保留岛号、成员、主岛关系及 Sky Profile。不可撤销；玩家将先传送到安全主城。","color":"white"},"width":380}
execute if data storage scr_sky:ui request{op:"delete"} run data modify storage scr_sky:ui work.dialog.body append value {type:"minecraft:plain_message",contents:{translate:"gui.scr.sky.delete_question",fallback:"你确定要删除这个空岛吗？",color:"white"},width:380}
execute if data storage scr_sky:ui request{op:"delete"} run data modify storage scr_sky:ui work.name_island set value {}
execute if data storage scr_sky:ui request{op:"delete"} run data modify storage scr_sky:ui work.name_island.id set from storage scr_sky:ui request.id
execute if data storage scr_sky:ui request{op:"delete"} run function scr_sky:ui/island_name
execute if data storage scr_sky:ui request{op:"delete"} run data modify storage scr_sky:ui work.line set value {translate:"gui.scr.sky.delete_warning",fallback:"%s 将会永久消失！（真的很久）",color:"white",with:[]}
execute if data storage scr_sky:ui request{op:"delete"} run data modify storage scr_sky:ui work.line.with append from storage scr_sky:ui work.island_name
execute if data storage scr_sky:ui request{op:"delete"} run function scr_sky:ui/append_line
data modify storage scr_sky:ui work.route set from storage scr_sky:ui request
data modify storage scr_sky:ui work.route.view set value "operate"
data modify storage scr_sky:ui work.route.confirmed set value 1
# Reset/Delete: first confirmation opens the final warning, second submits.
execute if data storage scr_sky:ui request{op:"reset",confirmed:0} run data modify storage scr_sky:ui work.route.view set value "confirm"
execute if data storage scr_sky:ui request{op:"reset",confirmed:1} run data modify storage scr_sky:ui work.route.confirmed set value 2
execute if data storage scr_sky:ui request{op:"delete",confirmed:0} run data modify storage scr_sky:ui work.route.view set value "confirm"
execute if data storage scr_sky:ui request{op:"delete",confirmed:1} run data modify storage scr_sky:ui work.route.confirmed set value 2
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.confirm","fallback":"确认","color":"white"}
function scr_sky:ui/button
data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
data modify storage scr_sky:ui work.route set value {"view":"detail","op":"none","id":0,"target":"","role":0,"confirmed":0}
data modify storage scr_sky:ui work.route.id set from storage scr_sky:ui request.id
data modify storage scr_sky:ui work.label set value {"translate":"gui.scr.sky.back","fallback":"返回","color":"white"}
function scr_sky:ui/button
 data modify storage scr_sky:ui work.dialog.actions append from storage scr_sky:ui work.button
