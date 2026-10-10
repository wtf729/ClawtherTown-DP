# Physical rewards only. The original caller still owns currency, title and eligibility changes.
execute unless entity @s[type=minecraft:player] run return 0
scoreboard players add @s scr_ml_q_return 1
return run function scr_mail:queue/back_to_server
