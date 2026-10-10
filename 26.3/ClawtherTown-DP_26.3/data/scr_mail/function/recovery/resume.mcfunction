# ADMIN: request storage scr_mail:request recovery {id:<int>}; execute as player at @s.
execute if score #busy scr_ml_lock matches 1 run return 0
execute store result score #ok scr_ml_ok run function scr_mail:context/open
execute unless score #ok scr_ml_ok matches 1 run return 0
data modify storage scr_mail:runtime work.number set from storage scr_mail:request recovery.id
execute store result score #ok scr_ml_ok run function scr_mail:number/read_int
execute if score #ok scr_ml_ok matches 1 run data modify storage scr_mail:runtime work.ctx.id set from storage scr_mail:runtime work.integer
execute if score #ok scr_ml_ok matches 1 run function scr_mail:recovery/resume_bound with storage scr_mail:runtime work.ctx
function scr_mail:context/close
