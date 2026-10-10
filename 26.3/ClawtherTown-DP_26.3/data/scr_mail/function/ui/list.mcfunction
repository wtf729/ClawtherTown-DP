execute store result score #ok scr_ml_ok run function scr_mail:ui/session with storage scr_mail:runtime work.ctx
execute unless score #ok scr_ml_ok matches 1 run return 0
execute store result storage scr_mail:runtime work.ctx.page int 1 run scoreboard players get #page scr_ml_n
function scr_mail:ui/list_data with storage scr_mail:runtime work.ctx
function scr_mail:ui/show with storage scr_mail:runtime work
