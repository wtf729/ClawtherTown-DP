data modify storage scr_sky:ui work.ctx.target set from storage scr_sky:ui request.target
function scr_sky:ui/name with storage scr_sky:ui work.ctx
data modify storage scr_sky:ui work.line set value {"translate":"gui.scr.sky.member","fallback":"成员：%s","color":"white","with":[{"text":""}]}
data modify storage scr_sky:ui work.line.with[0] set from storage scr_sky:ui work.name
function scr_sky:ui/append_line
