execute store result storage scr_mail:runtime work.ctx.index int 1 run scoreboard players get #index scr_ml_n
function scr_mail:ui/list_row with storage scr_mail:runtime work.ctx
scoreboard players remove #index scr_ml_n 1
scoreboard players add #shown scr_ml_n 1
execute if score #shown scr_ml_n matches ..7 if score #index scr_ml_n matches 0.. run function scr_mail:ui/list_loop
