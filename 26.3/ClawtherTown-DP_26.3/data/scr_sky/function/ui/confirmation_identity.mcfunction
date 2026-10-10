data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.island","fallback":"空岛 #%s","color":"white","with":[{"text":""}]}
data modify storage scr_sky:ui work.number.n set from storage scr_sky:ui request.id
function scr_sky:ui/string_number with storage scr_sky:ui work.number
data modify storage scr_sky:ui work.line.with[0].text set from storage scr_sky:ui work.number_text
function scr_sky:ui/append_line
execute if data storage scr_sky:ui request{op:"kick"} run function scr_sky:ui/confirmation_member
execute if data storage scr_sky:ui request{op:"transfer"} run function scr_sky:ui/confirmation_member
