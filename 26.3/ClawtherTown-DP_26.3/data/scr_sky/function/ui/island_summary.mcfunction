data modify storage scr_sky:ui work.name_island set from storage scr_sky:ui work.island
function scr_sky:ui/island_name
data modify storage scr_sky:ui work.line set from storage scr_sky:ui work.island_name
function scr_sky:ui/append_line
function scr_sky:ui/compact_stats
data modify storage scr_sky:ui work.ctx.target set from storage scr_sky:ui work.island.owner
function scr_sky:ui/name with storage scr_sky:ui work.ctx
data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.owner_spawn","fallback":"岛主：%s · 出生点：%s","color":"white","with":[{"text":""},{"translate":"gui.scr.sky.unconfigured","fallback":"未设置","color":"white"}]}
data modify storage scr_sky:ui work.line.with[0] set from storage scr_sky:ui work.name
execute if data storage scr_sky:ui work.island.spawn{configured:1b} run data modify storage scr_sky:ui work.line.with[1] set value {"translate":"gui.scr.sky.configured","fallback":"已设置","color":"white"}
function scr_sky:ui/append_line
function scr_sky:ui/rating
execute if data storage scr_sky:ui work.role run execute store result score #ui_role scr_sk run data get storage scr_sky:ui work.role
execute if score #ui_role scr_sk matches 3 run function scr_sky:ui/reset_cooldown
execute if data storage scr_sky:ui work.island{last_operation:"reset_completed",last_scan_time:-1} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.recent_reset","fallback":"最近操作：重置完成","color":"white"},"width":400}
execute unless data storage scr_sky:ui work.island{last_scan_time:-1} run data modify storage scr_sky:ui work.dialog.body append value {"type":"minecraft:plain_message","contents":{"translate":"gui.scr.sky.recent_rating","fallback":"最近操作：评级完成","color":"white"},"width":400}
execute if data storage scr_sky:ui work.island{last_scan_time:-1} unless data storage scr_sky:ui work.island{last_operation:"reset_completed"} run function scr_sky:ui/recent_player_operation with storage scr_sky:ui work.island
