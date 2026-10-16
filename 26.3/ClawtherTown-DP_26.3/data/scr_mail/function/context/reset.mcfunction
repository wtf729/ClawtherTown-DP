# Release temporary resources only. Persistent payout journals are recovered separately.
execute as @a at @s run kill @e[type=minecraft:item_display,tag=scr_mail.adapter,distance=..0.1]
data remove storage scr_mail:runtime work
scoreboard players set #busy scr_ml_lock 0
scoreboard players reset * scr_ml_recover
