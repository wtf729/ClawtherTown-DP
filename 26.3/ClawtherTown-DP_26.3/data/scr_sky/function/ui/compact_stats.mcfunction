function scr_sky:ui/role_label
function scr_sky:ui/value_text with storage scr_sky:ui work.island.value
data modify storage scr_sky:ui work.number.n set from storage scr_sky:ui work.island.level
function scr_sky:ui/string_number with storage scr_sky:ui work.number
data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.summary_compact","fallback":"你的身份：%s · 等级：Lv.%s · 价值：%s","color":"white","with":[{"text":""},{"text":""},{"text":""}]}
data modify storage scr_sky:ui work.line.with[0] set from storage scr_sky:ui work.role_label
data modify storage scr_sky:ui work.line.with[1].text set from storage scr_sky:ui work.number_text
data modify storage scr_sky:ui work.line.with[2].text set from storage scr_sky:ui work.value_text
function scr_sky:ui/append_line
