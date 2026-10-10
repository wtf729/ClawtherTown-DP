data modify storage scr_sky:ui work.rated_text set value {"translate":"gui.scr.sky.unrated","fallback":"尚未完成评级","color":"white"}
execute unless data storage scr_sky:ui work.island{last_scan_time:-1} run function scr_sky:ui/rating_time
data modify storage scr_sky:runtime work set value {}
data modify storage scr_sky:runtime work.clock_stamp set from storage scr_sky:ui work.island.last_scan_started
function scr_sky:core/cooldown/read
function scr_sky:ui/cooldown_text
data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.rating_compact","fallback":"%s · 评级冷却剩余：%s","color":"white","with":[{"text":""},{"text":""}]}
data modify storage scr_sky:ui work.line.with[0] set from storage scr_sky:ui work.rated_text
data modify storage scr_sky:ui work.line.with[1] set from storage scr_sky:ui work.clock_text
function scr_sky:ui/append_line
function scr_sky:ui/rating_progress with storage scr_sky:ui work.island
data remove storage scr_sky:runtime work
