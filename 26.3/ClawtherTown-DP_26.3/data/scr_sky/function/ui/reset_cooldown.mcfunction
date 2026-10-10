data modify storage scr_sky:runtime work set value {}
data modify storage scr_sky:runtime work.clock_stamp set from storage scr_sky:ui work.island.last_reset_started
function scr_sky:core/cooldown/read
function scr_sky:ui/cooldown_text
data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.reset_cd","fallback":"重置冷却剩余：%s","color":"white","with":[{"text":""}]}
data modify storage scr_sky:ui work.line.with[0] set from storage scr_sky:ui work.clock_text
function scr_sky:ui/append_line
data remove storage scr_sky:runtime work
