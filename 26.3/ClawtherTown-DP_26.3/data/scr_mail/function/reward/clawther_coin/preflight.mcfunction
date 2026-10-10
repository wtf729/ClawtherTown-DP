execute store result score #ok scr_ml_ok run function scr_mail:reward/clawther_coin/validate
execute unless score #ok scr_ml_ok matches 1 run return 0
# Check the sum of all entries against the existing pending reward queue, before side effects.
execute unless data storage scr_mail:runtime work.forecast.clawther_coin_queue run execute store result storage scr_mail:runtime work.forecast.clawther_coin_queue int 1 run scoreboard players get @s clawther_coin_add
scoreboard players set #queued scr_ml_n 0
execute store result score #queued scr_ml_n run data get storage scr_mail:runtime work.forecast.clawther_coin_queue
execute unless score #queued scr_ml_n matches 0.. run return 0
scoreboard players set #room scr_ml_n 2147483647
scoreboard players operation #room scr_ml_n -= #queued scr_ml_n
execute if score #number scr_ml_n > #room scr_ml_n run return 0
scoreboard players operation #queued scr_ml_n += #number scr_ml_n
execute store result storage scr_mail:runtime work.forecast.clawther_coin_queue int 1 run scoreboard players get #queued scr_ml_n
return 1
