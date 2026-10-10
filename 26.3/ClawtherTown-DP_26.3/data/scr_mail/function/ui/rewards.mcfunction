execute store result storage scr_mail:runtime work.ctx.reward int 1 run scoreboard players get #reward scr_ml_n
function scr_mail:ui/reward with storage scr_mail:runtime work.ctx
scoreboard players add #reward scr_ml_n 1
execute if score #reward scr_ml_n < #count scr_ml_n run function scr_mail:ui/rewards
