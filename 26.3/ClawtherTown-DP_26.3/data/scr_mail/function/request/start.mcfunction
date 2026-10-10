execute if score #busy scr_ml_lock matches 1 run return 0
scoreboard players operation #request scr_ml_n = @s mail_action
scoreboard players set @s mail_action 0
execute store result score #ok scr_ml_ok run function scr_mail:context/open
execute unless score #ok scr_ml_ok matches 1 run return 0
execute store result storage scr_mail:runtime work.ctx.token int 1 run scoreboard players get #request scr_ml_n
function scr_mail:request/resolve with storage scr_mail:runtime work.ctx
function scr_mail:context/close
