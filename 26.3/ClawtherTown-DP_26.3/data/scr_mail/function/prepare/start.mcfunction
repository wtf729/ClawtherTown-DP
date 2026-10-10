execute if score #busy scr_ml_lock matches 1 run return 0
execute store result score #ok scr_ml_ok run function scr_mail:context/open
execute unless score #ok scr_ml_ok matches 1 run return 0
execute store result score #ok scr_ml_ok run function scr_mail:prepare/select with storage scr_mail:runtime work.ctx
function scr_mail:context/close
