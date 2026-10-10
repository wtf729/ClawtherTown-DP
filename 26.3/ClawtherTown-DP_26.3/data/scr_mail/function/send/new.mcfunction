# Every explicit invocation is a NEW business grant; normal sign-in limits remain at the sign-in entry point.
execute unless entity @s[type=minecraft:player] run return 0
execute if score #busy scr_ml_lock matches 1 run return 0
execute store result score #ok scr_ml_ok run function scr_mail:context/open
execute unless score #ok scr_ml_ok matches 1 run return 0
execute store result score #send scr_ml_n run function scr_mail:send/new_start with storage scr_mail:runtime work.ctx
function scr_mail:context/close
return run scoreboard players get #send scr_ml_n
