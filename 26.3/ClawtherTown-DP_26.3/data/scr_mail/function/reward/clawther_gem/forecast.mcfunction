# Missing scores represent zero; negative or overflowing balances reject the claim.
scoreboard players set #balance scr_ml_n 0
scoreboard players set #queued scr_ml_n 0
execute store result score #balance scr_ml_n run scoreboard players get @s clawther_gem
execute store result score #queued scr_ml_n run scoreboard players get @s clawther_gem_add
data modify storage scr_mail:runtime work.forecast.clawther_gem set value -1
execute unless score #balance scr_ml_n matches 0.. run return 0
execute unless score #queued scr_ml_n matches 0.. run return 0
scoreboard players set #room scr_ml_n 2147483647
scoreboard players operation #room scr_ml_n -= #balance scr_ml_n
execute if score #queued scr_ml_n > #room scr_ml_n run return 0
scoreboard players operation #balance scr_ml_n += #queued scr_ml_n
execute store result storage scr_mail:runtime work.forecast.clawther_gem int 1 run scoreboard players get #balance scr_ml_n
return 1
