data modify storage scr_sky:ui work.island set from storage scr_sky:ui work.snapshot.primary
data modify storage scr_sky:ui work.role set from storage scr_sky:ui work.snapshot.primary_role
data modify storage scr_sky:ui work.name_island set from storage scr_sky:ui work.island
function scr_sky:ui/island_name
data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.primary","fallback":"主岛：%s","color":"white","with":[{"text":""}]}
data modify storage scr_sky:ui work.line.with[0] set from storage scr_sky:ui work.island_name
function scr_sky:ui/append_line
function scr_sky:ui/compact_stats
