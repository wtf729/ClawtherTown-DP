scoreboard players set #busy scr_ml_lock 1
execute store result score #context scr_ml_n run function scr_mail:context/bind
execute unless score #context scr_ml_n matches 1 run function scr_mail:context/close
return run scoreboard players get #context scr_ml_n
