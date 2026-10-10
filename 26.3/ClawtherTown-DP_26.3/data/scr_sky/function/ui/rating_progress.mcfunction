$execute unless data storage scr_sky:scan job{id:$(id)} run return 0
data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.progress","fallback":"评级中：%s / %s Sections","color":"white","with":[{"text":""},{"text":""}]}
data modify storage scr_sky:ui work.number.n set from storage scr_sky:scan job.processed_sections
function scr_sky:ui/string_number with storage scr_sky:ui work.number
data modify storage scr_sky:ui work.line.with[0].text set from storage scr_sky:ui work.number_text
data modify storage scr_sky:ui work.number.n set from storage scr_sky:scan job.total_sections
function scr_sky:ui/string_number with storage scr_sky:ui work.number
data modify storage scr_sky:ui work.line.with[1].text set from storage scr_sky:ui work.number_text
function scr_sky:ui/append_line
