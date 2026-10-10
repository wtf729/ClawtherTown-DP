execute unless data storage scr_mail:request mail run return 0
scoreboard players set #id scr_ml_n 0
$execute store result score #id scr_ml_n run data get storage scr_mail:players players."$(key)".next_id
execute unless score #id scr_ml_n matches 1..2000000000 run return 0
execute store result storage scr_mail:runtime work.ctx.id int 1 run scoreboard players get #id scr_ml_n
function scr_mail:send/new_event with storage scr_mail:runtime work.ctx
return run function scr_mail:send/start
