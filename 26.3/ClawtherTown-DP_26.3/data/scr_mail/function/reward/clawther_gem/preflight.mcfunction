# Forecast the global balance PLUS pending helper amount and all entries in this claim.
execute store result score #ok scr_ml_ok run function scr_mail:reward/clawther_gem/validate
execute unless score #ok scr_ml_ok matches 1 run return 0
execute unless data storage scr_mail:runtime work.forecast.clawther_gem run function scr_mail:reward/clawther_gem/forecast
execute if data storage scr_mail:runtime work.forecast{clawther_gem:-1} run return 0
scoreboard players set #balance scr_ml_n 0
execute store result score #balance scr_ml_n run data get storage scr_mail:runtime work.forecast.clawther_gem
scoreboard players set #room scr_ml_n 2147483647
scoreboard players operation #room scr_ml_n -= #balance scr_ml_n
execute if score #number scr_ml_n > #room scr_ml_n run return 0
scoreboard players operation #balance scr_ml_n += #number scr_ml_n
execute store result storage scr_mail:runtime work.forecast.clawther_gem int 1 run scoreboard players get #balance scr_ml_n
return 1
