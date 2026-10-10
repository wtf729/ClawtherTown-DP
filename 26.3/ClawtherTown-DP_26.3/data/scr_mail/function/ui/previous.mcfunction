data modify storage scr_mail:runtime work.button set value {label:{"translate":"gui.scr.mail.prev_page","fallback":"上一页"},width:170}
data modify storage scr_mail:runtime work.op set value {kind:"list"}
scoreboard players operation #nav scr_ml_n = #page scr_ml_n
scoreboard players remove #nav scr_ml_n 1
execute store result storage scr_mail:runtime work.op.page int 1 run scoreboard players get #nav scr_ml_n
function scr_mail:ui/button
