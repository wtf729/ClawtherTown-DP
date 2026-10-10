$execute store result score #token scr_ml_n run data get storage scr_mail:players players."$(key)".next_token
execute unless score #token scr_ml_n matches 100..2000000000 run return 0
execute store result storage scr_mail:runtime work.ctx.token int 1 run scoreboard players get #token scr_ml_n
execute store result storage scr_mail:runtime work.op.token int 1 run scoreboard players get #token scr_ml_n
scoreboard players add #token scr_ml_n 1
$execute store result storage scr_mail:players players."$(key)".next_token int 1 run scoreboard players get #token scr_ml_n
$data modify storage scr_mail:ui players."$(key)".actions append from storage scr_mail:runtime work.op
function scr_mail:ui/button_command with storage scr_mail:runtime work.ctx
data modify storage scr_mail:runtime work.dialog.actions append from storage scr_mail:runtime work.button
return 1
