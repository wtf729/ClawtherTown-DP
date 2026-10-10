execute store result storage scr_mail:runtime work.ctx.reward int 1 run scoreboard players get #reward scr_ml_n
execute store result score #ok scr_ml_ok run function scr_mail:send/validate_entry with storage scr_mail:runtime work.ctx
execute unless score #ok scr_ml_ok matches 1 run return 0
scoreboard players add #reward scr_ml_n 1
execute if score #reward scr_ml_n < #count scr_ml_n run return run function scr_mail:send/validate_loop
return 1
