execute store result score #ok scr_ml_ok run function scr_mail:ui/session with storage scr_mail:runtime work.ctx
execute unless score #ok scr_ml_ok matches 1 run return 0
function scr_mail:ui/detail_data with storage scr_mail:runtime work.ctx
function scr_mail:ui/show with storage scr_mail:runtime work
